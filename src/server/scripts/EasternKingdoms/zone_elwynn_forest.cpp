/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "Containers.h"
#include "Conversation.h"
#include "ConversationAI.h"
#include "CreatureAIImpl.h"
#include "CreatureGroups.h"
#include "MotionMaster.h"
#include "ObjectAccessor.h"
#include "PhasingHandler.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "SpellScript.h"
#include "TemporarySummon.h"
#include "WorldSession.h"

enum COG_Paths
{
    STORMWIND_PATH  = 644000,
    GOLDSHIRE_PATH  = 644008,
    WOODS_PATH      = 644016,
    HOUSE_PATH      = 644024,
    LISA_PATH       = 645600
};

enum COG_Waypoints
{
    STORMWIND_WAYPOINT  = 57,
    GOLDSHIRE_WAYPOINT  = 32,
    WOODS_WAYPOINT      = 22,
    HOUSE_WAYPOINT      = 35,
    LISA_WAYPOINT       = 4
};

enum COG_Sounds
{
    BANSHEE_DEATH           = 1171,
    BANSHEEPREAGGRO         = 1172,
    CTHUN_YOU_WILL_DIE      = 8585,
    CTHUN_DEATH_IS_CLOSE    = 8580,
    HUMAN_FEMALE_EMOTE_CRY  = 6916,
    GHOSTDEATH              = 3416
};

enum COG_Creatures
{
    NPC_DANA    = 804,
    NPC_CAMERON = 805,
    NPC_JOHN    = 806,
    NPC_LISA    = 807,
    NPC_AARON   = 810,
    NPC_JOSE    = 811
};

enum COG_Events
{
    EVENT_WP_START_GOLDSHIRE    = 1,
    EVENT_WP_START_WOODS        = 2,
    EVENT_WP_START_HOUSE        = 3,
    EVENT_WP_START_LISA         = 4,
    EVENT_PLAY_SOUNDS           = 5,
    EVENT_BEGIN_EVENT           = 6
};

enum COG_GameEvent
{
    GAME_EVENT_CHILDREN_OF_GOLDSHIRE = 76
};

struct npc_cameron : public ScriptedAI
{
    npc_cameron(Creature* creature) : ScriptedAI(creature)
    {
        _started = false;
    }

    static uint32 SoundPicker()
    {
        return RAND(
            BANSHEE_DEATH,
            BANSHEEPREAGGRO,
            CTHUN_YOU_WILL_DIE,
            CTHUN_DEATH_IS_CLOSE,
            HUMAN_FEMALE_EMOTE_CRY,
            GHOSTDEATH
        );
    }

    void MoveTheChildren()
    {
        std::vector<Position> MovePosPositions =
        {
            { -9373.521f, -67.71767f, 69.201965f, 1.117011f },
            { -9374.94f, -62.51654f, 69.201965f, 5.201081f },
            { -9371.013f, -71.20811f, 69.201965f, 1.937315f },
            { -9368.419f, -66.47543f, 69.201965f, 3.141593f },
            { -9372.376f, -65.49946f, 69.201965f, 4.206244f },
            { -9377.477f, -67.8297f, 69.201965f, 0.296706f }
        };

        Trinity::Containers::RandomShuffle(MovePosPositions);

        // first we break formation because children will need to move on their own now
        for (ObjectGuid guid : _childrenGUIDs)
            if (Creature* child = ObjectAccessor::GetCreature(*me, guid))
                if (CreatureGroup* creatureGroup = child->GetFormation())
                    FormationMgr::RemoveCreatureFromGroup(creatureGroup, child);

        // Move each child to an random position
        for (uint32 i = 0; i < _childrenGUIDs.size(); ++i)
        {
            if (Creature* children = ObjectAccessor::GetCreature(*me, _childrenGUIDs[i]))
            {
                children->SetWalk(true);
                children->GetMotionMaster()->MovePoint(0, MovePosPositions[i], true, MovePosPositions[i].GetOrientation());
            }
        }
        me->SetWalk(true);
        me->GetMotionMaster()->MovePoint(0, MovePosPositions.back(), true, MovePosPositions.back().GetOrientation());
    }

    void WaypointReached(uint32 waypointId, uint32 pathId) override
    {
        switch (pathId)
        {
            case STORMWIND_PATH:
            {
                if (waypointId == STORMWIND_WAYPOINT)
                {
                    me->GetMotionMaster()->MoveRandom(10.f);
                    _events.ScheduleEvent(EVENT_WP_START_GOLDSHIRE, 11min);
                }

                break;
            }
            case GOLDSHIRE_PATH:
            {
                if (waypointId == GOLDSHIRE_WAYPOINT)
                {
                    me->GetMotionMaster()->MoveRandom(10.f);
                    _events.ScheduleEvent(EVENT_WP_START_WOODS, 15min);
                }
                break;
            }
            case WOODS_PATH:
            {
                if (waypointId == WOODS_WAYPOINT)
                {
                    me->GetMotionMaster()->MoveRandom(10.f);
                    _events.ScheduleEvent(EVENT_WP_START_HOUSE, 6min);
                    _events.ScheduleEvent(EVENT_WP_START_LISA, 2s);
                }

                break;
            }
            case HOUSE_PATH:
            {
                if (waypointId == HOUSE_WAYPOINT)
                {
                    // Move childeren at last point
                    MoveTheChildren();

                    // After 30 seconds a random sound should play
                    _events.ScheduleEvent(EVENT_PLAY_SOUNDS, 30s);
                }
                break;
            }
        }
    }

    void OnGameEvent(bool start, uint16 eventId) override
    {
        if (start && eventId == GAME_EVENT_CHILDREN_OF_GOLDSHIRE)
        {
            // Start event at 7 am
            // Begin pathing
            _events.ScheduleEvent(EVENT_BEGIN_EVENT, 2s);
            _started = true;
        }
        else if (!start && eventId == GAME_EVENT_CHILDREN_OF_GOLDSHIRE)
        {
            // Reset event at 8 am
            _started = false;
            _events.Reset();
        }
    }

    void UpdateAI(uint32 diff) override
    {
        if (!_started)
            return;

        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_WP_START_GOLDSHIRE:
                    me->GetMotionMaster()->MovePath(GOLDSHIRE_PATH, false);
                    break;
                case EVENT_WP_START_WOODS:
                    me->GetMotionMaster()->MovePath(WOODS_PATH, false);
                    break;
                case EVENT_WP_START_HOUSE:
                    me->GetMotionMaster()->MovePath(HOUSE_PATH, false);
                    break;
                case EVENT_WP_START_LISA:
                    for (ObjectGuid guid : _childrenGUIDs)
                    {
                        if (Creature* child = ObjectAccessor::GetCreature(*me, guid))
                        {
                            if (child->GetEntry() == NPC_LISA)
                            {
                                child->GetMotionMaster()->MovePath(LISA_PATH, false);
                                break;
                            }
                        }
                    }
                    break;
                case EVENT_PLAY_SOUNDS:
                    me->PlayDistanceSound(SoundPicker());
                    break;
                case EVENT_BEGIN_EVENT:
                {
                    _childrenGUIDs.clear();

                    // Get all childeren's guid's.
                    if (Creature* dana = me->FindNearestCreature(NPC_DANA, 25.0f))
                        _childrenGUIDs.push_back(dana->GetGUID());

                    if (Creature* john = me->FindNearestCreature(NPC_JOHN, 25.0f))
                        _childrenGUIDs.push_back(john->GetGUID());

                    if (Creature* lisa = me->FindNearestCreature(NPC_LISA, 25.0f))
                        _childrenGUIDs.push_back(lisa->GetGUID());

                    if (Creature* aaron = me->FindNearestCreature(NPC_AARON, 25.0f))
                        _childrenGUIDs.push_back(aaron->GetGUID());

                    if (Creature* jose = me->FindNearestCreature(NPC_JOSE, 25.0f))
                        _childrenGUIDs.push_back(jose->GetGUID());

                    // If Formation was disbanded, remake.
                    if (!me->GetFormation()->IsFormed())
                        for (ObjectGuid guid : _childrenGUIDs)
                            if (Creature* child = ObjectAccessor::GetCreature(*me, guid))
                                child->SearchFormation();

                    // Start movement
                    me->GetMotionMaster()->MovePath(STORMWIND_PATH, false);

                    break;
                }
                default:
                    break;
            }
        }
    }

private:
    EventMap _events;
    bool _started;
    GuidVector _childrenGUIDs;
};

enum AnUnlikelyInformantData
{
    QUEST_AN_UNLIKELY_INFORMANT         = 72405,

    GOSSIP_MENU_SIGNAL_INFORMANT        = 30224,
    GOSSIP_OPTION_SIGNAL_INFORMANT      = 0,

    CONVO_AN_UNLIKELY_INFORMANT_HELLO   = 20340,
    CONVO_AN_UNLIKELY_INFORMANT         = 20342,

    CONVO_LINE_VANESSA_TELEPORT         = 53702,
    CONVO_LINE_VANESSA_MOVEMENT         = 52465,
    CONVO_LINE_MATHIAS_QUEST_CREDIT     = 52466,

    CONVO_ACTOR_IDX_MATHIAS             = 0,
    CONVO_ACTOR_IDX_VANESSA             = 1,

    NPC_MATHIAS_SHAW                    = 198896,
    NPC_VANESSA_VANCLEEF                = 198883,

    POINT_VANESSA_FINISH                = 1,

    DISPLAY_VANESSA_INVISIBLE           = 71887,
    DISPLAY_VANESSA_VISIBLE             = 110980,

    SPELL_VANESSA_STEALTH               = 228928,
    SPELL_VANESSA_TELEPORT_BEHIND       = 396357,
    SPELL_VANESSA_CHEAP_SHOT            = 396359,
};

enum AnUnlikelyInformantEvents
{
    EVENT_VANESSA_TELEPORT = 1,
    EVENT_VANESSA_MOVE,
    EVENT_VANESSA_CLONE_LEAN,
    EVENT_MATHIAS_QUEST_CREDIT,
    EVENT_MATHIAS_CLONE_DESPAWN
};

enum WindowToThePastData
{
    GOSSIP_MENU_WINDOW_TO_THE_PAST      = 30224,
    GOSSIP_OPTION_WINDOW_TO_THE_PAST    = 2,

    SPELL_PLAY_ONYXIA_SCENE             = 402962
};

enum RottenOldMemoriesData
{
    QUEST_ROTTEN_OLD_MEMORIES   = 72409,

    CONVO_ROTTEN_OLD_MEMORIES   = 20345
};

enum TheNewClassingtonEstateData
{
    QUEST_THE_NEW_CLASSINGTON_ESTATE            = 72426,

    CONVO_THE_NEW_CLASSINGTON_ESTATE            = 20387,

    CONVO_LINE_VANESSA_START_WALK               = 52595,
    CONVO_LINE_HANDLE_CLONE_FACING              = 52593,

    CONVO_ACTOR_IDX_VANESSA_CLASSINGTON_ESTATE  = 1,
    CONVO_ACTOR_IDX_MATHIAS_CLASSINGTON_ESTATE  = 2,

    PATH_VANESSA_GOLDSHIRE_BASEMENT             = 15910640,

    SPELL_VANESSA_COSMETIC_VANISH               = 210194,
    SPELL_VANESSA_STEALTH_DESPAWN               = 186810
};

enum ClassingtonEstateEvents
{
    EVENT_VANESSA_START_WALK        = 1,
    EVENT_VANESSA_STEALTH_DESPAWN,
    EVENT_MATHIAS_SET_FACING,
    EVENT_VANESSA_SET_FACING
};

Position const VanessaClonePosition = { -9462.44f, -11.7101f, 50.161f, 2.99500f };
Position const VanessaStaticPosition = { -9468.16f, -3.6128f, 49.876f, 4.47226f };

// 198896 - Master Mathias Shaw
struct npc_master_mathias_shaw_human_heritage_lions_pride_inn_basement : public ScriptedAI
{
    npc_master_mathias_shaw_human_heritage_lions_pride_inn_basement(Creature* creature) : ScriptedAI(creature) { }

    void OnQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_THE_NEW_CLASSINGTON_ESTATE)
        {
            PhasingHandler::OnConditionChange(player);
            Conversation::CreateConversation(CONVO_THE_NEW_CLASSINGTON_ESTATE, player, *player, player->GetGUID(), nullptr, false);
        }
    }

    bool OnGossipSelect(Player* player, uint32 menuId, uint32 gossipListId) override
    {
        // Quest 72408 - A Window to the Past
        if (menuId == GOSSIP_MENU_WINDOW_TO_THE_PAST && gossipListId == GOSSIP_OPTION_WINDOW_TO_THE_PAST)
        {
            CloseGossipMenuFor(player);

            player->CastSpell(nullptr, SPELL_PLAY_ONYXIA_SCENE, true);
        }

        // Quest 72405 - An Unlikely Informant
        else if (menuId == GOSSIP_MENU_SIGNAL_INFORMANT && gossipListId == GOSSIP_OPTION_SIGNAL_INFORMANT)
        {
            CloseGossipMenuFor(player);

            Conversation::CreateConversation(CONVO_AN_UNLIKELY_INFORMANT, player, *player, player->GetGUID(), nullptr, false);
        }
        return true;
    }
};

// 198883 - Vanessa VanCleef
struct npc_vanessa_vancleef_human_heritage_lions_pride_inn_basement : public ScriptedAI
{
    npc_vanessa_vancleef_human_heritage_lions_pride_inn_basement(Creature* creature) : ScriptedAI(creature) { }

    void OnQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_ROTTEN_OLD_MEMORIES)
            Conversation::CreateConversation(CONVO_ROTTEN_OLD_MEMORIES, player, *player, player->GetGUID(), nullptr);
    }

    void MovementInform(uint32 type, uint32 pointId) override
    {
        if (type != POINT_MOTION_TYPE)
            return;

        if (pointId == POINT_VANESSA_FINISH)
            _events.ScheduleEvent(EVENT_VANESSA_CLONE_LEAN, 1s);
    }

    void WaypointPathEnded(uint32 /*nodeId*/, uint32 pathId) override
    {
        if (pathId == PATH_VANESSA_GOLDSHIRE_BASEMENT)
            _events.ScheduleEvent(EVENT_VANESSA_STEALTH_DESPAWN, 0s);
    }

    void UpdateAI(uint32 diff) override
    {
        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_VANESSA_CLONE_LEAN:
                    me->SetVirtualItem(1, 0);
                    me->SetNpcFlag(NPCFlags(UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER));
                    me->SetFacingTo(4.47226f);
                    me->HandleEmoteCommand(EMOTE_STATE_WALEAN02);
                    break;
                case EVENT_VANESSA_STEALTH_DESPAWN:
                    me->CastSpell(nullptr, SPELL_VANESSA_COSMETIC_VANISH, true);
                    me->CastSpell(nullptr, SPELL_VANESSA_STEALTH_DESPAWN, true);
                    me->DespawnOrUnsummon(1s);
                    break;
                default:
                    break;
            }
        }
    }
private:
    EventMap _events;
};

struct at_human_heritage_lions_pride_inn_basement_enter : AreaTriggerAI
{
    at_human_heritage_lions_pride_inn_basement_enter(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit) override
    {
        Player* player = unit->ToPlayer();
        if (!player || player->GetQuestStatus(QUEST_AN_UNLIKELY_INFORMANT) != QUEST_STATUS_INCOMPLETE)
            return;

        Conversation::CreateConversation(CONVO_AN_UNLIKELY_INFORMANT_HELLO, unit, unit->GetPosition(), unit->GetGUID());
    }
};

// 20342 - Conversation
class conversation_an_unlikely_informant : public ConversationAI
{
public:
    conversation_an_unlikely_informant(Conversation* conversation) : ConversationAI(conversation) { }

    void OnCreate(Unit* creator) override
    {
        Creature* mathiasObject = GetClosestCreatureWithOptions(creator, 15.0f, { .CreatureId = NPC_MATHIAS_SHAW, .IgnorePhases = true });
        Creature* vanessaObject = GetClosestCreatureWithOptions(creator, 15.0f, { .CreatureId = NPC_VANESSA_VANCLEEF, .IgnorePhases = true });
        if (!mathiasObject || !vanessaObject)
            return;

        TempSummon* mathiasClone = mathiasObject->SummonPersonalClone(mathiasObject->GetPosition(), TEMPSUMMON_MANUAL_DESPAWN, 0s, 0, 0, creator->ToPlayer());
        TempSummon* vanessaClone = vanessaObject->SummonPersonalClone(VanessaClonePosition, TEMPSUMMON_MANUAL_DESPAWN, 0s, 0, 0, creator->ToPlayer());
        if (!mathiasClone || !vanessaClone)
            return;

        mathiasClone->RemoveNpcFlag(NPCFlags(UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER));
        vanessaClone->RemoveNpcFlag(NPCFlags(UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER));
        vanessaClone->SetVirtualItem(1, vanessaClone->GetVirtualItemId(0)); // add 2nd dagger to hands

        conversation->AddActor(CONVO_AN_UNLIKELY_INFORMANT, CONVO_ACTOR_IDX_MATHIAS, mathiasClone->GetGUID());
        conversation->AddActor(CONVO_AN_UNLIKELY_INFORMANT, CONVO_ACTOR_IDX_VANESSA, vanessaClone->GetGUID());
        conversation->Start();
    }

    void OnStart() override
    {
        LocaleConstant privateOwnerLocale = conversation->GetPrivateObjectOwnerLocale();

        if (Milliseconds const* teleportLineStartTime = conversation->GetLineStartTime(privateOwnerLocale, CONVO_LINE_VANESSA_TELEPORT))
            _events.ScheduleEvent(EVENT_VANESSA_TELEPORT, *teleportLineStartTime);

        if (Milliseconds const* movementStartTime = conversation->GetLineStartTime(privateOwnerLocale, CONVO_LINE_VANESSA_MOVEMENT))
            _events.ScheduleEvent(EVENT_VANESSA_MOVE, *movementStartTime);

        if (Milliseconds const* questCreditStartTime = conversation->GetLineStartTime(privateOwnerLocale, CONVO_LINE_MATHIAS_QUEST_CREDIT))
            _events.ScheduleEvent(EVENT_MATHIAS_QUEST_CREDIT, *questCreditStartTime);

        _events.ScheduleEvent(EVENT_MATHIAS_CLONE_DESPAWN, conversation->GetLastLineEndTime(privateOwnerLocale));
    }

    void OnUpdate(uint32 diff) override
    {
        _events.Update(diff);

        switch (_events.ExecuteEvent())
        {
            case EVENT_VANESSA_TELEPORT:
            {
                Unit* privateObjectOwner = ObjectAccessor::GetUnit(*conversation, conversation->GetPrivateObjectOwner());
                if (!privateObjectOwner)
                    break;

                Creature* vanessaClone = conversation->GetActorCreature(CONVO_ACTOR_IDX_VANESSA);
                if (!vanessaClone)
                    break;

                vanessaClone->CastSpell(privateObjectOwner, SPELL_VANESSA_TELEPORT_BEHIND, true);
                vanessaClone->CastSpell(privateObjectOwner, SPELL_VANESSA_CHEAP_SHOT, true);
                vanessaClone->RemoveAurasDueToSpell(SPELL_VANESSA_STEALTH);
                vanessaClone->SetEmoteState(EMOTE_STATE_READY1H);
                break;
            }
            case EVENT_VANESSA_MOVE:
            {
                Creature* vanessaClone = conversation->GetActorCreature(CONVO_ACTOR_IDX_VANESSA);
                if (!vanessaClone)
                    break;

                vanessaClone->SetWalk(true);
                vanessaClone->SetEmoteState(EMOTE_STATE_NONE);
                vanessaClone->GetMotionMaster()->MovePoint(POINT_VANESSA_FINISH, VanessaStaticPosition);
                break;
            }
            case EVENT_MATHIAS_QUEST_CREDIT:
            {
                Unit* privateObjectOwner = ObjectAccessor::GetUnit(*conversation, conversation->GetPrivateObjectOwner());
                if (!privateObjectOwner)
                    break;

                Creature* vanessaClone = conversation->GetActorCreature(CONVO_ACTOR_IDX_VANESSA);
                if (!vanessaClone)
                    break;

                Creature* mathiasClone = conversation->GetActorCreature(CONVO_ACTOR_IDX_MATHIAS);
                if (!mathiasClone)
                    break;

                privateObjectOwner->ToPlayer()->KilledMonsterCredit(NPC_MATHIAS_SHAW);
                vanessaClone->DespawnOrUnsummon();
                mathiasClone->SetNpcFlag(NPCFlags(UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER));
                break;
            }
            case EVENT_MATHIAS_CLONE_DESPAWN:
            {
                Creature* mathiasClone = conversation->GetActorCreature(CONVO_ACTOR_IDX_MATHIAS);
                if (!mathiasClone)
                    break;

                mathiasClone->DespawnOrUnsummon();
                break;
            }
            default:
                break;
        }
    }

private:
    EventMap _events;
};

// 20387 - Conversation
class conversation_the_new_classington_estate : public ConversationAI
{
public:
    conversation_the_new_classington_estate(Conversation* conversation) : ConversationAI(conversation) { }

    void OnCreate(Unit* creator) override
    {
        Creature* mathiasObject = GetClosestCreatureWithOptions(creator, 15.0f, { .CreatureId = NPC_MATHIAS_SHAW, .IgnorePhases = true });
        Creature* vanessaObject = GetClosestCreatureWithOptions(creator, 15.0f, { .CreatureId = NPC_VANESSA_VANCLEEF, .IgnorePhases = true });
        if (!mathiasObject || !vanessaObject)
            return;

        TempSummon* mathiasClone = mathiasObject->SummonPersonalClone(mathiasObject->GetPosition(), TEMPSUMMON_MANUAL_DESPAWN, 0s, 0, 0, creator->ToPlayer());
        TempSummon* vanessaClone = vanessaObject->SummonPersonalClone(VanessaStaticPosition, TEMPSUMMON_MANUAL_DESPAWN, 0s, 0, 0, creator->ToPlayer());
        if (!mathiasClone || !vanessaClone)
            return;

        mathiasClone->RemoveNpcFlag(NPCFlags(UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER));
        vanessaClone->RemoveNpcFlag(NPCFlags(UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_QUESTGIVER));
        vanessaClone->SetVirtualItem(1, vanessaClone->GetVirtualItemId(0)); // add 2nd dagger to hands

        conversation->AddActor(CONVO_THE_NEW_CLASSINGTON_ESTATE, CONVO_ACTOR_IDX_MATHIAS_CLASSINGTON_ESTATE, mathiasClone->GetGUID());
        conversation->AddActor(CONVO_THE_NEW_CLASSINGTON_ESTATE, CONVO_ACTOR_IDX_VANESSA_CLASSINGTON_ESTATE, vanessaClone->GetGUID());
        conversation->Start();
    }

    void OnStart() override
    {
        LocaleConstant privateOwnerLocale = conversation->GetPrivateObjectOwnerLocale();

        _events.ScheduleEvent(EVENT_VANESSA_START_WALK, conversation->GetLineEndTime(privateOwnerLocale, CONVO_LINE_VANESSA_START_WALK));

        if (Milliseconds const* facingLineStartTime = conversation->GetLineStartTime(privateOwnerLocale, CONVO_LINE_HANDLE_CLONE_FACING))
            _events.ScheduleEvent(EVENT_MATHIAS_SET_FACING, *facingLineStartTime);

        _events.ScheduleEvent(EVENT_VANESSA_SET_FACING, conversation->GetLineEndTime(privateOwnerLocale, CONVO_LINE_HANDLE_CLONE_FACING));

        _events.ScheduleEvent(EVENT_MATHIAS_CLONE_DESPAWN, conversation->GetLastLineEndTime(privateOwnerLocale));
    }

    void OnUpdate(uint32 diff) override
    {
        _events.Update(diff);

        switch (_events.ExecuteEvent())
        {
            case EVENT_VANESSA_START_WALK:
            {
                Creature* vanessaClone = conversation->GetActorCreature(CONVO_ACTOR_IDX_VANESSA_CLASSINGTON_ESTATE);
                if (!vanessaClone)
                    break;

                Creature* mathiasClone = conversation->GetActorCreature(CONVO_ACTOR_IDX_MATHIAS_CLASSINGTON_ESTATE);
                if (!mathiasClone)
                    break;

                mathiasClone->SetFacingTo(mathiasClone->GetHomePosition().GetOrientation());
                // @ToDo: use emote data of broadcast text
                vanessaClone->SetEmoteState(EMOTE_STATE_NONE);
                vanessaClone->GetMotionMaster()->MovePath(PATH_VANESSA_GOLDSHIRE_BASEMENT, false);
                break;
            }
            case EVENT_MATHIAS_SET_FACING:
            {
                Creature* vanessaClone = conversation->GetActorCreature(CONVO_ACTOR_IDX_VANESSA_CLASSINGTON_ESTATE);
                if (!vanessaClone)
                    break;

                Creature* mathiasClone = conversation->GetActorCreature(CONVO_ACTOR_IDX_MATHIAS_CLASSINGTON_ESTATE);
                if (!mathiasClone)
                    break;

                vanessaClone->HandleEmoteCommand(EMOTE_ONESHOT_LAUGH);
                mathiasClone->SetFacingToObject(vanessaClone);
                break;
            }
            case EVENT_VANESSA_SET_FACING:
            {
                Creature* vanessaClone = conversation->GetActorCreature(CONVO_ACTOR_IDX_VANESSA_CLASSINGTON_ESTATE);
                if (!vanessaClone)
                    break;

                Creature* mathiasClone = conversation->GetActorCreature(CONVO_ACTOR_IDX_MATHIAS_CLASSINGTON_ESTATE);
                if (!mathiasClone)
                    break;

                vanessaClone->SetFacingToObject(mathiasClone);
                break;
            }
            case EVENT_MATHIAS_CLONE_DESPAWN:
            {
                Creature* mathiasClone = conversation->GetActorCreature(CONVO_ACTOR_IDX_MATHIAS_CLASSINGTON_ESTATE);
                if (!mathiasClone)
                    break;

                mathiasClone->DespawnOrUnsummon();
                break;
            }
            default:
                break;
        }
    }

private:
    EventMap _events;
};

// 228928 - Stealth
class spell_stealth_vanessa_human_heritage : public AuraScript
{
    void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        GetTarget()->SetDisplayId(DISPLAY_VANESSA_INVISIBLE);
    }

    void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        GetTarget()->SetDisplayId(DISPLAY_VANESSA_VISIBLE);
    }

    void Register() override
    {
        AfterEffectApply += AuraEffectRemoveFn(spell_stealth_vanessa_human_heritage::OnApply, EFFECT_1, SPELL_AURA_ANIM_REPLACEMENT_SET, AURA_EFFECT_HANDLE_REAL);
        AfterEffectRemove += AuraEffectRemoveFn(spell_stealth_vanessa_human_heritage::OnRemove, EFFECT_1, SPELL_AURA_ANIM_REPLACEMENT_SET, AURA_EFFECT_HANDLE_REAL);
    }
};

/*######
## npc_hogger - evento da quest 176 (WANTED: "Hogger")
## Baseado na implementacao do AshamaneCore (zone_elwynn_forest.cpp, GPL-2.0),
## adaptado para a master por Andre Valdivino.
######*/

enum HoggerEventSpells
{
    SPELL_HOGGER_VICIOUS_SLICE      = 87337,
    SPELL_HOGGER_EATING             = 87351,
    SPELL_HOGGER_BLOODY_STRIKE      = 87359,
    SPELL_HOGGER_TELEPORT_VISUAL_1  = 87459,
    SPELL_HOGGER_TELEPORT_VISUAL_2  = 64446
};

enum HoggerEventEvents
{
    EVENT_HOGGER_VICIOUS_SLICE = 1,
    EVENT_HOGGER_GROUP_START_WALKING,
    EVENT_HOGGER_DISMOUNT_CLAY,
    EVENT_HOGGER_SAY_GRR,
    EVENT_HOGGER_CLAY_EXPLANATION,
    EVENT_HOGGER_CLAY_TAKE_HIM,
    EVENT_HOGGER_SAY_NOO,
    EVENT_HOGGER_CLAY_TO_ANDROMATH,
    EVENT_HOGGER_TELEPORT_BACK,
    EVENT_HOGGER_CHECK_EAT_RANGE,
    EVENT_HOGGER_BLOODY_STRIKE
};

enum HoggerEventTexts
{
    // Hogger
    SAY_HOGGER_AGGRO            = 0,
    SAY_HOGGER_SUMMON_MINIONS   = 2,
    SAY_HOGGER_EATING           = 3,
    SAY_HOGGER_HIT_WHILE_EATING = 4,
    SAY_HOGGER_GRR              = 6,
    SAY_HOGGER_NOO              = 7,

    // General Hammond Clay
    SAY_CLAY_OPENING            = 0,
    SAY_CLAY_EXPLANATION        = 1,
    SAY_CLAY_TAKE_HIM           = 2,
    SAY_CLAY_TO_ANDROMATH       = 3,

    // Ragamuffin
    SAY_RAGAMUFFIN_CLAY         = 0,
    SAY_RAGAMUFFIN_WOW          = 1
};

enum HoggerEventCreatures
{
    NPC_HOGGER_EVENT_HOGGER        = 448,
    NPC_HOGGER_EVENT_EATING_TARGET = 45979,
    NPC_HOGGER_EVENT_MINION        = 46932,
    NPC_HOGGER_EVENT_DUMAS         = 46940,
    NPC_HOGGER_EVENT_ANDROMATH     = 46941,
    NPC_HOGGER_EVENT_RAGAMUFFIN    = 46943,
    NPC_HOGGER_EVENT_HAMMOND_CLAY  = 65153
};

static constexpr uint32 DISPLAYID_HAMMOND_CLAY_MOUNT = 2410;

// Posicoes validadas (AshamaneCore)
static Position const HoggerClayPositions[] =
{
    { -10125.35f, 650.7324f, 36.05776f },
    { -10128.3f,  656.4648f, 36.05776f },
    { -10131.25f, 662.1973f, 36.05776f },
    { -10135.73f, 668.389f,  35.74807f }
};

static Position const HoggerAndromathPositions[] =
{
    { -10119.2f, 647.913f, 36.36745f },
    { -10123.0f, 656.875f, 36.05776f },
    { -10126.8f, 665.837f, 35.74807f }
};

static Position const HoggerDumasPositions[] =
{
    { -10130.1f, 647.7671f, 36.04665f },
    { -10132.9f, 653.5605f, 36.05776f },
    { -10135.7f, 659.354f,  36.06887f }
};

static Position const HoggerFinalPosition = { -10136.9f, 670.009f, 36.03682f };

static Position const HoggerRagamuffinPositions[] =
{
    { -10127.0f, 651.0f, 36.05776f },
    { -10123.0f, 651.0f, 36.06887f }
};

struct npc_hogger : public ScriptedAI
{
    npc_hogger(Creature* creature) : ScriptedAI(creature), _summons(me),
        _minionsSummoned(false), _endingSceneActive(false), _alreadyEaten(false), _isEating(false) { }

    void Reset() override
    {
        _events.Reset();
        _summons.DespawnAll();

        _minionsSummoned = false;
        _endingSceneActive = false;
        _alreadyEaten = false;
        _isEating = false;

        me->SetImmuneToPC(false);
        me->SetReactState(REACT_AGGRESSIVE);
        me->SetCanMelee(true);
        me->SetWalk(false);
    }

    void EnterEvadeMode(EvadeReason why) override
    {
        // Nunca resetar no meio da cena final
        if (_endingSceneActive)
            return;

        ScriptedAI::EnterEvadeMode(why);
    }

    void JustEngagedWith(Unit* /*who*/) override
    {
        Talk(SAY_HOGGER_AGGRO);
        _events.ScheduleEvent(EVENT_HOGGER_VICIOUS_SLICE, 3s);
    }

    void JustSummoned(Creature* summon) override
    {
        _summons.Summon(summon);

        // Os lacaios atacam quem esta lutando com o Hogger
        if (summon->GetEntry() == NPC_HOGGER_EVENT_MINION)
            if (Unit* victim = me->GetVictim())
                summon->AI()->AttackStart(victim);
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage, DamageEffectType /*damageType*/, SpellInfo const* /*spellInfo*/) override
    {
        if (_endingSceneActive)
        {
            damage = 0;
            return;
        }

        if (!_minionsSummoned && me->HealthBelowPctDamaged(50, damage))
            SummonMinions();

        if (!_alreadyEaten && me->HealthBelowPctDamaged(30, damage))
            MoveToEatingPosition();

        if (damage >= me->GetHealth())
        {
            damage = 0;
            me->SetHealth(1);
            RewardPlayers();       // antes da cena, enquanto a lista de combate esta intacta
            StartEndingScene();
            return;
        }

        if (_isEating)
        {
            _isEating = false;
            me->InterruptNonMeleeSpells(false);
            me->SetReactState(REACT_AGGRESSIVE);
            Talk(SAY_HOGGER_HIT_WHILE_EATING);
        }
    }

    void RewardPlayers()
    {
        for (ThreatReference const* ref : me->GetThreatManager().GetUnsortedThreatList())
            if (Player* player = ref->GetVictim()->GetCharmerOrOwnerPlayerOrPlayerItself())
                player->RewardPlayerAndGroupAtEvent(NPC_HOGGER_EVENT_HOGGER, me);
    }

    void SummonMinions()
    {
        _minionsSummoned = true;
        me->CastStop();
        Talk(SAY_HOGGER_SUMMON_MINIONS);

        for (float distance : { 0.5f, 1.5f, 2.5f })
            me->SummonCreature(NPC_HOGGER_EVENT_MINION, me->GetNearPosition(distance, 0.0f), TEMPSUMMON_CORPSE_TIMED_DESPAWN, 10s);
    }

    void MoveToEatingPosition()
    {
        _alreadyEaten = true;

        if (Creature* target = me->FindNearestCreature(NPC_HOGGER_EVENT_EATING_TARGET, 100.0f))
        {
            me->SetReactState(REACT_PASSIVE);
            me->AttackStop();
            me->GetMotionMaster()->MovePoint(0, target->GetPosition(), true);
            _events.ScheduleEvent(EVENT_HOGGER_CHECK_EAT_RANGE, 200ms);
        }
    }

    void StartEndingScene()
    {
        _endingSceneActive = true;
        _isEating = false;
        _events.Reset();

        me->InterruptNonMeleeSpells(false);
        me->SetReactState(REACT_PASSIVE);
        me->AttackStop();
        me->SetCanMelee(false);
        me->SetImmuneToPC(true, true);   // imune, mas mantendo o combate (evita reset)
        me->StopMoving();

        if (Creature* clay = me->SummonCreature(NPC_HOGGER_EVENT_HAMMOND_CLAY, HoggerClayPositions[0]))
        {
            _clayGUID = clay->GetGUID();
            clay->CastSpell(clay, SPELL_HOGGER_TELEPORT_VISUAL_1, true);
            clay->Mount(DISPLAYID_HAMMOND_CLAY_MOUNT);
            clay->AI()->Talk(SAY_CLAY_OPENING);
        }

        if (Creature* andromath = me->SummonCreature(NPC_HOGGER_EVENT_ANDROMATH, HoggerAndromathPositions[0]))
        {
            _andromathGUID = andromath->GetGUID();
            andromath->CastSpell(andromath, SPELL_HOGGER_TELEPORT_VISUAL_1, true);
        }

        if (Creature* dumas = me->SummonCreature(NPC_HOGGER_EVENT_DUMAS, HoggerDumasPositions[0]))
        {
            _dumasGUID = dumas->GetGUID();
            dumas->CastSpell(dumas, SPELL_HOGGER_TELEPORT_VISUAL_1, true);
        }

        if (Creature* kid1 = me->SummonCreature(NPC_HOGGER_EVENT_RAGAMUFFIN, HoggerRagamuffinPositions[0], TEMPSUMMON_TIMED_DESPAWN, 5s))
            kid1->AI()->Talk(SAY_RAGAMUFFIN_CLAY);

        if (Creature* kid2 = me->SummonCreature(NPC_HOGGER_EVENT_RAGAMUFFIN, HoggerRagamuffinPositions[1], TEMPSUMMON_TIMED_DESPAWN, 5s))
            kid2->AI()->Talk(SAY_RAGAMUFFIN_WOW);

        _events.ScheduleEvent(EVENT_HOGGER_GROUP_START_WALKING, 1s);
    }

    Creature* GetClay() { return ObjectAccessor::GetCreature(*me, _clayGUID); }
    Creature* GetAndromath() { return ObjectAccessor::GetCreature(*me, _andromathGUID); }
    Creature* GetDumas() { return ObjectAccessor::GetCreature(*me, _dumasGUID); }

    void TeleportBack()
    {
        for (Creature* npc : { GetClay(), GetAndromath(), GetDumas() })
        {
            if (!npc)
                continue;

            npc->CastSpell(npc, SPELL_HOGGER_TELEPORT_VISUAL_2, true);
            npc->DespawnOrUnsummon(1500ms);
        }

        DoCastSelf(SPELL_HOGGER_TELEPORT_VISUAL_2, true);
        me->DespawnOrUnsummon(1500ms);
    }

    void UpdateAI(uint32 diff) override
    {
        if (!_endingSceneActive && !UpdateVictim())
            return;

        _events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_HOGGER_VICIOUS_SLICE:
                    DoCastVictim(SPELL_HOGGER_VICIOUS_SLICE);
                    _events.Repeat(3s);
                    break;
                case EVENT_HOGGER_GROUP_START_WALKING:
                    if (Creature* clay = GetClay())
                    {
                        clay->SetWalk(true);
                        clay->GetMotionMaster()->MovePoint(0, HoggerClayPositions[2], true);
                    }
                    if (Creature* andromath = GetAndromath())
                    {
                        andromath->SetWalk(true);
                        andromath->GetMotionMaster()->MovePoint(0, HoggerAndromathPositions[2], true);
                    }
                    if (Creature* dumas = GetDumas())
                    {
                        dumas->SetWalk(true);
                        dumas->GetMotionMaster()->MovePoint(0, HoggerDumasPositions[2], true);
                    }
                    me->SetWalk(true);
                    me->GetMotionMaster()->MovePoint(0, HoggerFinalPosition);
                    _events.ScheduleEvent(EVENT_HOGGER_DISMOUNT_CLAY, 8500ms);
                    break;
                case EVENT_HOGGER_DISMOUNT_CLAY:
                    if (Creature* clay = GetClay())
                    {
                        me->SetFacingToObject(clay);
                        clay->Dismount();
                        clay->GetMotionMaster()->MovePoint(0, HoggerClayPositions[3], true);
                    }
                    _events.ScheduleEvent(EVENT_HOGGER_SAY_GRR, 3s);
                    break;
                case EVENT_HOGGER_SAY_GRR:
                    Talk(SAY_HOGGER_GRR);
                    _events.ScheduleEvent(EVENT_HOGGER_CLAY_EXPLANATION, 3s);
                    break;
                case EVENT_HOGGER_CLAY_EXPLANATION:
                    if (Creature* clay = GetClay())
                        clay->AI()->Talk(SAY_CLAY_EXPLANATION);
                    _events.ScheduleEvent(EVENT_HOGGER_CLAY_TAKE_HIM, 4500ms);
                    break;
                case EVENT_HOGGER_CLAY_TAKE_HIM:
                    if (Creature* clay = GetClay())
                        clay->AI()->Talk(SAY_CLAY_TAKE_HIM);
                    _events.ScheduleEvent(EVENT_HOGGER_SAY_NOO, 2s);
                    break;
                case EVENT_HOGGER_SAY_NOO:
                    Talk(SAY_HOGGER_NOO);
                    _events.ScheduleEvent(EVENT_HOGGER_CLAY_TO_ANDROMATH, 3s);
                    break;
                case EVENT_HOGGER_CLAY_TO_ANDROMATH:
                    if (Creature* clay = GetClay())
                    {
                        if (Creature* andromath = GetAndromath())
                        {
                            clay->SetFacingToObject(andromath);
                            andromath->SetFacingToObject(clay);
                        }
                        clay->AI()->Talk(SAY_CLAY_TO_ANDROMATH);
                    }
                    _events.ScheduleEvent(EVENT_HOGGER_TELEPORT_BACK, 4s);
                    break;
                case EVENT_HOGGER_TELEPORT_BACK:
                    TeleportBack();
                    break;
                case EVENT_HOGGER_CHECK_EAT_RANGE:
                    if (!me->FindNearestCreature(NPC_HOGGER_EVENT_EATING_TARGET, 3.0f))
                    {
                        _events.ScheduleEvent(EVENT_HOGGER_CHECK_EAT_RANGE, 200ms);
                        break;
                    }
                    DoCastSelf(SPELL_HOGGER_EATING);
                    Talk(SAY_HOGGER_EATING);
                    _isEating = true;
                    _events.ScheduleEvent(EVENT_HOGGER_BLOODY_STRIKE, 100ms);
                    break;
                case EVENT_HOGGER_BLOODY_STRIKE:
                    if (_isEating)
                    {
                        if (Creature* dummy = me->FindNearestCreature(NPC_HOGGER_EVENT_EATING_TARGET, 10.0f))
                            DoCast(dummy, SPELL_HOGGER_BLOODY_STRIKE, true);
                        _events.ScheduleEvent(EVENT_HOGGER_BLOODY_STRIKE, 1s);
                    }
                    break;
                default:
                    break;
            }
        }
    }

private:
    EventMap _events;
    SummonList _summons;

    bool _minionsSummoned;
    bool _endingSceneActive;
    bool _alreadyEaten;
    bool _isEating;

    ObjectGuid _clayGUID;
    ObjectGuid _andromathGUID;
    ObjectGuid _dumasGUID;
};

void AddSC_elwynn_forest()
{
    RegisterCreatureAI(npc_hogger);
    // Creature
    RegisterCreatureAI(npc_cameron);
    RegisterCreatureAI(npc_master_mathias_shaw_human_heritage_lions_pride_inn_basement);
    RegisterCreatureAI(npc_vanessa_vancleef_human_heritage_lions_pride_inn_basement);

    // Spells
    RegisterSpellScript(spell_stealth_vanessa_human_heritage);

    // Conversation
    RegisterConversationAI(conversation_an_unlikely_informant);
    RegisterConversationAI(conversation_the_new_classington_estate);

    // AreaTrigger
    RegisterAreaTriggerAI(at_human_heritage_lions_pride_inn_basement_enter);
}

-- Northshire: Stormwind Infantry fight the Blackrock Worg next to them (C++ script npc_stormwind_infantry)
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_stormwind_infantry' WHERE `entry` = 49869;

-- The old per-spawn SmartAI only said line 0 out of combat; the C++ script does that now
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (SELECT -`guid` FROM `creature` WHERE `id` = 49869);

-- Blackrock Worg (faction 32, beast) is hostile to the infantry, but the infantry never takes a beast as an acceptable target,
-- so their threat stays offline. Faction 14 (monster) makes the infantry hostile too and the fight starts.
UPDATE `creature_template` SET `faction` = 14 WHERE `entry` = 49871;

-- Blackrock Worg was flagged CREATURE_FLAG_EXTRA_CIVILIAN (ReactorAI, never starts combat); remove it so the worgs are aggressive
UPDATE `creature_template` SET `flags_extra` = `flags_extra` & ~2 WHERE `entry` = 49871;

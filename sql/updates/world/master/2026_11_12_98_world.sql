-- Hogger (448): troca o SmartAI pelo script C++ npc_hogger (evento da quest 176)
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_hogger' WHERE `entry` = 448;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 448 AND `source_type` = 0;

-- Remove os NPCs fixos do evento no Morro do Hogger (agora sao invocados pelo script)
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 280327 AND 280331;
DELETE FROM `creature` WHERE `guid` BETWEEN 280327 AND 280331 AND `id` IN (46940, 46941, 46942, 46943);

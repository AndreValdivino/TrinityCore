-- Northshire: Stormwind Infantry fight the Blackrock Worg next to them (C++ script npc_stormwind_infantry)
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_stormwind_infantry' WHERE `entry` = 49869;

-- The old per-spawn SmartAI only said line 0 out of combat; the C++ script does that now
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (SELECT -`guid` FROM `creature` WHERE `id` = 49869);

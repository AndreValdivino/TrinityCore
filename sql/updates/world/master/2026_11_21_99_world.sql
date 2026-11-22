-- Northshire: Stormwind Infantry fight the Blackrock Worg next to them (C++ script npc_stormwind_infantry)
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_stormwind_infantry' WHERE `entry` = 49869;

-- The old per-spawn SmartAI only said line 0 out of combat; the C++ script does that now
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (SELECT -`guid` FROM `creature` WHERE `id` = 49869);

-- Blackrock Worg: keep the original look (yellow name, faction 32 beast, CREATURE_FLAG_EXTRA_CIVILIAN, ReactorAI).
-- The fight with the infantry is staged by the C++ script (no real combat). Explicit UPDATEs because earlier
-- versions of this file already changed these rows in the database.
UPDATE `creature_template` SET `faction` = 32 WHERE `entry` = 49871;
UPDATE `creature_template` SET `flags_extra` = `flags_extra` | 2 WHERE `entry` = 49871;

-- Worgs paired with an infantry soldier stand still (the fight is staged by the script); other worgs keep wandering
UPDATE `creature` `c` JOIN `creature` `s` ON `s`.`id` = 49869 AND `s`.`map` = `c`.`map` AND POW(`s`.`position_x` - `c`.`position_x`, 2) + POW(`s`.`position_y` - `c`.`position_y`, 2) <= 36 SET `c`.`MovementType` = 0, `c`.`wander_distance` = 0 WHERE `c`.`id` = 49871;

-- No out-of-combat health regeneration, otherwise the staged fight health (80% infantry / 70% worg) keeps resetting
UPDATE `creature_template` SET `RegenHealth` = 0 WHERE `entry` IN (49869, 49871);

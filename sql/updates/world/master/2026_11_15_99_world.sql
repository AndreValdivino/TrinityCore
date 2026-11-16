-- Marshal Dughan (240): carona no Corcel de Ventobravo ate o Guarda Tomas (quest 35 "Further Concerns")
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_marshal_dughan' WHERE `entry` = 240;
-- Desfaz o teste de veiculo no Corcel de Ventobravo
UPDATE `creature_template` SET `VehicleId` = 0 WHERE `entry` = 42260;
-- A opcao de carona so aparece com a quest 35 no diario (em andamento ou completa, nao entregue)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 11611 AND `SourceEntry` = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 11611, 0, 47, 35, 10, 'Marshal Dughan - Ride option only with quest Further Concerns in log (incomplete or complete)');

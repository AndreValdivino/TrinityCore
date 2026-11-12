-- Kurtok the Slayer (42938): traducao ptBR das falas
-- ATENCAO: traducao propria. Estas falas nao existem no BroadcastText do cliente atual,
-- entao a traducao vai em creature_text_locale.
DELETE FROM `creature_text_locale` WHERE `CreatureID` = 42938 AND `Locale` = 'ptBR';
INSERT INTO `creature_text_locale` (`CreatureID`, `GroupID`, `ID`, `Locale`, `Text`) VALUES
(42938, 0, 0, 'ptBR', 'Fracote da Aliança, suas terras vão queimar!'),
(42938, 1, 0, 'ptBR', 'O Clã Rocha Negra vai acabar com você...');

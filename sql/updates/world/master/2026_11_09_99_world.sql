-- Treinadores de profissão: o botão "Treine-me em Encantamento" (opção 11)
-- do submenu 12193 não tinha treinador ligado; só o atalho (opção 2) tinha.
DELETE FROM `creature_trainer` WHERE `MenuID` = 12193 AND `OptionID` = 11;
INSERT INTO `creature_trainer` (`CreatureID`, `TrainerID`, `MenuID`, `OptionID`) VALUES
(45286, 51, 12193, 11),
(47384, 51, 12193, 11),
(47396, 51, 12193, 11),
(47400, 51, 12193, 11),
(47418, 51, 12193, 11),
(47419, 51, 12193, 11),
(47420, 51, 12193, 11),
(47421, 51, 12193, 11),
(47431, 51, 12193, 11),
(48619, 51, 12193, 11),
(50247, 51, 12193, 11),
(57620, 51, 12193, 11),
(65043, 51, 12193, 11);

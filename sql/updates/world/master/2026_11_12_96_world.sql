-- Quest "É hora de reagir" (9 versoes, uma por classe): texto de conclusao em ptBR
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (28757, 28762, 28763, 28764, 28765, 28766, 28767, 29078, 31139);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(28757, 'ptBR', 'Você nos fez ganhar tempo, $n, mas agora temos que tratar de problemas ainda maiores.', 0),
(28762, 'ptBR', 'Você nos fez ganhar tempo, $n, mas agora temos que tratar de problemas ainda maiores.', 0),
(28763, 'ptBR', 'Você nos fez ganhar tempo, $n, mas agora temos que tratar de problemas ainda maiores.', 0),
(28764, 'ptBR', 'Você nos fez ganhar tempo, $n, mas agora temos que tratar de problemas ainda maiores.', 0),
(28765, 'ptBR', 'Você nos fez ganhar tempo, $n, mas agora temos que tratar de problemas ainda maiores.', 0),
(28766, 'ptBR', 'Você nos fez ganhar tempo, $n, mas agora temos que tratar de problemas ainda maiores.', 0),
(28767, 'ptBR', 'Você nos fez ganhar tempo, $n, mas agora temos que tratar de problemas ainda maiores.', 0),
(29078, 'ptBR', 'Você nos fez ganhar tempo, $n, mas agora temos que tratar de problemas ainda maiores.', 0),
(31139, 'ptBR', 'Você nos fez ganhar tempo, $n, mas agora temos que tratar de problemas ainda maiores.', 0);

-- Quest "É hora de reagir": texto de progresso em ptBR
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (28757, 28762, 28763, 28764, 28765, 28766, 28767, 29078, 31139);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(28757, 'ptBR', 'Conseguiu revidar o ataque dos worgs da Rocha Negra?', 0),
(28762, 'ptBR', 'Conseguiu revidar o ataque dos worgs da Rocha Negra?', 0),
(28763, 'ptBR', 'Conseguiu revidar o ataque dos worgs da Rocha Negra?', 0),
(28764, 'ptBR', 'Conseguiu revidar o ataque dos worgs da Rocha Negra?', 0),
(28765, 'ptBR', 'Conseguiu revidar o ataque dos worgs da Rocha Negra?', 0),
(28766, 'ptBR', 'Conseguiu revidar o ataque dos worgs da Rocha Negra?', 0),
(28767, 'ptBR', 'Conseguiu revidar o ataque dos worgs da Rocha Negra?', 0),
(29078, 'ptBR', 'Conseguiu revidar o ataque dos worgs da Rocha Negra?', 0),
(31139, 'ptBR', 'Conseguiu revidar o ataque dos worgs da Rocha Negra?', 0);

-- Quest "Leões e Cordeiros" (9 versoes): texto de conclusao em ptBR
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (28759, 28769, 28770, 28771, 28772, 28773, 28774, 29079, 31140);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(28759, 'ptBR', 'Bom trabalho, $n. Até que você se revelou um bem valioso para a guarnição. Só falta o treinamento!', 0),
(28769, 'ptBR', 'Bom trabalho, $n. Até que você se revelou um bem valioso para a guarnição. Só falta o treinamento!', 0),
(28770, 'ptBR', 'Bom trabalho, $n. Até que você se revelou um bem valioso para a guarnição. Só falta o treinamento!', 0),
(28771, 'ptBR', 'Bom trabalho, $n. Até que você se revelou um bem valioso para a guarnição. Só falta o treinamento!', 0),
(28772, 'ptBR', 'Bom trabalho, $n. Até que você se revelou um bem valioso para a guarnição. Só falta o treinamento!', 0),
(28773, 'ptBR', 'Bom trabalho, $n. Até que você se revelou um bem valioso para a guarnição. Só falta o treinamento!', 0),
(28774, 'ptBR', 'Bom trabalho, $n. Até que você se revelou um bem valioso para a guarnição. Só falta o treinamento!', 0),
(31140, 'ptBR', 'Bom trabalho, $n. Até que você se revelou um bem valioso para a guarnição. Só falta o treinamento!', 0),
(29079, 'ptBR', 'Excelente trabalho, $n. Até que você se revelou um bem valioso para a guarnição.$B$BSinta-se a vontade para falar com qualquer um dos instrutores ao redor da abadia se precisar afiar as suas habilidades de combate.$B$BQuando estiver pronto, tenho mais uma missão para você...', 0);

-- Quest "Leões e Cordeiros": texto de progresso em ptBR
-- ATENCAO: traducao propria (o Wowhead pt nao exibe o texto de progresso oficial desta missao)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (28759, 28769, 28770, 28771, 28772, 28773, 28774, 29079, 31140);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(28759, 'ptBR', 'Mate os espiões!', 0),
(28769, 'ptBR', 'Mate os espiões!', 0),
(28770, 'ptBR', 'Mate os espiões!', 0),
(28771, 'ptBR', 'Mate os espiões!', 0),
(28772, 'ptBR', 'Mate os espiões!', 0),
(28773, 'ptBR', 'Mate os espiões!', 0),
(28774, 'ptBR', 'Mate os espiões!', 0),
(29079, 'ptBR', 'Mate os espiões!', 0),
(31140, 'ptBR', 'Mate os espiões!', 0);

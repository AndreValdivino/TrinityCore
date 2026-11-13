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

-- "Vila Norte precisa de você": CONCLUSAO em ptBR (IDs 28780,28784,28785,28786,28787,28788,28789,29080,31143)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (28780,28784,28785,28786,28787,28788,28789,29080,31143);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(28780, 'ptBR', 'É verdade, eles nos pegaram de surpresa. Não posso enviar mais soldados e correr o risco de perdê-los também. Preciso de um voluntário. Alguém disposto a arriscar a vida!', 0),
(28784, 'ptBR', 'É verdade, eles nos pegaram de surpresa. Não posso enviar mais soldados e correr o risco de perdê-los também. Preciso de um voluntário. Alguém disposto a arriscar a vida!', 0),
(28785, 'ptBR', 'É verdade, eles nos pegaram de surpresa. Não posso enviar mais soldados e correr o risco de perdê-los também. Preciso de um voluntário. Alguém disposto a arriscar a vida!', 0),
(28786, 'ptBR', 'É verdade, eles nos pegaram de surpresa. Não posso enviar mais soldados e correr o risco de perdê-los também. Preciso de um voluntário. Alguém disposto a arriscar a vida!', 0),
(28787, 'ptBR', 'É verdade, eles nos pegaram de surpresa. Não posso enviar mais soldados e correr o risco de perdê-los também. Preciso de um voluntário. Alguém disposto a arriscar a vida!', 0),
(28788, 'ptBR', 'É verdade, eles nos pegaram de surpresa. Não posso enviar mais soldados e correr o risco de perdê-los também. Preciso de um voluntário. Alguém disposto a arriscar a vida!', 0),
(28789, 'ptBR', 'É verdade, eles nos pegaram de surpresa. Não posso enviar mais soldados e correr o risco de perdê-los também. Preciso de um voluntário. Alguém disposto a arriscar a vida!', 0),
(29080, 'ptBR', 'É verdade, eles nos pegaram de surpresa. Não posso enviar mais soldados e correr o risco de perdê-los também. Preciso de um voluntário. Alguém disposto a arriscar a vida!', 0),
(31143, 'ptBR', 'É verdade, eles nos pegaram de surpresa. Não posso enviar mais soldados e correr o risco de perdê-los também. Preciso de um voluntário. Alguém disposto a arriscar a vida!', 0);


-- "Assassinos de aluguel": CONCLUSAO em ptBR (IDs 28791,28792,28793,28794,28795,28796,28797,29081,31144)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (28791,28792,28793,28794,28795,28796,28797,29081,31144);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(28791, 'ptBR', 'Você ensinou uma boa lição àqueles monstros! Eles vão pensar duas vezes antes de aceitarem outros serviços dos orcs.', 0),
(28792, 'ptBR', 'Você ensinou uma boa lição àqueles monstros! Eles vão pensar duas vezes antes de aceitarem outros serviços dos orcs.', 0),
(28793, 'ptBR', 'Você ensinou uma boa lição àqueles monstros! Eles vão pensar duas vezes antes de aceitarem outros serviços dos orcs.', 0),
(28794, 'ptBR', 'Você ensinou uma boa lição àqueles monstros! Eles vão pensar duas vezes antes de aceitarem outros serviços dos orcs.', 0),
(28795, 'ptBR', 'Você ensinou uma boa lição àqueles monstros! Eles vão pensar duas vezes antes de aceitarem outros serviços dos orcs.', 0),
(28796, 'ptBR', 'Você ensinou uma boa lição àqueles monstros! Eles vão pensar duas vezes antes de aceitarem outros serviços dos orcs.', 0),
(28797, 'ptBR', 'Você ensinou uma boa lição àqueles monstros! Eles vão pensar duas vezes antes de aceitarem outros serviços dos orcs.', 0),
(29081, 'ptBR', 'Você ensinou uma boa lição àqueles monstros! Eles vão pensar duas vezes antes de aceitarem outros serviços dos orcs.', 0),
(31144, 'ptBR', 'Você ensinou uma boa lição àqueles monstros! Eles vão pensar duas vezes antes de aceitarem outros serviços dos orcs.', 0);


-- "Assassinos de aluguel": PROGRESSO em ptBR (IDs 28791,28792,28793,28794,28795,28796,28797,29081,31144)
-- ATENCAO: traducao propria (sem versao oficial disponivel)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (28791,28792,28793,28794,28795,28796,28797,29081,31144);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(28791, 'ptBR', 'Mate os goblins assassinos!', 0),
(28792, 'ptBR', 'Mate os goblins assassinos!', 0),
(28793, 'ptBR', 'Mate os goblins assassinos!', 0),
(28794, 'ptBR', 'Mate os goblins assassinos!', 0),
(28795, 'ptBR', 'Mate os goblins assassinos!', 0),
(28796, 'ptBR', 'Mate os goblins assassinos!', 0),
(28797, 'ptBR', 'Mate os goblins assassinos!', 0),
(29081, 'ptBR', 'Mate os goblins assassinos!', 0),
(31144, 'ptBR', 'Mate os goblins assassinos!', 0);


-- "Livra-nos do mal": PROGRESSO em ptBR (IDs 28806,28808,28809,28810,28811,28812,28813,29082,63447)
-- ATENCAO: traducao propria (sem versao oficial disponivel)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (28806,28808,28809,28810,28811,28812,28813,29082,63447);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(28806, 'ptBR', 'Salve os soldados!', 0),
(28808, 'ptBR', 'Salve os soldados!', 0),
(28809, 'ptBR', 'Salve os soldados!', 0),
(28810, 'ptBR', 'Salve os soldados!', 0),
(28811, 'ptBR', 'Salve os soldados!', 0),
(28812, 'ptBR', 'Salve os soldados!', 0),
(28813, 'ptBR', 'Salve os soldados!', 0),
(29082, 'ptBR', 'Salve os soldados!', 0),
(63447, 'ptBR', 'Salve os soldados!', 0);

-- "Livra-nos do mal": CONCLUSAO em ptBR (IDs 28806,28808,28809,28810,28811,28812,28813,29082,63447)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (28806,28808,28809,28810,28811,28812,28813,29082,63447);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(28806, 'ptBR', 'Acho que você finalmente compreendeu o poder da Luz. A Luz nos dá esperança, $girmão:irmã;, e nos afasta da escuridão! BENDITA SEJA A LUZ!', 0),
(28808, 'ptBR', 'Acho que você finalmente compreendeu o poder da Luz. A Luz nos dá esperança, $girmão:irmã;, e nos afasta da escuridão! BENDITA SEJA A LUZ!', 0),
(28809, 'ptBR', 'Acho que você finalmente compreendeu o poder da Luz. A Luz nos dá esperança, $girmão:irmã;, e nos afasta da escuridão! BENDITA SEJA A LUZ!', 0),
(28810, 'ptBR', 'Acho que você finalmente compreendeu o poder da Luz. A Luz nos dá esperança, $girmão:irmã;, e nos afasta da escuridão! BENDITA SEJA A LUZ!', 0),
(28811, 'ptBR', 'Acho que você finalmente compreendeu o poder da Luz. A Luz nos dá esperança, $girmão:irmã;, e nos afasta da escuridão! BENDITA SEJA A LUZ!', 0),
(28812, 'ptBR', 'Acho que você finalmente compreendeu o poder da Luz. A Luz nos dá esperança, $girmão:irmã;, e nos afasta da escuridão! BENDITA SEJA A LUZ!', 0),
(28813, 'ptBR', 'Acho que você finalmente compreendeu o poder da Luz. A Luz nos dá esperança, $girmão:irmã;, e nos afasta da escuridão! BENDITA SEJA A LUZ!', 0),
(29082, 'ptBR', 'Acho que você finalmente compreendeu o poder da Luz. A Luz nos dá esperança, $girmão:irmã;, e nos afasta da escuridão! BENDITA SEJA A LUZ!', 0),
(63447, 'ptBR', 'Acho que você finalmente compreendeu o poder da Luz. A Luz nos dá esperança, $girmão:irmã;, e nos afasta da escuridão! BENDITA SEJA A LUZ!', 0);

-- "A retaguarda está livre": CONCLUSAO em ptBR (IDs 28817,28818,28819,28820,28821,28822,28823,29083,31145)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (28817,28818,28819,28820,28821,28822,28823,29083,31145);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(28817, 'ptBR', 'Com a sua ajuda, conseguimos proteger as áreas norte e oeste de Vila Norte. Ainda há um grande contingente de orcs Rocha Negra na área leste, e eles estão começando a botar fogo na floresta!', 0),
(28818, 'ptBR', 'Com a sua ajuda, conseguimos proteger as áreas norte e oeste de Vila Norte. Ainda há um grande contingente de orcs Rocha Negra na área leste, e eles estão começando a botar fogo na floresta!', 0),
(28819, 'ptBR', 'Com a sua ajuda, conseguimos proteger as áreas norte e oeste de Vila Norte. Ainda há um grande contingente de orcs Rocha Negra na área leste, e eles estão começando a botar fogo na floresta!', 0),
(28820, 'ptBR', 'Com a sua ajuda, conseguimos proteger as áreas norte e oeste de Vila Norte. Ainda há um grande contingente de orcs Rocha Negra na área leste, e eles estão começando a botar fogo na floresta!', 0),
(28821, 'ptBR', 'Com a sua ajuda, conseguimos proteger as áreas norte e oeste de Vila Norte. Ainda há um grande contingente de orcs Rocha Negra na área leste, e eles estão começando a botar fogo na floresta!', 0),
(28822, 'ptBR', 'Com a sua ajuda, conseguimos proteger as áreas norte e oeste de Vila Norte. Ainda há um grande contingente de orcs Rocha Negra na área leste, e eles estão começando a botar fogo na floresta!', 0),
(28823, 'ptBR', 'Com a sua ajuda, conseguimos proteger as áreas norte e oeste de Vila Norte. Ainda há um grande contingente de orcs Rocha Negra na área leste, e eles estão começando a botar fogo na floresta!', 0),
(29083, 'ptBR', 'Com a sua ajuda, conseguimos proteger as áreas norte e oeste de Vila Norte. Ainda há um grande contingente de orcs Rocha Negra na área leste, e eles estão começando a botar fogo na floresta!', 0),
(31145, 'ptBR', 'Com a sua ajuda, conseguimos proteger as áreas norte e oeste de Vila Norte. Ainda há um grande contingente de orcs Rocha Negra na área leste, e eles estão começando a botar fogo na floresta!', 0);

-- "A esperança é a última que queima": PROGRESSO em ptBR (IDs 26391)
-- ATENCAO: traducao propria (sem versao oficial disponivel)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26391);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(26391, 'ptBR', 'Você apagou os incêndios?', 0);

-- "A esperança é a última que queima": CONCLUSAO em ptBR (IDs 26391)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26391);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(26391, 'ptBR', 'Bendito seja, $n. Você é um verdadeiro herói da Aliança! Mesmo com terras completamente calcinadas, mesmo que não reste nada no vinhedo além de cinzas e escombros, mesmo assim eu vou conseguir me recuperar! Certo? Ah, não está tão ruim assim...', 0);

-- "Invasão dos Rocha Negra": PROGRESSO em ptBR (IDs 26389)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26389);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(26389, 'ptBR', 'Conseguiu matar as hordas de orcs furiosos?', 0);

-- "Invasão dos Rocha Negra": CONCLUSAO em ptBR (IDs 26389)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26389);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(26389, 'ptBR', 'Os orcs Rocha Negra certamente cairão, já que a principal tropa deles foi derrotada! Só resta uma coisa a fazer.', 0);

-- "Vamos acabar com a invasão!": PROGRESSO em ptBR (IDs 26390)
-- ATENCAO: traducao propria (sem versao oficial disponivel)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26390);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(26390, 'ptBR', 'Você encontrou Kurtok?', 0);

-- "Vamos acabar com a invasão!": CONCLUSAO em ptBR (IDs 26390)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26390);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(26390, 'ptBR', 'Com a morte dele, estamos mais uma vez a salvo dos orcs. Vou enviar aldeões para tentar selar a passagem, para que nenhum orc consiga entrar de novo em nosso território.$B$BVocê tem a gratidão de Ventobravo e da Aliança, grande herói!', 0);

-- "apresente-se em vila d'ouro": PROGRESSO em ptBR (IDs 54)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (54);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(54, 'ptBR', 'Belmonte enviou notícias? A Vila Norte é um mero jardim se comparada à Floresta de Elwynn, então nem imagino qual seja o conteúdo desse relatório.$B$BDeixe-me ver essa papelada...', 0);

-- "apresente-se em vila d'ouro": CONCLUSAO em ptBR (IDs 54)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (54);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(54, 'ptBR', 'Bem, aqui diz que você recebeu a patente de subdelegado interino da Intendência de Polícia de Ventobravo. Meus parabéns.$B$BE boa sorte, pois cuidar da segurança de Elwynn não é moleza... Ainda mais com a maior parte do Exército fazendo não sei o que para não sei qual nobre!$B$BÉ difícil acompanhar a politicagem em tempos sombrios como estes...', 0);

-- "Repouso e Relaxamento": CONCLUSAO em ptBR (IDs 2158,37112)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (2158,37112);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(2158, 'ptBR', 'Repouso e relaxamento para os cansados e famintos, esse é nosso lema! Por favor, sente-se ao pé do fogo e descanse os ossos.$B$BVocê gostaria de alguma coisa para comer e beber?', 0),
(37112, 'ptBR', 'Repouso e relaxamento para os cansados e famintos, esse é nosso lema! Por favor, sente-se ao pé do fogo e descanse os ossos.$B$BVocê gostaria de alguma coisa para comer e beber?', 0);

-- "Velas dos kobolds": PROGRESSO em ptBR (IDs 60)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (60);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(60, 'ptBR', 'Você já coletou as velas? ', 0);

-- "Velas dos kobolds": CONCLUSAO em ptBR (IDs 60)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (60);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(60, 'ptBR', 'Esteve ocupado caçando kobolds? Obrigado pelas velas, $n. Aqui está sua recompensa...', 0);

-- "A mina Vailafundo": PROGRESSO em ptBR (IDs 62)
-- ATENCAO: traducao propria (sem versao oficial disponivel)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (62);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(62, 'ptBR', 'O que você tem a relatar, $n? Esteve na Mina Vailafundo?', 0);

-- "A mina Vailafundo": CONCLUSAO em ptBR (IDs 62)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (62);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(62, 'ptBR', 'Essas são más notícias. Daqui a pouco vão ser dragões... Vamos ter que aumentar a patrulha perto da mina. Obrigado, $n. E espere um pouco aí... Acho que tenho outra tarefa pra você.', 0);

-- "A mina de Jaspe": PROGRESSO em ptBR (IDs 76)
-- ATENCAO: traducao propria (sem versao oficial disponivel)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (76);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(76, 'ptBR', 'Saudações, $n. O que você tem a relatar? Já fez o reconhecimento da Mina de Jaspe?', 0);

-- "A mina de Jaspe": CONCLUSAO em ptBR (IDs 76)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (76);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(76, 'ptBR', 'Kobolds na Mina de Jaspe? Praga! A situação piora a cada minuto!$B$BObrigado pelo relatório, $n. Eu só queria que você me trouxesse boas notícias de vez em quando.', 0);

-- "Perigo anfíbio": CONCLUSAO em ptBR (IDs 40)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (40);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(40, 'ptBR', 'Sim, eu falei com Remy. Eu o respeito como comerciante, mas todas as notícias de avistamento de murlocs são vagas, quando muito.$B$BEstamos cientes de sua preocupação, mas a menos que eu receba um relatório militar sobre a ameaça murloc, não posso me dar ao luxo de enviar mais tropas para o leste.', 0);

-- "Trocando Pó de Ouro": PROGRESSO em ptBR (IDs 47)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (47);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(47, 'ptBR', 'Psst! Conseguiu o pó de ouro pra mim, pra mim?', 0);

-- "Trocando Pó de Ouro": CONCLUSAO em ptBR (IDs 47)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (47);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(47, 'ptBR', 'Obrigado pelo pó, pelo pó, $n. Aqui está seu dinheiro, dinheiro, e... aqui, uma lembrança dos meus associados, associados. Talvez você ache útil, útil.', 0);

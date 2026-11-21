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
(29079, 'ptBR', 'Excelente trabalho, $n. Até que você se revelou um bem valioso para a guarnição.$B$BSinta-se a vontade para falar com qualquer um dos instrutores ao redor da abadia se precisar afiar as suas habilidades de combate.$B$BQuando estiver $gpronto:pronta;, tenho mais uma missão para você...', 0);

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
(26391, 'ptBR', 'Bendito seja, $n. Você é $gum verdadeiro herói:uma verdadeira heroína; da Aliança! Mesmo com terras completamente calcinadas, mesmo que não reste nada no vinhedo além de cinzas e escombros, mesmo assim eu vou conseguir me recuperar! Certo? Ah, não está tão ruim assim...', 0);

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
(26390, 'ptBR', 'Com a morte dele, estamos mais uma vez a salvo dos orcs. Vou enviar aldeões para tentar selar a passagem, para que nenhum orc consiga entrar de novo em nosso território.$B$BVocê tem a gratidão de Ventobravo e da Aliança, grande $gherói:heroína;!', 0);

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

-- "Jovens Amantes": PROGRESSO em ptBR (IDs 106)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (106);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(106, 'ptBR', 'Você trouxe o quê?? Mabel é a luz dessa minha vida insossa. Rápido, deixe-me ver essa carta!', 0);

-- "Jovens Amantes": CONCLUSAO em ptBR (IDs 106)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (106);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(106, 'ptBR', 'Ah! Não consigo suportar nossa separação. Preciso vê-la!!', 0);

-- "Dê de beber a Geraldo": PROGRESSO em ptBR (IDs 16)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (16);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(16, 'ptBR', 'O trabalho na fazenda é pesado... estou sempre à procura de água fresca da fonte.$B$BSe você tiver água, estou disposto a fazer negócio.', 0);

-- "Dê de beber a Geraldo": CONCLUSAO em ptBR (IDs 16)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (16);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(16, 'ptBR', 'Obrigado, $n! E volte mais vezes se quiser negociar de novo!', 0);

-- "Princesa tem que morrer!": PROGRESSO em ptBR (IDs 88)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (88);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(88, 'ptBR', 'Já achou ela? Conseguiu pegá-la?', 0);

-- "Princesa tem que morrer!": CONCLUSAO em ptBR (IDs 88)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (88);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(88, 'ptBR', 'Graças aos deuses! Aquela porca estava ficando tão grande que fiquei com medo de perder a safra inteira! Obrigada, $n.$B$BAgora, pode escolher um prêmio', 0);

-- "O colar perdido": CONCLUSAO em ptBR (IDs 85)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (85);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(85, 'ptBR', 'Você perdeu o quê? Bom, eu não peguei colar nenhum porque não sou nenhum ladrão!$B$BEu até acho que sei quem foi... mas...<sorrisinho malandro>... quando eu estou com fome eu esqueço tudo...', 0);

-- "Juntando a fome...": PROGRESSO em ptBR (IDs 86)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (86);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(86, 'ptBR', 'Não acho certo dar comida pro moleque que me roubou, pra começo de conversa, mas se é isso que eu preciso fazer pra recuperar o meu colar, que seja!$B$BVocê trouxe a carne de javali?', 0);

-- "Juntando a fome...": CONCLUSAO em ptBR (IDs 86)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (86);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(86, 'ptBR', 'Apesar da carne não ser das melhores, é só cozinhar com o tempero certo e ela dá uma torta e tanto!', 0);

-- "...com a vontade de comer": PROGRESSO em ptBR (IDs 84)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (84);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(84, 'ptBR', 'Ai ai... Tô morrendo de fome! Você trouxe a torta, $n?', 0);

-- "...com a vontade de comer": CONCLUSAO em ptBR (IDs 84)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (84);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(84, 'ptBR', 'Mm, que cheirinho... Essa torta é a melhor! Minha memória já tá até voltando...', 0);

-- "Um recado rápido": PROGRESSO em ptBR (IDs 26393)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26393);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(26393, 'ptBR', 'Você parece estar com pressa. Bom, veio ao lugar certo!', 0);

-- "Um recado rápido": CONCLUSAO em ptBR (IDs 26393)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26393);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(26393, 'ptBR', 'Você precisa levar esse bilhete a Ventobravo? Sem problema, é só montar num dos meus grifos!', 0);

-- "Siga para Ventobravo": PROGRESSO em ptBR (IDs 26394)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26394);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(26394, 'ptBR', 'Está de viagem, hein? Tem visto algum lugar interessante?', 0);

-- "Siga para Ventobravo": CONCLUSAO em ptBR (IDs 26394)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26394);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(26394, 'ptBR', 'Ah, um bilhete do ferreiro Argus? Não me surpreende que ele precise de mais equipamento. Com tantos recrutas novos hoje em dia...$B$BBom, obrigado, $n. Aqui tem dinheiro para cobrir suas despesas de viagem.', 0);

-- "Dungar Tragolongo": PROGRESSO em ptBR (IDs 26395)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26395);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(26395, 'ptBR', 'Isso tudo é suor, $grapaz:moça;? Você anda correndo demais. Pegue um grifo da próxima vez!', 0);

-- "Dungar Tragolongo": CONCLUSAO em ptBR (IDs 26395)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26395);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(26395, 'ptBR', 'Um caixote para Vila d\'Ouro, é? O povo está ficando preguiçoso mesmo... Você já foi a Vila d\'Ouro? Se já, então está tudo certo, $gmeu amigo:minha amiga;. Tenho vários grifos treinados nessa rota!', 0);

-- "Fale novamente com Argus": PROGRESSO em ptBR (IDs 26396)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26396);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(26396, 'ptBR', 'Já voltou de Ventobravo? Osric mandou as armaduras?', 0);

-- "Fale novamente com Argus": CONCLUSAO em ptBR (IDs 26396)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26396);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(26396, 'ptBR', 'Você trouxe as armaduras? Ótimo! Vamos dividi-las entre as pessoas que necessitam delas imediatamente.$B$BObrigado, $n. Seu esforço tem sido de grande ajuda. E agora que você já voou num grifo, espero que venha sempre nos dar uma ajuda aqui em Vila d\'Ouro!', 0);

-- "Fale com a vovó": CONCLUSAO em ptBR (IDs 111)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (111);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(111, 'ptBR', 'Enquanto nossas famílias estiverem brigando, Tomasino e Mabel não têm um futuro muito promissor juntos, mas... talvez possamos uni-los por algum tempo.$B$BHum... o que podemos fazer...?', 0);

-- "Dentadouro": PROGRESSO em ptBR (IDs 87)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (87);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(87, 'ptBR', 'Olá, $n. Você encontrou meu colar?', 0);

-- "Dentadouro": CONCLUSAO em ptBR (IDs 87)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (87);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(87, 'ptBR', 'Você encontrou! Obrigada, obrigada, $gquerido:querida;!$B$BAqui, aceite isto. Era do meu marido, e ele dizia que dava sorte. Quem dera ele não tivesse esquecido de levar na última campanha... *sniff*', 0);

-- "Bilhete para Durval": PROGRESSO em ptBR (IDs 107)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (107);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(107, 'ptBR', 'Então você tem um bilhete da "Vó" Campedra, não é? Faz anos que não vejo Mildred! O que será que ela quer?', 0);

-- "Bilhete para Durval": CONCLUSAO em ptBR (IDs 107)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (107);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(107, 'ptBR', 'Meu coração se confrange com a sorte daqueles dois, Mabel e Tomasino... Eu me lembro de quando era um jovem apaixonado...$B$BDeve haver algo que possamos fazer para ajudá-los! Deixe-me pensar...', 0);

-- "Coletando Alga": PROGRESSO em ptBR (IDs 112)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (112);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(112, 'ptBR', 'Conseguiu as cristalgas? Mabel deve estar louca pra ver o namorado...', 0);

-- "Coletando Alga": CONCLUSAO em ptBR (IDs 112)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (112);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(112, 'ptBR', 'Você conseguiu. Bom trabalho! Agora, espere um pouco enquanto preparo a poção...', 0);

-- "A fuga": PROGRESSO em ptBR (IDs 114)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (114);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(114, 'ptBR', 'Você entregou minha carta para Tomasino? O que ele disse??', 0);

-- "A fuga": CONCLUSAO em ptBR (IDs 114)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (114);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(114, 'ptBR', 'Oh, minha nossa! Eu me sinto culpada por enganar minha família, mas meus sentimentos por Tomasino são fortes demais para ignorar.$B$BObrigada, $n! Vou beber esse elixir assim que tiver uma chance e, então, irei encontrar meu amor!$B$BE quanto a você... por favor, aceite isto.', 0);

-- "Mais preocupações": CONCLUSAO em ptBR (IDs 35)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (35);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(35, 'ptBR', 'Sim, os murlocs se estabeleceram perto dos córregos da parte leste de Elwynn. Não sabemos o que querem aqui, mas eles são agressivos e semi-inteligentes.', 0);

-- "Encontre os guardas perdidos": CONCLUSAO em ptBR (IDs 37)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (37);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(37, 'ptBR', 'O cadáver foi despojado de seus pertences, mas perto dali você encontra um medalhão com uma inscrição gravada: "Soldado Malaquias Rocha".', 0);

-- "Descubra o destino de Rodolfo": CONCLUSAO em ptBR (IDs 45)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (45);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(45, 'ptBR', 'Você encontra um medalhão no pescoço do cadáver. Nele, há uma inscrição: "Soldado Rodolfo Horta."', 0);

-- "Um feixe de encrenca": PROGRESSO em ptBR (IDs 5545)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (5545);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(5545, 'ptBR', 'O prazo continua apertando, $c. Por favor se apresse e me traga aqueles feixes de lenha.', 0);

-- "Um feixe de encrenca": CONCLUSAO em ptBR (IDs 5545)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (5545);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(5545, 'ptBR', 'Excelente! Graças a você, vou conseguir atender aos pedidos dentro do prazo! Para mostrar minha gratidão, aqui tem algum dinheiro pelo incômodo.$B$BObrigada e adeus.', 0);

-- "O coletor": PROGRESSO em ptBR (IDs 123)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (123);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(123, 'ptBR', 'O quê?!? Nosso pessoal já não trabalha nas minas de Elwynn há meses!$B$BDeixe eu ver esse bilhete...', 0);

-- "O coletor": CONCLUSAO em ptBR (IDs 123)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (123);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(123, 'ptBR', 'Hum... Eu já tinha ouvido falar desse "Coletor", mas não sei pra quem ele trabalha. Obrigado por trazer essa escala pra mim. Ela nos ajudará a resolver esse mistério.', 0);

-- "PROCURA-SE: Tiago Ciríaco": PROGRESSO em ptBR (IDs 26152)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26152);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(26152, 'ptBR', 'Veio receber a recompensa?', 0);

-- "PROCURA-SE: Tiago Ciríaco": CONCLUSAO em ptBR (IDs 26152)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (26152);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(26152, 'ptBR', 'Justiça foi feita!', 0);

-- "Barbatanas de molho": PROGRESSO em ptBR (IDs 46)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (46);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(46, 'ptBR', 'Como está indo a caçada?', 0);

-- "Barbatanas de molho": CONCLUSAO em ptBR (IDs 46)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (46);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(46, 'ptBR', 'Conseguiu as barbatanas? Ótimo! O delegado Durão está um tanto apreensivo a respeito da situação no leste de Elwynn. Vai ser bom poder dizer pra ele que as coisas estão entrando nos eixos por lá.$B$BSuas ações ajudaram bastante nesse caso.', 0);

-- "Proteja a fronteira": PROGRESSO em ptBR (IDs 52)
-- ATENCAO: traducao propria (sem versao oficial disponivel)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (52);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(52, 'ptBR', 'Você matou os lobos e ursos?', 0);

-- "Proteja a fronteira": CONCLUSAO em ptBR (IDs 52)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (52);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(52, 'ptBR', 'Muito obrigado pela ajuda, $n. Tem alguma coisa na floresta deixando esses bichos afoitos...$B$BO que quer que seja, espero que continue por lá.', 0);

-- "Apresente-se a Tomás": PROGRESSO em ptBR (IDs 71)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (71);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(71, 'ptBR', 'Olá, $n. Você descobriu o que houve com Rodolfo e Malaquias?', 0);

-- "Apresente-se a Tomás": CONCLUSAO em ptBR (IDs 71)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (71);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(71, 'ptBR', 'Você confirmou meus temores, $n. Os murlocs são uma ameaça que não podemos ignorar.', 0);

-- Sara Timberlain (278): saudacao de quem da missoes em ptBR
-- ATENCAO: traducao propria (saudacoes nao aparecem no Wowhead)
DELETE FROM `quest_greeting_locale` WHERE `ID` = 278 AND `Type` = 0 AND `locale` = 'ptBR';
INSERT INTO `quest_greeting_locale` (`ID`, `Type`, `locale`, `Greeting`, `VerifiedBuild`) VALUES
(278, 0, 'ptBR', 'Olá, $gbom senhor:boa senhora;. Sente-se e coma alguma coisa, se estiver com fome. Não se preocupe se eu parecer ocupada com a minha costura... Estou ouvindo...', 0);

-- "Armadura de pano e couro": PROGRESSO em ptBR (IDs 59)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (59);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(59, 'ptBR', 'Fui contratada para fornecer armaduras de pano e couro para o Exército de Ventobravo.$B$BSe você tiver um molde, ficarei feliz de fazer uma armadura pra você.', 0);

-- "Armadura de pano e couro": CONCLUSAO em ptBR (IDs 59)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (59);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(59, 'ptBR', 'Ah, obrigada pelo molde. Escolha seu modelo de armadura à vontade.$B$BE boa sorte, valente $c. Que essa armadura lhe sirva bem.', 0);

-- "Itens finos de linho": PROGRESSO em ptBR (IDs 83)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (83);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(83, 'ptBR', 'Estou ficando sem linho, $n. Já conseguiu alguma coisa pra mim?', 0);

-- "Itens finos de linho": CONCLUSAO em ptBR (IDs 83)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (83);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(83, 'ptBR', 'Ah, são bons retalhos, mesmo um pouco rotos...$B$BAqui está!', 0);

-- "Perseguição implacável": PROGRESSO em ptBR (IDs 147)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (147);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(147, 'ptBR', 'Você encontrou o Coletor? Descobriu para quem ele estava trabalhando?', 0);


-- "Perseguição implacável": CONCLUSAO em ptBR (IDs 147)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (147);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(147, 'ptBR', 'Você o encontrou? Muito bem, $n. Ele não vai coletar mais nada das Minas de Elwynn!$B$BE o anel que você trouxe é bem interessante... é um anel de associação da velha Guilda de Pedreiros de Ventobravo. Faz anos que eu não via um desses. Desde a época em que a Irmandade Défias infestava essa área.', 0);

-- "Ribeira d'Oeste precisa de ajuda!": CONCLUSAO em ptBR (IDs 239)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (239);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(239, 'ptBR', 'O delegado Durão enviou você, não é? Bom, você não é do exército, mas se Durão o enviou, está bom pra mim!$B$BNossa situação é... estressante, para dizer o mínimo. Espero que você possa nos ajudar.', 0);

-- "caçando gnolls": PROGRESSO em ptBR (IDs 11)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (11);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(11, 'ptBR', 'Salve, $n. Você andou matando os gnolls?', 0);

-- "caçando gnolls": CONCLUSAO em ptBR (IDs 11)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (11);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(11, 'ptBR', 'Vejo que você anda ocupado! Você tem nossa gratidão, $n.', 0);

-- "PROCURA-SE: "Hogger"": PROGRESSO em ptBR (IDs 176)
-- ATENCAO: traducao propria (sem versao oficial disponivel)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (176);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(176, 'ptBR', 'Sim, Hogger é um problema real para eu e meus homens. Você tem algo a reportar sobre aquela besta?', 0);

-- "PROCURA-SE: "Hogger"": CONCLUSAO em ptBR (IDs 176)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (176);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(176, 'ptBR', 'Ele fez o QUÊ?$B$BQue ótimo, agora temos uma fera sedenta de sangue bem debaixo das ruas de Ventobravo, com um exército de gnolls a tiracolo... Com certeza foi um grande progresso... já me sinto mais seguro.$B$BAqui está sua recompensa, $n. Mas me prometa que você vai dar uma olhada nos guardas do Cárcere em Ventobravo só pra garantir que as coisas estão indo bem.', 0);

-- "Mantenham a formação!": PROGRESSO em ptBR (IDs 24469)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (24469);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(24469, 'ptBR', 'Quantos tu conseguiu matar?', 0);

-- "Mantenham a formação!": CONCLUSAO em ptBR (IDs 24469)
-- ATENCAO: traducao propria (sem versao oficial disponivel)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (24469);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(24469, 'ptBR', 'Bom trabalho, $gguri:guria;. Nós podemos continuar protegendo o perímetro daqui pra frente.$B$BToma, leva isso como recompensa pelo teu esforço. Pode ser útil, já que eu tenho uma coisa mais importante pra te pedir.', 0);

-- "Ajuda aos feridos": PROGRESSO em ptBR (IDs 24471)
-- ATENCAO: traducao propria (sem versao oficial disponivel)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (24471);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(24471, 'ptBR', 'Obrigado pela ajuda, $n.', 0);

-- "Ajuda aos feridos": CONCLUSAO em ptBR (IDs 24471)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (24471);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(24471, 'ptBR', 'Muitos dos homens que tu salvou conseguiram voltar para o acampamento. Os curativos foram muito bem feitos! Tu pode ter futuro como socorrista, se te interessar esse tipo de coisa.', 0);

-- "Mostra com quem eles se meteram!": PROGRESSO em ptBR (IDs 24470)
-- ATENCAO: traducao propria (sem versao oficial disponivel)
DELETE FROM `quest_request_items_locale` WHERE `locale` = 'ptBR' AND `ID` IN (24470);
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(24470, 'ptBR', 'O que você está esperando? $c?', 0);

-- "Mostra com quem eles se meteram!": CONCLUSAO em ptBR (IDs 24470)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (24470);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(24470, 'ptBR', '$BHumm... Eles nos culpam por destruir a casa deles? Bom, isso não foi culpa nossa. Foi aquele terremoto horrível que aconteceu hoje de manhã. Será que eles são tão burros que nem perceberam que nós também quase perdemos o nosso acampamento?$B$BNo entanto, eu não posso julgar mal um trogg por lutar pela casa dele.', 0);

-- "Quarentena em sidermar": CONCLUSAO em ptBR (IDs 24473)
DELETE FROM `quest_offer_reward_locale` WHERE `locale` = 'ptBR' AND `ID` IN (24473);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(24473, 'ptBR', 'Ahhh... e VOCÊ, o que quer? Não tá vendo que eu tô ocupada aqui! Deixa de ser mala, eu tô sem tempo.$B$BPera aí, tu tá dizendo o quê, guri? O Ioren te enviou pra me ajudar? E por que tu não falou logo?', 0);

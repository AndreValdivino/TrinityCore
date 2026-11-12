-- Evento do Hogger (quest 176): falas do Hogger, do General Hammond Clay e das Ragamuffins
DELETE FROM `creature_text` WHERE `CreatureID` = 448 AND `GroupID` BETWEEN 2 AND 8;
DELETE FROM `creature_text` WHERE `CreatureID` IN (65153, 46943);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(448,   2, 0, 'Yipe! Help Hogger!',                 14, 0, 100, 0, 0, 0, 0, 0, 0, 'Hogger - Summon Minions'),
(448,   3, 0, 'Hogger is eating! Stop him!',        41, 0, 100, 0, 0, 0, 0, 0, 0, 'Hogger - Eating'),
(448,   4, 0, 'No hurt Hogger!',                    14, 0, 100, 0, 0, 0, 0, 0, 0, 'Hogger - Hit while eating'),
(448,   6, 0, 'Grrr...',                            12, 0, 100, 0, 0, 0, 0, 0, 0, 'Hogger - Ending scene'),
(448,   7, 0, 'Nooooo...',                          12, 0, 100, 0, 0, 0, 0, 0, 0, 'Hogger - Ending scene final'),
(448,   8, 0, 'Hogger is stunned!',                 41, 0, 100, 0, 0, 0, 0, 0, 0, 'Hogger - Upset Stomach'),
(65153, 0, 0, 'Hold your blade, adventurer!',       14, 0, 100, 0, 0, 0, 0, 0, 0, 'General Hammond Clay - Opening'),
(65153, 1, 0, 'This beast leads the Riverpaw gnoll gang and may be the key to ending gnoll aggression in Elwynn.', 12, 0, 100, 0, 0, 0, 0, 0, 0, 'General Hammond Clay - Explanation'),
(65153, 2, 0, 'We\'re taking him into custody in the name of King Varian Wrynn.', 12, 0, 100, 0, 0, 0, 0, 0, 0, 'General Hammond Clay - Take him'),
(65153, 3, 0, 'Take us to the Stockades, Andromath.', 12, 0, 100, 0, 0, 0, 0, 0, 0, 'General Hammond Clay - To Andromath'),
(46943, 0, 0, 'General Hammond Clay!',              12, 0, 100, 0, 0, 0, 0, 0, 0, 'Ragamuffin - Clay'),
(46943, 1, 0, 'Wow!',                               12, 0, 100, 0, 0, 0, 0, 0, 0, 'Ragamuffin - Wow');

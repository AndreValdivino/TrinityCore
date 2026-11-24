-- Hidden quests used by the client as unlock flags for the druid shapeshift form customizations.
-- They have no giver, text or objectives: a character unlocks the matching form option by having the quest rewarded.
DELETE FROM `quest_template` WHERE `ID` IN (78448, 78479, 78481, 78503, 78507, 78511, 78512, 78513, 78514, 78515, 78516, 78517, 78518, 78519, 78520, 78521, 78522, 78523, 78524, 78527, 78528, 92638);
INSERT INTO `quest_template` (`ID`, `LogTitle`) VALUES
(78503, 'Druid form unlock (cat) 78503'),
(78507, 'Druid form unlock (cat) 78507'),
(78521, 'Druid form unlock (cat) 78521'),
(78481, 'Druid form unlock (bear) 78481'),
(78517, 'Druid form unlock (bear) 78517'),
(78518, 'Druid form unlock (bear) 78518'),
(78519, 'Druid form unlock (bear) 78519'),
(78520, 'Druid form unlock (bear) 78520'),
(78528, 'Druid form unlock (bear) 78528'),
(78511, 'Druid form unlock (travel) 78511'),
(78512, 'Druid form unlock (travel) 78512'),
(78513, 'Druid form unlock (travel) 78513'),
(78514, 'Druid form unlock (travel) 78514'),
(78515, 'Druid form unlock (travel) 78515'),
(78522, 'Druid form unlock (travel) 78522'),
(78523, 'Druid form unlock (travel) 78523'),
(78524, 'Druid form unlock (travel) 78524'),
(78516, 'Druid form unlock (aquatic) 78516'),
(78448, 'Druid form unlock (flight) 78448'),
(78479, 'Druid form unlock (flight) 78479'),
(78527, 'Druid form unlock (flight) 78527'),
(92638, 'Druid form unlock (flight) 92638');

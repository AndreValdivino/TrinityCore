-- Treinadores de profissão: os atalhos "Treine-me em X" do menu 12180
-- (para quem já tem a profissão) não tinham treinador ligado, exceto Encantamento e Alfaiataria.
DELETE FROM `creature_trainer` WHERE `MenuID` = 12180;
INSERT INTO `creature_trainer` (`CreatureID`, `TrainerID`, `MenuID`, `OptionID`)
SELECT n.CreatureID, o.TrainerID, 12180, o.OptionID
FROM (
    SELECT 45286 AS CreatureID UNION ALL SELECT 47384 UNION ALL SELECT 47396 UNION ALL
    SELECT 47400 UNION ALL SELECT 47418 UNION ALL SELECT 47419 UNION ALL SELECT 47420 UNION ALL
    SELECT 47421 UNION ALL SELECT 47431 UNION ALL SELECT 48619 UNION ALL SELECT 50247 UNION ALL
    SELECT 57620 UNION ALL SELECT 65043
) AS n
CROSS JOIN (
    SELECT 0 AS OptionID, 59 AS TrainerID UNION ALL -- Alquimia
    SELECT 1, 80 UNION ALL   -- Ferraria
    SELECT 2, 51 UNION ALL   -- Encantamento
    SELECT 3, 102 UNION ALL  -- Engenharia
    SELECT 4, 388 UNION ALL  -- Herborismo
    SELECT 5, 387 UNION ALL  -- Escrivania
    SELECT 6, 48 UNION ALL   -- Joalheria
    SELECT 7, 103 UNION ALL  -- Couraria
    SELECT 8, 389 UNION ALL  -- Mineração
    SELECT 9, 390 UNION ALL  -- Esfolamento
    SELECT 10, 117           -- Alfaiataria
) AS o;

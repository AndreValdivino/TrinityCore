-- Hogger (448, guid 280348): passeia aleatoriamente pelo Morro do Hogger em vez de ficar parado
UPDATE `creature` SET `MovementType` = 1, `wander_distance` = 8 WHERE `guid` = 280348;

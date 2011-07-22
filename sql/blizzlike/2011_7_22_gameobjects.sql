-- Spawned Mailbox in Gilneas City... Please correct if phaseMask is not correct
DELETE FROM `gameobject` WHERE `map` = '638' AND `id` = '202591';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'202591','638','1','7','-1496.19','1409.73','35.5562','4.69959','0','0','0.711617','-0.702568','300','0','1');

-- Deleted a few NON BLIZZLIKE spawned bushes .. Didnt remember IDs so im gonna DELETE before INSERT
DELETE FROM `gameobject` WHERE `id` IN ('401862','401863','402361','402362');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'401862','638','1','1','-1429.85','1440.95','35.9821','1.19381','0','0','0.562084','0.82708','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'401863','638','1','1','-1428.45','1443.51','36.0091','1.20166','0','0','0.565327','0.824867','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'401862','638','1','1','-1447.33','1377.7','35.5561','4.08801','0','0','0.890111','-0.455743','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'401863','638','1','1','-1450.76','1375.34','35.7253','5.14436','0','0','0.539137','-0.842218','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'402361','638','1','1','-1449.85','1370','35.6124','0.212054','0','0','0.105828','0.994384','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'402361','638','1','1','-1453.15','1370.15','35.8176','4.76344','0','0','0.688829','-0.724924','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'401862','638','1','1','-1568.27','1338.49','35.7816','3.53429','0','0','0.980786','-0.195089','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'401862','638','1','1','-1519.77','1353.63','35.9139','2.50934','0','0','0.950447','0.310888','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'402361','638','1','1','-1517.9','1358.24','35.63','0.592967','0','0','0.292159','0.95637','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'402362','638','1','1','-1511.35','1358.83','35.5576','0.0903118','0','0','0.0451406','0.998981','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'401862','638','1','1','-1536.2','1350.01','35.9364','2.52898','0','0','0.953453','0.301541','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'402362','638','1','1','-1543.96','1356.11','35.729','2.45436','0','0','0.941543','0.336893','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'402361','638','1','1','-1535.72','1356.68','35.817','0.00391817','0','0','0.00195908','0.999998','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'401863','638','1','1','-1530.18','1352.76','36.0583','5.66664','0','0','0.303413','-0.952859','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'401862','638','1','1','-1539.91','1346.38','35.7626','2.05381','0','0','0.855701','0.51747','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'401862','638','1','1','-1429.18','1375.58','35.687','2.13628','0','0','0.876305','0.481757','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'401862','638','1','1','-1488.11','1418.26','35.5564','5.04618','0','0','0.579817','-0.814746','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'401862','638','1','1','-1493.51','1357.36','35.7989','0.0117798','0','0','0.00588986','0.999983','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'402362','638','1','1','-1486.87','1357.83','35.8334','0.0785386','0','0','0.0392592','0.999229','300','0','1');

-- Supply crete's phaseMask is 2 in official
DELETE FROM `gameobject` WHERE `map` = '638' AND `id` = '195306';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1500.18','1441.23','35.9867','1.6078','0','0','0.720067','0.693904','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1529.38','1415.91','35.5483','4.22318','0','0','0.857301','-0.514815','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1533.82','1443.16','36.0041','1.55282','0','0','0.700723','0.713433','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1555.25','1437.56','35.9326','1.55282','0','0','0.700723','0.713433','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1561.3','1406.11','36.1642','3.21787','0','0','0.999273','-0.0381279','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1573.34','1386.53','36.5311','4.58054','0','0','0.752153','-0.658988','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1536.47','1379.34','36.0049','0.00559856','0','0','0.00279928','0.999996','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1580.39','1360.24','35.9998','4.65908','0','0','0.7257','-0.688012','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1549.53','1305.57','35.879','0.288341','0','0','0.143672','0.989625','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1493.2','1380.59','35.8557','4.77078','0','0','0.686166','-0.727445','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1470.16','1382.9','36.0044','4.68124','0','0','0.718032','-0.69601','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1468.17','1443.02','36.0026','1.5646','0','0','0.704914','0.709292','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1441.36','1441.24','35.9884','1.59209','0','0','0.714595','0.699539','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1462.29','1412.72','35.5559','4.62765','0','0','0.736423','-0.676521','300','0','1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(NULL,'195306','638','1','2','-1521.32','1407.05','35.5562','1.86462','0','0','0.802999','0.595981','300','0','1');
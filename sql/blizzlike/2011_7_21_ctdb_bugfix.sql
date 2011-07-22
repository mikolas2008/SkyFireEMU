-- CTDB Bug fix... Wrong sound ids in wrong entries
UPDATE `creature_text` SET `sound` = '0' WHERE entry IN(42722, 31111, 240);
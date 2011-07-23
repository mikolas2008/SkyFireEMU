-- Prince Liam Greymane Phase 1
REPLACE INTO `script_texts` VALUES (34850, -1638000, 'I want the perimeter secured and the gates manned by two guards at all times. No one gets in, no one gets out.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19615, 0, 0, 1, 'SAY_PRINCE_LIAM_GREYMANE_1 - Say OOC');
REPLACE INTO `script_texts` VALUES (34850, -1638001, 'We protected Gilneas from the Scourge. We protected Gilneas during the Northgate rebellion. We will protect Gilneas from whatever this new threat may be.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19616, 0, 0, 25, 'SAY_PRINCE_LIAM_GREYMANE_2 - Say OOC');
REPLACE INTO `script_texts` VALUES (34850, -1638002, 'Stand ready, guards! We don\'t know how many intruders we\'re dealing with, but the Headlands are overrun and we\'re cut off from the harbor towns. Expect to be outnumbered.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19614, 0, 0, 1, 'SAY_PRINCE_LIAM_GREYMANE_3 - Say OOC');

-- Frightened Citizen with no worgen behind, 2 template entries
REPLACE INTO `script_texts` VALUES (0, -1638003, 'Protect me, please!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_1a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638004, 'What in the world? Let\'s get out of here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_2a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638005, 'Worgen! Worgen everywhere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_3a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638006, 'Flee! They\'re everywhere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_4a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638007, 'No time to Waste!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_5a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638008, 'This place isn\'t safe. Let\'s Leave!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_6a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638009, 'Let\'s go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_7a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638010, 'Thank you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_8a - No worgen behind');
-- Frightened Citizen when worgen is behind them, 2 template entries
REPLACE INTO `script_texts` VALUES (0, -1638011, 'I don\'t want to die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_1b - Worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638012, 'There\'s one after me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_2b - Worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638013, 'It\'s coming right for me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_3b - Worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638014, 'Help!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_4b - Worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638015, 'Help me, please!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_FRIGHTENED_CITIZEN_5b - Worgen behind');

-- Panicked Citizen at gate, TODO: get emote ids for 1a and 2a
REPLACE INTO `script_texts` VALUES (44086, -1638016, 'We have to get out of here! The howling gets louder every night.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_PANICKED_CITIZEN_1a - At gate');
REPLACE INTO `script_texts` VALUES (44086, -1638017, 'They told us Gilneas City was safe...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_PANICKED_CITIZEN_2a - At gate');
REPLACE INTO `script_texts` VALUES (44086, -1638018, 'My children are in Stormglen alone! I have to get to them!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'SAY_PANICKED_CITIZEN_3a - At gate');
REPLACE INTO `script_texts` VALUES (44086, -1638019, 'You can\'t do this to us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_PANICKED_CITIZEN_4a - At gate');

-- Panicked Citizen running through merchant square
REPLACE INTO `script_texts` VALUES (34851, -1638020, 'What\'s going on? I thought I saw something on the rooftops.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_PANICKED_CITIZEN_1b - Running towards home');
REPLACE INTO `script_texts` VALUES (34851, -1638021, 'What... what are those things on the rooftops?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_PANICKED_CITIZEN_2b - Running towards home');

-- Gilneas City Guard
REPLACE INTO `script_texts` VALUES (34864, -1638022, 'No one\'s allowed to leave. Prince Liam\'s orders.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_GILNEAS_CITY_GUARD_1 - At gate');
REPLACE INTO `script_texts` VALUES (34864, -1638023, 'Stay calm. We have everything under control.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_GILNEAS_CITY_GUARD_2 - At gate');
REPLACE INTO `script_texts` VALUES (34864, -1638024, 'It isn\'t safe to leave, there\'s something lurking out there in the woods.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_GILNEAS_CITY_GUARD_3 - At gate');

-- Phase 1 Start --
-- 14078 Lockdown!
REPLACE INTO `quest_template` VALUES (14078, 2, 4755, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 786432, 4, 0, 0, 0, 0, 0, 14091, 0, 14091, 5, 0, 0, 0, 'Lockdown!', 'What are you still doing here, citizen?  Haven\'t you heard?  The city\'s under complete lockdown.$B$BGo see Lieutenant Walden -- he\'ll give you further directions for evacuation.', 'Find Lieutenant Walden in the northwestern end of the Merchant Square.', 'Deep claw marks run through the man\'s corpse.', NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 1);

-- Phase 2 Start --
-- 14091 Something's Amiss
REPLACE INTO `quest_template` VALUES (14091, 2, 4755, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 786432, 4, 0, 0, 0, 0, 14078, 0, 0, 0, 5, 0, 0, 0, 'Something\'s Amiss', 'The lieutenant appears to have died from severe wounds.  The prince might want to hear this news.$B$BYou hear the sound of fighting coming from the market.', 'Return to Prince Liam Greymane in the Merchant Square.', 'It`s you again.  Looks like you`re not one to hide in the face of danger.  Very well, then.', NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 1);

-- 14093 All Hell Breaks Loose
REPLACE INTO `quest_template` VALUES (14093, 2, 4755, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 14091, 14099, -14093, 0, 6, 0, 0, 0, 'All Hell Breaks Loose', 'Worgen!  My father had warned me that Archmage Arugal\'s creations had run amok.$B$BBut where are they coming from?$B$BI suppose it doesn\'t matter.  Help us make quick work of them.  We\'ll show them what we Gilneans are made of!', 'Prince Liam Greymane wants you to slay 6 Rampaging Worgen.', 'It`s no use, $N $B$B! They`re not letting up.', 'Have the worgen been dealt with?', '', 'Return to Prince Liam Greymane at the Merchant Square in Gilneas City.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34884, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55004, 0, 0, 0, 1, 0, 0, 0, 1134, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 1);

-- 14098 Evacuate the Merchant Square
REPLACE INTO `quest_template` VALUES (14098, 2, 4755, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 14091, 14099, -14093, 0, 6, 0, 0, 0, 'Evacuate the Merchant Square', 'The civilians aren\'t safe here anymore.  Not even inside their homes.$B$BWe\'re doing our best to stop the worgen from getting indoors, but their numbers are too great.$B$BHelp us by evacuating the civilian homes.  My father\'s army in the prison district will be able to better protect them.', 'Evacuate 3 Civilian Homes.', 'Good job, $N.  Thanks to you, many Gilneans will live to see another day.', NULL, '', 'Return to Prince Liam Greymane at the Merchant Square in Gilneas City.', 'Market Homes Evacuated', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35830, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 1);

-- 14094 Salvage the Supplies
REPLACE INTO `quest_template` VALUES (14094, 2, 4755, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 0, 0, -14093, 0, 6, 0, 0, 0, 'Salvage the Supplies', 'Listen, $N.  We can\'t let our supplies get destroyed.$B$BWith Gilneas walled off from the outside world, we won\'t last through winter if we lose much more of our stock.$B$BPlease help me salvage what you can.', 'Salvage 4 Supply Crates.', 'Excellent!  I\'ll make sure these get taken to a safe place.', 'Have you salvaged the supplies, $N?', '', 'Return to Gwen Armstead at the Merchant Square in Gilneas City.', '', '', '', '', 46896, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52040, 0, 0, 0, 1, 0, 0, 0, 1134, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 1);

-- 14099 Royal Orders
REPLACE INTO `quest_template` VALUES (14099, 2, 4755, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 786432, 4, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 'Royal Orders', 'It\'s time for you to leave, $N.  Go to the Military District with the other civilians.$B$BCheck in with Gwen Armstead when you cross the bridge to the southeast... see if everyone\'s okay.$B$BI will stay here with the guards and cover the civilians\' retreat.$B$BGo now.  That is an order!', 'Speak to Gwen Armstead in the Military District to the southeast.', 'We\'re all fine here.  A little shaken... but alive.', NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 150, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 1);

-- ##After this line quests are still being added## --
-- Phase 4 Start --
-- A Rejuvenating Touch
REPLACE INTO `quest_template` VALUES (14283, 2, 4755, -1024, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 14280, 14291, 0, 14291, 3, 0, 0, 0, 'A Rejuvenating Touch', 'We were driven to the edge of extinction once before, $N. But we druids, keepers of the old ways, saved our people from famine.$B$BWhen we cut ourselves off from the outside world and our crops failed, it was our order who called upon the earth\'s blessings and restored the harvest.$B$BJust as we did then, it is best to put our fate in the hands of a higher power. Join me now and learn what the wild has to teach us.', 'Speak to Celestine of the Harvest and learn Healing Touch. Practice using Healing Touch 2 times on a Wounded Guard.', 'Not bad at all. Perhaps there is still hope for the old ways.', 'The earth speaks to us, $N. It will not abandon us even in these perilous times.', '', '', 'Practice Healing Touch', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47091, 0, 0, 0, 1, 0, 0, 0, 774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 774, 0, 0, 1);

-- Charge
REPLACE INTO `quest_template` VALUES (14266, 2, 4755, -1, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 14265, 14286, 0, 14286, 3, 0, 0, 0, 'Charge', 'You\'re alive, $N! That must mean I did something right.$B$BIt\'s a shame our lessons were cut off a little short. But perhaps there\'s a thing or two I can teach you that might be handy in a time like this.$B$BTry out your new technique against the bloodfang worgen to our west.', 'Speak to Sergeant Cleese and learn Charge. Practice using Charge against a Bloodfang Worgen.', 'Excellent work!', NULL, '', '', 'Practice Charge', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35118, 0, 0, 0, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 100, 0, 0, 1);

-- Eviscerate
REPLACE INTO `quest_template` VALUES (14272, 2, 4755, -8, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 14269, 14285, 0, 14285, 3, 0, 0, 0, 'Eviscerate', 'Good to see you alive!$B$BNo, of course I don\'t have that gold I owe you. Now\'s not really the time to bring that up is it?$B$BListen, maybe I can teach you a trick or two that might save your skin with all the carnage going on. I\'d call it more than even then. What do you say?$B$BAfter your lesson is over, try using your new technique against the Bloodfang Worgen to our west.', 'Speak to Loren the Fence and learn Eviscerate. Practice using Eviscerate against a Bloodfang Worgen.', 'Don\'t get ahead of yourself now. Just remember who taught you everything you know.\r\n\r\nAnd now let\'s see if we can get out of this city with our skins attached.', NULL, '', '', 'Practice Eviscerate', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35118, 0, 0, 0, 1, 0, 0, 0, 2098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 2098, 0, 0, 1);

-- Immolate
REPLACE INTO `quest_template` VALUES (14274, 2, 4755, -256, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 14273, 14287, 0, 14287, 3, 0, 0, 0, 'Immolate', 'It is true then! You live!$B$BI never got a chance to share my greatest discovery with you. From the depths of the nigh-indecipherable books of Balcephoth of the felshadows... I\'ve learned the forbidden secrets of...$B$BImmolate!$B$BOf course I will share this knowledge with you... who else around here would appreciate such powerful understanding?$B$BGo now, and practice your new spell against the Bloodfang Worgen to our west.', 'Speak to Vitus Darkwalker and learn Immolate. Practice casting Immolate on a Bloodfang Worgen.', 'Yes! You can feel the power, can\'t you?', 'You\'re doing well, $N.', '', '', 'Practice Immolate', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35118, 0, 0, 0, 1, 0, 0, 0, 348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 348, 0, 0, 1);

-- Steady Shot
REPLACE INTO `quest_template` VALUES (14276, 2, 4755, -4, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 14275, 14290, 0, 14290, 3, 0, 0, 0, 'Steady Shot', 'So I\'ve got good news and bad news.$B$BThe bad news is that there are more worgen in the woods than in here... so we really have no safe place to go to.$B$BThe good news is that I still have a thing or two to teach you. Who knows the sort of skill that might save your life in a time like this.$B$BTry your hand at it against the bloodfang worgen to our west.', 'Speak to Huntsman Blake and learn Steady Shot. Practice using Steady Shot 2 times against a Bloodfang Worg.', 'Excellent work, $N. These worgen will regret ever setting foot in our lands.', 'You\'re a fast learner. We\'ll show these worgen who the real hunters are.', '', '', 'Practice Steady Shot', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35118, 0, 0, 0, 2, 0, 0, 0, 56641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 56641, 0, 0, 13623);

-- Flash Heal
REPLACE INTO `quest_template` VALUES (14279, 2, 4755, -16, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 14278, 14289, 0, 14289, 3, 0, 0, 0, 'Flash Heal', 'You have much to learn, $N. And I\'ve much to teach you.$B$BThese are perilous times, however, and I fear that we might have to accelerate certain lessons.$B$BHave no fear, $g brother:sister;. The Light will guide us through this.', 'Speak to Sister Almyra and learn Flash Heal. Use Flash Heal 2 times on a Wounded Guard.', 'You are blessed, $N. The Light shines upon you, even in these dark times.', 'You are learning swiftly, my dear.', '', '', 'Practice Flash Heal', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47091, 0, 0, 0, 2, 0, 0, 0, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 2061, 0, 0, 1);

-- Mage
REPLACE INTO `quest_template` VALUES (14277, 2, 4714, -128, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 14099, 14281, 0, 0, 5, 0, 0, 0, 'Arcane Inquiries', 'Most of us made it here alive... but there are worgen on this side of the city as well.$B$BWe\'re going to continue heading south once everyone\'s accounted for.$B$BThat reminds me, someone was asking about you.  It was a mage named Myriam.  She mentioned something about you being "ready."', 'Speak to Myriam Spellwaker in the Military District.', 'A disciple of the arcane always finds a way forward. I\'m glad to see you, $N.', NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 1);
REPLACE INTO `quest_template` VALUES (14288, 2, 4714, -128, 1, 0, 3, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 14281, 14157, 0, 14157, 2, 0, 0, 0, 'Safety in Numbers', 'There\'s only so much I can teach right now with all these worgen trying to dismember us.$B$BWe really should think about heading south with the other survivors.  We\'ve been told that King Greymane is there.$B$BIf we stick together our chances of survival will increase... especially if you choose someone nutritious-looking to stand next to.', 'Speak to King Genn Greymane in the military district.', 'You\'ve done well in coming here. If we Gilneans stick together we might yet defeat this terrible enemy.', NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 1);
REPLACE INTO `quest_template` VALUES (14281, 2, 4714, -128, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 14277, 14288, 0, 14288, 3, 0, 0, 0, 'Arcane Missiles', 'The path ahead is difficult, $N.  We must devote the entirety of our mental power to the task at hand.$B$BYet sometimes, that is not enough.  Sometimes the situation calls for raw firepower.$B$BI know just the spell for such a situation and I\'ll be more than glad to share it with you. Once you\'ve learned it, practice using it against the Bloodfang Worgen to our west. You\'ll only get the chance to use your new spell after casting a different spell.', 'Speak to Myriam Spellwaker and learn Arcane Missiles. Use Arcane Missiles against a Bloodfang Worgen.', 'You\'ve learned with such speed and ease. Soon you\'ll be the one doing the teaching.', 'I always knew you were a quick study!', '', '', 'Practice Arcane Missiles', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35118, 0, 0, 0, 1, 0, 0, 0, 5143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 5143, 0, 0, 1);

-- Crowley, Lord Godfrey and King Grenn Greymane
REPLACE INTO `quest_template` VALUES (14157, 2, 4755, 0, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 786432, 0, 0, 0, 0, 0, 0, 28850, 0, 28850, 1, 0, 0, 0, 'Old Divisions', 'Lord Darius Crowley has been called many things.  Rebel.  Traitor.  Terrorist.$B$BBefore the civil war I called him... friend.$B$BI never blamed him for leading an insurrection against me.  His land and people were separated from Gilneas by a stone wall... but we had no choice.$B$BRegardless... Crowley is exactly the type of person we need now.$B$BEnter Stoneward Prison and ask Captain Broderick about Crowley\'s whereabouts.  I\'d send my own men, but there\'s still bad blood.', 'Speak to Captain Broderick inside Stoneward Prison in Gilneas City.', 'Greymane wants to save Crowley? Has he gone mad?', NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 1);
REPLACE INTO `quest_template` VALUES (24930, 2, 4755, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524288, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 'While You\'re At It', 'Fine by me if King Greymane wants you to risk your life to rescue a known traitor.$B$BDo me a favor and do something useful while you\'re out there and kill these cursed fleabags.', 'Kill 5 Bloodfang Worgen.', 'If I hadn\'t seen you kill a few of the mangy things with my own eyes, I\'d think you did not complete the task I asked of you.$B$BIt looks like we\'re hardly putting a dent in their numbers.', NULL, '', 'Return to Lord Godfrey at the Military District in Gilneas City.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35118, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 54975, 54978, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 890, 878, 0, 0, 0, 1);

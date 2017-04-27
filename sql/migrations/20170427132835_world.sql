INSERT INTO `migrations` VALUES ('20170427132835'); 

-- Update wild creature speeds for some beasts. The existing default speed is ~115%.
-- Categories are: 1.14286 (~115%), 1.42857 (~145%), 2.14286 (~215%), 2.42857 (~245%)
--                 (increments of 1/7)
-- Based on speeds documented at http://petopia.morrowind4kids.com/archive/html/fastrun.html
-- Most creatures level 10 and below either run at 100% or ~115% speeds, whereas their higher 
-- level counterparts can run much faster.

-- Be wary of mobs that are designed to not move by having speeds set to 0.

-- --------- Wolves ---------
-- Slavering Worg, Mist Howler and other elite or stronger wolves above level 17 @ ~145%
UPDATE `creature_template` SET `speed_run` = 1.42857 
    WHERE `family` = 1 AND `rank` > 0 AND `minlevel` >= 17
        AND `speed_run` > 0 AND `speed_walk` > 0;
-- Longtooth runners @ ~145%
UPDATE `creature_template` SET `speed_run` = 1.42857 WHERE `entry` = 5286;
-- Frostwolves, tamed and un-tamed @ ~245%
UPDATE `creature_template` SET `speed_run` = 2.42857 WHERE `entry` IN (10981, 10985);

-- --------- Cats ---------
-- Low level non-rare and non-elite cats (level 9-16) @ ~115%
-- Note there are duplicate entries in source for Savannah cats, so take lowest
-- Snow Leopard, Flatland Cougar and other cats (lvl <9) in starting areas @ 100%
UPDATE `creature_template` SET `speed_run` = 1 
    WHERE `entry` IN (1199, 1201, 2031, 2032, 2042, 2961, 3035);
-- Higher level cats (level 16+) all at 145% ? source suggests "most" cats are 145%
UPDATE `creature_template` SET `speed_run` = 1.42857
    WHERE `family` = 2 AND `minlevel` > 16 
        AND `speed_run` > 0 AND `speed_walk` > 0;
-- Echeyakee and Duskstalker @ 115% ? This is questionable...
UPDATE `creature_template` SET `speed_run` = 1.14286 WHERE `entry` IN (3475, 14430);
-- Low level rare/elites Rake, Dishu, Humar @ ~145%
UPDATE `creature_template` SET `speed_run` = 1.42857 WHERE `entry` IN (5807, 5828, 5865);

--  --------- Spiders ---------
-- All at 115 aside from Marli's baby spider summon
UPDATE `creature_template` SET `speed_run` = 2.14286 WHERE `entry` = 15041;

-- --------- Boars ---------
-- All boars are at ~115% aside from some low level ones which are at 100%
UPDATE `creature_template` SET `speed_run` = 1 
    WHERE `family` = 5 AND `maxlevel` < 10 
        AND `speed_run` > 0 AND `speed_walk` > 0;

-- --------- Raptors ---------
-- Most raptors @ ~115% aside from Takk the Leaper at ~145%
UPDATE `creature_template` SET `speed_run` = 1.42857 WHERE `entry` = 5842;

-- --------- Tallstriders ---------
-- ALmost all tallstriders run at ~145%, follow the newbie speed rule
UPDATE `creature_template` SET `speed_run` = 1.42857 
    WHERE `family` = 12 AND `minlevel` > 10
        AND `speed_run` > 0 AND `speed_walk` > 0;
-- Mazzaranche runs at 100%
UPDATE `creature_template` SET `speed_run` = 1 WHERE `entry` = 3068;

-- --------- Bats ---------
-- All bats at ~115% aside from a couple special ones
-- Ressan the Needler @ ~145%
UPDATE `creature_template` SET `speed_run` = 1.42857 WHERE `entry` = 10357;
-- (Frenzied) Bloodseeker Bat from ZG @ ~215%
UPDATE `creature_template` SET `speed_run` = 2.14286 WHERE `entry` IN (11368, 14965);

-- --------- Owls ---------
-- All owls at ~115% aside from a couple low level owls @ ~145%
UPDATE `creature_template` SET `speed_run` = 1.42857
    WHERE `family` = 26 AND `maxlevel` <= 10
        AND `speed_run` > 0 AND `speed_walk` > 0;

-- --------- Windserpents ---------
-- Mostly at ~145%, aside from some low level ones at ~115%
UPDATE `creature_template` SET `speed_run` = 1.42857
    WHERE `family` = 27 AND `minlevel` >= 20
        AND `speed_run` > 0 AND `speed_walk` > 0;


-- --------- Hyenas ---------
-- All hyenas at ~115% until further info is found

-- --------- Bears ---------
-- All bears at ~115%

-- --------- Crocolisk ---------
-- All crocs are at ~115%

-- --------- Carrion/Vultures/Buzzards ---------
-- All at ~115% afaik, no known cases at higher speeds

-- --------- Crawlers ---------
-- All crabs/crawlers at ~115%

-- --------- Gorillas ---------
-- All gorillas at ~115%

-- --------- Scorpids ---------
-- All scorpids at ~115%

-- --------- Turtles ---------
-- All turtles at ~115% 

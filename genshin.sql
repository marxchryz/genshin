-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2021 at 12:18 AM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genshin`
--

-- --------------------------------------------------------

--
-- Table structure for table `artifacts`
--

CREATE TABLE `artifacts` (
  `id` int NOT NULL,
  `artifact` varchar(800) NOT NULL,
  `rarity` varchar(800) NOT NULL,
  `two-piece` varchar(800) NOT NULL,
  `four-piece` varchar(800) NOT NULL,
  `location` varchar(800) NOT NULL,
  `image` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artifacts`
--

INSERT INTO `artifacts` (`id`, `artifact`, `rarity`, `two-piece`, `four-piece`, `location`, `image`) VALUES
(1, 'Adventurer', '3', 'Max HP increased by 1,000.', 'Opening chest regenerates 30% Max HP over 5s.', '', './images/artifacts/adventurer.png'),
(2, 'Archaic Petra', '5', 'Gain a 15% Geo DMG Bonus.', 'Upon obtaining an Elemental Shard created through a Crystallize Reaction, all party members gain a 35% DMG Bonus for that particular element for 10s. Only one form of Elemental DMG Bonus can be gained in this manner at any one time.', 'Domain of Guyun', './images/artifacts/archaic_petra.png'),
(3, 'Berserker', '4', 'CRIT Rate +12%', 'When HP is below 70%, CRIT Rate increases by an additional 24%.', 'Bosses and Chests', './images/artifacts/berserker.png'),
(4, 'Bloodstained Chivalry', '5', 'Physical DMG +25%', 'After defeating an opponent, increases Charged Attack DMG by 50%, and reduces its Stamina cost to 0 for 10s.', 'Clear Pool and Mountain Cavern', './images/artifacts/bloodstained_chivalry.png'),
(5, 'Brave Heart', '4', 'ATK +18%', 'Increases DMG by 30% against enemies with more than 50% HP.', 'Domain of Guyun/Hidden Palace of Guizang Formula', './images/artifacts/brave_heart.png'),
(6, 'Crimson Witch of Flames', '5', 'Gain a 15% Pyro DMG Bonus.', 'Increases Overloaded and Burning DMG by 40%. Increases Vaporize and Melt DMG by 15%. Using an Elemental Skill increases 2-Piece Set effects by 50% for 10s. Max 3 stacks.', 'Hidden Palace of Zhou Formula', './images/artifacts/crimson_witch_of_flames.png'),
(7, 'Defender\'s Will', '4', 'Base DEF +30%', 'Increases Elemental RES by 30% for each element present in the party.', 'Hidden Palace of Zhou Formula/Peak of Vindagnyr', './images/artifacts/defender\'s_will.png'),
(8, 'Gambler', '4', 'Elemental Skill DMG increased by 20%', 'Defeating an enemy has 100% chance to remove Elemental Skill CD. Can only occur once every 15s.', 'Clear Pool and Mountain Cavern/Peak of Vindagnyr', './images/artifacts/gambler.png'),
(9, 'Gladiator\'s Finale', '5', 'ATK +18%', 'If the wielder of this artifact set uses a Sword, Claymore or Polearm, increases their Normal Attack DMG by 35%.', 'World Bosses', './images/artifacts/gladiator\'s_finale.png'),
(10, 'Instructor', '4', 'Increases Elemental Mastery by 80.', 'After using Elemental Skill, increases all party members\' Elemental Mastery by 120 for 8s.', 'Bosses and Chests', './images/artifacts/instructor.png'),
(11, 'Lavawalker', '5', 'Pyro RES increased by 40%', 'Increases DMG against enemies that are Burning or affected by Pyro by 35%.', 'Hidden Palace of Zhou Formula', './images/artifacts/lavawalker.png'),
(12, 'Lucky Dog', '3', 'DEF increased by 100.', 'Picking up Mora restores 300 HP.', '', './images/artifacts/lucky_dog.png'),
(13, 'Maiden Beloved', '5', 'Character Healing Effectiveness +15%', 'Using an Elemental Skill or Burst increases healing received by all party members by 20% for 10s.', 'Valley of Remembrance', './images/artifacts/maiden_beloved.png'),
(14, 'Martial Artist', '4', 'Increases Normal Attack and Charged Attack DMG by 15%.', 'After using Elemental Skill, increases Normal Attack and Charged Attack DMG by 25% for 8s.', 'height: 166px; width: 166px; left: 2283px; top: 4116px; border-radius: nullpx;', './images/artifacts/martial_artist.png'),
(15, 'Noblesse Oblige', '5', 'Elemental Burst DMG +20%', 'Using an Elemental Burst increase all party memebers\' ATK by 20% for 12s. This effect cannot stack.', 'Clear Pool and Mountain Cavern', './images/artifacts/noblesse_oblige.png'),
(16, 'Resolution of Sojourner', '4', 'ATK +18%', 'Increases Charged Attack CRIT Rate by 30%.', 'Midsummer Courtyard', './images/artifacts/resolution_of_sojourner.png'),
(17, 'Retracing Bolide', '5', 'Increases Shield Strength by 35%.', 'While protected by a shield, gain an additional 40% Normal and Charged Attack DMG.', 'Domain of Guyun', './images/artifacts/retracing_bolide.png'),
(18, 'Scholar', '4', 'Energy Recharge +20%', 'Gaining Energy gives 3 Energy to all party members who have a bow or a catalyst equipped. Can only occurs once every 3s.', 'Clear Pool and Mountain Cavern', './images/artifacts/scholar.png'),
(19, 'The Exile', '4', 'Energy Recharge +20%', 'Using an Elemental Burst regenerates 2 Energy for other party members every 2s for 6s. This effect cannot stack.', 'Stormterror/Normal Bosses', './images/artifacts/the_exile.png'),
(20, 'Thundering Fury', '5', 'Gain a 15% Electro DMG Bonus.', 'Increases damage caused by Overloaded, Electro-Charged, and Superconduct DMG by 40%. Triggering such effects decreases Elemental Skill CD by 1s. Can only occur once every 0.8s.', 'Midsummer Courtyard', './images/artifacts/thundering_fury.png'),
(21, 'Thundersoother', '5', 'Electro RES increased by 40%', 'Increases DMG against enemies affected by Electro by 35%.', 'Midsummer Courtyard', './images/artifacts/thundersoother.png'),
(22, 'Tiny Miracle', '4', 'All Elemental RES increased by 20%', 'Incoming elemental DMG increases corresponding Elemental RES by 30% for 10s. Can only occur once every 10s.', 'Valley of Remembrance', './images/artifacts/tiny_miracle.png'),
(23, 'Traveling Doctor', '3', 'Increases incoming healing by 20%.', 'Using Elemental Burst restores 20% HP.', '', './images/artifacts/traveling_doctor.png'),
(24, 'Viridescent Venerer', '5', 'Gain a 15% Anemo DMG Bonus.', 'Increases Swirl DMG by 60%. Decreases opponent\'s Elemental RES to the element infused in the Swirl by 40% for 10s.', 'Valley of Remembrance', './images/artifacts/viridescent_venerer.png'),
(25, 'Wanderer\'s Troupe', '5', 'Elemental Mastery +80', 'Increases Charged Attack DMG by 35% if the character uses a Catalyst or Bow.', 'World Bosses', './images/artifacts/wanderer\'s_troupe.png'),
(26, 'Blizzard Strayer', '5', 'Cryo DMG Bonus +15%', 'When a character attacks an enemy affected by Cryo, their CRIT Rate is increased by 20%. If the enemy is Frozen, CRIT Rate is increased by an additional 20%.', 'Peak of Vindagnyr', './images/artifacts/blizzard_strayer.png'),
(27, 'Heart of Depth', '5', 'Hydro DMG Bonus +15%', 'After using Elemental Skill, increases Normal Attack and Charged Attack DMG by 30% for 15s.', 'Peak of Vindagnyr', './images/artifacts/heart_of_depth.png');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int NOT NULL,
  `type` varchar(800) NOT NULL,
  `image` varchar(800) NOT NULL,
  `name` varchar(800) NOT NULL,
  `filters` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `type`, `image`, `name`, `filters`) VALUES
(1, 'characters', './images/cards/Character_Noelle_Card.jpg', 'Noelle', '[\"geo\"]'),
(2, 'characters', './images/cards/Character_Ganyu_Card.png', 'Ganyu', '[\"cryo\"]'),
(3, 'characters', './images/cards/Character_Bennett_Card.jpg', 'Bennett', '[\"pyro\"]'),
(4, 'characters', './images/cards/Character_Diluc_Card.jpg', 'Diluc', '[\"pyro\"]'),
(5, 'characters', './images/cards/Character_Xiao_Card.jpg', 'Xiao', '[\"anemo\"]'),
(6, 'characters', './images/cards/Character_Kaeya_Card.jpg', 'Kaeya', '[\"cryo\"]'),
(7, 'characters', './images/cards/Character_Fischl_Card.jpg', 'Fischl', '[\"electro\"]'),
(8, 'characters', './images/cards/Character_Qiqi_Card.jpg', 'Qiqi', '[\"cryo\"]'),
(9, 'characters', './images/cards/Character_Razor_Card.jpg', 'Razor', '[\"electro\"]'),
(10, 'characters', './images/cards/Character_Amber_Card.jpg', 'Amber', '[\"pyro\"]'),
(11, 'characters', './images/cards/Character_Sucrose_Card.jpg', 'Sucrose', '[\"anemo\"]'),
(12, 'characters', './images/cards/Character_Lisa_Card.jpg', 'Lisa', '[\"electro\"]'),
(13, 'characters', './images/cards/Character_Keqing_Card.jpg', 'Keqing', '[\"electro\"]'),
(14, 'characters', './images/cards/Character_Venti_Card.jpg', 'Venti', '[\"anemo\"]'),
(15, 'characters', './images/cards/Character_Diona_Card.png', 'Diona', '[\"cryo\"]'),
(16, 'characters', './images/cards/Character_Chongyun_Card.jpg', 'Chongyun', '[\"cryo\"]'),
(17, 'characters', './images/cards/Character_Tartaglia_Card.png', 'Tartaglia', '[\"hydro\"]'),
(18, 'characters', './images/cards/Character_Klee_Card.jpg', 'Klee', '[\"pyro\"]'),
(19, 'characters', './images/cards/Character_Ningguang_Card.jpg', 'Ningguang', '[\"geo\"]'),
(20, 'characters', './images/cards/Character_Mona_Card.jpg', 'Mona', '[\"hydro\"]'),
(21, 'characters', './images/cards/Character_Jean_Card.jpg', 'Jean', '[\"anemo\"]'),
(22, 'characters', './images/cards/Character_Barbara_Card.jpg', 'Barbara', '[\"hydro\"]'),
(23, 'characters', './images/cards/Character_Albedo_Card.png', 'Albedo', '[\"geo\"]'),
(24, 'characters', './images/cards/Character_Zhongli_Card.jpg', 'Zhongli', '[\"geo\"]'),
(25, 'characters', './images/cards/Character_Xinyan_Card.jpg', 'Xinyan', '[\"pyro\"]'),
(26, 'characters', './images/cards/Character_Beidou_Card.jpg', 'Beidou', '[\"electro\"]'),
(27, 'characters', './images/cards/Character_Xiangling_Card.jpg', 'Xiangling', '[\"pyro\"]'),
(28, 'characters', './images/cards/Character_Xingqiu_Card.jpg', 'Xingqiu', '[\"hydro\"]');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id` int NOT NULL,
  `type` varchar(800) NOT NULL,
  `image` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id`, `type`, `image`) VALUES
(1, 'wishes', './images/carousel/image 7 (1).png'),
(2, 'wishes', './images/carousel/image 7 (2).png'),
(3, 'wishes', './images/carousel/image 8.png'),
(4, 'wishes', './images/carousel/image 9.png'),
(5, 'wishes', './images/carousel/image 10.png'),
(6, 'events', './images/carousel/image 8.png'),
(7, 'events', './images/carousel/image 9.png'),
(8, 'datamines', './images/carousel/image 10.png'),
(9, 'datamines', './images/carousel/image 8.png'),
(10, 'datamines', './images/carousel/image 7 (1).png');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` int NOT NULL,
  `image` varchar(800) NOT NULL,
  `description` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `image`, `description`) VALUES
(1, './images/featured/frame 1.png', '1.3 Patch is available starting Feb 3, 2021');

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `id` int NOT NULL,
  `weapon` varchar(800) NOT NULL,
  `type` varchar(800) NOT NULL,
  `rarity` varchar(800) NOT NULL,
  `atk` varchar(800) NOT NULL,
  `secondary` varchar(800) NOT NULL,
  `passive` varchar(800) NOT NULL,
  `bonus` varchar(800) NOT NULL,
  `location` varchar(800) NOT NULL,
  `image` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`id`, `weapon`, `type`, `rarity`, `atk`, `secondary`, `passive`, `bonus`, `location`, `image`) VALUES
(152, 'Summit Shaper', 'Sword', '5', '46', 'ATK', '-', 'Increases Shield Strength by 20/25/30/35/40%. Scoring hits on opponents increases ATK by 4/5/6/7/8% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield, this ATK increase effect is increased by 100%.', 'Gacha', './images/weapons/Summit_Shaper.png'),
(153, 'Skyward Blade', 'Sword', '5', '44', 'Energy Recharge', 'Sky-Piercing Fang', 'CRIT Rate increased by 4/5/6/7/8%. Gains Skypiercing Might upon using an Elemental Burst:\r\nIncreases Movement SPD by 10%, increases ATK SPD by 10%, and increases the DMG of Normal and Charged Attack hits by 20/25/30/35/40% for 12s.', 'Gacha', './images/weapons/Skyward_Blade.png'),
(154, 'Primordial Jade Cutter', 'Sword', '5', '44', 'CRIT Rate', 'Protector\'s Virtue', 'HP increased by 20/25/30/35/40%. Additionally, provides an ATK bonus based on 1.2/1.5/1.8/2.1/2.4% of the weilder\'s Max HP.', 'Gacha', './images/weapons/Primordial_Jade_Cutter.png'),
(155, 'Aquila Favonia', 'Sword', '5', '48', 'Physical DMG Bonus', 'Falcon\'s Defiance', 'ATK is increased by 20/25/30/35/40%. Triggers on taking DMG: the soul of the Falcon of the West awakens, holding the banner of the resistance aloft, regenerating HP equal to 100/115/130/145/160% of ATK and dealing 200/230/260/290/320% of ATK as DMG to surrounding enemies. This effect can only occur once every 15s.', 'Gacha', './images/weapons/Aquila_Favonia.png'),
(156, 'Vortex Vanquisher', 'Polearm', '5', '46', 'ATK', 'Golden Majesty', 'Increases Shield Strength by 20/25/30/35/40%, scoring hits on opponents increases ATK by 4/5/6/7/8% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield this ATK increase effect is increased by 100%', 'Gacha', './images/weapons/Vortex_Vanquisher.png'),
(157, 'Skyward Spine', 'Polearm', '5', '48', 'Energy Recharge', 'Black Wing', 'Increases CRIT Rate by 8/10/12/14/16% and increases Normal ATK SPD by 12%. Additionally, Normal and Charged Attacks hits on enemies have a 50% chance to trigger a vacuum blade that deals 40/55/70/85/100% of ATK as DMG in a small AoE. This effect can occur no more than once every 2s.', 'Gacha', './images/weapons/Skyward_Spine.png'),
(158, 'Primordial Jade Winged-Spear', 'Polearm', '5', '48', 'CRIT Rate', 'Eagle Spear of Justice', 'On hit, increases ATK by 3.2/3.9/4.6/5.3/6% for 6s. Max 7 stacks. This effect can only occur once every 0.3s. While in possession of the maximum possible stacks, DMG dealt is increased by 12/15/18/21/24%.', 'Gacha', './images/weapons/Primordial_Jade_Winged-Spear.png'),
(159, 'Wolf\'s Gravestone', 'Claymore', '5', '46', 'ATK', 'Wolfish Tracker', 'Increases ATK by 20/25/30/35/40%. On hit, attacks against enemies with less than 30% HP increase all party members\' Base ATK by 40/50/60/70/80% for 12s. Can only occur once every 30s.', 'Gacha', './images/weapons/Wolf\'s_Gravestone.png'),
(160, 'The Unforged', 'Claymore', '5', '46', 'ATK', '-', 'Increases Shield Strength by 20/25/30/35/40%, scoring hits on opponents increases ATK by 4/5/6/7/8% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield this ATK increase effect is increased by 100%', 'Gacha', './images/weapons/The_Unforged.png'),
(161, 'Skyward Pride', 'Claymore', '5', '45', 'Energy Recharge', 'Sky-Ripping Dragon Spine', 'Increases all DMG by 8/10/12/14/16%. After using an Elemental Burst, Normal or Charged Attack, on hit, creates a vacuum blade that does 80/100/120/140/160% Physical DMG to enemies along its path. Lasts for 20s or 8 vacuum blades.', 'Gacha', './images/weapons/Skyward_Pride.png'),
(162, 'Skyward Atlas', 'Catalyst', '5', '45', 'ATK', 'Wandering Clouds', 'Increases Elemental DMG Bonus by 12/15/18/21/24%. Normal Attack hits have a 50% chance to earn the favor of the clouds. which actively seek out nearby enemies to attack for 15s, dealing 160/200/240/280/320% ATK DMG. Can only occur once every 30s.', 'Gacha', './images/weapons/Skyward_Atlas.png'),
(163, 'Lost Prayer to the Sacred Winds', 'Catalyst', '5', '44', 'CRIT Rate', 'Boundless Blessing', 'Increases Movement SPD by 10%. When in battle, earn a 6/8/10/12/14% Elemental DMG Bonus every 4s. Max 4 stacks. Lasts until the character falls or leaves combat.', 'Gacha', './images/weapons/Lost_Prayer_to_the_Sacred_Winds.png'),
(164, 'Memory of Dust', 'Catalyst', '5', '46', 'ATK', 'Golden Majesty', 'Increase Shield Strength by 20/25/30/35/40%. Scoring hits on opponents increases ATK by 4/5/6/7/8% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield, this ATK increase effect is increased by 100%.', 'Gacha', './images/weapons/Memory_of_Dust.png'),
(165, 'Skyward Harp', 'Bow', '5', '45', 'CRIT Rate', 'Echoing Ballad', 'Increases CRIT DMG by 20/25/30/35/40%. Hits have a 60/70/80/90/100% chance to inflict a small AoE attack, dealing 100% Physical ATK DMG. Can only occur once every 4s.', 'Gacha', './images/weapons/Skyward_Harp.png'),
(166, 'Amos\' Bow', 'Bow', '5', '46', 'ATK', 'Strong-Willed', 'Increases Normal Attack and Aimed Shot DMG by 12/15/18/21/24%. Increases DMG from arrows shot by a further 8/10/12/14/16% for every 0.1s that the arrow is in flight, up to 0.5s. Stacks up to 5 times on each arrow.', 'Gacha', './images/weapons/Amos\'_Bow.png'),
(167, 'The Flute', 'Sword', '4', '42', 'ATK', 'Chord', 'Normal or Charged Attacks grant Harmonic on hits. Gaining 5 Harmonics triggers the power of music and deals 100/125/150/175/200% ATK DMG to surrounding enemies. Harmonics last up to 30s, and a maximum of 1 can be gained every 0.5s.', 'Gacha', './images/weapons/The_Flute.png'),
(168, 'The Black Sword', 'Sword', '4', '42', 'CRIT Rate', 'Justice', 'Increases DMG dealt by Normal and Charged Attacks by 20/25/30/35/40%.\r\nAdditionally, regenerates 60/70/80/90/100% of ATK as HP when Normal and Charged Attacks score a CRIT Hit. This effect can occur once every 5s.', 'BP Bounty', './images/weapons/The_Black_Sword.png'),
(169, 'The Alley Flash', 'Sword', '4', '44', 'CRIT Rate', 'Itinerant Hero', 'Continuosly sprinting for at least 1s increases ATK by 28% for 6s. This effect cannot stack.', 'Gacha', './images/weapons/The_Alley_Flash.png'),
(170, 'Sword of Descension', 'Sword', '4', '39', 'ATK', '-', 'Hitting enemies with Normal or Charged Attacks grants a 50% chance to deal 200% ATK as DMG in a small AoE. This effect can only occur once every 10s. Additionally, if the Traveler equips the Sword of Descension, their ATK is increased by 66.', 'Gacha', './images/weapons/Sword_of_Descension.png'),
(171, 'Sacrificial Sword', 'Sword', '4', '41', 'Energy Recharge', 'Composed', 'After damaging an opponent with an Elemental Skill, the skill has a 40/50/60/70/80% chance to end its own CD. Can only occur once every 30/26/22/18/14s.', 'Gacha', './images/weapons/Sacrificial_Sword.png'),
(172, 'Royal Longsword', 'Sword', '4', '42', 'ATK', 'Focus', 'Upon damaging an enemy, increases CRIT Rate by 8/10/12/14/16%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange', './images/weapons/Royal_Longsword.png'),
(173, 'Prototype Rancour', 'Sword', '4', '44', 'Physical DMG Bonus', 'Smashed Stone', 'On hit, Normal or Charged Attacks increase Base ATK and DEF by 4/4.5/5/5.5/6% for 6s. Max 4 stacks. Can only occur once every 0.3s.', 'Crafting', './images/weapons/Prototype_Rancour.png'),
(174, 'Lion\'s Roar', 'Sword', '4', '42', 'ATK', 'Bane of Fire and Thunder', 'Increases DMG against enemies affected by Pyro or Electro by 20/24/28/32/36%.', 'Gacha', './images/weapons/Lion\'s_Roar.png'),
(175, 'Iron Sting', 'Sword', '4', '42', 'Elemental Mastery', 'Infusion Stinger', 'Dealing Elemental DMG increases all DMG by 6/7.5/9/10.5/12% for 6s. Max 2 stacks. Can only occur once every 1s.', 'Crafting', './images/weapons/Iron_Sting.png'),
(176, 'Festering Desire', 'Sword', '4', '42', 'Energy Recharge', '-', 'Increases Elemental Skill DMG by 16/20/24/28/32% and Elemental Skill CRIT Rate by 6/7.5/9/10.5/12%.', 'Story Quest', './images/weapons/Festering_Desire.png'),
(177, 'Favonius Sword', 'Sword', '4', '41', 'Energy Recharge', 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha', './images/weapons/Favonius_Sword.png'),
(178, 'Blackcliff Longsword', 'Sword', '4', '44', 'CRIT DMG', 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange', './images/weapons/Blackcliff_Longsword.png'),
(179, 'Royal Spear', 'Polearm', '4', '44', 'ATK', 'Focus', 'Upon damaging an opponent, increases CRIT Rate by 8/10/12/14/16%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange', './images/weapons/Royal_Spear.png'),
(180, 'Prototype Grudge', 'Polearm', '4', '42', 'Energy Recharge', 'Magic Affinity', 'After using an Elemental Skill, increases Normal and Charged Attack DMG by 8/10/12/14/16% for 12s. Max 2 stacks.', 'Crafting', './images/weapons/Prototype_Grudge.png'),
(181, 'Lithic Spear', 'Polearm', '4', '42', 'Physical DMG Bonus', 'Lithic Axiom - Subjugating Evil', 'Normal Attack hits have a 20% chance of causing the next Charged Attack performed in the following 10s to deal 40% increased DMG.', 'Gacha', './images/weapons/Lithic_Spear.png'),
(182, 'Favonius Lance', 'Polearm', '4', '44', 'Energy Recharge', 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha', './images/weapons/Favonius_Lance.png'),
(183, 'Dragon\'s Bane', 'Polearm', '4', '41', 'Elemental Mastery', 'Bane of Flame and Water', 'Increases DMG against enemies affected by Hydro or Pyro by 20/24/28/32/36%.', 'Gacha', './images/weapons/Dragon\'s_Bane.png'),
(184, 'Dragonspine Spear', 'Polearm', '4', '41', 'Physical DMG Bonus', '-', 'Hitting an opponent with Normal and Charged Attacks has a 60/70/80/90/100% chance of forming and dropping an Everfrost Icicle above them, dealing 80/95/110/125/140% AoE ATK DMG.\r\nOpponents affected by Cryo are dealt 200/240/280/320/360% ATK DMG. Can only occur once every 10s.', 'Crafting', './images/weapons/Dragonspine_Spear.png'),
(185, 'Deathmatch', 'Polearm', '4', '41', 'CRIT Rate', 'Gladiator', 'If there are at least 2 opponents nearby, ATK is increased by 16/20/24/28/32% and DEF is increased by 16/20/24/28/32%. If there are less than 2 enemies nearby, ATK is increased by 24/30/36/42/48%.', 'BP Bounty', './images/weapons/Deathmatch.png'),
(186, 'Crescent Pike', 'Polearm', '4', '44', 'Physical DMG Bonus', 'Infusion Needle', 'After picking up an Elemental Orb/Particle, Normal and Charged Attacks deal an additional 20/25/30/35/40% ATK as DMG for 5s.', 'Crafting', './images/weapons/Crescent_Pike.png'),
(187, 'Blackcliff Pole', 'Polearm', '4', '42', 'CRIT DMG', 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange', './images/weapons/Blackcliff_Pole.png'),
(188, 'Whiteblind', 'Claymore', '4', '42', 'DEF', 'Infusion Blade', 'On hit, Normal or Charged Attacks increase Base ATK and DEF by 6/7.5/9/10.5/12% for 6s. Max 4 stacks. Can only occur once every 0.5s.', 'Crafting', './images/weapons/Whiteblind.png'),
(189, 'The Bell', 'Claymore', '4', '42', 'HP', 'Rebellious Guardian', 'Taking DMG generates a shield which absorbs DMG up to 20/23/26/29/32% of Max HP. This shield lasts for 10s or until broken, and can only be triggered once every 45s. While protected by the shield, the character gains 12/15/18/21/24% increased DMG.', 'Gacha', './images/weapons/The_Bell.png'),
(190, 'Snow-Tombed Starsilver', 'Claymore', '4', '44', 'Physical DMG Bonus', '-', 'Hitting an opponent with Normal and Charged Attacks has a 60/70/80/90/100% chance of forming and dropping an Everfrost Icicle above them, dealing 80/95/110/125/140% AoE ATK DMG.\r\nOpponents affected by Cryo are dealt 200/240/280/320/360% ATK DMG. Can only occur once every 10s.', 'Crafting', './images/weapons/Snow-Tombed_Starsilver.png'),
(191, 'Serpent Spine', 'Claymore', '4', '42', 'CRIT Rate', 'Wavesplitter', 'Every 4s a character is on the field, they will deal 6/7/8/9/10% more DMG and take 3/2.7/2.4/2.1/1.8% more DMG. This effect has a maximum of 5 stacks and will not be reset if the character leaves the field, but will be cleared when the character takes DMG.', 'BP Bounty', './images/weapons/Serpent_Spine.png'),
(192, 'Sacrificial Greatsword', 'Claymore', '4', '44', 'Energy Recharge', 'Composed', 'After damaging an opponent with an Elemental Skill, the skill has a 40/50/60/70/80% chance to end its own CD. Can only occur once every 30/26/22/18/14s.', 'Gacha', './images/weapons/Sacrificial_Greatsword.png'),
(193, 'Royal Greatsword', 'Claymore', '4', '43', 'ATK', 'Focus', 'Upon damaging an enemy, increases CRIT Rate by 8/10/12/14/16%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange', './images/weapons/Royal_Greatsword.png'),
(194, 'Rainslasher', 'Claymore', '4', '42', 'Elemental Mastery', 'Bane of Storm and Tide', 'Increases DMG against enemies affected by Hydro or Electro by 20/25/30/35/40%.', 'Gacha', './images/weapons/Rainslasher.png'),
(195, 'Prototype Aminus', 'Claymore', '4', '44', 'ATK', 'Crush', 'On hit, Normal or Charged Attacks have a 50% chance to deal an additional 240/300/360/420/480% ATK DMG to enemies within a small radius. Can only occur once every 15s.', 'Crafting', './images/weapons/Prototype_Aminus.png'),
(196, 'Lithic Blade', 'Claymore', '4', '41', 'CRIT DMG', 'Lithic Axiom - Unity', 'For every character in the party who hails from Liyue, the character who equips this weapon gains 6/7/8/9/10% ATK increase and 2/3/4/5/6% CRIT Rate increase.', 'Gacha', './images/weapons/Lithic_Blade.png'),
(197, 'Favonius Greatsword', 'Claymore', '4', '41', 'Energy Recharge', 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha', './images/weapons/Favonius_Greatsword.png'),
(198, 'Blackcliff Slasher', 'Claymore', '4', '42', 'CRIT DMG', 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange', './images/weapons/Blackcliff_Slasher.png'),
(199, 'Wine and Song', 'Catalyst', '4', '42', 'Energy Recharge', 'Wind in the Square', 'For every character in the party who hails from Mondstadt, the character who equips this weapon gains 8/10/12/14/16% ATK increase and 3/3.5/4/4.5/5% Movement SPD increase.', 'Gacha', './images/weapons/Wine_and_Song.png'),
(200, 'The Widsith', 'Catalyst', '4', '42', 'CRIT DMG', 'Debut', 'When a character takes the field, they will gain a random theme song for 10s. This can only occur once every 30s.\r\nRecitative: Increases Base ATK by 60/75/90/105/120%\r\nAria: Increases all Elemental DMG by 48/60/72/84/96%\r\nInterlude: Elemental Mastery is increased by 240/300/360/420/480', 'Gacha', './images/weapons/The_Widsith.png'),
(201, 'Solar Pearl', 'Catalyst', '4', '42', 'CRIT Rate', 'Solar Shine', 'Normal Attack hits increase Elemental Skill and Elemental Burst DMG by 20/25/30/35/40% for 6s. Likewise, Elemental Skill or Elemental Burst hits increase Normal Attack DMG by 20/25/30/35/40% for 6s.', 'BP Bounty', './images/weapons/Solar_Pearl.png'),
(202, 'Sacrificial Fragments', 'Catalyst', '4', '41', 'Elemental Mastery', 'Composed', 'After damaging an opponent with an Elemental Skill, the skill has a 40/50/60/70/80% chance to end its own CD. Can only occur once every 30/26/22/18/14s.', 'Gacha', './images/weapons/Sacrificial_Fragments.png'),
(203, 'Royal Grimoire', 'Catalyst', '4', '44', 'ATK', 'Focus', 'Upon damaging an enemy, increases CRIT Rate by 8/10/12/14/16%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange', './images/weapons/Royal_Grimoire.png'),
(204, 'Prototype Malice', 'Catalyst', '4', '42', 'HP', 'Gilding', 'Using an Elemental Burst regenerates 4/4.5/5/5.5/6 Energy every 2s for 6s. Additionally, all party members will regenerate 4/4.5/5/5.5/6% HP every 2s for this duration.', 'Crafting', './images/weapons/Prototype_Malice.png'),
(205, 'Mappa Mare', 'Catalyst', '4', '44', 'Elemental Mastery', 'Infusion Scroll', 'Triggering an Elemental reaction grants a 8/10/12/14/16% Elemental DMG Bonus for 10s. Max 2 stacks.', 'Crafting', './images/weapons/Mappa_Mare.png'),
(206, 'Frostbearer', 'Catalyst', '4', '42', 'ATK', '-', 'Hitting an opponent with Normal and Charged Attacks has a 60/70/80/90/100% chance of forming and dropping an Everfrost Icicle above them, dealing 80/95/110/125/140% AoE ATK DMG.\r\nOpponents affected by Cryo are dealt 200/240/280/320/360% ATK DMG. Can only occur once every 10s.', 'Crafting', './images/weapons/Frostbearer.png'),
(207, 'Favonius Codex', 'Catalyst', '4', '42', 'Energy Recharge', 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha', './images/weapons/Favonius_Codex.png'),
(208, 'Eye of Perception', 'Catalyst', '4', '41', 'ATK', 'Echo', 'Normal and Charged Attacks have a 50% chance to fire a Bolt of Perception, dealing 240/270/300/330/360% ATK as DMG. This bolt can bounce between enemies a maximum of 4 times. This effect can occur once every 12/11/10/9/8s.', 'Gacha', './images/weapons/Eye_of_Perception.png'),
(209, 'Blackcliff Amulet', 'Catalyst', '4', '42', 'CRIT DMG', 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange', './images/weapons/Blackcliff_Amulet.png'),
(210, 'The Viridescent Hunt', 'Bow', '4', '42', 'CRIT Rate', 'Verdant Wind', 'Upon hit, Normal and Aimed Shot Attacks have a 50% chance to generate a Cyclone, which will continuously attract surrounding enemies, dealing 40/50/60/70/80% of ATK as DMG to these enemies every 0.5s for 4s. This effect can only occur once every 14/13/12/11/10s.', 'BP Bounty', './images/weapons/The_Viridescent_Hunt.png'),
(211, 'The Stringless', 'Bow', '4', '42', 'Elemental Mastery', 'Arrowless Song', 'Increases Elemental Skill and Elemental Burst DMG by 24/30/36/42/48%.', 'Gacha', './images/weapons/The_Stringless.png'),
(212, 'Sacrificial Bow', 'Bow', '4', '44', 'Energy Recharge', 'Composed', 'After damaging an opponent with an Elemental Skill, the skill has a 40/50/60/70/80% chance to end its own CD. Can only occur once every 30/26/22/18/14s.', 'Gacha', './images/weapons/Sacrificial_Bow.png'),
(213, 'Rust', 'Bow', '4', '42', 'ATK', 'Rapid Firing', 'Increases Normal Attack DMG by 40/50/60/70/80% but decreases Aimed Shot DMG by 8/9/10/11/12%', 'Gacha', './images/weapons/Rust.png'),
(214, 'Royal Bow', 'Bow', '4', '42', 'ATK', 'Focus', 'Upon damaging an enemy, increases CRIT Rate by 8/10/12/14/16%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange', './images/weapons/Royal_Bow.png'),
(215, 'Prototype Crescent', 'Bow', '4', '42', 'ATK', 'Unreturning', 'Aimed Shot hits on weak points increase Movement SPD by 10% and ATK by 36/45/54/63/72% for 10s.', 'Crafting', './images/weapons/Prototype_Crescent.png'),
(216, 'Favonius Warbow', 'Bow', '4', '41', 'Energy Recharge', 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha', './images/weapons/Favonius_Warbow.png'),
(217, 'Compound Bow', 'Bow', '4', '41', 'Physical DMG Bonus', 'Infusion Arrow', 'Normal Attack and Aimed Shot hits increase ATK by 4/5/6/7/8% and Normal Attack SPD by 1.2/1.5/1.8/2.1/2.4% for 6s. Max 4 stacks. Can only occur once every 0.3s.', 'Crafting', './images/weapons/Compound_Bow.png'),
(218, 'Blackcliff Warbow', 'Bow', '4', '44', 'CRIT DMG', 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange', './images/weapons/Blackcliff_Warbow.png'),
(219, 'Alley Hunter', 'Bow', '4', '41', 'CRIT Rate', 'Urban Guerrilla', 'Every 4s a character is on the field, their ATK increases by 4/5/6/7/8% and their CRIT DMG increases by 4/5/6/7/8%. This effect has a maximum of 5 stacks and will not be reset if the character leaves the field, but will be cleared when the character takes DMG.', 'Gacha', './images/weapons/Alley_Hunter.png'),
(220, 'Traveler\'s Handy Sword', 'Sword', '3', '40', 'DEF', 'Journey', 'Each Elemental Orb or Particle collected restores 1/1.25/1.5/1.75/2% HP.', 'Chest', './images/weapons/Traveler\'s_Handy_Sword.png'),
(221, 'Skyrider Sword', 'Sword', '3', '38', 'Energy Recharge', 'Determination', 'Using an Elemental Burst grants a 12/15/18/21/24% increase in ATK and Movement SPD for 12s.', 'Gacha', './images/weapons/Skyrider_Sword.png'),
(222, 'Harbinger of Dawn', 'Sword', '3', '39', 'CRIT DMG', 'Vigorous', 'When HP is above 90%, increases CRIT Rate by 14/18/22/24/28%.', 'Gacha', './images/weapons/Harbinger_of_Dawn.png'),
(223, 'Fillet Blade', 'Sword', '3', '39', 'ATK', 'Gash', 'On hit, has 50% chance to deal 240/280/320/360/400% ATK DMG to a single enemy. Can only occur once every 15/14/13/12/11s.', 'Gacha', './images/weapons/Fillet_Blade.png'),
(224, 'Dark Iron Sword', 'Sword', '3', '40', 'Elemental Mastery', 'Overloaded', 'Upon causing an Overloaded, Superconduct, Electro-Charged, or an Electro-infused Swirl reaction, increases Base ATK by 20/25/30/35/40% for 12s.', 'Gacha', './images/weapons/Dark_Iron_Sword.png'),
(225, 'Cool Steel', 'Sword', '3', '39', 'ATK', 'Bane of Water and Ice', 'Increases DMG against enemies affected by Hydro or Cryo by 12/15/18/21/24%.', 'Gacha', './images/weapons/Cool_Steel.png'),
(226, 'White Tassel', 'Polearm', '3', '39', 'CRIT Rate', 'Sharp', 'Increases Normal Attack DMG by 24/30/36/42/48%.', 'Chest', './images/weapons/White_Tassel.png'),
(227, 'Halberd', 'Polearm', '3', '40', 'ATK', 'Heavy', 'Normal Attacks deal an additional 160/200/240/280/320% DMG. Can only occur once every 10s.', 'Gacha', './images/weapons/Halberd.png'),
(228, 'Black Tassel', 'Polearm', '3', '38', 'HP', 'Bane of the Soft', 'Increases DMG against slimes by 40/50/60/70/80%.', 'Gacha', './images/weapons/Black_Tassel.png'),
(229, 'White Iron Greatsword', 'Claymore', '3', '39', 'DEF', 'Cull the Weak', 'Defeating an opponent restores 8/10/12/14/16% HP.', 'Gacha', './images/weapons/White_Iron_Greatsword.png'),
(230, 'Skyrider Greatsword', 'Claymore', '3', '39', 'Physical DMG Bonus', 'Courage', 'On hit, Normal or Charged Attacks increase ATK by 6/7/8/9/10% for 6s. Max 4 stacks. Can only occur once every 0.5s.', 'Gacha', './images/weapons/Skyrider_Greatsword.png'),
(231, 'Quartz', 'Claymore', '3', '40', 'Elemental Mastery', 'Residual Heat', 'Upon causing an Overloaded, Melt, Burning, Vaporize, or a Pyro-infused Swirl reaction, increases Base ATK by 20/25/30/35/40% for 12s.', 'Gacha', './images/weapons/Quartz.png'),
(232, 'Ferrous Shadow', 'Claymore', '3', '39', 'HP', 'Unbending', 'When HP falls below 70/75/80/85/90%, increases Charged Attack DMG by 30/35/40/45/50%, and Charged Attacks become much harder to interrupt.', 'Gacha', './images/weapons/Ferrous_Shadow.png'),
(233, 'Debate Club', 'Claymore', '3', '39', 'ATK', 'Blunt Conclusion', 'After using an Elemental Skill, Normal or Charged Attacks, on hit, deal an additional 60/75/90/105/120% ATK DMG in a small area. Effect lasts 15s. DMG can only occur once every 3s.', 'Gacha', './images/weapons/Debate_Club.png'),
(234, 'Bloodtainted Greatsword', 'Claymore', '3', '38', 'Elemental Mastery', 'Bane of Fire and Thunder', 'Increases DMG against enemies affected by Pyro or Electro by 12/15/18/21/24%.', 'Gacha', './images/weapons/Bloodtainted_Greatsword.png'),
(235, 'Twin Nephrite', 'Catalyst', '3', '40', 'CRIT Rate', 'Guerilla Tactic', 'Defeating an enemy increases Movement SPD and ATK by 12/14/16/18/20% for 15s.', 'Gacha', './images/weapons/Twin_Nephrite.png'),
(236, 'Thrilling Tales of Dragon Slayers', 'Catalyst', '3', '39', 'HP', 'Legacy', 'When switching characters, the new character taking the field has their ATK increased by 24/30/36/42/48% for 10s. This effect can only occur once every 20s.', 'Gacha', './images/weapons/Thrilling_Tales_of_Dragon_Slayers.png'),
(237, 'Otherworldly Story', 'Catalyst', '3', '39', 'Energy Recharge', 'Energy Shower', 'Each Elemental Orb or Particle collected restores 1/1.25/1.5/1.75/2% HP.', 'Gacha', './images/weapons/Otherworldly_Story.png'),
(238, 'Magic Guide', 'Catalyst', '3', '38', 'Elemental Mastery', 'Bane of Storm and Tide', 'Increases DMG against enemies affected by Hydro or Electro by 12/15/18/21/24%.', 'Gacha', './images/weapons/Magic_Guide.png'),
(239, 'Emerald Orb', 'Catalyst', '3', '40', 'Elemental Mastery', 'Rapids', 'Upon causing a Vaporize, Electro-Charged, Frozen, or a Hydro-infused Swirl reaction, increases Base ATK by 20/25/30/35/40% for 12s.', 'Gacha', './images/weapons/Emerald_Orb.png'),
(240, 'Amber Catalyst', 'Catalyst', '3', '40', 'Elemental Mastery', 'Elemental Mastery', 'Normal Attack hits increase all Elemental DMG by 6/7.5/9/10.5/12% for 6s. Max 2 stacks.', 'Gacha', './images/weapons/Amber_Catalyst.png'),
(241, 'Slingshot', 'Bow', '3', '38', 'CRIT Rate', 'Slingshot', 'If a Normal Attack or Aimed Shot hits a target within 0.3s of being fired, increases DMG by 36/42/48/54/60%; otherwise, it decreases DMG by 10%.', 'Gacha', './images/weapons/Slingshot.png'),
(242, 'Sharpshooter\'s Oath', 'Bow', '3', '39', 'CRIT DMG', 'Precise', 'Increases DMG against weak spots by 24/30/36/42/48%.', 'Gacha', './images/weapons/Sharpshooter\'s_Oath.png'),
(243, 'Recurve Bow', 'Bow', '3', '38', 'HP', 'Cull the Weak', 'Defeating an opponent restores 8/10/12/14/16% HP.', 'Chest', './images/weapons/Recurve_Bow.png'),
(244, 'Raven Bow', 'Bow', '3', '40', 'Elemental Mastery', 'Bane of Flame and Water', 'Increases DMG against enemies affected by Hydro or Pyro by 12/15/18/21/24%.', 'Gacha', './images/weapons/Raven_Bow.png'),
(245, 'Messenger', 'Bow', '3', '40', 'CRIT DMG', 'Archer\'s Message', 'Aimed Shot hits on weak spots deal an additional 100/125/150/175/200% ATK DMG as CRIT DMG. Can only occur once every 10s.', 'Chest', './images/weapons/Messenger.png'),
(246, 'Ebony Bow', 'Bow', '3', '40', 'ATK', 'Decimate', 'Increases DMG against mechanoid Ruin enemies by 40/50/60/70/80%.', 'Gacha', './images/weapons/Ebony_Bow.png'),
(247, 'Silver Sword', 'Sword', '2', '33', '-', '-', '-', 'Chest', './images/weapons/Silver_Sword.png'),
(248, 'Iron Point', 'Polearm', '2', '33', '-', '-', '-', 'Chest', './images/weapons/Iron_Point.png'),
(249, 'Old Merc\'s Pal', 'Claymore', '2', '33', '-', '-', '-', 'Chest', './images/weapons/Old_Merc\'s_Pal.png'),
(250, 'Pocket Grimoire', 'Catalyst', '2', '33', '-', '-', '-', 'Chest', './images/weapons/Pocket_Grimoire.png'),
(251, 'Seasoned Hunter\'s Bow', 'Bow', '2', '33', '-', '-', '-', 'Chest', './images/weapons/Seasoned_Hunter\'s_Bow.png'),
(252, 'Hunter\'s Bow', 'Bow', '1', '23', '-', '-', '-', 'Chest', './images/weapons/Hunter\'s_Bow.png'),
(253, 'Apprentice\'s Notes', 'Catalyst', '1', '23', '-', '-', '-', 'Chest', './images/weapons/Apprentice\'s_Notes.png'),
(254, 'Waster Greatsword', 'Claymore', '1', '23', '-', '-', '-', 'Chest', './images/weapons/Waster_Greatsword.png'),
(255, 'Beginner\'s Protector', 'Polearm', '1', '23', '-', '-', '-', 'Chest', './images/weapons/Beginner\'s_Protector.png'),
(256, 'Dull Blade', 'Sword', '1', '23', '-', '-', '-', 'Chest', './images/weapons/Dull_Blade.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artifacts`
--
ALTER TABLE `artifacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artifacts`
--
ALTER TABLE `artifacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

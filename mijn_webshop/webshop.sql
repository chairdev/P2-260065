-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql_db
-- Generation Time: Nov 26, 2026 at 10:34 AM
-- Server version: 26.10.0
-- PHP Version: 8.3.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `producten`
--

CREATE TABLE `producten` (
  `id` int NOT NULL,
  `naam` varchar(100) NOT NULL,
  `prijs` decimal(6,2) NOT NULL,
  `omschrijving` text,
  `afbeelding` varchar(100) DEFAULT NULL,
  `platform` varchar(100) DEFAULT NULL,
  `uitgever` varchar(100) DEFAULT NULL,
  `regio` varchar(50) DEFAULT NULL,
  `conditie` varchar(100) DEFAULT NULL,
  `voorraad` tinyint(1) NOT NULL DEFAULT '1',
  `uitgebreide_omschrijving` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `producten`
--

INSERT INTO `producten` (`id`, `naam`, `prijs`, `omschrijving`, `afbeelding`, `platform`, `uitgever`, `regio`, `conditie`, `voorraad`, `uitgebreide_omschrijving`) VALUES
(1, 'Sony PSP-1000 (Zwart)', 149.99, 'Speel onderweg met de Sony PSP-1000. Deze draagbare spelcomputer heeft een helder scherm en een zwarte behuizing.', 'psp.jpg', 'PlayStation Portable', 'Sony', 'PAL', 'Refurbished', 2, 'De PSP-1000 was de eerste uitvoering van Sony’s PlayStation Portable. Met deze zwarte handheld kun je PSP-games spelen waar je ook bent. Het brede scherm en de bediening met knoppen en een analoge stick maken de console geschikt voor uiteenlopende genres, van avonturenspellen tot racespellen. De PSP-1000 is een herkenbaar stuk uit de geschiedenis van draagbare spelcomputers en een mooie aanvulling op een retrocollectie.'),
(2, 'Sega Dreamcast (Wit)', 129.99, 'De Sega Dreamcast is een klassieke spelcomputer van Sega. Deze witte console brengt bekende games uit het begin van het 3D-gametijdperk naar je collectie.', 'dreamcast.jpg', 'Dreamcast', 'Sega', 'NTSC-J', 'Nette Staat', 0, 'De Dreamcast is Sega’s thuisconsole uit het einde van de jaren negentig en staat bekend om zijn kleurrijke spellen en opvallende ontwerp. De console bracht arcade-achtige ervaringen naar de woonkamer en bood ook mogelijkheden voor online spelen. Deze witte uitvoering past goed in een retro-opstelling en is interessant voor verzamelaars en liefhebbers van Sega.'),
(3, 'Lifeline (PS2)', 89.99, 'In Lifeline voor de PlayStation 2 help je een jonge vrouw te ontsnappen uit een ruimtestation. Het spel staat bekend om de bijzondere bediening met stemcommando’s.', 'lifeline.jpg', 'PlayStation 2', 'Sony', 'NTSC-U', 'Nette Staat', 1, 'Lifeline is een sciencefiction-avonturenspel voor de PlayStation 2. Het verhaal speelt zich af in een ruimtestation waar een ramp heeft plaatsgevonden. Je helpt Rio, een medewerker van het station, om de gevaren te overleven en de gebeurtenissen te onderzoeken. Het spel valt op door de bijzondere bediening met stemcommando’s en de nadruk op samenwerking tussen speler en personage.'),
(4, 'Nintendo Game Boy Advance (Paars)', 99.99, 'Neem je favoriete games mee met deze paarse Nintendo Game Boy Advance. De handheld biedt een compact ontwerp en een uitgebreide bibliotheek aan klassieke spellen.', 'gba.jpg', 'GameBoy Advance', 'Nintendo', 'PAL', 'Refurbished', 1, 'De Game Boy Advance is een draagbare spelcomputer van Nintendo met een uitgebreid aanbod aan avonturen-, platform- en racespellen. Dankzij het compacte ontwerp kun je je spellen gemakkelijk meenemen. Deze paarse uitvoering geeft de handheld een herkenbare uitstraling en is geschikt voor spelers die klassieke Game Boy Advance-games willen spelen of hun Nintendo-collectie willen uitbreiden.'),
(5, 'Mega Man Battle Network 6: Cybeast Gregar (GBA) ', 49.99, 'In het laatste deel van het Mega Man Battle Network moeten Lan en Mega Man.EXE het opnemen tegen Gregar, een eeuwenoud wezen dat in de vorm van een wolf dood en verderf zaait op het internet. Mega Man Battle Network 6 introduceert onder andere het Beast Out System en het Cross Change System.', 'mmbn6.jpg', 'Game Boy Advance', 'Capcom', 'NTSC-U', 'Zeer Goede Staat', 1, 'In Mega Man Battle Network 6: Cybeast Gregar keren Lan Hikari en zijn NetNavi MegaMan.EXE terug voor een nieuw avontuur. Verken de digitale wereld, neem het op tegen vijandige programma’s en bouw je gevechtsstrategie op met Battle Chips. Met het Beast Out-systeem kan MegaMan.EXE tijdelijk de kracht van Gregar gebruiken. Dit deel combineert actie, strategie en verhaal en vormt een spannend slotstuk van de Battle Network-reeks.'),
(7, 'Kurohyou: Ryu ga Gotoku Shinshou (PSP)', 69.99, 'Kurohyou: Ryu ga Gotoku Shinshou is een actie-avonturenspel voor de PlayStation Portable. Speel als Tatsuya Ukyo en ontdek zijn verhaal in de straten van Kamurocho.', 'kurohyou1.jpg', 'PlayStation Portable', 'Sega', 'NTSC-J', 'Goede Staat', 1, 'Kurohyou: Ryu ga Gotoku Shinshou is een actie-avonturenspel voor de PlayStation Portable, dat zich afspeelt in de bekende wijk Kamurocho. Je speelt als Tatsuya Ukyo, een jonge vechter die na een gewelddadige confrontatie verwikkeld raakt in de wereld van illegale straatgevechten. Terwijl Tatsuya probeert zijn eigen weg te vinden, ontmoet hij rivalen en bondgenoten en ontdekt hij meer over de mensen achter de vechtclub Dragon Heat. Het spel combineert verkenning en verhaal met gevechten waarin je verschillende vechtstijlen kunt gebruiken. Deze Japanse PSP-titel is een interessant verzamelstuk voor fans van de Like a Dragon-serie en draagbare actie-avonturenspellen.'),
(8, 'Mega Man Star Force 3: Black Ace (DS)', 59.99, 'In dit actie-RPG-avontuur kruipt Geo Stelar opnieuw in de rol van Mega Man. Verken de wereld, vecht tegen vijanden en gebruik verschillende Noise Forms om je gevechtsstijl aan te passen.', 'megaman-star-force-3-black-ace.jpg', 'Nintendo DS', 'Capcom', 'NTSC-U', 'Niet opgegeven', 1, 'Mega Man Star Force 3: Black Ace is het derde deel in de Star Force-reeks. Geo Stelar en zijn buitenaardse partner Omega-Xis krijgen te maken met een nieuwe dreiging die de wereld in gevaar brengt. Tijdens gevechten beweeg je over een raster en gebruik je Battle Cards om aan te vallen, te verdedigen en speciale vaardigheden in te zetten. Met het Noise-systeem kan Mega Man verschillende vormen aannemen, elk met eigen eigenschappen. Black Ace heeft bovendien unieke transformaties en inhoud die deze versie onderscheiden.'),
(9, 'EarthBound (SNES)', 999.99, 'EarthBound is een kleurrijk rollenspel waarin Ness en zijn vrienden op avontuur gaan om de wereld te redden. Verken steden en bijzondere gebieden, ontmoet excentrieke personages en neem het op tegen vreemde vijanden.', 'earthbound.jpg', 'Super Nintendo Entertainment System', 'Nintendo', 'NTSC-U', 'Perfecte Staat', 1, 'In EarthBound begint Ness aan een avontuur nadat een meteoriet is neergestort in de buurt van zijn huis. Samen met Paula, Jeff en Poo reist hij door een moderne, humoristische wereld om de buitenaardse dreiging van Giygas te stoppen. Het spel combineert verkenning met turn-based gevechten en gebruikt herkenbare alledaagse plekken als decor voor onverwachte gebeurtenissen. De eigenzinnige humor, personages en muziek hebben EarthBound tot een geliefde klassieker onder RPG-fans gemaakt.'),
(10, 'Haunting Ground (PS2)', 75.00, 'Haunting Ground is een survival-horrorspel waarin Fiona Belli probeert te ontsnappen uit een dreigend kasteel. Gebruik stealth, los omgevingsraadsels op en werk samen met de hond Hewie om gevaarlijke achtervolgers te ontwijken.', 'haunting-ground.jpg', 'PlayStation 2', 'Capcom', 'Niet opgegeven', 'Perfecte Staat', 1, 'Fiona Belli wordt wakker in een onbekend kasteel en moet zien te ontsnappen terwijl verschillende achtervolgers op haar jagen. In plaats van gevechten ligt de nadruk op verbergen, vluchten en het onderzoeken van de omgeving. Hewie, een Duitse herder die Fiona onderweg ontmoet, kan helpen bij het afweren van vijanden en het vinden van een veilige doorgang. Haunting Ground bouwt spanning op met zijn afgelegen locaties, puzzels en constante dreiging en is een bekende survival-horrortitel voor de PlayStation 2.'),
(12, 'Jet Set Radio (DC)', 50.00, 'Jet Set Radio is een kleurrijke actiegame waarin je als lid van een inline-skatecrew door de stad rijdt en graffiti spuit.', 'jet-set-radio.jpg', 'Dreamcast', 'Sega', 'Goede Staat', 'NTSC-U', 1, 'In Jet Set Radio sluit je je aan bij de GGs, een crew die op inline skates door de futuristische stad Tokyo-to rijdt. Verken de verschillende wijken, maak graffiti op aangewezen plekken en ontwijk rivaliserende crews en de politie. De game combineert snelle actie met een opvallende cel-shaded tekenstijl en een energieke soundtrack. Jet Set Radio werd oorspronkelijk uitgebracht voor de Sega Dreamcast en groeide uit tot een cultklassieker.'),
(13, 'Sonic Rush (DS)', 20.00, 'Sonic Rush is een snelle platformgame voor de Nintendo DS, met Sonic en Blaze the Cat als speelbare personages.', 'sonic-rush.jpg', 'Nintendo DS', 'Sega', 'Niet opgegeven', 'NTSC-U', 13, 'In Sonic Rush racen Sonic the Hedgehog en Blaze the Cat door kleurrijke levels vol obstakels, vijanden en verborgen routes. De game combineert klassieke 2D-platformactie met snelle bewegingen over beide schermen van de Nintendo DS. Met aparte verhaallijnen, spectaculaire baasgevechten en een energieke soundtrack is Sonic Rush een opvallende Sonic-game voor de handheld.'),
(14, 'Shenmue (DC)', 45.00, 'Shenmue is een avonturenspel waarin Ryo Hazuki de moord op zijn vader onderzoekt.', 'shenmue.jpg', 'Dreamcast', 'Sega', 'Zeer Goede Staat', 'NTSC-U', 1, 'In Shenmue speel je als Ryo Hazuki, die na de moord op zijn vader op zoek gaat naar de dader. Je onderzoekt de Japanse stad Yokosuka, praat met bewoners en volgt aanwijzingen om het mysterie op te lossen. De game combineert verkenning en verhaal met gevechten en dagelijkse activiteiten. Shenmue staat bekend om zijn gedetailleerde wereld en de vrijheid om het leven in de stad op eigen tempo te ontdekken.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `producten`
--
ALTER TABLE `producten`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `producten`
--
ALTER TABLE `producten`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

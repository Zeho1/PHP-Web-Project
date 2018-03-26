-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 31 Juillet 2017 à 12:56
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mediadb`
--

-- --------------------------------------------------------

--
-- Structure de la table `artgenre`
--

CREATE TABLE `artgenre` (
  `idart` int(11) NOT NULL,
  `idgenre` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `artgenre`
--

INSERT INTO `artgenre` (`idart`, `idgenre`) VALUES
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 2),
(24, 1),
(25, 1),
(26, 2),
(27, 3);

-- --------------------------------------------------------

--
-- Structure de la table `artistes`
--

CREATE TABLE `artistes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `genre_id` int(10) NOT NULL,
  `year` date NOT NULL,
  `image` text NOT NULL,
  `nationalite` varchar(50) NOT NULL,
  `biographie` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `artistes`
--

INSERT INTO `artistes` (`id`, `name`, `genre_id`, `year`, `image`, `nationalite`, `biographie`, `url`) VALUES
(23, 'AC/DC', 2, '1973-01-01', 'highwaytohell.jpg', 'Australien', 'AC/DC est un groupe de hard rock australo-britanniquenote 1 formÃ© Ã  Sydney en 1973 par les frÃ¨res Angus et Malcolm Young. Bien que classÃ© dans le hard rock et parfois considÃ©rÃ© comme un pionnier du heavy metal1,2, les membres du groupe ont toujours qualifiÃ© leur musique de Â« rock \'n\' roll Â».\r\n\r\nLa composition d\'AC/DC subit beaucoup de changements avant la sortie du deuxiÃ¨me album en Australie, T.N.T., en 1975. Elle est ensuite restÃ©e inchangÃ©e jusqu\'Ã  ce que Mark Evans soit remplacÃ© par Cliff Williams en 1977. En 1979, le groupe connaÃ®t un succÃ¨s mondial avec son tube Highway to Hell. Le chanteur et co-parolier Bon Scott meurt le 19 fÃ©vrier 1980, officiellement d\'une asphyxie causÃ©e par ses propres vomissements, aprÃ¨s une nuit de forte consommation d\'alcool. Le groupe envisage alors la dissolution mais l\'ancien chanteur de Geordie, Brian Johnson, est choisi comme remplaÃ§ant de Bon Scott. La mÃªme annÃ©e, le groupe sort l\'album Back in Black, leur plus grand succÃ¨s mondial Ã  ce jour. L\'album suivant, For Those About to Rock We Salute You, a aussi beaucoup de succÃ¨s et est le premier de leurs albums Ã  atteindre la premiÃ¨re place des ventes aux Ã‰tats-Unis. La popularitÃ© d\'AC/DC commence Ã  diminuer en 1983, date Ã  laquelle Phil Rudd est renvoyÃ© du groupe. Le batteur du groupe est alors Simon Wright jusqu\'en 1989, puis Chris Slade, jusqu\'au retour de Phil Rudd en 1994. Le groupe connaÃ®t une nouvelle popularitÃ© au dÃ©but des annÃ©es 1990 avec la sortie de The Razors Edge. L\'avant-dernier album du groupe, Black Ice, sorti le 20 octobre 2008, est leur plus grand succÃ¨s dans les charts depuis For Those About to Rock, atteignant la premiÃ¨re place dans de nombreux pays4. Leur dernier album en date, sans Malcolm Young remplacÃ© par Stevie Young, est Rock or Bust, sorti le 28 novembre 2014 en Australie et le 2 dÃ©cembre 2014 Ã  l\'international.', 'http://www.acdc.com'),
(24, 'Within Temptation', 1, '1996-01-01', 'Within_Temptation.jpg', 'NÃ©erlandais', 'Within Temptation est un groupe nÃ©erlandais de metal symphonique. Le groupe est crÃ©Ã© en 1996 par la chanteuse Sharon den Adel et le guitariste Robert Westerholt2. Leur musique est dÃ©crite comme du metal symphonique3, bien que leur premiers albums, comme Enter, soient catÃ©gorisÃ©s metal gothique1,3,4,5,6. Au cours d\'une entrevue, den Adel l\'a dÃ©crit dans le genre rock symphonique aux influences variÃ©es7.\r\n\r\nAprÃ¨s la parution de leur premier album, Enter, le groupe devient connu de la scÃ¨ne underground nÃ©erlandaise. Ce n\'est qu\'Ã  partir de 2001 qu\'il se popularise auprÃ¨s d\'un public plus large, avec le single Ice Queen issu de l\'album Mother Earth, qui atteint la deuxiÃ¨me place des classements2. DÃ¨s lors, le groupe remporte le Conamus Exportprijs8 pendant quatre annÃ©es d\'affilÃ©e. Leurs albums suivants The Silent Force et The Heart of Everything dÃ©butent Ã  la premiÃ¨re place des classements musicaux nÃ©erlandais. En 2008, ils font paraÃ®tre un DVD live et CD, Black Symphony, enregistrÃ© au Metropole Orchestra. Cette sÃ©rie suit en 2009 avec An Acoustic Night at the Theatre9.\r\n\r\nLe cinquiÃ¨me album du groupe, The Unforgiving, est commercialisÃ© en mars 2011, en parallÃ¨le Ã  une sÃ©rie de comics et de courts-mÃ©trages. Le 13 novembre 2012, le groupe cÃ©lÃ¨bre sa quinziÃ¨me annÃ©e d\'existence lors d\'un Ã©norme Ã©vÃ©nement appelÃ© Elements au palais des sports d\'Anvers. Leur sixiÃ¨me album, Hydra, est commercialisÃ© le 22 janvier 2014 au Japon, le 31 janvier en Europe, et le 4 fÃ©vrier aux Ã‰tats-Unis.', 'https://www.within-temptation.com/'),
(25, 'Metallica', 1, '1982-01-01', 'rs-metallica-1d77d17a-78a8-4da2-b52a-5cc734e8f2db.jpg', 'AmÃ©ricain', 'Metallica est un groupe de heavy metal amÃ©ricain fondÃ© en 1981, originaire de Los Angeles en Californie.\r\n\r\nLe groupe est composÃ© actuellement de deux de ses membres fondateurs, James Hetfield (chant, guitare rythmique) et Lars Ulrich (batterie), ainsi que du guitariste Kirk Hammett (arrivÃ© en 1983) et du bassiste Robert Trujillo, qui rejoindra le groupe en 2003. Les prÃ©cÃ©dents membres du groupe incluent Dave Mustaine (aprÃ¨s son exclusion, membre fondateur de Megadeth), les bassistes Ron McGovney (uniquement pour les dÃ©mos), Cliff Burton (pour les trois premiers albums ; dÃ©cÃ©dÃ© en 1986) et Jason Newsted (prenant la suite de Burton et remplacÃ© en 2003 par Trujillo). Le groupe a longtemps collaborÃ© avec le producteur Bob Rock, qui a produit tous leurs albums de 1990 Ã  2003 et est devenu temporairement le bassiste du groupe, entre le dÃ©part de Newsted et l\'arrivÃ©e de Trujillo. Le groupe se forme au dÃ©but des annÃ©es 1980 lorsque Hetfield se rend Ã  une annonce postÃ©e dans un journal local par le batteur Lars Ulrich.\r\n\r\nMetallica est renommÃ© entre autres pour sa musique instrumentale, rapide et nerveuse, qui le place comme l\'un des Â« Big Four of Thrash Â» (l\'un des quatre plus grands groupes de thrash metal) avec Slayer, Megadeth et Anthrax. Le groupe s\'est forgÃ© une rÃ©putation chez les fans de musique underground et chez les critiques de la presse spÃ©cialisÃ©e grÃ¢ce Ã  leurs quatre premiers albums, dont le troisiÃ¨me, Master of Puppets (1986), est dÃ©crit comme l\'un des albums les plus influents de la scÃ¨ne Â« heavy Â» thrash metal. En 1991, le groupe accÃ¨de a une plus grande popularitÃ© grÃ¢ce au succÃ¨s commercial de leur cinquiÃ¨me album Ã©ponyme â€” surnommÃ© The Black Album â€” qui arrive Ã  la premiÃ¨re place du classement Billboard 200 dÃ¨s sa sortie. Dans cet album, le groupe explore diverses voies musicales, ayant pour effet d\'attirer l\'attention d\'une audience plus large.\r\n\r\nEn 2000, Metallica, avec de nombreux autres groupes et musiciens, entame une procÃ©dure judiciaire contre le site de partage de musique Napster pour avoir partagÃ© illÃ©galement leurs morceaux musicaux gratuitement sans le consentement du groupe. Un accord est finalement trouvÃ© et Napster devient un service payant. Durant cette mÃªme pÃ©riode, un film documentaire, intitulÃ© Some Kind of Monster, raconte l\'enregistrement de leur album St. Anger et des tensions au sein du groupe. En 2009, le groupe est prÃ©sentÃ© au Rock and Roll Hall of Fame.', 'https://www.metallica.com'),
(26, 'Deep Purple', 2, '1968-01-01', 'Deep_Purple_in_2004.jpg', 'Britannique', 'Deep Purple est un groupe de rock britannique. FormÃ© en 1968, il est considÃ©rÃ© comme l\'un des fondateurs du genre hard rock avec Led Zeppelin et Black Sabbath. Au cours de ses cinquante ans d\'existence, le groupe est toujours constituÃ© de cinq musiciens (un chanteur, un guitariste, un bassiste, un batteur et un organiste), mais il a connu plusieurs changements de personnel qui ont dÃ©terminÃ© son Ã©volution musicale. Les Ã©lÃ©ments caractÃ©ristiques du son de Deep Purple durant la majeure partie de son existence sont la guitare Fender Stratocaster de Ritchie Blackmore et l\'orgue Hammond de Jon Lord.\r\n\r\nDurant ses deux premiÃ¨res annÃ©es d\'existence, le quintet original enregistre trois albums influencÃ©s par le courant psychÃ©dÃ©lique et la musique classique. L\'arrivÃ©e en 1969 du chanteur Ian Gillan et du bassiste Roger Glover donne lieu Ã  la pÃ©riode la plus faste du groupe, avec les albums In Rock et Machine Head (avec le tube Smoke on the Water) et l\'enregistrement en public Made in Japan. AprÃ¨s le dÃ©part de Gillan et Glover en 1973, leurs remplaÃ§ants David Coverdale et Glenn Hughes orientent la musique du groupe dans une direction soul et funk, une Ã©volution renforcÃ©e par l\'arrivÃ©e du guitariste Tommy Bolin, remplaÃ§ant de Ritchie Blackmore, en 1975. Le groupe se sÃ©pare l\'annÃ©e suivante.\r\n\r\nLa formation emblÃ©matique du dÃ©but des annÃ©es 1970 se reforme en 1984, mais sa composition fluctue durant les dix annÃ©es qui suivent, dominÃ©es par les relations conflictuelles entre Ian Gillan et Ritchie Blackmore : le premier quitte de nouveau le groupe de 1989 Ã  1992, alors que le second en claque dÃ©finitivement la porte en 1993. Deep Purple retrouve une certaine stabilitÃ© avec l\'arrivÃ©e de son remplaÃ§ant Steve Morse l\'annÃ©e suivante. Depuis, le groupe continue Ã  produire des albums dans le genre hard rock tout en donnant des concerts dans le monde entier Ã  un rythme soutenu. Il est intronisÃ© au Rock and Roll Hall of Fame en 2016.', 'http://www.deeppurple.com'),
(27, 'U2', 3, '1976-01-01', 'U2-MOJO-254-770.jpg', 'Irlandaise', 'U2 est un groupe de rock irlandais, originaire de Dublin. FormÃ© en 1976, il est composÃ© de Bono au chant (et occasionnellement Ã  la guitare), The Edge Ã  la guitare, au piano et au chant, Adam Clayton Ã  la basse et Larry Mullen Jr. Ã  la batterie. Depuis les annÃ©es 1980, U2 s\'impose comme un groupe majeur sur la scÃ¨ne mondiale. On lui doit notamment les albums War, The Unforgettable Fire, The Joshua Tree, Achtung Baby, Zooropa, Pop et All That You Can\'t Leave Behind. Les singles Sunday Bloody Sunday, New Year\'s Day, Pride (In the Name of Love), With or Without You, I Still Haven\'t Found What I\'m Looking For, Where the Streets Have No Name, Desire, One, Mysterious Ways, Beautiful Day, Elevation ou Vertigo sont quelques exemples de succÃ¨s planÃ©taires du groupe.\r\n\r\nU2 a vendu 170 millions d\'albums1 (en juin 2009) et a Ã©galement remportÃ© 22 Grammy Awards2. U2 est classÃ© 22e sur la liste des 100 plus grands artistes de tous les temps par le magazine Rolling Stone3. Depuis le milieu des annÃ©es 1980, le groupe dÃ©fend la cause des droits de l\'homme, en faisant par exemple la promotion d\'Amnesty International lors de ses concerts. Les membres du groupe deviennent d\'ailleurs Â« ambassadeurs de conscience Â» de l\'organisation en dÃ©cembre 20054. Bono a Ã©tÃ© en lice pour le prix Nobel de la paix en 2003 et en 2005. Il est Ã©galement nommÃ© Â« PersonnalitÃ© de l\'annÃ©e 2005 Â» par le Time Magazine pour son combat en faveur de l\'Afrique5, et se voit dÃ©cerner le titre d\'Â« Homme de la paix Â» par le maire de Paris, Bertrand DelanoÃ«, en 20086.\r\n\r\nSongs of Innocence, sorti le 9 septembre 2014, est proposÃ© gratuitement via l\'iTunes Store jusqu\'au 13 octobre 2014, pour une forme de record inÃ©dite : l\'album est mis Ã  la disposition de plus de 500 millions d\'utilisateurs de la plateforme d\'Apple, en arrivant directement sur leurs diffÃ©rents appareils.', 'www.u2.com');

-- --------------------------------------------------------

--
-- Structure de la table `artsongs`
--

CREATE TABLE `artsongs` (
  `songid` int(10) NOT NULL,
  `idartist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `artsongs`
--

INSERT INTO `artsongs` (`songid`, `idartist`) VALUES
(1, 25),
(2, 25),
(5, 25),
(6, 26),
(7, 23),
(8, 23),
(9, 24),
(10, 24);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `genremus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id`, `genremus`) VALUES
(1, 'Metal'),
(2, 'Rock'),
(3, 'Pop'),
(4, 'Electro'),
(5, 'Jazz'),
(6, 'RnB'),
(7, 'Rap'),
(8, 'House'),
(9, 'Funk'),
(10, 'Jungle'),
(11, 'Dubstep'),
(12, 'Funk'),
(13, 'K-Pop');

-- --------------------------------------------------------

--
-- Structure de la table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `songname` varchar(50) NOT NULL,
  `album` varchar(50) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `songs`
--

INSERT INTO `songs` (`id`, `songname`, `album`, `url`) VALUES
(1, 'Fade to Black', 'Ride The Lightning', 'https://www.youtube.com/watch?v=WEQnzs8wl6E'),
(2, 'Blackened', 'And Justice For All', 'https://www.youtube.com/watch?v=DU_ggFovJNo'),
(5, 'And Justice For All', 'And Justice For All', 'https://www.youtube.com/watch?v=-BG1Ng2pU-8'),
(6, 'Smoke on the water', 'Machine Head', 'https://www.youtube.com/watch?v=zUwEIt9ez7M'),
(7, 'Thunderstruck', 'The Razors Edge', 'https://www.youtube.com/watch?v=v2AC41dglnM'),
(8, 'Highway to Hell', 'Highway to Hell', 'https://www.youtube.com/watch?v=gEPmA3USJdI'),
(9, 'Paradise (what about us?)', 'Hydra', 'https://www.youtube.com/watch?v=Dy6MpsDPKts'),
(10, 'Ice Queen', 'Mother Earth', 'https://www.youtube.com/watch?v=qmLIE6ULtyU');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `artgenre`
--
ALTER TABLE `artgenre`
  ADD PRIMARY KEY (`idart`);

--
-- Index pour la table `artistes`
--
ALTER TABLE `artistes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `artsongs`
--
ALTER TABLE `artsongs`
  ADD PRIMARY KEY (`songid`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `artgenre`
--
ALTER TABLE `artgenre`
  MODIFY `idart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `artistes`
--
ALTER TABLE `artistes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `artsongs`
--
ALTER TABLE `artsongs`
  MODIFY `songid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

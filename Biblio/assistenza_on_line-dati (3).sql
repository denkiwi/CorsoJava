-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Mar 15, 2018 alle 12:29
-- Versione del server: 10.1.16-MariaDB
-- Versione PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `autoritbl`
--

CREATE TABLE `autoritbl` (
  `autori_id` int(11) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `anagrafica` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `autoritbl`
--

INSERT INTO `autoritbl` (`autori_id`, `cognome`, `nome`, `anagrafica`) VALUES
(1, 'Shakespeare', 'William', '1564-1616'),
(2, 'Coelho', 'Paulo', '1947'),
(5, 'King', 'Stephen', '1947'),
(6, 'Christie', 'Agata', '1976'),
(7, 'Italo', 'Calvino', '1923-1985'),
(8, 'Austen', 'Jane', '1775-1817'),
(9, 'Camilleri', 'Andrea', '1925'),
(10, 'Orwell', 'George', '1903-1950'),
(11, 'Pasolini', 'Pier', '1922-1975'),
(12, 'Folet', 'Ken', '1949');

-- --------------------------------------------------------

--
-- Struttura della tabella `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `dataNascita` date NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `contacts`
--

INSERT INTO `contacts` (`id`, `nome`, `cognome`, `dataNascita`, `telefono`) VALUES
(1, 'Danut', 'Andres', '1995-07-04', '3285845923'),
(2, 'Mario', 'Rossi', '1998-05-03', '3332454523'),
(5, 'Roberto', 'Blabla', '1665-03-05', '443399221');

--
-- Trigger `contacts`
--
DELIMITER $$
CREATE TRIGGER `before_contacts_update` BEFORE UPDATE ON `contacts` FOR EACH ROW BEGIN
INSERT INTO contacts_audit
SET action='update',
id=OLD.id,
nome=OLD.nome,
cognome=OLD.cognome,
dataNascita=OLD.dataNascita,
telefono=OLD.telefono,
changedat=NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struttura della tabella `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `action` varchar(45) NOT NULL,
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `dataNascita` date NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `changedat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `contacts_audit`
--

INSERT INTO `contacts_audit` (`action`, `id`, `nome`, `cognome`, `dataNascita`, `telefono`, `changedat`) VALUES
('update', 1, 'Danut', 'Andres', '2008-07-04', '3285845923', '2018-02-28'),
('update', 3, 'Alessandro', 'Magno', '1995-05-03', '3332901043', '2018-03-09');

-- --------------------------------------------------------

--
-- Struttura della tabella `editoritbl`
--

CREATE TABLE `editoritbl` (
  `editore_id` int(11) NOT NULL,
  `nomeE` varchar(45) NOT NULL,
  `indirizzoE` varchar(45) NOT NULL,
  `cittaE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `editoritbl`
--

INSERT INTO `editoritbl` (`editore_id`, `nomeE`, `indirizzoE`, `cittaE`) VALUES
(1, 'abrigliasciolta', 'via,francesco daverio 18,21100', 'Varese'),
(2, 'Acco&Editore', ' C.so,Marconi,77', 'Verbania'),
(3, 'abrigliasciolta', 'via,francesco daverio 18,21100', 'Varese'),
(4, 'Acco&Editore', ' C.so,Marconi,77', 'Verbania'),
(5, 'ADEA&EDIZIONI', 'Via,Don,Milani,,37', 'Cremona'),
(6, 'Adelphi&Edizioni', 'Via,S. Giovanni sul Muro 14', 'Milano'),
(7, 'Affabulazione', 'Piazza M.V.Agrippa 7h', 'Roma');

-- --------------------------------------------------------

--
-- Struttura della tabella `letters`
--

CREATE TABLE `letters` (
  `id` int(11) NOT NULL,
  `destinatario` varchar(45) NOT NULL,
  `emailDestinatario` varchar(60) NOT NULL,
  `textDestinatario` text NOT NULL,
  `sender` varchar(45) NOT NULL,
  `sendDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `letters`
--

INSERT INTO `letters` (`id`, `destinatario`, `emailDestinatario`, `textDestinatario`, `sender`, `sendDate`) VALUES
(1, 'null', 'admin@admin.it', 'Ciao questo è il primo messaggio che mando con la funzione creata ', 'admin', '2018-02-26'),
(2, 'null', 'danut.kiwi@email.com', 'Sono messaggio 2', 'admin', '2018-02-26'),
(3, 'null', 'danut.andre@edmai.com', 'son 2 comes', 'admin', '2018-02-26'),
(4, 'null', 'danut.andre@edmai.com', 'son 2 comes', 'admin', '2018-02-26'),
(5, 'null', 'danut.andre@edmai.com', 'son 2 comes', 'admin', '2018-02-26'),
(6, 'null', 'danut.andre@edmai.com', 'son 2 comes', 'admin', '2018-02-26'),
(7, 'null', 'danut.andre@edmai.com', 'son 2 comes', 'admin', '2018-02-26'),
(8, 'null', 'danut.andre@edmai.com', 'son 2 comes', 'admin', '2018-02-26'),
(9, 'null', 'andres@edu.com', 'sda', 'admin', '2018-02-26'),
(10, 'null', 'cuaisadsafds@edu.com', 'DISPERAREREAREAa', 'admin', '2018-02-26'),
(11, 'null', 'cuaisadsafds@edu.com', 'DISPERAREREAREAa', 'admin', '2018-02-26'),
(12, 'null', 'io@om.com', 'wewewew', 'admin', '2018-02-26');

-- --------------------------------------------------------

--
-- Struttura della tabella `libritbl`
--

CREATE TABLE `libritbl` (
  `isb` int(11) NOT NULL,
  `titolo` varchar(45) NOT NULL,
  `imgurl` text,
  `intro` text NOT NULL,
  `autore_id` int(4) NOT NULL,
  `editore_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `libritbl`
--

INSERT INTO `libritbl` (`isb`, `titolo`, `imgurl`, `intro`, `autore_id`, `editore_id`) VALUES
(3, 'Amleto', 'goo.gl/okDRom\r\n', ' Amleto è una delle tragedie shakespeariane più conosciute e citate. Fu scritta probabilmente tra il 1600 e l’estate del 1602. Siamo a Elsinore in Danimarca. Il fantasma del defunto re, ucciso dal fratello Claudio che ne ha poi usurpato il trono e sposato la moglie, appare al figlio Amleto e chiede di essere vendicato. ', 1, 4),
(4, 'OTELLO', 'goo.gl/sy56rF\r\n', ' Otello è una tragedia di Shakespeare scritta intorno al 1603. La prima rappresentazione documentata ebbe luogo il 1º novembre 1604 al Whitehall Palace di Londra. Il protagonista, signore di Cipro e capo della flotta veneziana, sposato con la giovane Desdemona, viene istigato da Jago, suo alfiere, geloso per la nomina a capitano di Cassio, a credere che tra sua moglie e il capitano vi sia una relazione. Prova ne è un fazzoletto che Jago, sottratto a Desdemona, ha posto in casa di Cassio, e che Otello vede in mano al rivale durante una conversazione architettata da Jago per mostrare al suo padrone l’infedeltà della moglie.', 1, 6),
(5, 'SOGNO DI UNA NOTTE DI MEZZA ESTATE ', 'goo.gl/cqo9La\r\n', ' E’ una commedia di William Shakespeare scritta intorno al 1595. La commedia presenta tre storie intrecciate e, collegate tra loro dalla celebrazione del matrimonio tra Teseo, duca di Atene, e Ippolita, regina delle Amazzoni. Per celebrare le nozze, alcuni artigiani ateniesi capeggiati dal tessitore Bottom decidono di rappresentare ‘Piramo e Tisbe’. Si recano nel bosco per le prove.', 1, 1),
(8, 'L’alchimista', 'goo.gl/zmGnMp\r\n', 'il grande esordio letterario di Coelho, la storia di una iniziazione, una favola magica e spirituale, il cui protagonista è Santiago, un giovane pastorello andaluso, alla ricerca di un tesoro sognato.', 2, 2),
(9, 'Adulterio', 'goo.gl/TQ8z9m\r\n', 'romanzo basato su una storia vera di grande fascino, quella della giovane irlandese Brida O’ Fern. Il racconto dell’iniziazione di una ragazza al mondo della magia attraverso diverse tradizioni esoteriche.', 2, 3),
(10, 'Le valchirie', 'goo.gl/UaybJW\r\n', ' il sorprendente libro che racconta, in forma narrativa, il percorso umano e spirituale dell’autore all’indomani della pubblicazione dell’ Alchimista', 2, 4),
(13, 'Carrie', 'https://images-na.ssl-images-amazon.com/images/I/51Fc4NpDN9L._SX324_BO1,204,203,200_.jpg', 'l primo romanzo, del 1974. Bellissima la versione cinematografica di Brian De Palma del 1976, interpretata da Sissy Spacek nei panni della povera Carrie, bullizzata a scuola e con una mamma fanatica religiosa.', 5, 5),
(14, 'Shining', 'https://images-na.ssl-images-amazon.com/images/I/51OfyciTeVL._SX324_BO1,204,203,200_.jpg', 'Pubblicato nel 1977 in Italia col titolo Una splendida festa di morte, poi cambiato in Shining dopo il successo del film di Stanley Kubrick del 1980. Un capolavoro cinematografico che però SK non ha mai amato, perché diverge troppo dalla trama del romanzo, di genere più thriller fantastico che horror.', 5, 6),
(18, 'Pet Sematary', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/52/StephenKingPetSematary.jpg/220px-StephenKingPetSematary.jpg', 'Un vero horror come si deve, questo del 1983. Tutto ruota intorno a un cimitero in cui i morti tornano in vita. Bello e spaventoso il film del 1989 di Mary Lambert.', 5, 7),
(19, 'Poirot sul Nilo', 'https://i0.wp.com/www.cultora.it/wp-content/uploads/2016/01/4645-poirot-sul-nilo.jpeg', 'A Poirot piace viaggiare circondato dal lusso, quindi una crociera sul Nilo è l’ideale. Peccato che, ovunque egli vada, ci scappi il morto. O, come in questo caso, i morti. Tra un tentato omicidio ai templi di Luxor e un’arma bagnata dalle acque del Nilo, in Death on the Nile Poirot riuscirà a risolvere il caso facendo affidamento solo ed unicamente alle sue grandi capacità deduttive, senza nessuna prova evidente.', 6, 1),
(20, 'Le Fatiche di Hercule', 'https://i0.wp.com/www.cultora.it/wp-content/uploads/2016/01/mnCXTmwT7E6GuHaWIKHr4sQ.jpg', 'Pubblicata tra il 1939 e 1947, The labours of Hercules è una serie di racconti dove Hercule Poirot sfida se stesso: come il suo mitologico omonimo, deve compiere dodici fatiche, ma poiché è abbastanza complicato trovare un’Idra da uccidere, il geniale belga procederà per simbolismi, risolvendo solo i casi che stuzzicano la sua immaginazione.', 6, 2),
(21, 'Istantanea di un delitto', 'https://i1.wp.com/www.cultora.it/wp-content/uploads/2016/01/cover1.jpeg?resize=191%2C300', 'Miss Marple, la cara nonnina che risolve i casi grazie alla sua profonda conoscenza della natura umana, si trova a ad affrontare un crimine apparentemente impossibile da chiarire: un’amica di Miss Marple è in treno quando, su un altro convoglio, assiste all’omicidio di donna. Nessun cadavere viene trovato e l’improbabile investigatrice deve usare tutta la sua intelligenza in 4.50 from Paddington.', 6, 3),
(22, 'Il barone rampante', 'https://www.cinquecosebelle.it/wp-content/uploads/2016/03/Il-barone-rampante-169x300.jpg', 'La rocambolesca vicenda di Cosimo Piovasco di Rondò è nota a molti di noi fin dalla tenera età, poiché Il barone rampante (1957) è un romanzo fiabesco e divertente che spesso si legge interamente o a brani già nei primi anni di scuola.', 7, 4),
(23, 'Marcovaldo', 'https://www.cinquecosebelle.it/wp-content/uploads/2016/03/Marcovaldo-198x300.png', 'n analogo scontro fra amara realtà e fantasia sognante si ritrova nella raccolta di racconti Marcovaldo ovvero Le stagioni in città (1963). Il libro deve il titolo al protagonista, un operaio in continua lotta con la povertà e con la testa fra le nuvole, un personaggio così semplice e ingenuo da stupirsi se in piena città, accanto alla fermata del tram, d’improvviso, spunta qualche fungo e capace di girare in bicicletta in compagnia di una rigogliosa pianta coltivata con amore.', 7, 5),
(24, 'Ragione e sentimento', 'https://cdn.robadadonne.it/wp-content/uploads/sites/8/2015/04/ragione-sentimento1-320x549.jpg', 'Siamo nel 1811, anno di pubblicazione del romanzo. Ancora nella campagna inglese, of course, ancora alle prese con una famiglia in difficoltà. E siamo alle prese con grandi emozioni. Ci sono due sorelle: Elinor: la ragione. Il decoro, l’understatement inglesissimo, la pacatezza assoluta. E Marianne: il sentimento. La passione, la sregolatezza, il genio, il dolore, la sensibilità. Quale delle due facce della stessa medaglia prevarrà?', 8, 5),
(25, 'Orgoglio e pregiudizio ', 'http://www.mondadoristore.it/img/Orgoglio-e-pregiudizio-Jane-Austen/ea978880450615/BL/BL/01/NZO/?tit=Orgoglio+e+pregiudizio&aut=Jane+Austen', 'Il più famoso forse tra i romanzi della scrittrice inglese. Pubblicata a sue spese e anonimo nel 1813, questa pietra miliare si svolge nella campagna di Hertfortshire. C’è uno scapolo bello e ricco (Bingley) e una famiglia modesta (i Bennet) con ben cinque fanciulle da sistemare. Nel frattempo, compare anche Darcy, altro giovane rampollo fascinoso: come finirà la sua contrastata storia d’amore con Elisabeth? E Bingley riuscirà a sposare Jane Bennet? ', 8, 6),
(26, 'Nella Sicilia di fine Ottocento', 'https://www.cinquecosebelle.it/wp-content/uploads/2015/12/telefono-216x300.jpg', 'Andrea Camilleri non nasce come scrittore. Fino alla pensione, raggiunta negli anni ’90, la sua principale occupazione era infatti quella di regista teatrale e di produttore televisivo. A lui si devono sia l’arrivo in Italia di molti drammi del teatro dell’assurdo (Beckett, Ionesco e altri), sia gli sceneggiati televisivi dedicati al tenente Sheridan e al commissario Maigret. Aveva anche provato a scrivere qualche libro, ma erano stati quasi sempre insuccessi', 9, 1),
(27, 'Il ladro di merendine', 'https://www.cinquecosebelle.it/wp-content/uploads/2015/12/merendine-212x300.jpg', 'Passiamo ora a Montalbano, che da un certo punto in poi ha quasi monopolizzato la carriera e i successi di Camilleri, anche se di tanto in tanto lo scrittore siciliano si concede delle deviazioni. Il primo romanzo della serie, La forma dell’acqua, uscì nel 1994.', 9, 2),
(29, 'La voce del violino', 'https://www.cinquecosebelle.it/wp-content/uploads/2015/12/violino-210x300.jpg', 'La voce del violino uscì nel 1997, immediatamente dopo Il ladro di merendine. Protagonista era ancora Salvo Montalbano, commissario di polizia di Vigata, immaginaria cittadina siciliana. La particolarità, però, era che stavolta il caso che si presentava davanti ai suoi occhi non era un caso normale, ma in un certo senso era stato lo stesso commissario ad andarselo a cercare. Tutto prendeva avvio da un funerale: quello della moglie dell’amico questore. Montalbano ci si recava in compagnia dell’agente Gallo, che, a causa di una guida piuttosto spericolata, portava però l’auto, durante il tragitto, a scontrarsi con un’altra vettura in sosta. ', 9, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `primo_nome` varchar(45) NOT NULL,
  `secondo_nome` varchar(45) NOT NULL,
  `e_mail` varchar(60) NOT NULL,
  `user` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `regdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `members`
--

INSERT INTO `members` (`id`, `primo_nome`, `secondo_nome`, `e_mail`, `user`, `pass`, `regdate`) VALUES
(4, 'admin', 'admin', 'admin@admin.com', 'admin', 'admin', '2018-02-25');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `autoritbl`
--
ALTER TABLE `autoritbl`
  ADD PRIMARY KEY (`autori_id`);

--
-- Indici per le tabelle `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `editoritbl`
--
ALTER TABLE `editoritbl`
  ADD PRIMARY KEY (`editore_id`);

--
-- Indici per le tabelle `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `libritbl`
--
ALTER TABLE `libritbl`
  ADD PRIMARY KEY (`isb`),
  ADD KEY `editore_id` (`editore_id`),
  ADD KEY `fk_libri` (`autore_id`);

--
-- Indici per le tabelle `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `autoritbl`
--
ALTER TABLE `autoritbl`
  MODIFY `autori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT per la tabella `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `editoritbl`
--
ALTER TABLE `editoritbl`
  MODIFY `editore_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT per la tabella `letters`
--
ALTER TABLE `letters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT per la tabella `libritbl`
--
ALTER TABLE `libritbl`
  MODIFY `isb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT per la tabella `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `libritbl`
--
ALTER TABLE `libritbl`
  ADD CONSTRAINT `fk_libri` FOREIGN KEY (`autore_id`) REFERENCES `autoritbl` (`autori_id`),
  ADD CONSTRAINT `libritbl_ibfk_1` FOREIGN KEY (`editore_id`) REFERENCES `editoritbl` (`editore_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

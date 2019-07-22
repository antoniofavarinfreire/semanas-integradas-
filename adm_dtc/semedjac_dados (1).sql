-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 02/04/2018 às 10:49
-- Versão do servidor: 10.1.31-MariaDB-cll-lve
-- Versão do PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `semedjac_dados`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contador`
--

CREATE TABLE `contador` (
  `id` int(11) NOT NULL,
  `pagina` varchar(250) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `publicacao` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `contador`
--

INSERT INTO `contador` (`id`, `pagina`, `titulo`, `publicacao`, `total`) VALUES
(5, 'formacaogestores2017', 'ENCONTRO DE FORMAÇÃO COM  GESTORES E SUPERVISORES MUNICIPAIS', '2017-02-22', 191),
(6, 'escolas', 'LISTA DE ESCOLAS', '2017-01-20', 348),
(7, 'calendario', 'CALENDÁRIO ESCOLAR 2017', '2017-01-20', 268),
(8, 'turma_destaque', 'TURMAS EM DESTAQUE', '2017-01-20', 234),
(9, 'contato', 'Formulário para Contato', '2017-01-20', 196),
(10, 'telefones', 'LISTA DE CONTATOS', '2017-01-20', 273),
(11, 'missao', 'MISSÃO', '2017-01-20', 95),
(12, 'perfil', 'PERFIL DA SECRETÁRIA', '2017-01-20', 134),
(13, 'parfor2017', 'VISITA DA SECRETÁRIA DE EDUCAÇÃO AO PARFOR ? PÓLO DE JACUNDÁ', '2017-02-17', 70),
(14, 'aee2017', 'ENCONTRO PEDAGÓGICO DE PROFESSORAS DO AEE  - ATENDIMENTO EDUCACIONAL ESPECIALIZADO', '2017-02-20', 197),
(15, 'voltaasaulas2017', 'VOLTA ÀS AULAS 2017 - JACUNDÁ-PA', '2017-02-13', 138),
(16, 'forprof2017', 'PARTICIPAÇÃO DA SECRETÁRIA DE EDUCAÇÃO AO FORPROF/PA', '2017-02-21', 68),
(17, 'jornada2017_1', 'JORNADA PEDAGÓGICA 2017 - ABERTURA OFICIAL', '2017-01-30', 83),
(18, 'jornada2017_2', 'JORNADA PEDAGÓGICA 2017 - SEGUNDO DIA', '2017-01-31', 146),
(19, 'visitasescolas', 'VISITA ÀS OBRAS ESCOLARES', '2017-01-27', 48),
(25, 'voltaasaulas', 'INFORMATIVO - VOLTA ÀS AULAS', '2017-02-13', 9),
(21, 'matriculas', 'MATRÍCULAS 2017', '2017-01-17', 58),
(22, 'PNAIC2017', 'PNAIC EM AÇÃO - 2017', '2017-01-24', 42),
(23, 'formacaoinfantil2017', 'FORMAÇÃO GERAL PARA OS SERVIDORES DOS CENTROS DE ED. INFANTIL', '2017-02-24', 262),
(24, 'edinfantilvolta2017', 'A SECRETARIA MUNICIPAL DE  EDUCAÇÃO DE JACUNDÁ, INFORMA QUE AS AULAS DA EDUCAÇÃO INFANTIL INICIARÃO NAS SEGUINTES DATAS DE MARÇO DE 2017', '2017-02-24', 46),
(26, 'AEDESAEGYPTI2017', 'REUNIÃO COM SECRETÁRIOS MUNICIPAIS TRATA FORÇA TAREFA CONTRA AEDES AEGYPTI', '2017-03-10', 184),
(27, 'VISITAASCRECHES20172', 'VISITA ÀS CRECHES', '2017-03-13', 251),
(28, 'diadaescola2017', 'DIA DA ESCOLA 15 DE MARÇO DE 2017', '2017-03-15', 293),
(29, 'campanhatrabalhoinfantil2017', 'CAMPANHA: CHEGA DE TRABALHO INFANTIL', '2017-03-21', 271),
(30, 'ENCONTROPEDAGOGICOEDUCACAOINFANTIL2017', 'ENCONTRO PEDAGÓGICO - EDUCAÇÃO INFANTIL', '2017-03-21', 223),
(31, 'cangurumatematica2017', 'CANGURU - MATEMÁTICO SEM FRONTEIRAS 2017', '2017-03-21', 153),
(32, 'convitediaD', 'CONVITE - DIA D', '2017-03-22', 289),
(33, 'integSeducMunicipios', 'I Encontro de Integração da Secretaria de Estado de Educação (SEDUC), com Secretários Municipais de Educação', '2017-03-22', 26),
(34, 'integSeducMunicipios2', 'I ENCONTRO DE INTEGRAÇÃO DA SECRETARIA DE ESTADO DE EDUCAÇÃO SEDUC), COM SECRETÁRIOS MUNICIPAIS DE EDUCAÇÃO', '2017-03-22', 163),
(35, 'diaescolajp', 'DIA DA ESCOLA - CORONEL JOÃO PINHEIRO', '2017-03-22', 181),
(36, 'diaescolaai', 'DIA DA ESCOLA - ARCO-ÍRIS', '2017-03-22', 159),
(37, 'rpeterpanburiti', 'REUNIÃO COM PAIS E PROFESSORES - PETER PAN BURITI', '2017-03-22', 171),
(38, 'diaescolapaulogermano', 'DIA DA ESCOLA - PAULO GERMANO', '2017-03-22', 134),
(39, 'DIADCONTRAAEDESAEGYPTI', 'DIA D - CONTRA AEDES AEGYPTI', '2017-03-22', 432),
(40, 'diaescolacriancafeliz', 'DIA DA ESCOLA ? CRIANÇA FELIZ', '2017-03-27', 80),
(41, 'visitadonaflor1', 'VISITA AO CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-03-27', 209),
(42, 'formacao032017', 'ENCONTRO COM DIRETORES E SUPERVISORES ESCOLARES', '2017-03-30', 238),
(43, 'comunicado30032017', 'COMUNICADO', '2017-03-30', 137),
(44, 'reuniaodiretores20171', 'REUNIÃO ENTRE DIRETORES E NÚCLEO PEDAGÓGICO', '2017-03-31', 146),
(45, 'diaescolateodomironeto', 'DIA DA ESCOLA ? TEODOMIRO NETO', '2017-04-03', 107),
(46, 'diaescolacristorei2017', 'DIA DA ESCOLA ? CRISTO REI', '2017-04-04', 371),
(47, 'POESIAEJA2017', 'POESIA ? EJA (Educação de Jovens e Adultos)', '2017-04-04', 122),
(48, 'diaescolarosaliacorreia2017', 'DIA DA ESCOLA ? ROSÁLIA CORREIA', '2017-04-04', 158),
(49, 'diaescolaesterandrade2017', 'DIA DA ESCOLA ? ESTER ANDRADE', '2017-04-11', 60),
(50, 'aberturapascoa2017', 'ABERTURA DA PÁSCOA ? SEMED', '2017-04-11', 486),
(51, 'FORMACAOPARAEDUCACAOESPECIAL042017', 'FORMAÇÃO PARA EDUCAÇÃO ESPECIAL', '2017-04-11', 218),
(52, 'paixaodecristomg2017', 'DRAMATIZAÇÃO ??PAIXÃO DE CRISTO?? ? E.M.E.F. Mª DA GLÓRIA', '2017-04-13', 430),
(53, 'semedundime20171', 'SECRETÁRIA DE EDUCAÇÃO NO FÓRUM ESTADUAL DA UNDIME', '2017-04-13', 110),
(54, 'pascoaescolas2017', 'GALERIA DE FOTOS ? PÁSCOA NAS ESCOLAS', '2017-04-18', 125),
(55, 'informativouepa2017041', 'INFORMATIVO PROCESSO SELETIVO ? UEPA', '2017-04-18', 360),
(56, 'diaindio2017', 'DIA DO ÍNDIO ? GALERIA DE FOTOS', '2017-04-20', 164),
(57, 'reuniaoconselho25042017', 'REUNIÃO ? CONSELHO MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', '2017-04-25', 201),
(58, 'encontroformacaosupervisores26042017', 'II ENCONTRO DE FORMAÇÃO COM SUPERVISORES', '2017-04-26', 100),
(59, 'onibusbibliotecaeletronortejacunda', 'ÔNIBUS BIBLIOTECA DA ELETRONORTE VISITA JACUNDÁ', '2017-04-26', 106),
(60, 'dianacionaleducacao2017', '28 DE ABRIL DIA NACIONAL DA EDUCAÇÃO', '2017-04-26', 554),
(61, 'reportagemnossojornal02052017', 'SEMED É DESTAQUE EM REPORTAGEM DO ?NOSSO JORNAL DE JACUNDÁ?.', '2017-05-02', 472),
(62, '5demaiolinguaportuguesa2017', '5 DE MAIO DIA DA LÍNGUA PORTUGUESA E DA CULTURA NA CLPLP', '2017-05-05', 111),
(63, '6demaiodiadamatematica2017', '6 DE MAIO DIA DA MATEMÁTICA', '2017-05-05', 105),
(64, 'notasemed06052017', 'NOTA OFICIAL - SECRETARIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ - 06/05/2017', '2017-05-06', 376),
(65, 'notasemed08052017', 'NOTA OFICIAL - SECRETARIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ - 08/05/2017', '2017-05-08', 246),
(66, '?pg=1', 'Página Principal', '2017-05-09', 10),
(67, 'informativouepa10052017', 'COMUNICADO AOS CANDIDATOS SOBRE PROCESSO SELETIVO ESPECIAL 2017 - MODALIDADE A DISTÂNCIA', '2017-05-10', 131),
(68, '0', 'PÃ¡gina Principal', '2017-05-10', 16564),
(69, 'diadasmaes11052017', 'SECRETARIA DE EDUCAÇÃO SORTEIA BRINDES PARA MÃES EM EVENTO DA SEPOM', '2017-04-26', 134),
(70, 'semedentregadoscoletes13052017', 'SECRETARIA DE EDUCAÇÃO SORTEIA BRINDES PARA MÃES EM EVENTO DA SEPOM', '2017-04-26', 255),
(71, '20demaiodiadopedagogo2017', '20 DE MAIO - DIA DO PADAGOGO', '2017-05-19', 210),
(72, 'galeriadiadasmaescrereser2017', 'GALERIA DE FOTOS - DIA DAS MÃES - C.E.I. CRER E SER', '2017-04-26', 178),
(73, 'galeriadiadasmaessaofrancisco2017', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F. SÃO FRANCISCO', '2017-04-26', 148),
(74, 'diadasmaesescolasdocampo2017', 'COMEMORAÇÃO AO DIA DAS MÃES NAS ESCOLAS DO CAMPO DE JACUNDÁ', '2017-04-26', 195),
(75, 'dianacionalcombateexpsexualnocampo19052017', 'DIA NACIONAL DE COMBATE AO ABUSO E EXPLORAÇÃO SEXUAL DE CRIANÇAS E ADOLESCENTES NO CAMPO', '2017-05-19', 106),
(76, 'galeriadiadasmaesarcoiris2017', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.I.F ARCO-ÍRIS', '2017-05-22', 156),
(77, 'galeriadiadasmaescristorei2017', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F CRISTO REI', '2017-05-22', 140),
(78, 'galeriadiadasmaesdonaflor2017', 'GALERIA DE FOTOS - DIA DAS MÃES - C.E.I DONA FLOR', '2017-05-22', 173),
(79, 'galeriadiadasmaesesterandrade2017', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F ESTER ANDRADE', '2017-05-22', 87),
(80, 'galeriadiadasmaespaulogermano2017', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F PAULO GERMANO', '2017-05-22', 143),
(81, 'galeriadiadasmaesteotonio2017', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F TEOTÔNIO APINAGÉS', '2017-05-22', 87),
(82, 'galeriadiadasmaesjoaopinheiro2017', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F CORONEL JOÃO PINHEIRO', '2017-05-22', 41),
(83, 'jovenseadultoscristorei22052017', 'PROJETO MOTIVAÇÃO PARA ?EDUCAÇÃO DE JOVENS E ADULTOS?  ? E.M.E.F. CRISTO REI', '2017-05-22', 126),
(84, 'galeriadiadasmaescentrosocialeducacional2017', 'GALERIA DE FOTOS - DIA DAS MÃES - CENTRO SOCIAL E EDUCACIONAL DE JACUNDÁ', '2017-05-24', 143),
(85, 'formacaosupervisores25052017', 'FORMAÇÃO PARA SUPERVISORES DO 6º AO 9º ANO /  EJA', '2017-05-25', 167),
(86, 'TRANSPARENCIA', 'TRANSPARENCIA', '2017-05-30', 130),
(87, '3plenariaconselhomunicipal26052017', 'III PLENÁRIA ORDINÁRIA AMPLIADA DO CONSELHO MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', '2017-05-30', 119),
(88, 'premioprofessoresdobrasilmec01062017', 'Prêmio Professores do Brasil - APRESENTAÇÃO', '2017-06-01', 264),
(89, 'IVFORUMMUNICIPALDEEDUCACAO02062017', 'IV FÓRUM MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', '2017-06-01', 391),
(90, 'inscricoesuepaatencao07062017', 'PROCESSO SELETIVO ESPECIAL 2017 MODALIDADE A DISTÂNCIA - LETRAS E MATEMÁTICA', '2017-06-07', 90),
(91, 'TRABALHOCOMALINGUAGEMORALE ESCRITANAEDUCACAOINFANTIL08062017', 'O TRABALHO COM A LINGUAGEM ORAL E ESCRITA NA EDUCAÇÃO INFANTIL', '2017-06-08', 94),
(92, 'ARRAIAWANDERLINALOPES12062017', 'ARRAIÁ  -  E.M.E.F. WANDERLINA LOPES', '2017-06-08', 377),
(93, 'PAULOGERMANORECEBEVISITAILUSTRE12062017', 'E.M.E.F. PAULO GERMANO RECEBE VISITA ILUSTRE', '2017-06-08', 164),
(94, 'SECRETARIADEEDUCACAOVISITAPROJETOLITERARIOIRMADOROTHYSTANG', 'SECRETÁRIA MUNICIPAL DE EDUCAÇÃO VISITA PROJETO LITERÁRIO NA E.E.E.M. IRMÃ DOROTHY STANG', '2017-06-13', 271),
(95, 'ARRAIACAMINHOPARAOFUTURO16062017', 'ARRAIÁ  -  E.M.E.F. CAMINHO PARA O FUTURO', '2017-06-16', 163),
(96, 'ARRAIACRIANCAFELIZ16062017', 'ARRAIÁ  -  E.M.E.F. CRIANÇA FELIZ', '2017-06-16', 223),
(97, 'ARRAIATRANCREDONEVES16062017', 'ARRAIÁ  -  E.M.E.F. TANCREDO NEVES', '2017-06-16', 188),
(98, 'ARRAIAPAULOGERMANO19062017', 'ARRAIÁ  -  E.M.E.F. Paulo Germano', '2017-06-19', 107),
(99, 'ARRAIATEOTONIOAPINAGES19062017', 'ARRAIÁ  -  E.M.E.F. Teotônio Apinagés', '2017-06-19', 183),
(100, 'ARRAIALUZDOAMANHA19062017', 'ARRAIÁ  -  E.M.E.F. Luz do Amanhã', '2017-06-19', 117),
(101, 'ARRAIAROSALIACORREIA19062017', 'ARRAIÁ  -  E.M.E.F. Rosália Correia', '2017-06-19', 247),
(102, 'ARRAIAJARDIMDASACACIAS19062017', 'ARRAIÁ  -  ESCOLA JARDIM DAS ACÁCIAS', '2017-06-19', 126),
(103, 'APRESENTACOESCOLETIVASNAEDINFANTIL21062017', 'APRESENTAÇÕES COLETIVAS NA ED. INFANTIL', '2017-06-21', 115),
(104, 'SEMEDVISITAVILAPAJE21062017', 'SEMED VISITA VILA PAJÉ', '2017-06-21', 117),
(105, 'VCONFERENCIAMUNICIPALDEEDUCACAO26062017', 'V CONFERÊNCIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', '2017-05-30', 319),
(106, 'ENCONTROCULTURALESCOLAINDIGENAKARIAWASSUGUARANI27062017', 'I ENCONTRO CULTURAL NA ESCOLA INDÍGENA KARIAWASSU GUARANI', '2017-06-27', 116),
(107, 'ARRAIAPETERPAN27062017', 'ARRAIÁ  -  E.M.E.I.F. PETER PAN', '2017-06-27', 246),
(108, 'ARRAIACRERESER28062017', 'ARRAIÁ  -  CENTRO DE EDUCAÇÃO INFANTIL CRER E SER', '2017-06-28', 8),
(109, 'PROJETOINDENTIDADEEAUTONOMIACRERESER28062017', 'PROJETO INDENTIDADE E AUTONOMIA ? C.E.I. CRER E SER', '2017-06-28', 129),
(110, 'ENCONTROCOMSUPERVISORESDO1AO5ANO29062017', 'V CONFERÊNCIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', '2017-06-27', 187),
(111, 'ARRAIATEODOMIRONETO29062017', 'ARRAIÁ  -  E.M.E.F TEODOMIRO NETO', '2017-06-29', 88),
(112, 'SEMEDPROJETOMUNDIAR29062017', 'SEMED PRESTIGIA FORMANDOS DO PROJETO MUNDIAR', '2017-06-29', 235),
(113, 'ENCEJJANACIONAL29062017', 'ENCCEJA NACIONAL 2017', '2017-06-29', 59),
(114, 'CARTADEFERIAS30062017', 'CARTA DE FÉRIAS - JULHO 2017', '2017-06-29', 423),
(115, 'ARRAIAJOAOPINHEIRO04072017', 'ARRAIÁ  -  E.M.E.F. CAMINHO PARA O FUTURO', '2017-07-04', 62),
(116, 'GALERIADONAFLOR04072017', 'GALERIA DE FOTOS DE MOMENTO RECREATIVO NO C.E.I. DONA FLOR', '2017-07-04', 170),
(117, 'CRISTOREIINAUGURANOVASINSTALACOES04072017', 'E.M.E.F. CRISTO REI INAUGURA NOVAS INSTALAÇÕES', '2017-07-04', 147),
(118, 'PROJETONOSSAESCOLATAMBEMLECRISTOREI04072017', 'PROJETO: NOSSA ESCOLA TAMBÉM LÊ ? E.M.E.F. CRISTO REI', '2017-07-04', 154),
(119, 'ARRAIACEIDONAFLOR04072017', 'ARRAIÁ  -  C.E.I. DONA FLOR', '2017-07-04', 87),
(120, 'voltaasaulas31072017', 'VOLTA ÀS AULAS', '2017-07-31', 121),
(121, 'parfor07082017', 'PARFOR ? JACUNDÁ RECEBE VISITA ILUSTRE', '2017-08-07', 183),
(122, 'DECAMPREALIZAREUNIAOCOMPROFESSORESDOSOME', 'DECAMP REALIZA REUNIÃO COM PROFESSORES DO SOME', '2017-08-07', 98),
(123, 'GALERIADEFOTOSDIADOSPAISCEIDONAFLOR21082017', 'GALERIA DE FOTOS ? DIA DOS PAIS C.E.I. DONA FLOR', '2017-08-07', 33),
(124, 'SEMEDEMATERIADONOSSOJORNALDEJACUNDA21082017', 'SEMED É MATÉRIA DO NOSSO JORNAL DE JACUNDA', '2017-08-21', 144),
(125, 'IWORKSHOPDAEDUCAÃ‡AOESPECIALEINCLUSIVA21082017', 'I WORKSHOP DA EDUCAÇÃO ESPECIAL E INCLUSIVA', '2017-08-07', 6),
(126, 'IWORKSHOPDAEDUCACAOESPECIALEINCLUSIVA21082017', 'I WORKSHOP DA EDUCAÇÃO ESPECIAL E INCLUSIVA', '2017-08-21', 104),
(127, 'DECAMPrealizaplanejamentopedagogicobimestralnaEscolaBoaVentura21082017', 'I WORKSHOP DA EDUCAÇÃO ESPECIAL E INCLUSIVA', '2017-08-21', 27),
(128, 'concursomissemisterestudantil22082017', 'CONCURSO MISS & MISTER ESTUDANTIL', '2017-08-22', 352),
(129, 'SEMEDCOMEMORADIADOCOORDENADORPEDAGOGICO23082017', 'SEMED COMEMORA DIA DO COORDENADOR PEDAGÓGICO', '2017-08-23', 36),
(130, 'FAMILIAEESCOLAEMEFSERGINHOCORREIA24082017', 'FAMÍLIA E ESCOLA ? E.M.E.F. SERGINHO CORREIA', '2017-08-24', 125),
(131, 'SEMEDREALIZAOFICINADOSISPAECOMPROFESSORES28082017', 'SEMED REALIZA OFICINA DO SISPAE COM PROFESSORES', '2017-08-28', 70),
(132, 'educacaoinfantil28082017', 'EDUCAÇÃO INFANTIL', '2017-08-28', 122),
(133, 'EMEFPROFMDAGLORIARPAIXAOREALIZAPROJETODEFOLCLORE', 'E.M.E.F. PROFª. Mª. DA GLÓRIA R. PAIXÃO REALIZA PROJETO DE FOLCLORE', '2017-08-28', 1),
(134, 'EMEFPROFMDAGLORIARPAIXAOREALIZAPROJETODEFOLCLORE29082017', 'E.M.E.F. PROFª. Mª. DA GLÓRIA R. PAIXÃO REALIZA PROJETO DE FOLCLORE', '2017-08-28', 44),
(135, 'DECAMPPARTICIPADACONSTRUCAOPPPDAESCOLAINDIGENAKARAIGAUXU29082017', 'E.M.E.F. PROFª. Mª. DA GLÓRIA R. PAIXÃO REALIZA PROJETO DE FOLCLORE', '2017-08-29', 30),
(136, 'informativouepa30082017', 'INFORMATIVO PROCESSO SELETIVO UEPA', '2017-08-30', 149),
(137, 'NOTADEESCLARECIMENTO', 'NOTA DE ESCLARECIMENTO', '2017-08-30', 198),
(138, '25DEAGOSTODIANACIONALDAEDUCACAOINFANTIL01092017', '25 DE AGOSTO - DIA NACIONAL DA EDUCAÇÃO INFANTIL', '2017-09-01', 66),
(139, 'OFICINACONSTRUCAODEJOGOSMATEMATICOSPARAEDUCACAOINFANTIL01092017', '25 DE AGOSTO - DIA NACIONAL DA EDUCAÇÃO INFANTIL', '2017-09-01', 50),
(140, 'DIADOPRIFISSIONALDEEDUCACAOFISICA01092017', 'HOJE É DIA DE CAPRICHAR NO ALONGAMENTO DO SORRISO E NA FORÇA DO ABRAÇO', '2017-09-01', 23),
(141, 'LISTAODOSCLASSIFICADOSUEPAJACUNDA04092017', 'LISTÃO DOS CLASSIFICADOS - UEPA - JACUNDÁ ', '2017-09-04', 85),
(142, 'COMUNICADO0509207', 'COMUNICADO', '2017-08-28', 45),
(143, 'desfilecivico07092017', 'DESFILE CÍVICO ? SETE DE SETEMBRO', '2017-08-28', 314),
(144, 'MUTIRAONAEMEIFPETERPANANEXOBURITI11092017', 'MUTIRÃO NA E.M.E.I.F. PETER PAN ? ANEXO BURITI', '2017-09-11', 126),
(145, 'index', 'Secretaria Municipal de Educação - Página Inicial', '2017-01-20', 1094),
(146, 'obmep14092017', 'OBMEP - 2º FASE', '2017-09-14', 11),
(147, 'plenariappa15092017', 'AUDIÊNCIA PÚBLICA PARA APRESENTAÇÃO DA PROPOSTA DO PLANO PLURIANUAL DA SECRETARIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ (2018-2021)', '2017-09-15', 146),
(148, 'NOTADEUTILIDADEPUBLICAUAB19092017', 'NOTA DE UTILIDADE PÚBLICA', '2017-09-19', 16),
(149, 'ENCONTRODEFORMACAOMATEMATICAEREALIDADE19092017', 'ENCONTRO DE FORMAÇÃO: MATEMÁTICA E REALIDADE.', '2017-09-19', 8),
(150, 'IWORKSHOPDEPAISDAEMEFTEOTONIOAPINAGES20092017', 'I WORKSHOP DE PAIS DA E.M.E.F. TEOTÔNIO APINAGÉS', '2017-09-20', 196),
(151, 'IENCONTROFAMILIARROSALIACORREIA25092017', 'I ENCONTRO FAMILIAR ? E.M.E.F. ROSÁLIA CORREIA', '2017-09-19', 77);

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `cargo` varchar(150) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `departamento` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `cargo`, `telefone`, `departamento`) VALUES
(1, 'JOELMA', 'Recepcionista', '(94)99206-2231', 'Recepção'),
(2, 'MARCIANILIA INÁCIO DE SOUZA', 'Diretora de Lotação', '(94)99137-1897', 'Lotação'),
(3, 'NILVA ALVES DA SILVA', 'Diretora do DIDE - Departamento de Inspeção e Documentação Escolar e Presidente do Conselho Municipal de Educação', '(94)99116-0648', ''),
(4, 'LEILA COSSIOLI LOPES', 'Diretora de Lotação', '(94)99153-6695', ''),
(5, 'RAQUEL ALMEIDA MENDONÇA', 'Procuradora Jurídica - SEMED', '(94)99208-2604', 'Jurídico'),
(6, 'SAULO MIRANDA ', 'Assessoria de Comunicação', '(94)99148-1401', ''),
(7, 'JANETE BANDEIRA DE ARAÚJO', 'Departamento de Compras', '(94)99133-3123', ''),
(8, 'ANEMÉZIO SILVA COSTA', 'Diretor de Recursos Humanos', '(94)99159-9656', ''),
(9, 'CLAUDINEA PALHA ANDRADE', 'Nutricionista e Diretora do Departamento de Alimentação Escolar', '(91)99606-6996', 'Departamento de Alimentação Escolar'),
(18, 'VERENA SALOMÃO', 'Departamento de Alimentação Escolar', '(94)99199-6271', 'Departamento de Alimentação Escolar'),
(11, 'ALZIRA ALVES COSTA', 'Diretora de Educação do Campo', '(94)99150-2715', 'Educação do Campo'),
(12, 'DUCILENE ALVES DE SOUZA', 'Coordenadora Geral do Núcleo Pedagógico', '(94)99140-4390', ''),
(13, 'ADRIANO LOUZADA BOLLAS', 'Diretor do Departamento de Tecnologia', '(94)99216-3592', 'Departamento de Tecnologia'),
(14, 'CRISTINA DOS ANJOS', 'Coordenadora Geral de Logística - (Planejamentos - Programas - Projetos Educacionais)', '(94)99168-0239', ''),
(15, 'FLÁVIO LIMA ', 'Coordenador PDDE - PDE -  Alfabetizar para a Vida', '(94)99110-4203', ''),
(16, 'NILCÉIA ROSSI', 'Coordenadora PDDE - PDE -  Alfabetizar para a Vida', '(94)99159-1406', ''),
(17, 'AMANDA SILVA DE ALMEIDA', 'Diretora do Departamento Financeiro', '(94)99207-8387', 'Financeiro');

-- --------------------------------------------------------

--
-- Estrutura para tabela `escolas`
--

CREATE TABLE `escolas` (
  `id` int(11) NOT NULL,
  `inep` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `categoria` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `escolas`
--

INSERT INTO `escolas` (`id`, `inep`, `nome`, `categoria`) VALUES
(3, 15150364, 'E.M.E.F. WANDERLINA LOPES PEDRA MOREIRA', 'ESCOLA URBANA'),
(2, 15150291, 'E.M.E.F. PAULO GERMANO', 'ESCOLA URBANA'),
(4, 15113434, 'E.M.E.F ESTER ANDRADE DOS SANTOS', 'ESCOLA URBANA'),
(5, 15166660, 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', 'CENTROS DE EDUCAÇÃO INFANTIL'),
(6, 15113418, 'E.M.E.F. CRIANÇA FELIZ', 'ESCOLA URBANA'),
(7, 15113450, 'E.M.E.F. CORONEL JOÃO PINHEIRO', 'ESCOLA URBANA'),
(8, 15163458, 'CENTRO SOCIAL E EDUCACIONAL DE JACUNDÁ', 'CENTRO SOCIAL'),
(37, 15113310, 'ESCOLA REGIME-CONVÊNIO JARDIM DAS ACÁCIAS', 'CENTROS DE EDUCAÇÃO INFANTIL'),
(10, 15113523, 'E.M.E.F. ROSÁLIA CORREIA', 'ESCOLA URBANA'),
(11, 15098370, 'E.M.E.I.F. ARCO-ÍRIS', 'ESCOLA URBANA'),
(12, 15113302, 'E.M.E.F. CRISTO REI', 'ESCOLA URBANA'),
(13, 15114104, 'E.M.E.F. SÃO FRANCISCO', 'ESCOLA URBANA'),
(14, 15163440, 'CENTRO DE EDUCAÇÃO INFANTIL CRER E SER', 'CENTROS DE EDUCAÇÃO INFANTIL'),
(15, 15113507, 'E.M.E.F. TEODOMIRO NETO', 'ESCOLA URBANA'),
(16, 15909930, 'CENTRO EDUCACIONAL NOSSA SENHORA APARECIDA', 'CENTROS DE EDUCAÇÃO INFANTIL'),
(17, 15113329, 'ESCOLA REGIME-CONVÊNIO LUZ DO AMANHÃ', 'ESCOLA URBANA'),
(18, 15113442, 'E.M.E.F. TEOTÔNIO APINAGÉS', 'ESCOLA URBANA'),
(19, 15113515, 'E.M.E.I.F. PETER PAN', 'CENTROS DE EDUCAÇÃO INFANTIL'),
(20, 15534960, 'E.M.E.F. TANCREDO DE ALMEIDA NEVES', 'ESCOLA URBANA'),
(21, 15562867, 'E.M.E.F. PROFESSORA MARIA DA GLÓRIA RODRIGUES PAIXÃO', 'ESCOLA URBANA'),
(22, 15150100, 'E.M.E.F. CAMINHO PARA O FUTURO', 'ESCOLA URBANA'),
(23, 15113680, 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', 'ESCOLA URBANA'),
(24, 15519333, 'E.M.E.F. BOA VENTURA', 'ESCOLA RURAL'),
(25, 15150330, 'E.M.E.F. MORAJUBA', 'ESCOLA RURAL'),
(26, 15113922, 'E.M.E.F. PARAÍSO DA INFÂNCIA', 'ESCOLA RURAL'),
(27, 15113833, 'E.M.E.F. JARDIM DA INFÂNCIA', 'ESCOLA RURAL'),
(28, 15534880, 'E.M.E.F. MATA VERDE', 'ESCOLA RURAL'),
(29, 15113892, 'E.M.E.F. NOSSA SENHORA DA CONCEIÇÃO', 'ESCOLA RURAL'),
(30, 15150623, 'E.M.E.F. SANTO ANTÔNIO IV', 'ESCOLA RURAL'),
(31, 15535029, 'E.M.E.F. SANTA CATARINA', 'ESCOLA RURAL'),
(32, 15113710, 'E.M.E.F. NOVA CANAÃ', 'ESCOLA RURAL'),
(33, 15534669, 'E.M.E.F.  BOA ESPERANÇA I', 'ESCOLA RURAL'),
(34, 15557014, 'E.M.E.F. JATOBÁ FERRADO II', 'ESCOLA RURAL'),
(35, 15113841, 'E.M.E.F. JOSÉ BONIFÁCIO', 'ESCOLA RURAL'),
(36, 15113540, 'E.M.E.F. ALTAMIRA SETE', 'ESCOLA RURAL'),
(38, 15113353, 'EMEF SERGINHO CORREIA', 'ESCOLA URBANA'),
(39, 98003135, 'Secretaria Municipal de Educação', 'SEMED'),
(40, 15519201, 'EMEF CENTRO COMUNITARIO', 'ESCOLA URBANA');

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `fichaatual`
-- (Veja abaixo para a visão atual)
--
CREATE TABLE `fichaatual` (
`id` int(11)
,`inep` varchar(10)
,`nomeinstituicao` varchar(200)
,`dataservico` date
,`observacoes` varchar(250)
,`tecnicos` varchar(250)
,`categorias` text
,`detalhes` text
);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fichadtc`
--

CREATE TABLE `fichadtc` (
  `id` int(11) NOT NULL,
  `inep` varchar(10) NOT NULL,
  `nomeinstituicao` varchar(200) NOT NULL,
  `dataservico` date NOT NULL,
  `observacoes` varchar(250) DEFAULT NULL,
  `tecnicos` varchar(250) NOT NULL,
  `categorias` text NOT NULL,
  `detalhes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `fichadtc`
--

INSERT INTO `fichadtc` (`id`, `inep`, `nomeinstituicao`, `dataservico`, `observacoes`, `tecnicos`, `categorias`, `detalhes`) VALUES
(3, '15163458', 'CENTRO SOCIAL E EDUCACIONAL DE JACUNDÁ', '2017-11-27', NULL, 'Herlan;Uelque;', 'Sistema;Impressoras;', 'Manutenção computador da secretaria \r\nManutenção impressora da secretaria '),
(2, '15113302', 'E.M.E.F. CRISTO REI', '2017-11-20', NULL, 'Herlan;Uelque;', 'Software;Impressoras;', 'Manutenção em impressora da secretaria.\r\ncabeamento de rede.\r\ninstalação de driver de impressora. '),
(4, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2017-11-27', ' 15h 10', 'Herlan;Uelque;', 'Sistema;Impressoras;', '* Procedimento de limpeza de cabeçote de impressora sala multifuncional \r\n* Instalação de driver de impressora da Direção '),
(5, '15113302', 'E.M.E.F. CRISTO REI', '2017-10-27', NULL, 'Danilo;Herlan;', 'Software;Rede;Impressoras;', 'CABEAMENTO DE REDE\r\nINSTALAÇÃO DE DRIVER DE IMPRESSORA\r\nMANUTENÇÃO DE IMPRESSORA DA SECRETARIA\r\n\r\n'),
(6, '15534960', 'E.M.E.F. TANCREDO DE ALMEIDA NEVES', '2017-03-27', NULL, 'Danilo;Herlan;', 'Equipamentos;', 'LIMPEZA DE MEMÓRIA RAM\r\nTROCA DE MEMÓRIA RAM'),
(7, '15113353', 'EMEF SERGINHO CORREIA', '2017-04-11', NULL, 'Danilo;Herlan;', 'Impressoras;Equipamentos;', 'TROCA DE BATERIA DA BIOS\r\nINSTALAÇÃO DE DRIVERS DA IMPRESSORA'),
(8, '15113450', 'E.M.E.F. CORONEL JOÃO PINHEIRO', '2017-04-10', NULL, 'Adriano;', 'Sistema;Rede;Impressoras;', 'FORMATAÇÃO DE PCS\r\nCRIAÇÃO DE REDE\r\nCOMPARTILHAMENTO DE IMPRESSORA'),
(9, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-04-10', NULL, 'Danilo;Herlan;', 'Sistema;Rede;Impressoras;', 'ENTREGA DE COMPUTADOR\r\nCOMPARTILHAMENTO DE IMPRESSORA\r\nCRIAÇÃO DE REDE'),
(10, '15113434', 'E.M.E.F ESTER ANDRADE DOS SANTOS', '2017-04-17', NULL, 'Adriano;Danilo;', 'Sistema;Impressoras;', 'FORMATAÇÃO\r\nINSTALAÇÃO DE IMPRESSORA'),
(11, '15113507', 'E.M.E.F. TEODOMIRO NETO', '2017-04-17', NULL, 'Adriano;Herlan;', 'Sistema;Impressoras;', 'FORMATAÇÃO DE COMPUTADORES \r\nCOMPARTILHAMENTO DE IMPRESSORA'),
(12, '15534960', 'E.M.E.F. TANCREDO DE ALMEIDA NEVES', '2017-04-11', NULL, 'Danilo;Herlan;', 'Impressoras;', 'INSTALAÇÃO E COMPARTILHAMENTO DE IMPRESSORA'),
(13, '98003135', 'Secretaria Municipal de Educação', '2017-11-30', 'Quinta-Feira, 15:30:00 AM ', 'Adriano;', 'Outros;', 'Instalação e Operação de DataShow no Evento - PNAIC 2018'),
(14, '98003135', 'Secretaria Municipal de Educação', '2017-12-01', 'Sexta-Feira - Dia inteiro', 'Adriano;', 'Outros;', 'Instalação de Datashow em 3 salas na UAB para formação dos professores'),
(15, '15113434', 'E.M.E.F ESTER ANDRADE DOS SANTOS', '2017-12-04', 'Segunda-Feira, 10:01:47 PM', 'Adriano;', 'Equipamentos;', 'Manutenção no Estabilizador da Secretaria\r\nEntrega de Notebook da Escola'),
(16, '15113302', 'E.M.E.F. CRISTO REI', '2017-12-05', 'Terça-Feira, 10:50:33 AM', 'Herlan;Uelque;', 'Impressoras;', '* Manutenção impressora secretaria. '),
(17, '15534960', 'E.M.E.F. TANCREDO DE ALMEIDA NEVES', '2017-12-05', 'Terça-Feira, 11:29:37 AM', 'Herlan;Uelque;', 'Equipamentos;', 'Manutenção de Computadores do Proinfo.'),
(18, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-12-05', 'Terça-Feira, 12:03:42 PM', 'Herlan;Uelque;', 'Sistema;', '*Manutenção computador da secretaria. '),
(19, '98003135', 'Secretaria Municipal de Educação', '2017-04-11', 'Dulce', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Converter de PDF para Word'),
(20, '98003135', 'Secretaria Municipal de Educação', '2017-04-11', 'Leila', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Instalação de Memória no Computador'),
(21, '98003135', 'Secretaria Municipal de Educação', '2017-04-11', 'Vileide', 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Auxilio na Criação de Tabela'),
(22, '98003135', 'Secretaria Municipal de Educação', '2017-04-11', 'Luciene', 'Danilo;', 'Outros;', 'Departamento: Estatística\r\n* Criação de E-mail do Google\r\n* Instalação de Aplicativos em Celular'),
(23, '98003135', 'Secretaria Municipal de Educação', '2017-04-04', 'Diego', 'Adriano;', 'Outros;', 'Departamento: Campo\r\n* Recarga de Tonner'),
(24, '98003135', 'Secretaria Municipal de Educação', '2017-12-05', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Publicação de Notícias no Site'),
(25, '98003135', 'Secretaria Municipal de Educação', '2017-04-11', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Publicação de Notícias no site'),
(26, '98003135', 'Secretaria Municipal de Educação', '2017-12-05', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Publicação de Notícias no Site'),
(27, '98003135', 'Secretaria Municipal de Educação', '2017-04-11', 'Nilva', 'Adriano;', 'Outros;', 'Departamento: CME\r\n* Resete do Roteador'),
(28, '98003135', 'Secretaria Municipal de Educação', '2017-12-05', 'Genilson', 'Adriano;', 'Outros;', 'Departamento: Campo\r\n* Instalação de Navegadores'),
(29, '98003135', 'Secretaria Municipal de Educação', '2017-04-04', 'Alzira', 'Danilo;', 'Outros;', 'Departamento: Campo\r\n* Colocar HD adicional para alocar arquivos'),
(30, '98003135', 'Secretaria Municipal de Educação', '2017-04-05', 'Vileide', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Formatação de Planilha para o PowerPoint'),
(31, '98003135', 'Secretaria Municipal de Educação', '2017-04-06', 'Yara', 'Danilo;', 'Outros;', 'Departamento: Assessoria\r\n* Instalação de Programa Java e Receita Federal'),
(32, '98003135', 'Secretaria Municipal de Educação', '2017-04-06', 'Saulo', 'Danilo;', 'Outros;', 'Departamento: Campo\r\n* Montagem de Datashow na sala de Reunião'),
(33, '98003135', 'Secretaria Municipal de Educação', '2017-04-06', 'Luciene', 'Danilo;', 'Outros;', 'Departamento: Estatística\r\n* Formatação de Planilha do Excel'),
(34, '98003135', 'Secretaria Municipal de Educação', '2017-03-31', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de Notícias no Site'),
(35, '98003135', 'Secretaria Municipal de Educação', '2017-03-31', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Criação de Sistema para Edição de Fotos'),
(36, '98003135', 'Secretaria Municipal de Educação', '2017-04-03', NULL, 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de Notícias no Site'),
(37, '98003135', 'Secretaria Municipal de Educação', '2017-04-03', 'Maurivan', 'Adriano;', 'Outros;', 'Departamento: Merenda\r\n* Recarga de Cartucho da Impressora'),
(38, '98003135', 'Secretaria Municipal de Educação', '2017-04-04', 'Leila', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Compactar Arquivos em Zip'),
(39, '98003135', 'Secretaria Municipal de Educação', '2017-03-19', 'Dulce', 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Montar Datashow na sala de Reunião'),
(40, '98003135', 'Secretaria Municipal de Educação', '2017-03-29', 'Dulce', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Ligar o Computador da Impressora'),
(41, '15114104', 'E.M.E.F. SÃO FRANCISCO', '2017-03-26', NULL, 'Danilo;Herlan;', 'Sistema;Software;', '02 - Formatações de Computador;\r\n01 - Limpeza;\r\n02 - Trocas de Pasta Térmica;'),
(42, '98003135', 'Secretaria Municipal de Educação', '2017-12-05', 'Leila', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Fazer Backup de Arquivos'),
(43, '98003135', 'Secretaria Municipal de Educação', '2017-03-29', 'Leila', 'Danilo;Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Transportar mesa e computador para sala do Núcleo'),
(44, '98003135', 'Secretaria Municipal de Educação', '2017-03-29', 'Saulo', 'Danilo;', 'Outros;', 'Departamento: Comunicação\r\n* Recarga da Impressora'),
(45, '15113680', 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', '2017-03-21', NULL, 'Herlan;', 'Impressoras;Equipamentos;', 'Compartilhamento de Impressora em rede com 03 Computadores;\r\nLimpeza de Memória RAM;'),
(46, '98003135', 'Secretaria Municipal de Educação', '2017-03-28', 'Leila', 'Adriano;Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Configuração e Troca de Antena'),
(47, '98003135', 'Secretaria Municipal de Educação', '2017-03-28', 'Vileide', 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Download de Arquivos e Impressão'),
(48, '98003135', 'Secretaria Municipal de Educação', '2017-03-28', 'Dulce', 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Montagem de Datashow na sala de reunião'),
(49, '98003135', 'Secretaria Municipal de Educação', '2017-03-24', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Manutenção do Computador e Impressora'),
(50, '98003135', 'Secretaria Municipal de Educação', '2017-03-27', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de Notícias no Site'),
(51, '98003135', 'Secretaria Municipal de Educação', '2017-03-27', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de Notícias no site'),
(52, '15163440', 'CENTRO DE EDUCAÇÃO INFANTIL CRER E SER', '2017-03-23', NULL, 'Danilo;Herlan;', 'Sistema;Software;Rede;Impressoras;Internet;Equipamentos;', '01 - Formatação completa de Computador;\r\n02 - Mouses (Positivo); 02 - Teclados (Positivo);\r\nInstalação e compartilhamento de Impressora;\r\n01 - Estabilizador de Energia;\r\n01 - Monitor (Positivo);\r\nCabos de Energia e Cabos de Vídeo; '),
(53, '98003135', 'Secretaria Municipal de Educação', '2017-03-27', 'Orniane', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Atualização no Sistema do Notebook'),
(54, '98003135', 'Secretaria Municipal de Educação', '2017-03-09', 'Leila', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Montar Datashow na sala de reunião'),
(55, '15113507', 'E.M.E.F. TEODOMIRO NETO', '2017-03-21', NULL, 'Herlan;', 'Software;Equipamentos;', 'Alteração da BIOS;\r\nMudança de Cabo SATA;'),
(56, '98003135', 'Secretaria Municipal de Educação', '2017-03-10', 'Genilson', 'Adriano;', 'Outros;', 'Departamento: Campo\r\n* Montar Datashow na sala de reunião'),
(57, '15113329', 'ESCOLA REGIME-CONVÊNIO LUZ DO AMANHÃ', '2017-03-23', NULL, 'Danilo;Herlan;', 'Equipamentos;', 'Troca de HD;'),
(58, '98003135', 'Secretaria Municipal de Educação', '2017-03-13', 'Flávio', 'Adriano;', 'Outros;', 'Departamento: PDDE e Mais Educação\r\n* Preenchimento do Questionário GSAC'),
(59, '98003135', 'Secretaria Municipal de Educação', '2017-03-13', 'Cristina', 'Adriano;', 'Outros;', 'Departamento: Projetos\r\n* Preencher Questionário Banda Larga'),
(60, '98003135', 'Secretaria Municipal de Educação', '2017-03-13', 'Nilceia', 'Adriano;', 'Outros;', 'Departamento: PDDE \r\n* Pesquisar Livros no Sistema'),
(61, '98003135', 'Secretaria Municipal de Educação', '2017-03-13', 'Raquel', 'Adriano;', 'Outros;', 'Departamento: Jurídico\r\n* Instalação da Impressora em Rede'),
(62, '15113450', 'E.M.E.F. CORONEL JOÃO PINHEIRO', '2017-03-22', NULL, 'Herlan;', 'Vírus;', 'Remoção de Vírus que cria \"Atalhos\" em 03 Computadores;\r\nInstalação de Anti-Vírus em 03 Computadores;\r\nEscaneamento Completo em 04 computadores;\r\n*Orientação de como deve ser utilizado o Anti-vírus;'),
(63, '98003135', 'Secretaria Municipal de Educação', '2017-03-14', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de Notícias no site'),
(64, '98003135', 'Secretaria Municipal de Educação', '2017-03-13', 'Raquel', 'Herlan;', 'Outros;', 'Departamento: Jurídico\r\n* Troca de Teclado'),
(65, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-12-05', NULL, 'Adriano;Uelque;', 'Impressoras;', 'Retirada de Grampos \"barretas\" de dentro da Impressora;'),
(66, '98003135', 'Secretaria Municipal de Educação', '2017-03-14', 'Dulce', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Retirar Vírus do Pendrive'),
(67, '98003135', 'Secretaria Municipal de Educação', '2017-03-14', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Alterações no Site da Semed'),
(68, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2017-03-09', NULL, 'Danilo;Herlan;', 'Sistema;Software;Impressoras;Equipamentos;', '02 - Formatações ( retirada do Sistema Operacional Linux, e instalação do Windows 7);\r\n02 - Backup\'s\r\n01 - Troca de HD'),
(69, '98003135', 'Secretaria Municipal de Educação', '2017-03-15', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Alteração no site da Semed ( Paginação)'),
(70, '98003135', 'Secretaria Municipal de Educação', '2017-03-15', 'Raquel', 'Adriano;Danilo;Herlan;', 'Outros;', 'Departamento: Jurídico\r\n* Mudança de Sala (mobilhas e computador)'),
(71, '98003135', 'Secretaria Municipal de Educação', '2017-03-15', 'Mabel', 'Danilo;', 'Outros;', 'Departamento: Assessoria\r\n* Limpeza da Impressora'),
(72, '15150291', 'E.M.E.F. PAULO GERMANO', '2017-03-08', NULL, 'Danilo;Herlan;', 'Sistema;Software;', '02 - Formatações (instalação do Windows 7);\r\n02 - Instalações de Softwares diversos;'),
(73, '98003135', 'Secretaria Municipal de Educação', '2017-03-15', 'Vileide', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Instalação de Whatsapp no computador'),
(74, '98003135', 'Secretaria Municipal de Educação', '2017-03-15', 'Janete', 'Adriano;', 'Outros;', 'Departamento: Compras\r\n* Formatação de Planilhas para Cotação de Preços'),
(75, '98003135', 'Secretaria Municipal de Educação', '2017-03-15', 'Mabel', 'Adriano;', 'Outros;', 'Departamento: Assessoria\r\n* Formatação de Tabelas do Excel'),
(76, '98003135', 'Secretaria Municipal de Educação', '2017-03-10', 'Equipe', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Recarga de Tonner'),
(77, '98003135', 'Secretaria Municipal de Educação', '2017-03-20', 'Dulce', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Ligar o Monitor do Computador (estava sem cabo de força)'),
(78, '15113442', 'E.M.E.F. TEOTÔNIO APINAGÉS', '2017-03-07', 'Trabalho executado na própria Instituição nos períodos da Manhã e Tarde.', 'Danilo;Herlan;', 'Sistema;Impressoras;Equipamentos;', '03 - Formatações (retirada do Sistema Operacional Linux e, instalação do Windows 7);\r\n01 - Instalação de Impressora;\r\n03 - Limpeza de Gabinetes (PC);'),
(79, '98003135', 'Secretaria Municipal de Educação', '2017-03-20', 'Mabel', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Verificação de computador Desligando (colocar pasta térmica)'),
(80, '98003135', 'Secretaria Municipal de Educação', '2017-03-20', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Instalação de programas no computador'),
(81, '15113442', 'E.M.E.F. TEOTÔNIO APINAGÉS', '2017-03-06', NULL, 'Danilo;Herlan;', 'Sistema;Impressoras;Equipamentos;', '02 - Formatações de Computadores;\r\n03 -  Instalações de Impressoras;\r\n02 - Limpezas de Computadores;'),
(82, '15113434', 'E.M.E.F ESTER ANDRADE DOS SANTOS', '2017-03-23', NULL, 'Danilo;Herlan;', 'Vírus;Software;', 'Retirada de Vírus de Pendrive;\r\nRetirada de Vírus de Computador;\r\nInstalação de Navegadores;'),
(83, '98003135', 'Secretaria Municipal de Educação', '2017-03-20', 'Dulce', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Retirar Vírus do Pendrive'),
(84, '98003135', 'Secretaria Municipal de Educação', '2017-03-20', 'Diego', 'Danilo;', 'Outros;', 'Departamento: Campo\r\n* Desligamento Inesperado do Computador'),
(85, '98003135', 'Secretaria Municipal de Educação', '2017-03-20', 'Leia', 'Danilo;', 'Outros;', 'Departamento: Merenda\r\n* Desligamento do computador, ajuste na bios'),
(86, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2017-09-04', NULL, 'Herlan;', 'Vírus;Internet;', 'Retirada de Vírus em Computadores e Pendrive;\r\nReparo Internet computador Coordenação;'),
(87, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-06-08', NULL, 'Adriano;Danilo;Herlan;', 'Impressoras;Internet;Equipamentos;', 'Instalação da impressora;\r\nMudança de Senha da rede Wi-Fi;\r\nCompartilhamento de Impressora;'),
(88, '98003135', 'Secretaria Municipal de Educação', '2017-03-21', 'Orniane', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Instalação de Datashow'),
(89, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2017-09-11', NULL, 'Herlan;', 'Equipamentos;', 'Troca de Monitor da Sala Multifuncional;'),
(90, '98003135', 'Secretaria Municipal de Educação', '2017-03-21', 'Rosana', 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Retirada de Vírus de Computador que cria atalho'),
(91, '98003135', 'Secretaria Municipal de Educação', '2017-03-21', 'Adelina', 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Deslsgamento de Computador, limpeza de disco C:'),
(92, '98003135', 'Secretaria Municipal de Educação', '2017-03-21', 'Diego', 'Danilo;', 'Outros;', 'Departamento: Campo\r\n* Formatação do Computador\r\n* Backup de Arquivos\r\n* Instalação e Compartilhamento de Impressora'),
(93, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2017-09-18', NULL, 'Herlan;', 'Impressoras;Equipamentos;', 'Limpeza de Memória RAM no Computador da Sala Multifuncional;\r\nCompartilhamento de Impressora da Secretaria;'),
(94, '98003135', 'Secretaria Municipal de Educação', '2017-03-21', 'Flávio', 'Herlan;', 'Outros;', 'Departamento: PDDE\r\n* Limpeza de Memória'),
(95, '98003135', 'Secretaria Municipal de Educação', '2017-03-24', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de Notícias no Site'),
(96, '98003135', 'Secretaria Municipal de Educação', '2017-03-24', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de Notícias no Site'),
(97, '98003135', 'Secretaria Municipal de Educação', '2017-03-24', 'Edina', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Retirada de Vírus do Pendrive'),
(98, '98003135', 'Secretaria Municipal de Educação', '2017-03-29', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Limpeza da Impressora'),
(99, '98003135', 'Secretaria Municipal de Educação', '2017-03-21', 'Vileide', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Auxilio no Excel'),
(100, '98003135', 'Secretaria Municipal de Educação', '2017-04-03', 'Leila', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Impressão de Arquivos páginas danificadas'),
(101, '98003135', 'Secretaria Municipal de Educação', '2017-04-03', 'Vileide', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Restaurar Backup do Computador'),
(102, '98003135', 'Secretaria Municipal de Educação', '2017-04-10', 'Alzira', 'Herlan;', 'Outros;', 'Departamento: Campo\r\n* Limpeza de memória do computador'),
(103, '98003135', 'Secretaria Municipal de Educação', '2017-04-10', 'Vileide', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Criar apresentação de Slides\r\n* Formatação de texto do Word\r\n* Conversão de arquivo em PDF'),
(104, '98003135', 'Secretaria Municipal de Educação', '2017-04-10', 'Vileide', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Converter Power Point para Word'),
(105, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2017-09-20', NULL, 'Adriano;Herlan;', 'Impressoras;Internet;', 'Instalação de Impressora e compartilhamento entre Computadores;\r\nConfiguração de Roteador Para mudança de Senha e Nome de Rede;'),
(106, '15113680', 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', '2017-09-21', NULL, 'Adriano;Herlan;', 'Internet;Equipamentos;', '01 - Limpeza de Memória;\r\nTroca de Senha do Roteador;'),
(107, '15113507', 'E.M.E.F. TEODOMIRO NETO', '2017-09-25', NULL, 'Danilo;Herlan;', 'Rede;Equipamentos;', 'Limpeza de Memória;\r\nTestes de Redes;'),
(108, '15113450', 'E.M.E.F. CORONEL JOÃO PINHEIRO', '2017-10-04', NULL, 'Herlan;Uelque;', 'Software;Rede;', 'Atualização de  Software;\r\nCabeamento de Rede;'),
(109, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2017-10-09', NULL, 'Herlan;Uelque;', 'Impressoras;', 'Configuração da Impressora;\r\n*Orientação ao Vice-Diretor da Escola para providenciar extensão pois a rede de energia está sobrecarregada;'),
(110, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-10-16', NULL, 'Herlan;Uelque;', 'Impressoras;', 'Recarga de impressora;'),
(111, '15113442', 'E.M.E.F. TEOTÔNIO APINAGÉS', '2017-05-16', NULL, 'Danilo;Herlan;', 'Sistema;Equipamentos;', '02 -  Computadores Formatados, entregue a escola;'),
(112, '15114104', 'E.M.E.F. SÃO FRANCISCO', '2017-10-19', NULL, 'Herlan;Uelque;', 'Impressoras;', 'Limpeza de Impressora;'),
(113, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2017-10-19', NULL, 'Herlan;Uelque;', 'Impressoras;', 'Limpeza de 02 Impressoras;'),
(114, '15113450', 'E.M.E.F. CORONEL JOÃO PINHEIRO', '2017-10-23', NULL, 'Herlan;Uelque;', 'Internet;', 'Configuração da Rede de Internet;'),
(115, '15098370', 'E.M.E.I.F. ARCO-ÍRIS', '2017-10-23', NULL, 'Herlan;Uelque;', 'Impressoras;', 'Configuração e Limpeza da impressora;'),
(116, '15163440', 'CENTRO DE EDUCAÇÃO INFANTIL CRER E SER', '2017-10-23', NULL, 'Herlan;Uelque;', 'Internet;', 'Conexão de Computador a Rede'),
(117, '15113302', 'E.M.E.F. CRISTO REI', '2017-06-22', NULL, 'Adriano;Danilo;Herlan;', 'Rede;', 'Cabeamento da Sala da coordenação;'),
(118, '98003135', 'Secretaria Municipal de Educação', '2017-06-27', 'Dulce', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\nMontagem de Kit Tecnológico na sala de reuniões'),
(119, '98003135', 'Secretaria Municipal de Educação', '2017-07-27', 'Flávio', 'Danilo;', 'Outros;', 'Departamento: PDDE\r\n* Troca de estabilizador'),
(120, '98003135', 'Secretaria Municipal de Educação', '2017-07-27', 'Orniane', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Montagem kit tecnológico na sala de reuniões'),
(121, '98003135', 'Secretaria Municipal de Educação', '2017-06-26', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(122, '98003135', 'Secretaria Municipal de Educação', '2017-06-27', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(123, '98003135', 'Secretaria Municipal de Educação', '2017-05-10', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Imprimir numeração para sorteio das mães'),
(124, '98003135', 'Secretaria Municipal de Educação', '2017-05-10', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Limpeza da Impressora'),
(125, '98003135', 'Secretaria Municipal de Educação', '2017-05-10', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(126, '98003135', 'Secretaria Municipal de Educação', '2017-05-10', 'Janete', 'Adriano;', 'Outros;', 'Departamento: Compras\r\n* Formatação de Planilhas do Excel'),
(127, '98003135', 'Secretaria Municipal de Educação', '2017-06-27', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de Notícias no site'),
(128, '98003135', 'Secretaria Municipal de Educação', '2017-06-19', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(129, '98003135', 'Secretaria Municipal de Educação', '2017-06-19', 'Mabel', 'Adriano;', 'Outros;', 'Departamento: Assessoria\r\n* Recarga da Impressora'),
(130, '98003135', 'Secretaria Municipal de Educação', '2017-06-19', 'Mabel', 'Adriano;', 'Outros;', 'Departamento: Assessoria\r\n* Limpeza da impresso'),
(131, '98003135', 'Secretaria Municipal de Educação', '2017-05-03', 'Mabel', 'Adriano;', 'Outros;', 'Departamento: Assessoria\r\n* Manutenção na Impressora'),
(132, '98003135', 'Secretaria Municipal de Educação', '2017-03-02', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(133, '98003135', 'Secretaria Municipal de Educação', '2017-05-15', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de Notícias no site'),
(134, '98003135', 'Secretaria Municipal de Educação', '2017-05-15', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Limpeza na impressora'),
(135, '98003135', 'Secretaria Municipal de Educação', '2017-04-18', 'Saulo', 'Danilo;', 'Outros;', 'Departamento: Comunicação\r\n* Instalação do plugin do flashplayer no firefox'),
(136, '98003135', 'Secretaria Municipal de Educação', '2017-04-24', 'Leila', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Manutenção na Impressora'),
(137, '98003135', 'Secretaria Municipal de Educação', '2017-04-24', 'Diego', 'Danilo;', 'Outros;', 'Departamento: Campo\r\n* Troca de computador\r\n* Troca de HD'),
(138, '98003135', 'Secretaria Municipal de Educação', '2017-05-25', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Inserir Banner da CONAE no site'),
(139, '98003135', 'Secretaria Municipal de Educação', '2017-05-16', 'Mabel', 'Adriano;', 'Outros;', 'Departamento: Assessoria\r\n* Limpeza de Impressora'),
(140, '98003135', 'Secretaria Municipal de Educação', '2017-05-16', 'Mabel', 'Adriano;', 'Outros;', 'Departamento: Assessoria\r\n* Limpeza da impressora'),
(141, '98003135', 'Secretaria Municipal de Educação', '2017-05-17', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Limpeza da impressora'),
(142, '98003135', 'Secretaria Municipal de Educação', '2017-05-17', 'Amanda', 'Adriano;', 'Outros;', 'Departamento: Financeiro\r\n* Formatação de Planilhas do Excel'),
(143, '98003135', 'Secretaria Municipal de Educação', '2017-05-17', 'Mabel', 'Adriano;', 'Outros;', 'Departamento: Assessoria\r\n* Instalação de programa no computador'),
(144, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2017-12-06', 'Quarta-Feira, 15:41:39 PM', 'Herlan;Uelque;', 'Impressoras;', '*Configuração de impressora.'),
(145, '15150291', 'E.M.E.F. PAULO GERMANO', '2017-12-06', 'Quarta-Feira, 17:34:56 PM', 'Herlan;Uelque;', 'Software;', '* Instalação de Software;\r\n* Instalação de Antivírus;'),
(146, '98003135', 'Secretaria Municipal de Educação', '2017-06-14', 'Cleane', 'Herlan;', 'Outros;', 'Departamento: DIDI\r\nInstalação de datashow'),
(147, '98003135', 'Secretaria Municipal de Educação', '2017-06-14', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\nPostagem de Notícias no site'),
(148, '98003135', 'Secretaria Municipal de Educação', '2017-06-14', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de Notícias no site'),
(149, '98003135', 'Secretaria Municipal de Educação', '2017-06-14', 'Nilceia', 'Herlan;', 'Outros;', 'Departamento: PDDE\r\n* Configuração da Impressora'),
(150, '98003135', 'Secretaria Municipal de Educação', '2017-06-19', 'Genilson', 'Danilo;', 'Outros;', 'Departamento: Campo\r\n* Adaptador de Internet'),
(151, '98003135', 'Secretaria Municipal de Educação', '2017-06-19', 'Leila', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Montagem de Datashow'),
(152, '98003135', 'Secretaria Municipal de Educação', '2017-06-19', 'Dulce', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Transferência de dados do celular para o computador'),
(153, '98003135', 'Secretaria Municipal de Educação', '2017-06-19', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(154, '98003135', 'Secretaria Municipal de Educação', '2017-06-19', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(155, '98003135', 'Secretaria Municipal de Educação', '2017-06-19', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(156, '98003135', 'Secretaria Municipal de Educação', '2017-06-08', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(157, '98003135', 'Secretaria Municipal de Educação', '2017-06-05', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(158, '98003135', 'Secretaria Municipal de Educação', '2017-06-06', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de Notícias no site'),
(159, '98003135', 'Secretaria Municipal de Educação', '2017-06-06', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(160, '98003135', 'Secretaria Municipal de Educação', '2017-12-06', 'Rosana', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Impressão de Folder frente e verso'),
(161, '98003135', 'Secretaria Municipal de Educação', '2017-12-05', 'SEMED', 'Adriano;Danilo;Herlan;Uelque;', 'Outros;', 'Departamento: Secretaria Municipal de Educação\r\n* Entrega dos datashows utilizados no IV Fórum Municipal'),
(162, '98003135', 'Secretaria Municipal de Educação', '2017-04-25', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(163, '98003135', 'Secretaria Municipal de Educação', '2017-04-24', 'SEMED', 'Adriano;', 'Outros;', 'Departamento: SEMED\r\n* Configuração do novo roteador'),
(164, '98003135', 'Secretaria Municipal de Educação', '2017-05-15', 'Dulce', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Reorganização da sala do núcleo, mudança de computadores do lugar'),
(165, '98003135', 'Secretaria Municipal de Educação', '2017-05-15', 'Orniane', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Troca de fonte do gabinete e monitor novo'),
(166, '98003135', 'Secretaria Municipal de Educação', '2017-05-15', 'Adelina', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Troca de mouse'),
(167, '98003135', 'Secretaria Municipal de Educação', '2017-05-15', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(168, '98003135', 'Secretaria Municipal de Educação', '2017-05-19', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(169, '98003135', 'Secretaria Municipal de Educação', '2017-05-19', 'Dulce', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Manutenção no computador'),
(170, '98003135', 'Secretaria Municipal de Educação', '2017-06-22', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(171, '98003135', 'Secretaria Municipal de Educação', '2017-05-22', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(172, '98003135', 'Secretaria Municipal de Educação', '2017-05-22', 'Mabel', 'Adriano;', 'Outros;', 'Departamento: Assessoria\r\n* Manutenção no computador'),
(173, '98003135', 'Secretaria Municipal de Educação', '2017-05-22', 'Janete', 'Adriano;', 'Outros;', 'Departamento: Compras\r\n* Impressão de relatório do simae'),
(174, '98003135', 'Secretaria Municipal de Educação', '2017-05-22', 'Edina', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Configuração do datashow'),
(175, '98003135', 'Secretaria Municipal de Educação', '2017-05-22', 'Leia', 'Adriano;', 'Outros;', 'Departamento: Merenda\r\n* Configuração do datashow'),
(176, '98003135', 'Secretaria Municipal de Educação', '2017-06-01', 'Vileide', 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Congestionamento de impressão'),
(177, '15113353', 'EMEF SERGINHO CORREIA', '2017-12-07', 'Quinta-Feira, 10:34:37 AM', 'Herlan;Uelque;', 'Outros;', 'Visita Técnica.'),
(178, '15113302', 'E.M.E.F. CRISTO REI', '2017-06-21', NULL, 'Adriano;Danilo;Herlan;', 'Rede;', 'Cabeamento de Rede para Sala de Educação Especial;'),
(179, '15113507', 'E.M.E.F. TEODOMIRO NETO', '2017-06-13', NULL, 'Danilo;Herlan;', 'Equipamentos;', 'Troca e Limpeza de Memória RAM;'),
(180, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2017-06-12', NULL, 'Adriano;', 'Vírus;Rede;Internet;', 'Configuração de Anti-Vírus para acesso a Internet;'),
(181, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-11-06', NULL, 'Herlan;Uelque;', 'Software;Equipamentos;', 'Reset da BIOS;\r\ninstalação de adaptador USB;'),
(182, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-06-07', NULL, 'Adriano;', 'Internet;', 'Troca de Senha da Rede Wi-Fi;'),
(183, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-05-29', NULL, 'Adriano;', 'Equipamentos;', 'Troca de Placa de Rede Wi-Fi;'),
(184, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-11-21', NULL, 'Adriano;', 'Sistema;', 'Remover atualização do Windows e trocar Office 2010 por 2017;\r\nObs: foi verificado que o computador está muito lento caracterizando problema no HD, o mesmo foi agendado pra ser levado a SEMED onde será feita a troca do HD, instalação do Sistema Operacional e programas assim como Backup dos arquivos antigos.'),
(185, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-04-24', NULL, 'Herlan;', 'Vírus;Sistema;', 'Retirada de Vírus de PC\'s;\r\nRetirada de Vírus de Pendrive;'),
(186, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-05-02', NULL, 'Adriano;', 'Equipamentos;', 'Mal contato da Placa de Rede;'),
(187, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-05-10', NULL, 'Adriano;Danilo;Herlan;', 'Impressoras;', 'Desbloqueio da Almofada (retentor de excesso de Tinta);\r\nRecarga dos tanques de Tinta;'),
(188, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-09-25', NULL, 'Adriano;Danilo;Herlan;', 'Sistema;Impressoras;Equipamentos;', 'Troca de Placa Mãe;\r\nFormatação de Computador;\r\nCompartilhamento de impressora em Rede;'),
(189, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2017-12-07', NULL, 'Adriano;Danilo;Herlan;', 'Equipamentos;Outros;', 'Limpeza interna do Gabinete, Troca de Pasta Térmica do Processador;\r\nRestauração da Placa Mãe;'),
(190, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2017-08-29', NULL, 'Herlan;', 'Vírus;', 'Remoção de Vírus de PC\'s;\r\nRemoção de Vírus de Pendrive;\r\n'),
(191, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2017-05-22', NULL, 'Adriano;', 'Rede;', 'Configuração de Internet;'),
(192, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2017-05-24', NULL, 'Adriano;', 'Rede;Impressoras;Internet;Equipamentos;Outros;', 'Reforma na Secretaria: Instalação de Computadores, Impressoras, Rede;\r\n'),
(193, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2017-12-07', NULL, 'Adriano;', 'Rede;', 'Cabo de Internet desconectado;'),
(194, '15163440', 'CENTRO DE EDUCAÇÃO INFANTIL CRER E SER', '2017-05-12', NULL, 'Adriano;Danilo;Herlan;', 'Sistema;Software;Impressoras;Equipamentos;', '01- HD SATA 160 GB; / 01 - Teclado;\r\n01 - Formatação;\r\nCompartilhamento de Impressora;\r\nBackup;\r\nLimpeza Gabinete;'),
(195, '15163440', 'CENTRO DE EDUCAÇÃO INFANTIL CRER E SER', '2017-06-13', NULL, 'Adriano;', 'Rede;', 'Instalação de Roteador;'),
(196, '15163440', 'CENTRO DE EDUCAÇÃO INFANTIL CRER E SER', '2017-06-19', NULL, 'Adriano;', 'Impressoras;', 'Recarga de Tonner;'),
(197, '15163440', 'CENTRO DE EDUCAÇÃO INFANTIL CRER E SER', '2017-08-03', NULL, 'Danilo;Herlan;', 'Impressoras;Equipamentos;', 'Troca de Tonner;\r\nLimpeza de Impressora;\r\nTonner Novo;'),
(198, '15163440', 'CENTRO DE EDUCAÇÃO INFANTIL CRER E SER', '2017-08-22', NULL, 'Herlan;', 'Equipamentos;', 'Encaixe da Placa de Rede pós queda;'),
(199, '15534960', 'E.M.E.F. TANCREDO DE ALMEIDA NEVES', '2017-08-07', NULL, 'Danilo;Herlan;', 'Sistema;Equipamentos;', 'Manutenção no PROINFO;'),
(200, '15534960', 'E.M.E.F. TANCREDO DE ALMEIDA NEVES', '2017-10-30', NULL, 'Herlan;Uelque;', 'Sistema;Equipamentos;', 'Manutenção no PROINFO;\r\nReinstalação do Linux Educacional;'),
(201, '15562867', 'E.M.E.F. PROFESSORA MARIA DA GLÓRIA RODRIGUES PAIXÃO', '2017-10-26', NULL, 'Danilo;Herlan;', 'Sistema;Software;', 'Formatação de Computador;\r\nInstalação de Softwares;'),
(202, '15562867', 'E.M.E.F. PROFESSORA MARIA DA GLÓRIA RODRIGUES PAIXÃO', '2017-10-05', NULL, 'Adriano;Danilo;Uelque;', 'Rede;Impressoras;Internet;Equipamentos;', 'Cabeamento de Rede para sala dos Professores/Coordenadores;\r\nInstalação de um Computador;\r\nManutenção de  Computador;\r\nRecarga do Toner da Samsung;'),
(203, '15113302', 'E.M.E.F. CRISTO REI', '2017-11-07', NULL, 'Herlan;Uelque;', 'Impressoras;', 'Configuração de Impressora;\r\nManutenção de Impressora;'),
(204, '15113302', 'E.M.E.F. CRISTO REI', '2017-06-27', NULL, 'Danilo;Herlan;', 'Sistema;', '02 -  Formatação de PC\'s;\r\n02 - Limpezas Internas;'),
(205, '15113302', 'E.M.E.F. CRISTO REI', '2017-12-07', NULL, 'Adriano;Herlan;', 'Software;Impressoras;Equipamentos;', 'Instalação de Impressora;\r\nTroca de HD;\r\nInstalação de Software;'),
(206, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2017-05-17', NULL, 'Adriano;Danilo;Herlan;', 'Sistema;Rede;Equipamentos;', 'Cabeamento de Rede Sala dos Professores;\r\nInstalação de Computador na Sala dos Professores;\r\nAtualização do Navegador Sala Especial;'),
(207, '15113680', 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', '2017-08-01', NULL, 'Danilo;Herlan;', 'Sistema;Impressoras;', 'Correção de HD para Recuperação Software;\r\nInstalação de 02 Impressoras;\r\n'),
(208, '15113680', 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', '2017-10-04', NULL, 'Herlan;', 'Software;Equipamentos;', 'Limpeza de Memória RAM;\r\nConexão de Cabos para montagem PC;\r\nAtualização de Software;'),
(209, '15113442', 'E.M.E.F. TEOTÔNIO APINAGÉS', '2017-08-01', NULL, 'Herlan;', 'Internet;', 'Conexão Internet PC da Direção;'),
(210, '15113507', 'E.M.E.F. TEODOMIRO NETO', '2017-08-01', NULL, 'Adriano;Herlan;', 'Software;Impressoras;', 'Compartilhamento de Impressora;\r\nInstalação de Software;'),
(211, '15113434', 'E.M.E.F ESTER ANDRADE DOS SANTOS', '2017-12-07', NULL, 'Danilo;Herlan;', 'Equipamentos;', '01 - Monitor Cedido;'),
(212, '15113418', 'E.M.E.F. CRIANÇA FELIZ', '2017-10-03', NULL, 'Adriano;Danilo;Herlan;', 'Sistema;Software;Equipamentos;', 'Formatação Completa de PC;\r\nBackup de Arquivos;\r\nLimpeza de PC;'),
(213, '15098370', 'E.M.E.I.F. ARCO-ÍRIS', '2017-06-07', NULL, 'Adriano;', 'Equipamentos;', 'Troca de Cabo de Vídeo;'),
(214, '15113515', 'E.M.E.I.F. PETER PAN', '2017-04-26', NULL, 'Adriano;Danilo;Herlan;', 'Vírus;Sistema;', '01 - Formatação PC;\r\n01 - Remoção de Vírus de Pendrive;\r\n01 - Backup;'),
(215, '15113515', 'E.M.E.I.F. PETER PAN', '2017-05-16', NULL, 'Adriano;', 'Equipamentos;', 'Instalação HD antigo da Coordenadora;'),
(216, '15113418', 'E.M.E.F. CRIANÇA FELIZ', '2017-06-21', NULL, 'Adriano;', 'Rede;Internet;', 'Troca de Senha e Configuração do roteador;'),
(217, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2017-05-02', NULL, 'Adriano;', 'Rede;Impressoras;Internet;', 'Configuração do Roteador ( não funciona)\r\nInstalação impressora Direção\r\nInstalação Impressora Secretaria\r\nInstalação Impressora  da Sala dos Professores'),
(218, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2017-06-12', NULL, 'Adriano;', 'Sistema;Impressoras;', 'Limpeza da impressora;\r\nConfiguração do Navegador;'),
(219, '15150291', 'E.M.E.F. PAULO GERMANO', '2017-12-07', NULL, 'Danilo;Herlan;', 'Sistema;Software;Impressoras;Equipamentos;', 'Troca de Fonte ATX\r\nTroca de Placa Mãe\r\nTroca de HD\r\nBackup de Arquivos\r\nLimpeza de Gabinete\r\nInstalação de Impressora\r\n'),
(220, '15113353', 'EMEF SERGINHO CORREIA', '2017-05-11', NULL, 'Danilo;Herlan;', 'Sistema;Software;Impressoras;Equipamentos;', 'Formatação PC;\r\nHD de 160GB\r\nCompartilhamento de Impressora;\r\nLimpeza Interna no PC\r\nBackup de Arquivos'),
(221, '15113450', 'E.M.E.F. CORONEL JOÃO PINHEIRO', '2017-05-11', NULL, 'Adriano;Herlan;', 'Sistema;Software;', 'Formatação PC;\r\nInstalação de Softwares;'),
(222, '15113434', 'E.M.E.F ESTER ANDRADE DOS SANTOS', '2017-05-15', NULL, 'Adriano;', 'Internet;', 'Reconectar cabos de Internet no Roteador (Cabos com mal contato).'),
(223, '15098370', 'E.M.E.I.F. ARCO-ÍRIS', '2017-04-20', NULL, 'Adriano;Danilo;Herlan;', 'Sistema;Software;Rede;Impressoras;Equipamentos;', 'Formatação dos Computadores;\r\nTroca de HD;\r\nCompartilhamento de Impressora em Rede;\r\n'),
(224, '15114104', 'E.M.E.F. SÃO FRANCISCO', '2017-04-24', NULL, 'Adriano;Herlan;', 'Rede;Internet;', 'Criação de Rede de Internet;\r\n'),
(225, '15113329', 'ESCOLA REGIME-CONVÊNIO LUZ DO AMANHÃ', '2017-06-06', NULL, 'Adriano;', 'Impressoras;Equipamentos;', 'Instalação e Impressora;\r\nComputador trago para a SEMED para fazer limpeza interna;'),
(226, '15163440', 'CENTRO DE EDUCAÇÃO INFANTIL CRER E SER', '2017-05-15', NULL, 'Herlan;', 'Impressoras;Equipamentos;', 'Limpeza de Memória RAM;\r\nCompartilhamento de Impressora;\r\n'),
(227, '15113329', 'ESCOLA REGIME-CONVÊNIO LUZ DO AMANHÃ', '2017-04-19', NULL, 'Danilo;', 'Vírus;Software;Impressoras;Equipamentos;', 'Instalação de Pacote Completo do Office (2007);\r\nLimpeza de Memória RAM;\r\nInstalação de Anti-Vírus;\r\nInstalação de Programas Básicos;\r\nInstalação de Impressora;'),
(228, '98003135', 'Secretaria Municipal de Educação', '2017-06-29', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(229, '98003135', 'Secretaria Municipal de Educação', '2017-06-29', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(230, '98003135', 'Secretaria Municipal de Educação', '2017-06-29', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(231, '98003135', 'Secretaria Municipal de Educação', '2017-06-29', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(232, '98003135', 'Secretaria Municipal de Educação', '2017-06-29', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(233, '98003135', 'Secretaria Municipal de Educação', '2017-06-29', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de Notícias no site'),
(234, '98003135', 'Secretaria Municipal de Educação', '2017-08-23', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(235, '98003135', 'Secretaria Municipal de Educação', '2017-08-23', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(236, '98003135', 'Secretaria Municipal de Educação', '2017-08-23', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(237, '98003135', 'Secretaria Municipal de Educação', '2017-08-21', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(238, '98003135', 'Secretaria Municipal de Educação', '2017-08-21', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(239, '98003135', 'Secretaria Municipal de Educação', '2017-06-30', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(240, '98003135', 'Secretaria Municipal de Educação', '2017-08-02', 'Raquel', 'Herlan;', 'Outros;', 'Departamento: Jurídico\r\n* Colocação de hd em notebook'),
(241, '98003135', 'Secretaria Municipal de Educação', '2017-08-04', 'Leia', 'Herlan;', 'Outros;', 'Departamento: Merenda\r\n* Configuração da impressora'),
(242, '98003135', 'Secretaria Municipal de Educação', '2017-08-24', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Fotografar evento do Coronel João Pinheiro'),
(243, '98003135', 'Secretaria Municipal de Educação', '2017-06-30', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(244, '98003135', 'Secretaria Municipal de Educação', '2017-08-24', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(245, '98003135', 'Secretaria Municipal de Educação', '2017-08-24', NULL, 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(246, '98003135', 'Secretaria Municipal de Educação', '2017-08-24', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(247, '98003135', 'Secretaria Municipal de Educação', '2017-06-29', 'Dulce', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Impressão de arquivos do word'),
(248, '98003135', 'Secretaria Municipal de Educação', '2017-06-30', NULL, 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Impressão de aquivos'),
(249, '98003135', 'Secretaria Municipal de Educação', '2017-12-08', 'Saulo', 'Danilo;', 'Outros;', 'Departamento: Comunicação\r\n* Montagem da impressora'),
(250, '98003135', 'Secretaria Municipal de Educação', '2017-07-04', 'Alzira', 'Danilo;', 'Outros;', 'Departamento: Campo\r\n* Montagem de Estabilizador e Computador'),
(251, '98003135', 'Secretaria Municipal de Educação', '2017-07-04', 'Luciene', 'Danilo;', 'Outros;', 'Departamento: Estatística\r\n* Download e extração de arquivos zip.'),
(252, '98003135', 'Secretaria Municipal de Educação', '2017-06-12', 'Mabel', 'Adriano;', 'Outros;', 'Departamento: Assessoria\r\n* Reinstalação da impressora'),
(253, '98003135', 'Secretaria Municipal de Educação', '2017-06-20', 'Cristina', 'Danilo;', 'Outros;', 'Departamento: Projetos\r\n* Compartilhamento de impressora'),
(254, '98003135', 'Secretaria Municipal de Educação', '2017-06-20', 'Cristina', 'Danilo;', 'Outros;', 'Departamento: Projetos\r\n* Montagem de datashow'),
(255, '98003135', 'Secretaria Municipal de Educação', '2017-06-20', 'Flávio', 'Herlan;', 'Outros;', 'Departamento: PDDE\r\n* Conexão de computador com a internet\r\n\r\n'),
(256, '98003135', 'Secretaria Municipal de Educação', '2017-06-21', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Campo\r\n* Postagem de notícias no site'),
(257, '98003135', 'Secretaria Municipal de Educação', '2017-06-21', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(258, '98003135', 'Secretaria Municipal de Educação', '2017-06-21', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(259, '98003135', 'Secretaria Municipal de Educação', '2017-06-21', 'Luciene', 'Danilo;', 'Outros;', 'Departamento: Estatística\r\n* Formatação de celular'),
(260, '98003135', 'Secretaria Municipal de Educação', '2017-06-21', 'Janete', 'Adriano;', 'Outros;', 'Departamento: Compras\r\n* Lista de materiais de impressora'),
(261, '98003135', 'Secretaria Municipal de Educação', '2017-12-22', 'Dulce', 'Adriano;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Manutenção de notebook pessoal'),
(262, '98003135', 'Secretaria Municipal de Educação', '2017-05-17', 'Raquel', 'Adriano;', 'Outros;', 'Departamento: Jurídico\r\n* Instalação de impressoras'),
(263, '98003135', 'Secretaria Municipal de Educação', '2017-05-22', 'Flávio', 'Herlan;', 'Outros;', 'Departamento: PDDE\r\n* Limpeza de memória do computador'),
(264, '98003135', 'Secretaria Municipal de Educação', '2017-05-19', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias do site'),
(265, '98003135', 'Secretaria Municipal de Educação', '2017-05-19', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(266, '98003135', 'Secretaria Municipal de Educação', '2017-05-19', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(267, '98003135', 'Secretaria Municipal de Educação', '2017-05-22', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(268, '98003135', 'Secretaria Municipal de Educação', '2017-05-22', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(269, '98003135', 'Secretaria Municipal de Educação', '2017-05-22', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(270, '98003135', 'Secretaria Municipal de Educação', '2017-05-22', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(271, '98003135', 'Secretaria Municipal de Educação', '2017-05-22', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(272, '98003135', 'Secretaria Municipal de Educação', '2017-05-29', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(273, '98003135', 'Secretaria Municipal de Educação', '2017-05-30', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(274, '98003135', 'Secretaria Municipal de Educação', '2017-05-23', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(275, '98003135', 'Secretaria Municipal de Educação', '2017-05-24', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(276, '98003135', 'Secretaria Municipal de Educação', '2017-06-12', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(277, '98003135', 'Secretaria Municipal de Educação', '2017-06-12', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(278, '98003135', 'Secretaria Municipal de Educação', '2017-06-07', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(279, '98003135', 'Secretaria Municipal de Educação', '2017-06-07', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(280, '98003135', 'Secretaria Municipal de Educação', '2017-06-07', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(281, '98003135', 'Secretaria Municipal de Educação', '2017-06-08', 'Saulo', 'Adriano;', 'Outros;', 'Departamento: Comunicação\r\n* Postagem de notícias no site'),
(282, '98003135', 'Secretaria Municipal de Educação', '2017-05-29', 'Mabel', 'Adriano;', 'Outros;', 'Departamento: Assessoria\r\n* Configuração da impressora'),
(283, '98003135', 'Secretaria Municipal de Educação', '2017-05-09', 'Janete', 'Adriano;', 'Outros;', 'Departamento: Compras\r\n* Configuração da Impressora'),
(284, '98003135', 'Secretaria Municipal de Educação', '2017-05-29', 'Genilson', 'Adriano;', 'Outros;', 'Departamento: Campo\r\nLimpeza de Datashow'),
(285, '98003135', 'Secretaria Municipal de Educação', '2017-05-22', 'Dulce', 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Formatação, compartilhamento da impressora e backup'),
(286, '98003135', 'Secretaria Municipal de Educação', '2017-05-23', 'Cristina', 'Adriano;', 'Outros;', 'Departamento: Projetos\r\n* Congestionamento da impressora'),
(287, '98003135', 'Secretaria Municipal de Educação', '2017-05-23', 'Maurivan', 'Adriano;', 'Outros;', 'Departamento: Merenda\r\n* Recarga de Cartucho'),
(288, '98003135', 'Secretaria Municipal de Educação', '2017-05-23', 'Orniane', 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Conectar computador a rede'),
(289, '98003135', 'Secretaria Municipal de Educação', '2017-05-23', 'Leila', 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Compartilhamento de impressora');
INSERT INTO `fichadtc` (`id`, `inep`, `nomeinstituicao`, `dataservico`, `observacoes`, `tecnicos`, `categorias`, `detalhes`) VALUES
(290, '98003135', 'Secretaria Municipal de Educação', '2017-05-24', 'Alzira', 'Danilo;', 'Outros;', 'Departamento: Campo\r\n* Colocar hd de backup'),
(291, '98003135', 'Secretaria Municipal de Educação', '2017-05-29', 'Dulce', 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Troca de mouse e porta usb'),
(292, '98003135', 'Secretaria Municipal de Educação', '2017-05-29', NULL, 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Inserção de senha wifi em computador'),
(293, '98003135', 'Secretaria Municipal de Educação', '2017-06-08', 'Alzira', 'Adriano;', 'Outros;', 'Departamento: Campo\r\n* Recarga de tonner para escola Morajuba'),
(294, '98003135', 'Secretaria Municipal de Educação', '2017-06-09', 'Leila', 'Danilo;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Montagem de datashow e computador'),
(295, '98003135', 'Secretaria Municipal de Educação', '2017-06-12', 'Alzira', 'Herlan;', 'Outros;', 'Departamento: Campo\r\n* Limpeza de memória'),
(296, '98003135', 'Secretaria Municipal de Educação', '2017-06-08', 'Orniane', 'Herlan;', 'Outros;', 'Departamento: Núcleo Pedagógico\r\n* Limpeza de memória'),
(297, '15150291', 'E.M.E.F. PAULO GERMANO', '2017-12-11', 'Segunda-Feira, 10:15:29 AM', 'Adriano;Herlan;Uelque;', 'Sistema;Software;', '* Formatação computador da secretaria. \r\n* Instalação de driver da impressora. '),
(298, '15113353', 'EMEF SERGINHO CORREIA', '2017-12-11', 'Segunda-Feira, 11:55:03 AM', 'Uelque;', 'Software;Impressoras;', '* Instalação de impressora na secretaria.\r\n* Instalação de impressora na coordenação.'),
(299, '15113680', 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', '2017-12-12', 'Terça-Feira, 10:47:52 AM', 'Herlan;Uelque;', 'Internet;Equipamentos;', '*Configuração do roteador do Navegapara.\r\n*configuração do roteador da secretaria.'),
(300, '15113680', 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', '2017-12-19', 'Terça-Feira, 16:32:59 PM', 'Uelque;', 'Software;Impressoras;', '* transferência de impressoras da direção e coordenação  para secretaria e instalação de driver das mesmas. '),
(301, '15113507', 'E.M.E.F. TEODOMIRO NETO', '2018-01-15', 'Segunda-Feira, 10:43:45 AM', 'Herlan;Uelque;', 'Equipamentos;', 'Troca de porta USB.'),
(302, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2018-01-19', 'Sexta-Feira, 10:58:37 AM', 'Adriano;Herlan;', 'Sistema;Rede;Impressoras;Equipamentos;Outros;', '* Instalação dos Computadores na Sala dos professores\r\n* Baixar e Instalar drivers das impressoras na sala dos professores\r\n* Configuração dos computadores da secretaria\r\n* Limpeza de memória na sala multifuncional\r\n* Cabeamento de rede na impressora'),
(303, '15113353', 'EMEF SERGINHO CORREIA', '2018-01-23', 'Terça-Feira, 09:31:14 PM', 'Adriano;Uelque;', 'Impressoras;Outros;', '* Manutenção e instalação da impressora\r\n* Atualização do atubeget'),
(304, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2018-01-23', 'Terça-Feira, 10:22:29 PM', 'Adriano;Uelque;', 'Rede;Impressoras;Equipamentos;', '* Configuração de Rede\r\n* Cabeamento de Rede\r\n* Instalação de impressora'),
(305, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2018-01-23', 'Terça-Feira, 11:00:58 PM - Pólo UAB', 'Adriano;Uelque;', 'Rede;Internet;', '* Manutenção no cabeamento de Rede'),
(306, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2018-01-23', 'Terça-Feira, 11:35:17 PM', 'Adriano;Uelque;', 'Rede;Internet;Equipamentos;Outros;', '* Entrega de computador\r\n* Transferência de dados entre dois hds\r\n* Manutenção no computador da sala multifuncional'),
(307, '98003135', 'SEMED - Secretaria Municipal de Educação', '2018-01-26', 'DTC - ADRIANO', 'Adriano;', 'Outros', 'Testando sistema de atendimentos internos'),
(308, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2018-01-25', 'Quinta-Feira, 9:07:26 AM', 'Herlan;Uelque;', 'Rede;Internet;', 'Cabeamento entre computadores;\r\nTroca de conectores rj45'),
(309, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2018-01-25', 'Quinta-Feira, 12:11:04 PM', 'Herlan;Uelque;', 'Software;Impressoras;', 'Instalação de impressora;\r\nConfiguração de impressora'),
(310, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2018-01-29', 'Segunda-Feira, 10:29:33 PM', 'Adriano;', 'Outros;', 'Pedido de atendimento para verificar a internet ao chegar no local a internet já tinha sido restabelecida.'),
(311, '15113680', 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', '2018-02-01', 'Quinta-Feira, 12:31:23 PM', 'Herlan;Uelque;', 'Sistema;Impressoras;', '*instalação de impressora na sala da direção. \r\n*verificação de disco rígido. \r\n*instalação de impressora secretaria.\r\n*limpeza de memória.'),
(312, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2018-02-02', 'Sexta-Feira, 09:57:51 AM', 'Uelque;', 'Sistema;Equipamentos;', '*REPARO DE INICIALIZAÇÃO DO WINDOWS. '),
(313, '15113302', 'E.M.E.F. CRISTO REI', '2018-02-05', 'Segunda-Feira, 13:03:33 PM', 'Herlan;Uelque;', 'Software;Impressoras;', '*Instalação de impressora da sala da coordenação.\r\n*instalação de aplicativo no computador da direção. '),
(314, '15163440', 'CENTRO DE EDUCAÇÃO INFANTIL CRER E SER', '2018-02-08', 'Quinta-Feira, 09:51:40 AM', 'Herlan;Uelque;', 'Impressoras;', '*Manutenção em impressora.'),
(315, '15113515', 'E.M.E.I.F. PETER PAN', '2018-02-08', 'Quinta-Feira, 11:52:57 AM', 'Herlan;Uelque;', 'Impressoras;', '* instalação de impressora secretaria. '),
(316, '15113680', 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', '2018-02-21', 'Quarta-Feira, 12:44:21 PM', 'Herlan;Uelque;', 'Sistema;Software;Equipamentos;Outros;', '* Verificação de quatro computadores;\r\n* Limpeza interna de um computador;\r\n* Mudança de computador de lugar;\r\n* Desinstalação de software;\r\n* Instalação de software;'),
(317, '15113680', 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', '2018-02-26', 'Segunda-Feira, 12:31:50 PM', 'Herlan;Uelque;', 'Sistema;Impressoras;Outros;', '4 Formatação;\r\n5 Montagem de computador;\r\nVerificação de cartucho de impressora de secretaria'),
(318, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2018-03-06', 'Terça-Feira, 10:15:56 AM', 'Herlan;Uelque;', 'Rede;Impressoras;Equipamentos;', '*Limpeza do computador solicitada para a reunião do conselho.\r\n*Configuração de impressora em rede.\r\n*Configuração de roteador.\r\n*Configuração de impressora na sala dos professores.\r\n'),
(319, '15163458', 'CENTRO SOCIAL E EDUCACIONAL DE JACUNDÁ', '2018-03-06', 'Terça-Feira, 11:07:14 AM', 'Herlan;Uelque;', 'Rede;Equipamentos;', '* Manutenção em computador da secretaria que não estava ligando.\r\n*Manutenção em computador da pastoral, o mesmo vai ser usado na secretaria. '),
(320, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2018-03-07', 'Quarta-Feira, 09:00:31 AM', 'Herlan;Uelque;', 'Rede;Equipamentos;', '* Instalação de Roteador.\r\n* Troca de conector rj 45'),
(321, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2018-03-07', 'Quarta-Feira, 10:50:32 AM', 'Herlan;Uelque;', 'Equipamentos;', '* Limpeza de memória e placa de rede.'),
(322, '98003135', 'Secretaria Municipal de Educação', '2018-03-07', 'Quarta-Feira, 13:21:29 PM', 'Uelque;', 'Impressoras;', '* Recarga cartucho departamento de estatística.'),
(323, '15113302', 'E.M.E.F. CRISTO REI', '2018-03-14', NULL, 'Wathson;Jonnathan;', 'Internet;', 'Conflito de rede e manutenção de cabeamento.'),
(324, '15113680', 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', '2018-03-14', 'Quarta-Feira, 11:38:25 AM', 'Wathson;Jonnathan;', 'Impressoras;Equipamentos;Outros;', 'Durante o atendimento foi realizado: \r\n-Reinicialização do estabilizador; \r\n-Compartilhamento de impressora;\r\n-Retirada de gabinete para manutenção no Departamento de Tecnologia da Informação.'),
(325, '15113434', 'E.M.E.F ESTER ANDRADE DOS SANTOS', '2018-03-14', 'Quarta-Feira, 13:29:56 PM', 'Benilson;', 'Software;Equipamentos;', '* Instalação de placa wireless\r\n\r\n '),
(326, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2018-03-15', 'Quinta-Feira, 10:25:04 AM', 'Benilson;Uelque;', 'Rede;Impressoras;Internet;', '* verificação de internet, navegapará.\r\n* verificação de driver de instalação impressora secretaria.\r\n* Instalação de driver impressora multi funcional.  '),
(327, '98003135', 'Secretaria Municipal de Educação', '2018-03-15', 'Quinta-Feira, 13:21:46 PM', 'Jonnathan;', 'Rede;Equipamentos;', 'Obs.: Praça Céu***\r\nDurante o atendimento foram realizadas as seguintes atividade:\r\n- Manutenção do cabeamento de rede;\r\n- Manutenção do Circuito elétrico da sala \"Telecentro\";\r\n- Análise previa de equipamentos defeituosos;\r\n-Retirada de 3 gabinetes, sendo um deles somente com a fonte; outro sem memorias RAM e HD e o terceiro com HD danificados.'),
(328, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2018-03-16', 'Sexta-Feira, 09:48:12 AM', 'Benilson;Uelque;', 'Rede;Internet;', '* Manutenção de rede, equipamentos do Navegapará.'),
(329, '15150291', 'E.M.E.F. PAULO GERMANO', '2018-03-16', NULL, 'Wathson;Izaque;', 'Equipamentos;', ' -Limpeza das memoria ram.\r\n'),
(330, '15114104', 'E.M.E.F. SÃO FRANCISCO', '2018-03-16', 'Sexta-Feira, 10:25:52 AM', 'Benilson;Uelque;', 'Equipamentos;', '*manutenção do computador da sala dos professores'),
(331, '15150291', 'E.M.E.F. PAULO GERMANO', '2018-03-16', 'Sexta-Feira, 10:26:36 AM', 'Wathson;Izaque;', 'Equipamentos;', 'Realizamos limpeza nas memórias RAM.'),
(332, '15113353', 'EMEF SERGINHO CORREIA', '2018-03-16', 'Sexta-Feira, 11:04:35 AM', 'Benilson;Uelque;', 'Sistema;Software;Equipamentos;', '* formatação do computador da secretaria'),
(333, '15113310', 'ESCOLA REGIME-CONVÊNIO JARDIM DAS ACÁCIAS', '2018-03-16', 'Sexta-Feira, 11:57:28 AM', 'Jonnathan;', 'Sistema;Software;Rede;Equipamentos;', '- Devolução dos equipamentos retirados previamente;\r\n- Instalação dos mesmos;\r\n'),
(334, '15113515', 'E.M.E.I.F. PETER PAN', '2018-03-19', 'Segunda-Feira, 09:19:27 AM', 'Wathson;Izaque;', 'Internet;', '-Fizemos a entrega do cabo de rede '),
(335, '15534960', 'E.M.E.F. TANCREDO DE ALMEIDA NEVES', '2018-03-19', 'Segunda-Feira, 10:15:32 AM', 'Benilson;Uelque;', 'Rede;Internet;Equipamentos;', '*realização de teste equipamentos da escola\r\n*compartilhamento de rede '),
(336, '15113450', 'E.M.E.F. CORONEL JOÃO PINHEIRO', '2018-03-19', 'Segunda-Feira, 11:40:27 AM', 'Wathson;Izaque;', 'Equipamentos;', '-Limpeza das memorias.\r\n-Troca da pasta termica.'),
(337, '15113450', 'E.M.E.F. CORONEL JOÃO PINHEIRO', '2018-03-19', 'Segunda-Feira, 11:44:37 AM', 'Wathson;Izaque;', 'Equipamentos;', '-Limpeza das memorias.\r\n-Troca da pasta termica '),
(338, '15113507', 'E.M.E.F. TEODOMIRO NETO', '2018-03-19', 'Segunda-Feira, 12:45:15 PM', 'Wathson;Izaque;', 'Equipamentos;Outros;', '-Entrega de 1 monitor.'),
(339, '15909930', 'CENTRO EDUCACIONAL NOSSA SENHORA APARECIDA', '2018-03-20', 'Terça-Feira, 10:45:16 AM', 'Benilson;Uelque;', 'Impressoras;Equipamentos;', '* Manutenção computador sala de brinquedos.\r\n* limpeza do cabeçote impressora epson sala de brinquedos.'),
(340, '15113680', 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', '2018-03-20', 'Terça-Feira, 11:07:55 AM', 'Benilson;Uelque;', 'Rede;Impressoras;', '* Verificação de compartilhamento de rede.'),
(341, '15150100', 'E.M.E.F. CAMINHO PARA O FUTURO', '2018-03-20', 'Terça-Feira, 11:28:24 AM', 'Wathson;Izaque;', 'Outros;', 'Realizamos a verificação da impressora com problema do driver.'),
(342, '15113450', 'E.M.E.F. CORONEL JOÃO PINHEIRO', '2018-03-20', 'Terça-Feira, 13:03:00 PM', 'Wathson;Izaque;', 'Rede;', 'Fizemos a troca do adaptador wireless.'),
(343, '15114104', 'E.M.E.F. SÃO FRANCISCO', '2018-03-20', 'Terça-Feira, 13:12:58 PM ', 'Danilo;', 'Outros;', '*Troca de Pasta Térmica do Processador;\r\n*Limpeza de Memória RAM;\r\n\r\n'),
(344, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2018-03-21', 'Quarta-Feira, 09:49:18 AM', 'Uelque;', 'Equipamentos;', '* Manutenção computador da coordenação, por problema na placa o mesmo estava reiniciando. '),
(345, '15909930', 'CENTRO EDUCACIONAL NOSSA SENHORA APARECIDA', '2018-03-21', 'Quarta-Feira, 10:27:20 AM', 'Wathson;', 'Outros;', '-Fizemos a troca da bateria.\r\n- E a entrega de 1 mouse e 2 teclados.'),
(346, '15519201', 'EMEF CENTRO COMUNITARIO', '2018-03-21', 'Quarta-Feira, 14:03:45 PM', 'Bruno;Benilson;Wathson;Izaque;', 'Rede;Internet;Equipamentos;Outros;', 'Realizamos a entrega de equipamentos de informática.\r\nE o compartilhamento da impressora e internet.'),
(347, '15166660', 'CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2018-03-22', 'Quinta-Feira, 12:59:01 PM', 'Benilson;Uelque;', 'Equipamentos;', '*Troca de placa mãe.\r\nOBS: A placa substituída é usada. '),
(348, '15113310', 'ESCOLA REGIME-CONVÊNIO JARDIM DAS ACÁCIAS', '2018-03-23', 'Sexta-Feira, 09:12:53 AM', 'Bruno;Jonnathan;', 'Sistema;Equipamentos;', '*Entrega dos serviço inicializado ha algumas semanas;\r\n- Substituição do Disco Rigido;\r\n- Instalação do sistema operacional.'),
(349, '15113302', 'E.M.E.F. CRISTO REI', '2018-03-23', 'Sexta-Feira, 10:13:13 AM', 'Benilson;Uelque;', 'Internet;', '* Visita Técnica.'),
(350, '15113434', 'E.M.E.F ESTER ANDRADE DOS SANTOS', '2018-03-23', 'Sexta-Feira, 10:48:17 AM', 'Bruno;Jonnathan;', 'Sistema;Equipamentos;', '-Devolução dos equipamentos encaminhados a manutenção;\r\n- Substituição de Dois Monitores Positivo.'),
(351, '15150291', 'E.M.E.F. PAULO GERMANO', '2018-03-23', 'Sexta-Feira, 11:19:01 AM', 'Bruno;Jonnathan;', 'Equipamentos;', 'Maquina em curto após oscilação elétrica;'),
(352, '98003135', 'Secretaria Municipal de Educação', '2018-03-23', 'Sexta-Feira, 11:22:28 AM', 'Benilson;Uelque;', 'Impressoras;', '* Manutenção impressora Polo UAB. '),
(353, '15113442', 'E.M.E.F. TEOTÔNIO APINAGÉS', '2018-03-26', 'Segunda-Feira, 10:31:32 AM', 'Bruno;Jonnathan;', 'Rede;Impressoras;Equipamentos;', '- Analise técnica de equipamentos;\r\n- Remoção de Placa de Rede Danificada;\r\n- Compartilhamento de impressora;\r\n\r\nComponentes necessários:\r\n- 4 baterias CRC  2032;\r\n- Switch ou Roteador para conectar equipamentos a rede;\r\n- 1 HD;\r\n- 1 Memoria RAM DDR2;'),
(354, '15113515', 'E.M.E.I.F. PETER PAN', '2018-03-26', 'Segunda-Feira, 11:16:19 AM', 'Wathson;Izaque;', 'Equipamentos;Outros;', 'Retiramos a CPU para manutenção.'),
(355, '15113523', 'E.M.E.F. ROSÁLIA CORREIA', '2018-03-26', 'Segunda-Feira, 13:59:49 PM', 'Wathson;Izaque;', 'Equipamentos;Outros;', 'Realizamos a entrega de uma CPU;\r\nFizemos alguns testes em computadores.'),
(356, '15150291', 'E.M.E.F. PAULO GERMANO', '2018-03-27', 'Terça-Feira, 10:55:19 AM', 'Benilson;Wathson;', 'Internet;', '-Atualização da senha da internet'),
(357, '15113302', 'E.M.E.F. CRISTO REI', '2018-03-27', 'Terça-Feira, 12:37:36 PM', 'Benilson;Wathson;', 'Impressoras;', '-compartilhamento de impressora.'),
(358, '15113515', 'E.M.E.I.F. PETER PAN', '2018-03-27', 'Terça-Feira, 13:48:37 PM', 'Wathson;Izaque;', 'Equipamentos;', '-Entrega de um gabinete.'),
(359, '15163440', 'CENTRO DE EDUCAÇÃO INFANTIL CRER E SER', '2018-03-28', 'Quarta-Feira, 09:48:51 AM', 'Benilson;', 'Outros;', '*Recarga de Cartuchos'),
(360, '98003135', 'Secretaria Municipal de Educação', '2018-03-28', 'Quarta-Feira, 09:50:33 AM', 'Benilson;', 'Outros;', '*Recargas de Cartucho toner'),
(361, '15113841', 'E.M.E.F. JOSÉ BONIFÁCIO', '2018-03-27', 'Terça-Feira, 09:45:04 AM', 'Bruno;Jonnathan;', 'Sistema;Equipamentos;', 'Manutenção do servidor multiterminal;'),
(362, '15519333', 'E.M.E.F. BOA VENTURA', '2018-03-27', NULL, 'Bruno;Jonnathan;', 'Equipamentos;', '- Recolhimento de servidor multiterminal para manutenção no departamento.'),
(363, '15519201', 'EMEF CENTRO COMUNITARIO', '2018-03-28', 'Quarta-Feira, 10:33:38 AM', 'Wathson;Jonnathan;', 'Equipamentos;', 'Substituição de equipamentos:\r\n1 mouse;\r\n1 monitor.'),
(364, '98003135', 'Secretaria Municipal de Educação', '2018-03-28', 'Quarta-Feira, 10:42:36 AM', 'Benilson;Uelque;', 'Impressoras;', 'Obs : PRODASF\r\n\r\n*  Verificação de impressora. '),
(365, '98003135', 'Secretaria Municipal de Educação', '2018-03-28', 'Quarta-Feira, 11:07:26 AM', 'Benilson;Uelque;', 'Impressoras;', 'UAB\r\n* Troca do separador de papel  da impressora coordenação.'),
(366, '15113680', 'E.M.E.F. DEPUTADO RAIMUNDO RIBEIRO DE SOUZA', '2018-03-28', 'Quarta-Feira, 11:06:44 AM', 'Wathson;Jonnathan;', 'Impressoras;', '-Realizamos a troca de tintas.'),
(367, '15113302', 'E.M.E.F. CRISTO REI', '2018-04-02', 'Segunda-Feira, 09:54:07 AM', 'Benilson;Uelque;', 'Impressoras;', 'Compartilhamento de impressora.'),
(368, '15534960', 'E.M.E.F. TANCREDO DE ALMEIDA NEVES', '2018-04-02', 'Segunda-Feira, 10:14:45 AM', 'Wathson;Izaque;', 'Rede;Internet;', '-Reconfiguramos o roteador. ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `fotoMobile` varchar(200) NOT NULL,
  `tituloMobile` varchar(200) NOT NULL,
  `larguraMobile` int(11) NOT NULL,
  `alturaMobile` int(11) NOT NULL,
  `arquivo` varchar(200) NOT NULL,
  `fotoDesktop` varchar(200) NOT NULL,
  `alturaDesktop` int(11) NOT NULL,
  `larguraDesktop` int(11) NOT NULL,
  `tituloDesktop` varchar(200) NOT NULL,
  `datapublicacao` date NOT NULL,
  `visivel` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `noticias`
--

INSERT INTO `noticias` (`id`, `fotoMobile`, `tituloMobile`, `larguraMobile`, `alturaMobile`, `arquivo`, `fotoDesktop`, `alturaDesktop`, `larguraDesktop`, `tituloDesktop`, `datapublicacao`, `visivel`) VALUES
(1, 'visitaascreches (1).jpg', 'VISITA ÀS CRECHES', 174, 113, 'VISITAASCRECHES20172', 'visitaascreches (1).jpg', 225, 300, 'VISITA ÀS CRECHES', '2017-03-13', 0),
(2, 'AEDESAEGYPTI2017.jpg', 'REUNIÃO COM SECRETÁRIOS MUNICIPAIS TRATA FORÇA TAREFA CONTRA AEDES AEGYPTI', 174, 113, 'AEDESAEGYPTI2017', 'AEDESAEGYPTI2017.jpg', 180, 300, 'REUNIÃO COM SECRETÁRIOS MUNICIPAIS TRATA FORÇA TAREFA CONTRA AEDES AEGYPTI', '2017-03-10', 0),
(3, 'formacaoinfantil20171.jpg', 'FORMAÇÃO GERAL PARA OS SERVIDORES DOS CENTROS DE ED. INFANTIL', 174, 113, 'formacaoinfantil2017', 'formacaoinfantil20171.jpg', 180, 300, 'FORMAÇÃO GERAL PARA OS SERVIDORES DOS CENTROS DE ED. INFANTIL', '2017-02-24', 0),
(4, 'edinfantilvolta2017.jpg', 'EDUCAÇÃO INFANTIL INICIARÃO NAS SEGUINTES DATAS DE MARÇO DE 2017', 174, 113, 'edinfantilvolta2017', 'edinfantilvolta2017.jpg', 150, 300, 'A SECRETARIA MUNICIPAL DE EDUCAÇÃO, INFORMA QUE AS AULAS DA EDUCAÇÃO INFANTIL INICIARÃO NAS SEGUINTES DATAS DE MARÇO DE 2017', '2017-02-24', 0),
(5, 'formacaogestores20171.jpg', 'ENCONTRO DE FORMAÇÃO COM GESTORES E SUPERVISORES MUNICIPAIS', 174, 113, 'formacaogestores2017', 'formacaogestores20171.jpg', 200, 300, 'ENCONTRO DE FORMAÇÃO COM GESTORES E SUPERVISORES MUNICIPAIS', '2017-02-22', 0),
(6, 'forprof20173.jpg', 'PARTICIPAÇÃO DA SECRETÁRIA DE EDUCAÇÃO AO FORPROF/PA', 174, 113, 'forprof2017', 'forprof20173.jpg', 225, 300, 'PARTICIPAÇÃO DA SECRETÁRIA DE EDUCAÇÃO AO FORPROF/PA', '2017-02-21', 0),
(7, 'jornada20172 (18).jpg', 'JORNADA PEDAGÓGICA 2017 - SEGUNDO DIA', 174, 113, 'jornada2017_2', 'jornada20172 (18).jpg', 225, 300, 'JORNADA PEDAGÓGICA 2017 - SEGUNDO DIA', '2017-01-31', 0),
(8, 'parfor20177.jpg', 'VISITA DA SECRETÁRIA DE EDUCAÇÃO AO PARFOR - PÓLO DE JACUNDÁ', 174, 113, 'parfor2017', 'parfor20177.jpg', 200, 300, 'VISITA DA SECRETÁRIA DE EDUCAÇÃO AO PARFOR - PÓLO DE JACUNDÁ', '2017-02-17', 0),
(9, 'voltaAulas2.jpg', 'VOLTA ÀS AULAS 2017 - JACUNDÁ-PA', 174, 113, 'voltaasaulas2017', 'voltaAulas2.jpg', 225, 300, 'VOLTA ÀS AULAS 2017 - JACUNDÁ-PA', '2017-02-13', 0),
(15, 'jornada20171 (2).jpg', 'JORNADA PEDAGÓGICA 2017 - ABERTURA OFICIAL', 150, 113, 'jornada2017_1', 'jornada20171 (2).jpg', 225, 300, 'JORNADA PEDAGÓGICA 2017 - ABERTURA OFICIAL', '2017-01-30', 0),
(11, 'penaic2017 (4).jpg', 'PNAIC EM AÇÃO - 2017', 174, 113, 'PNAIC2017', 'penaic2017 (4).jpg', 225, 300, 'PNAIC EM AÇÃO - 2017', '2017-01-24', 0),
(12, 'matriculas-abertas.png', 'MATRÍCULAS 2017', 174, 113, 'matriculas', 'matriculas-abertas.png', 225, 300, 'MATRÍCULAS 2017', '2017-01-17', 0),
(13, 'visitas4.jpg', 'VISITA ÀS OBRAS ESCOLARES', 174, 113, 'visitasescolas', 'visitas4.jpg', 225, 300, 'VISITA ÀS OBRAS ESCOLARES', '2017-01-27', 0),
(14, 'aee20171.jpg', 'ENCONTRO PEDAGÓGICO DE PROFESSORAS DO \'AEE\'', 174, 113, 'aee2017', 'aee20171.jpg', 180, 300, 'ENCONTRO PEDAGÓGICO DE PROFESSORAS DO \'AEE\' - ATENDIMENTO EDUCACIONAL ESPECIALIZADO', '2017-02-21', 0),
(16, 'diaescola2017.jpg', 'DIA DA ESCOLA - 15 DE MARÇO', 174, 113, 'diadaescola2017', 'diaescola2017.jpg', 225, 300, 'DIA DA ESCOLA - 15 DE MARÇO', '2017-03-15', 0),
(17, 'trabalhinfantil2017.jpg', 'CAMPANHA: CHEGA DE TRABALHO INFANTIL', 174, 113, 'campanhatrabalhoinfantil2017', 'trabalhinfantil2017.jpg', 225, 300, 'CAMPANHA: CHEGA DE TRABALHO INFANTIL', '2017-03-20', 0),
(18, 'ENCONTROPEDAGOGICOEDUCACAOINFANTIL2017 (1).jpg', 'ENCONTRO PEDAGÓGICO - EDUCAÇÃO INFANTIL', 174, 113, 'ENCONTROPEDAGOGICOEDUCACAOINFANTIL2017', 'ENCONTROPEDAGOGICOEDUCACAOINFANTIL2017 (1).jpg', 225, 300, 'ENCONTRO PEDAGÓGICO - EDUCAÇÃO INFANTIL', '2017-03-21', 0),
(19, 'cangurumatematica2017.jpg', 'CANGURU - MATEMÁTICO SEM FRONTEIRAS 2017', 174, 113, 'cangurumatematica2017', 'cangurumatematica2017.jpg', 225, 300, 'CANGURU - MATEMÁTICO SEM FRONTEIRAS 2017', '2017-03-21', 0),
(20, 'convitediaD.jpg', 'CONVITE - DIA D', 174, 113, 'convitediaD', 'convitediaD.jpg', 225, 300, 'CONVITE - DIA D', '2017-03-22', 0),
(21, 'integracaoseduc2017.jpg', 'I ENCONTRO DE INTEGRAÇÃO DA SECRETARIA DE ESTADO DE EDUCAÇÃO (SEDUC), COM SECRETÁRIOS MUNICIPAIS DE EDUCAÇÃO', 174, 113, 'integseducmunicipios', 'integracaoseduc2017.jpg', 150, 300, 'I ENCONTRO DE INTEGRAÇÃO DA SECRETARIA DE ESTADO DE EDUCAÇÃO (SEDUC), COM SECRETÁRIOS MUNICIPAIS DE EDUCAÇÃO', '2017-03-22', 0),
(22, 'diaescolajp.jpg', 'DIA DA ESCOLA - CORONEL JOÃO PINHEIRO', 174, 113, 'diaescolajp', 'diaescolajp.jpg', 225, 300, 'DIA DA ESCOLA - CORONEL JOÃO PINHEIRO', '2017-03-23', 0),
(23, 'diaescolaai.jpg', 'DIA DA ESCOLA - ARCO-ÍRIS', 174, 113, 'diaescolaai', 'diaescolaai.jpg', 225, 300, 'DIA DA ESCOLA - ARCO-ÍRIS', '2017-03-23', 0),
(24, 'rpeterpanburiti (6).jpg', 'REUNIÃO COM PAIS E PROFESSORES - PETER PAN BURITI', 174, 113, 'rpeterpanburiti', 'rpeterpanburiti (6).jpg', 200, 300, 'REUNIÃO COM PAIS E PROFESSORES - PETER PAN BURITI', '2017-03-23', 0),
(25, 'diaescolapaulogermano.jpg', 'DIA DA ESCOLA - PAULO GERMANO', 174, 113, 'diaescolapaulogermano', 'diaescolapaulogermano.jpg', 225, 300, 'DIA DA ESCOLA - PAULO GERMANO', '2017-03-24', 0),
(26, 'DIADCONTRAAEDESAEGYPTI.jpg', 'DIA D - CONTRA AEDES AEGYPTI', 174, 113, 'DIADCONTRAAEDESAEGYPTI', 'DIADCONTRAAEDESAEGYPTI.jpg', 225, 315, 'DIA D - CONTRA AEDES AEGYPTI', '2017-03-25', 0),
(27, 'diaescolacriancafeliz.jpg', 'DIA DA ESCOLA – CRIANÇA FELIZ', 174, 113, 'diaescolacriancafeliz', 'diaescolacriancafeliz.jpg', 225, 300, 'DIA DA ESCOLA – CRIANÇA FELIZ', '2017-03-27', 0),
(28, 'visitadonaflorcapa.jpg', 'VISITA AO CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', 174, 113, 'visitadonaflor1', 'visitadonaflorcapa.jpg', 200, 310, 'VISITA AO CENTRO DE EDUCAÇÃO INFANTIL DONA FLOR', '2017-03-27', 0),
(29, 'formacao032017 (2).jpg', 'ENCONTRO COM DIRETORES E SUPERVISORES ESCOLARES', 174, 113, 'formacao032017', 'formacao032017 (2).jpg', 230, 310, 'ENCONTRO COM DIRETORES E SUPERVISORES ESCOLARES', '2017-03-30', 0),
(30, 'comunicado30032017 (1).jpg', 'COMUNICADO', 174, 113, 'comunicado30032017', 'comunicado30032017 (1).jpg', 260, 320, 'COMUNICADO', '2017-03-31', 0),
(31, 'reuniaodiretores20171 (1).jpg', 'REUNIÃO ENTRE DIRETORES E NÚCLEO PEDAGÓGICO', 174, 113, 'reuniaodiretores20171', 'reuniaodiretores20171 (1).jpg', 225, 300, 'REUNIÃO ENTRE DIRETORES E NÚCLEO PEDAGÓGICO', '2017-04-01', 0),
(32, 'diaescolateodomironeto.jpg', 'DIA DA ESCOLA – TEODOMIRO NETO', 174, 113, 'diaescolateodomironeto', 'diaescolateodomironeto.jpg', 225, 300, 'DIA DA ESCOLA – TEODOMIRO NETO', '2017-04-03', 0),
(33, 'diaescolacristorei2017.jpg', 'DIA DA ESCOLA – CRISTO REI', 174, 113, 'diaescolacristorei2017', 'diaescolacristorei2017.jpg', 225, 300, 'DIA DA ESCOLA – CRISTO REI', '2017-04-04', 0),
(34, 'POESIAEJA2017 (1).jpg', 'POESIA – EJA (Educação de Jovens e Adultos)', 174, 113, 'POESIAEJA2017', 'POESIAEJA2017 (1).jpg', 225, 300, 'POESIA – EJA (Educação de Jovens e Adultos)', '2017-04-05', 0),
(35, 'diaescolarosaliacorreia2017.jpg', 'DIA DA ESCOLA – ROSÁLIA CORREIA', 174, 113, 'diaescolarosaliacorreia2017', 'diaescolarosaliacorreia2017.jpg', 225, 300, 'DIA DA ESCOLA – ROSÁLIA CORREIA', '2017-04-10', 0),
(36, 'ester.jpg', 'DIA DA ESCOLA – ESTER ANDRADE', 174, 113, 'diaescolaesterandrade2017', 'ester.jpg', 225, 300, 'DIA DA ESCOLA – ESTER ANDRADE', '2017-04-11', 0),
(37, 'aberturapascoa2017 (1).jpg', 'ABERTURA DA PÁSCOA – SEMED', 174, 113, 'aberturapascoa2017', 'aberturapascoa2017 (1).jpg', 225, 300, 'ABERTURA DA PÁSCOA – SEMED', '2017-04-13', 0),
(38, 'FORMACAOPARAEDUCACAOESPECIAL042017 (1).jpg', 'FORMAÇÃO PARA EDUCAÇÃO ESPECIAL', 174, 113, 'FORMACAOPARAEDUCACAOESPECIAL042017', 'FORMACAOPARAEDUCACAOESPECIAL042017 (1).jpg', 225, 300, 'FORMAÇÃO PARA EDUCAÇÃO ESPECIAL', '2017-04-12', 0),
(39, 'paixaodecristomg2017 (1).jpg', 'DRAMATIZAÇÃO ‘’PAIXÃO DE CRISTO’’ – E.M.E.F. Mª DA GLÓRIA', 175, 113, 'paixaodecristomg2017', 'paixaodecristomg2017 (1).jpg', 225, 300, 'DRAMATIZAÇÃO ‘’PAIXÃO DE CRISTO’’ – E.M.E.F. Mª DA GLÓRIA', '2017-04-14', 0),
(40, 'semedundime20171 (1).jpg', 'SECRETÁRIA DE EDUCAÇÃO NO FÓRUM ESTADUAL DA UNDIME', 171, 113, 'semedundime20171', 'semedundime20171 (1).jpg', 225, 300, 'SECRETÁRIA DE EDUCAÇÃO NO FÓRUM ESTADUAL DA UNDIME', '2017-04-14', 0),
(41, 'pascoaescolas2017.jpg', 'GALERIA DE FOTOS – PÁSCOA NAS ESCOLAS', 174, 113, 'pascoaescolas2017', 'pascoaescolas2017.jpg', 235, 310, 'GALERIA DE FOTOS – PÁSCOA NAS ESCOLAS', '2017-04-18', 0),
(42, 'informativouepa2017041 (1).jpg', 'INFORMATIVO PROCESSO SELETIVO – UEPA', 174, 113, 'informativouepa2017041', 'informativouepa2017041 (1).jpg', 225, 300, 'INFORMATIVO PROCESSO SELETIVO – UEPA', '2017-04-19', 0),
(43, 'diaindio2017.jpg', 'DIA DO ÍNDIO – GALERIA DE FOTOS', 174, 113, 'diaindio2017', 'diaindio2017.jpg', 225, 300, 'DIA DO ÍNDIO – GALERIA DE FOTOS', '2017-04-20', 0),
(44, 'reuniaoconselho25042017.jpg', 'REUNIÃO – CONSELHO MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', 174, 113, 'reuniaoconselho25042017', 'reuniaoconselho25042017.jpg', 200, 300, 'REUNIÃO – CONSELHO MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', '2017-04-25', 0),
(45, 'encontroformacaosupervisores26042017 (4).jpg', 'II ENCONTRO DE FORMAÇÃO COM SUPERVISORES', 174, 113, 'encontroformacaosupervisores26042017', 'encontroformacaosupervisores26042017 (4).jpg', 225, 300, 'II ENCONTRO DE FORMAÇÃO COM SUPERVISORES', '2017-04-26', 0),
(46, 'onibusbibliotecaeletronortejacunda (1).jpg', 'ÔNIBUS BIBLIOTECA DA ELETRONORTE VISITA JACUNDÁ', 174, 113, 'onibusbibliotecaeletronortejacunda', 'onibusbibliotecaeletronortejacunda (1).jpg', 225, 300, 'ÔNIBUS BIBLIOTECA DA ELETRONORTE VISITA JACUNDÁ', '2017-04-26', 0),
(47, 'dianacionaleducacaocapa.jpg', '28 DE ABRIL DIA NACIONAL DA EDUCAÇÃO', 174, 113, 'dianacionaleducacao2017', 'dianacionaleducacaocapa.jpg', 225, 300, '28 DE ABRIL DIA NACIONAL DA EDUCAÇÃO', '2017-04-27', 0),
(48, 'reportagemnossojornal02052017 (1).jpg', 'SEMED É DESTAQUE EM REPORTAGEM DO “NOSSO JORNAL DE JACUNDÁ”.', 174, 113, 'reportagemnossojornal02052017', 'reportagemnossojornal02052017 (1).jpg', 200, 300, 'SEMED É DESTAQUE EM REPORTAGEM DO “NOSSO JORNAL DE JACUNDÁ”.', '2017-05-02', 0),
(49, '5demaiolinguaportuguesa2017_capa.jpg', '5 de Maio dia da Língua Portuguesa e da Cultura na CPLP', 174, 113, '5demaiolinguaportuguesa2017', '5demaiolinguaportuguesa2017_capa.jpg', 225, 300, '5 de Maio dia da Língua Portuguesa e da Cultura na CPLP', '2017-05-05', 0),
(50, '6demaiodiadamatematica2017_capa.jpg', '6 DE MAIO DIA DA MATEMÁTICA', 174, 113, '6demaiodiadamatematica2017', '6demaiodiadamatematica2017_capa.jpg', 225, 300, '6 DE MAIO DIA DA MATEMÁTICA', '2017-05-06', 0),
(51, 'notasemed206052017.jpg', 'NOTA OFICIAL - SECRETARIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ - 06/05/2017', 171, 113, 'notasemed06052017', 'notasemed206052017.jpg', 210, 290, 'NOTA OFICIAL - SECRETARIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ - 06/05/2017', '2017-05-07', 0),
(52, 'notasemed206052017.jpg', 'NOTA OFICIAL - SECRETARIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ - 08/05/2017', 171, 113, 'notasemed08052017', 'notasemed206052017.jpg', 210, 290, 'NOTA OFICIAL - SECRETARIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ - 08/05/2017', '2017-05-08', 0),
(53, 'informativouepa2017041 (1).jpg', 'COMUNICADO AOS CANDIDATOS SOBRE PROCESSO SELETIVO ESPECIAL 2017 - MODALIDADE A DISTÂNCIA', 171, 113, 'informativouepa10052017', 'informativouepa2017041 (1).jpg', 180, 280, 'COMUNICADO AOS CANDIDATOS SOBRE PROCESSO SELETIVO ESPECIAL 2017 - MODALIDADE A DISTÂNCIA', '2017-05-10', 0),
(54, 'diadasmaes11052017 (19).jpg', 'SECRETARIA DE EDUCAÇÃO SORTEIA BRINDES PARA MÃES EM EVENTO DA SEPOM', 171, 113, 'diadasmaes11052017', 'diadasmaes11052017 (19).jpg', 215, 300, 'SECRETARIA DE EDUCAÇÃO SORTEIA BRINDES PARA MÃES EM EVENTO DA SEPOM', '2017-05-12', 0),
(55, 'semedentregadoscoletes13052017 (7).jpg', 'PREFEITURA MUNICIPAL DE JACUNDÁ E SEMED REALIZAM ENTREGAS DE COLETES SALVA-VIDAS PARA ALUNOS RIBEIRINHOS', 171, 113, 'semedentregadoscoletes13052017', 'semedentregadoscoletes13052017 (7).jpg', 165, 290, 'PREFEITURA MUNICIPAL DE JACUNDÁ E SEMED REALIZAM ENTREGAS DE COLETES SALVA-VIDAS PARA ALUNOS RIBEIRINHOS', '2017-05-13', 0),
(56, '20demaiodiadopedagogocapa.jpg', '20 DE MAIO - DIA DO PADAGOGO', 171, 113, '20demaiodiadopedagogo2017', '20demaiodiadopedagogocapa.jpg', 240, 310, '20 DE MAIO - DIA DO PADAGOGO', '2017-05-18', 0),
(57, 'galeriadiadasmaescrereser2017 (43).jpg', 'GALERIA DE FOTOS - DIA DAS MÃES - C.E.I. CRER E SER', 171, 113, 'galeriadiadasmaescrereser2017', 'galeriadiadasmaescrereser2017 (43).jpg', 225, 300, 'GALERIA DE FOTOS - DIA DAS MÃES - C.E.I. CRER E SER', '2017-05-19', 0),
(58, 'galeriadiadasmaessaofrancisco2017 (1).jpg', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F. SÃO FRANCISCO', 171, 113, 'galeriadiadasmaessaofrancisco2017', 'galeriadiadasmaessaofrancisco2017 (1).jpg', 225, 300, 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F. SÃO FRANCISCO', '2017-05-19', 0),
(59, 'diadasmaesescolasdocampo2017 (51).jpg', 'COMEMORAÇÃO AO DIA DAS MÃES NAS ESCOLAS DO CAMPO DE JACUNDÁ', 171, 113, 'diadasmaesescolasdocampo2017', 'diadasmaesescolasdocampo2017 (51).jpg', 215, 300, 'COMEMORAÇÃO AO DIA DAS MÃES NAS ESCOLAS DO CAMPO DE JACUNDÁ', '2017-05-19', 0),
(60, 'dianacionalcombateexpsexualnocampo19052017 (21).jpg', 'DIA NACIONAL DE COMBATE AO ABUSO E EXPLORAÇÃO SEXUAL DE CRIANÇAS E ADOLESCENTES NO CAMPO', 171, 113, 'dianacionalcombateexpsexualnocampo19052017', 'dianacionalcombateexpsexualnocampo19052017 (21).jpg', 190, 300, 'DIA NACIONAL DE COMBATE AO ABUSO E EXPLORAÇÃO SEXUAL DE CRIANÇAS E ADOLESCENTES NO CAMPO', '2017-05-19', 0),
(61, 'galeriadiadasmaesarcoiris2017 (15).jpg', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.I.F ARCO-ÍRIS', 171, 113, 'galeriadiadasmaesarcoiris2017', 'galeriadiadasmaesarcoiris2017 (15).jpg', 225, 300, 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.I.F ARCO-ÍRIS', '2017-05-22', 0),
(62, 'galeriadiadasmaescristorei2017%20(2).jpg', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F CRISTO REI', 171, 113, 'galeriadiadasmaescristorei2017', 'galeriadiadasmaescristorei2017%20(2).jpg', 225, 300, 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F CRISTO REI', '2017-05-22', 0),
(63, 'galeriadiadasmaesdonaflor2017%20(31).jpg', 'GALERIA DE FOTOS - DIA DAS MÃES - C.E.I DONA FLOR', 171, 113, 'galeriadiadasmaesdonaflor2017', 'galeriadiadasmaesdonaflor2017%20(31).jpg', 225, 300, 'GALERIA DE FOTOS - DIA DAS MÃES - C.E.I DONA FLOR', '2017-05-22', 0),
(64, 'galeriadiadasmaesesterandrade2017%20(1).jpg', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F ESTER ANDRADE', 171, 113, 'galeriadiadasmaesesterandrade2017', 'galeriadiadasmaesesterandrade2017%20(1).jpg', 210, 300, 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F ESTER ANDRADE', '2017-05-22', 0),
(65, 'galeriadiadasmaespaulogermano2017%20(15).jpg', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F PAULO GERMANO', 171, 113, 'galeriadiadasmaespaulogermano2017', 'galeriadiadasmaespaulogermano2017%20(15).jpg', 225, 300, 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F PAULO GERMANO', '2017-05-22', 0),
(66, 'galeriadiadasmaesteotonio2017%20(74).jpg', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F TEOTÔNIO APINAGÉS', 171, 113, 'galeriadiadasmaesteotonio2017', 'galeriadiadasmaesteotonio2017%20(74).jpg', 210, 300, 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F TEOTÔNIO APINAGÉS', '2017-05-22', 0),
(67, 'galeriadiadasmaesjoaopinheiro2017%20(2).jpg', 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F CORONEL JOÃO PINHEIRO', 171, 113, 'galeriadiadasmaesjoaopinheiro2017', 'galeriadiadasmaesjoaopinheiro2017%20(2).jpg', 210, 300, 'GALERIA DE FOTOS - DIA DAS MÃES - E.M.E.F CORONEL JOÃO PINHEIRO', '2017-05-22', 0),
(68, 'jovenseadultoscristorei22052017%20(11).jpg', 'PROJETO MOTIVAÇÃO PARA “EDUCAÇÃO DE JOVENS E ADULTOS” – E.M.E.F. CRISTO REI', 171, 113, 'jovenseadultoscristorei22052017', 'jovenseadultoscristorei22052017%20(11).jpg', 210, 300, 'PROJETO MOTIVAÇÃO PARA “EDUCAÇÃO DE JOVENS E ADULTOS” – E.M.E.F. CRISTO REI', '2017-05-23', 0),
(69, 'galeriadiadasmaescentrosocialeducacional2017%20(1).jpg', 'GALERIA DE FOTOS - DIA DAS MÃES - CENTRO SOCIAL E EDUCACIONAL DE JACUNDÁ', 171, 113, 'galeriadiadasmaescentrosocialeducacional2017', 'galeriadiadasmaescentrosocialeducacional2017%20(1).jpg', 210, 300, 'GALERIA DE FOTOS - DIA DAS MÃES - CENTRO SOCIAL E EDUCACIONAL DE JACUNDÁ', '2017-05-24', 0),
(70, 'formacaosupervisores25052017%20(1).jpg', 'FORMAÇÃO PARA SUPERVISORES DO 6º AO 9º ANO / EJA', 171, 113, 'formacaosupervisores25052017', 'formacaosupervisores25052017%20(1).jpg', 210, 300, 'FORMAÇÃO PARA SUPERVISORES DO 6º AO 9º ANO / EJA', '2017-05-29', 0),
(71, '3plenariaconselhomunicipal26052017%20(1).jpg', 'III PLENÁRIA ORDINÁRIA AMPLIADA DO CONSELHO MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', 171, 113, '3plenariaconselhomunicipal26052017', '3plenariaconselhomunicipal26052017%20(1).jpg', 190, 280, 'III PLENÁRIA ORDINÁRIA AMPLIADA DO CONSELHO MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', '2017-05-30', 0),
(72, 'premioprofessoresdobrasilmec01062017%20(1).jpg', 'Prêmio Professores do Brasil', 171, 113, 'premioprofessoresdobrasilmec01062017', 'premioprofessoresdobrasilmec01062017%20(1).jpg', 240, 310, 'Prêmio Professores do Brasil', '2017-06-01', 0),
(73, 'IVFORUMMUNICIPALDEEDUCACAO02062017%20(1).jpg', 'IV FÓRUM MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', 174, 113, 'IVFORUMMUNICIPALDEEDUCACAO02062017', 'IVFORUMMUNICIPALDEEDUCACAO02062017%20(1).jpg', 225, 300, 'IV FÓRUM MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', '2017-06-05', 0),
(74, 'informativouepa2017041%20(1).jpg', 'DATA E LOCAL DO PROCESSO SELETIVO UEPA / UAB', 171, 113, 'inscricoesuepaatencao07062017', 'informativouepa2017041%20(1).jpg', 225, 300, 'DATA E LOCAL DO PROCESSO SELETIVO UEPA / UAB', '2017-06-07', 0),
(75, 'TRABALHOCOMALINGUAGEMORALE%20ESCRITANAEDUCACAOINFANTIL08062017%20(4).jpg', 'O TRABALHO COM A LINGUAGEM ORAL E ESCRITA NA EDUCAÇÃO INFANTIL', 171, 113, 'TRABALHOCOMALINGUAGEMORALE%20ESCRITANAEDUCACAOINFANTIL08062017', 'TRABALHOCOMALINGUAGEMORALE%20ESCRITANAEDUCACAOINFANTIL08062017%20(4).jpg', 210, 300, 'O TRABALHO COM A LINGUAGEM ORAL E ESCRITA NA EDUCAÇÃO INFANTIL', '2017-06-08', 0),
(76, 'ARRAIAWANDERLINALOPES12062017%20(1).jpg', '\"ARRAIÁ\" - E.M.E.F. WANDERLINA LOPES', 171, 113, 'ARRAIAWANDERLINALOPES12062017', 'ARRAIAWANDERLINALOPES12062017%20(1).jpg', 220, 300, '\"ARRAIÁ\" - E.M.E.F. WANDERLINA LOPES', '2017-06-12', 0),
(77, 'PAULOGERMANORECEBEVISITAILUSTRE12062017%20(2).jpg', 'E.M.E.F. PAULO GERMANO RECEBE VISITA ILUSTRE', 171, 113, 'PAULOGERMANORECEBEVISITAILUSTRE12062017', 'PAULOGERMANORECEBEVISITAILUSTRE12062017%20(2).jpg', 220, 300, 'E.M.E.F. PAULO GERMANO RECEBE VISITA ILUSTRE', '2017-06-13', 0),
(78, 'SECRETARIADEEDUCACAOVISITAPROJETOLITERARIOIRMADOROTHYSTANG%20(1).jpg', 'SECRETÁRIA MUNICIPAL DE EDUCAÇÃO VISITA PROJETO LITERÁRIO NA E.E.E.M. IRMÃ DOROTHY STANG', 171, 113, 'SECRETARIADEEDUCACAOVISITAPROJETOLITERARIOIRMADOROTHYSTANG', 'SECRETARIADEEDUCACAOVISITAPROJETOLITERARIOIRMADOROTHYSTANG%20(1).jpg', 190, 300, 'SECRETÁRIA MUNICIPAL DE EDUCAÇÃO VISITA PROJETO LITERÁRIO NA E.E.E.M. IRMÃ DOROTHY STANG', '2017-06-14', 0),
(79, 'ARRAIACAMINHOPARAOFUTURO16062017%20(25).jpg', '\"ARRAIÁ\" - E.M.E.F. CAMINHO PARA O FUTURO', 171, 113, 'ARRAIACAMINHOPARAOFUTURO16062017', 'ARRAIACAMINHOPARAOFUTURO16062017%20(25).jpg', 220, 300, '\"ARRAIÁ\" - E.M.E.F. CAMINHO PARA O FUTURO', '2017-06-16', 0),
(80, 'ARRAIACRIANCAFELIZ16062017%20(1).jpg', '\"ARRAIÁ\" - E.M.E.F. CRIANÇA FELIZ', 171, 113, 'ARRAIACRIANCAFELIZ16062017', 'ARRAIACRIANCAFELIZ16062017%20(1).jpg', 220, 300, '\"ARRAIÁ\" - E.M.E.F. CRIANÇA FELIZ', '2017-06-16', 0),
(81, 'ARRAIATRANCREDONEVES16062017%20(1).jpg', '\"ARRAIÁ\" - E.M.E.F. TANCREDO NEVES', 171, 113, 'ARRAIATRANCREDONEVES16062017', 'ARRAIATRANCREDONEVES16062017%20(1).jpg', 220, 300, '\"ARRAIÁ\" - E.M.E.F. TANCREDO NEVES', '2017-06-16', 0),
(82, 'ARRAIAPAULOGERMANO19062017%20(1).jpg', '', 171, 113, 'ARRAIAPAULOGERMANO19062017', 'ARRAIAPAULOGERMANO19062017%20(1).jpg', 220, 300, '\"ARRAIÁ\" - E.M.E.F. PAULO GERMANO', '2017-06-19', 0),
(83, 'ARRAIATEOTONIOAPINAGES19062017%20(1).jpg', '\"ARRAIÁ\" - E.M.E.F. TEOTÔNIO APINAGÉS', 174, 113, 'ARRAIATEOTONIOAPINAGES19062017', 'ARRAIATEOTONIOAPINAGES19062017%20(1).jpg', 225, 300, '\"ARRAIÁ\" - E.M.E.F. TEOTÔNIO APINAGÉS', '2017-06-19', 0),
(84, 'ARRAIALUZDOAMANHA19062017%20(1).jpg', '\"ARRAIÁ\" - E.M.E.F. LUZ DO AMANHÃ', 174, 113, 'ARRAIALUZDOAMANHA19062017', 'ARRAIALUZDOAMANHA19062017%20(1).jpg', 225, 300, '\"ARRAIÁ\" - E.M.E.F. LUZ DO AMANHÃ', '2017-06-19', 0),
(85, 'ARRAIAROSALIACORREIA19062017%20(1).jpg', '\"ARRAIÁ\" - E.M.E.F. ROSÁLIA CORREIA', 171, 113, 'ARRAIAROSALIACORREIA19062017', 'ARRAIAROSALIACORREIA19062017%20(1).jpg', 225, 300, '\"ARRAIÁ\" - E.M.E.F. ROSÁLIA CORREIA', '2017-06-19', 0),
(86, 'ARRAIAJARDIMDASACACIAS19062017%20(1).jpg', '\"ARRAIÁ\" - ESCOLA JARDIM DAS ACÁCIAS', 174, 113, 'ARRAIAJARDIMDASACACIAS19062017', 'ARRAIAJARDIMDASACACIAS19062017%20(1).jpg', 225, 300, '\"ARRAIÁ\" - ESCOLA JARDIM DAS ACÁCIAS', '2017-06-19', 0),
(87, 'APRESENTACOESCOLETIVASNAEDINFANTIL21062017%20(1).jpg', 'APRESENTAÇÕES COLETIVAS NA ED. INFANTIL', 171, 113, 'APRESENTACOESCOLETIVASNAEDINFANTIL21062017', 'APRESENTACOESCOLETIVASNAEDINFANTIL21062017%20(1).jpg', 225, 300, 'APRESENTAÇÕES COLETIVAS NA ED. INFANTIL', '2017-06-21', 0),
(88, 'SEMEDVISITAVILAPAJE21062017%20(1).jpg', 'SEMED VISITA VILA PAJÉ', 171, 113, 'SEMEDVISITAVILAPAJE21062017', 'SEMEDVISITAVILAPAJE21062017%20(1).jpg', 225, 300, 'SEMED VISITA VILA PAJÉ', '2017-06-21', 0),
(89, 'VCONFERENCIAMUNICIPALDEEDUCACAO26062017%20(1).jpg', 'V CONFERÊNCIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', 171, 113, 'VCONFERENCIAMUNICIPALDEEDUCACAO26062017', 'VCONFERENCIAMUNICIPALDEEDUCACAO26062017%20(1).jpg', 225, 300, 'V CONFERÊNCIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ', '2017-06-26', 0),
(90, 'ENCONTROCULTURALESCOLAINDIGENAKARIAWASSUGUARANI27062017%20(41).jpg', 'I ENCONTRO CULTURAL NA ESCOLA INDÍGENA KARIAWASSU GUARANI', 171, 113, 'ENCONTROCULTURALESCOLAINDIGENAKARIAWASSUGUARANI27062017', 'ENCONTROCULTURALESCOLAINDIGENAKARIAWASSUGUARANI27062017%20(41).jpg', 210, 300, 'I ENCONTRO CULTURAL NA ESCOLA INDÍGENA KARIAWASSU GUARANI', '2017-06-27', 0),
(91, 'ARRAIAPETERPAN27062017%20(1).jpg', '\"ARRAIÁ\" - E.M.E.I.F. PETER PAN', 171, 113, 'ARRAIAPETERPAN27062017', 'ARRAIAPETERPAN27062017%20(1).jpg', 220, 300, '\"ARRAIÁ\" - E.M.E.I.F. PETER PAN', '2017-06-28', 0),
(92, 'PROJETOINDENTIDADEEAUTONOMIACRERESER28062017%20(1).jpg', 'PROJETO IDENTIDADE E AUTONOMIA – C.E.I. CRER E SER', 171, 113, 'PROJETOINDENTIDADEEAUTONOMIACRERESER28062017', 'PROJETOINDENTIDADEEAUTONOMIACRERESER28062017%20(1).jpg', 220, 300, 'PROJETO IDENTIDADE E AUTONOMIA – C.E.I. CRER E SER', '2017-06-29', 0),
(93, 'ENCONTROCOMSUPERVISORESDO1AO5ANO29062017%20(1).jpg', 'ENCONTRO COM SUPERVISORES DO 1º AO 5º ANO', 171, 113, 'ENCONTROCOMSUPERVISORESDO1AO5ANO29062017', 'ENCONTROCOMSUPERVISORESDO1AO5ANO29062017%20(1).jpg', 220, 300, 'ENCONTRO COM SUPERVISORES DO 1º AO 5º ANO', '2017-06-30', 0),
(94, 'ARRAIATEODOMIRONETO29062017%20(1).jpg', '\"ARRAIÁ\" - E.M.E.F TEODOMIRO NETO', 171, 113, 'ARRAIATEODOMIRONETO29062017', 'ARRAIATEODOMIRONETO29062017%20(1).jpg', 220, 300, '\"ARRAIÁ\" - E.M.E.F TEODOMIRO NETO', '2017-07-01', 0),
(95, 'SEMEDPROJETOMUNDIAR29062017%20(1).JPG', 'SEMED PRESTIGIA FORMANDOS DO PROJETO MUNDIAR', 171, 113, 'SEMEDPROJETOMUNDIAR29062017', 'SEMEDPROJETOMUNDIAR29062017%20(1).JPG', 220, 300, 'SEMED PRESTIGIA FORMANDOS DO PROJETO MUNDIAR', '2017-07-02', 0),
(96, 'ENCEJJANACIONAL29062017%20(1).jpg', 'ENCCEJA NACIONAL 2017', 171, 113, 'ENCEJJANACIONAL29062017', 'ENCEJJANACIONAL29062017%20(1).jpg', 220, 300, 'ENCCEJA NACIONAL 2017', '2017-07-02', 0),
(97, 'CARTADEFERIAS302062017CAPA.jpg', 'CARTA DE FÉRIAS - SEMED', 171, 113, 'CARTADEFERIAS30062017', 'CARTADEFERIAS302062017CAPA.jpg', 220, 300, 'CARTA DE FÉRIAS - SEMED', '2017-07-05', 0),
(98, 'ARRAIAJOAOPINHEIRO04072017%20(2).jpg', '\"ARRAIÁ\" - E.M.E.F. CORONEL JOÃO PINHEIRO', 171, 113, 'ARRAIAJOAOPINHEIRO04072017', 'ARRAIAJOAOPINHEIRO04072017%20(2).jpg', 220, 300, '\"ARRAIÁ\" - E.M.E.F. CORONEL JOÃO PINHEIRO', '2017-07-03', 0),
(99, 'GALERIADONAFLOR04072017%20(1).jpg', 'EDUCAÇÃO INFANTIL: ENCONTRO PEDAGÓGICO PARA SOCIALIZAÇÃO DAS FORMAÇÕES', 171, 113, 'GALERIADONAFLOR04072017', 'GALERIADONAFLOR04072017%20(1).jpg', 190, 300, 'EDUCAÇÃO INFANTIL: ENCONTRO PEDAGÓGICO PARA SOCIALIZAÇÃO DAS FORMAÇÕES', '2017-07-04', 0),
(100, 'CRISTOREIINAUGURANOVASINSTALACOES04072017%20(8).jpg', 'E.M.E.F. CRISTO REI INAUGURA NOVAS INSTALAÇÕES', 171, 113, 'CRISTOREIINAUGURANOVASINSTALACOES04072017', 'CRISTOREIINAUGURANOVASINSTALACOES04072017%20(8).jpg', 220, 300, 'E.M.E.F. CRISTO REI INAUGURA NOVAS INSTALAÇÕES', '2017-07-04', 0),
(101, 'PROJETONOSSAESCOLATAMBEMLECRISTOREI04072017%20(9).jpg', 'PROJETO: NOSSA ESCOLA TAMBÉM LÊ – E.M.E.F. CRISTO REI', 171, 113, 'PROJETONOSSAESCOLATAMBEMLECRISTOREI04072017', 'PROJETONOSSAESCOLATAMBEMLECRISTOREI04072017%20(9).jpg', 220, 300, 'PROJETO: NOSSA ESCOLA TAMBÉM LÊ – E.M.E.F. CRISTO REI', '2017-07-04', 0),
(102, 'ARRAIACEIDONAFLOR04072017%20(1).jpg', '\"ARRAIÁ\" - C.E.I. DONA FLOR', 171, 113, 'ARRAIACEIDONAFLOR04072017', 'ARRAIACEIDONAFLOR04072017%20(1).jpg', 220, 300, '\"ARRAIÁ\" - C.E.I. DONA FLOR', '2017-07-04', 0),
(103, 'voltaasaulas31072017%20(1).jpg', 'VOLTA ÀS AULAS - <font face=\"Georgia, Times New Roman, Times, serif\">II</font>/2017', 171, 113, 'voltaasaulas31072017', 'voltaasaulas31072017%20(1).jpg', 225, 300, 'VOLTA ÀS AULAS - <font face=\"Georgia, Times New Roman, Times, serif\">II</font>/2017', '2017-07-31', 0),
(104, 'parfor07082017%20(7).jpg', 'PARFOR – JACUNDÁ RECEBE VISITA ILUSTRE', 171, 113, 'parfor07082017', 'parfor07082017%20(7).jpg', 225, 300, 'PARFOR – JACUNDÁ RECEBE VISITA ILUSTRE', '2017-08-07', 0),
(105, 'DECAMPREALIZAREUNIAOCOMPROFESSORESDOSOME%20(2).jpg', 'DECAMP REALIZA REUNIÃO COM PROFESSORES DO SOME', 171, 113, 'DECAMPREALIZAREUNIAOCOMPROFESSORESDOSOME', 'DECAMPREALIZAREUNIAOCOMPROFESSORESDOSOME%20(2).jpg', 225, 300, 'DECAMP REALIZA REUNIÃO COM PROFESSORES DO SOME', '2017-08-07', 0),
(106, 'GALERIADEFOTOSDIADOSPAISCEIDONAFLOR21082017%20(36).jpg', 'GALERIA DE FOTOS – DIA DOS PAIS C.E.I. DONA FLOR', 171, 113, 'GALERIADEFOTOSDIADOSPAISCEIDONAFLOR21082017', 'GALERIADEFOTOSDIADOSPAISCEIDONAFLOR21082017%20(36).jpg', 225, 300, 'GALERIA DE FOTOS – DIA DOS PAIS C.E.I. DONA FLOR', '2017-08-20', 0),
(107, 'SEMEDEMATERIADONOSSOJORNALDEJACUNDA21082017capa.jpg', 'SEMED É MATÉRIA DO \'\'NOSSO JORNAL DE JACUNDÁ\'\'', 171, 113, 'SEMEDEMATERIADONOSSOJORNALDEJACUNDA21082017', 'SEMEDEMATERIADONOSSOJORNALDEJACUNDA21082017capa.jpg', 225, 300, 'SEMED É MATÉRIA DO \'\'NOSSO JORNAL DE JACUNDÁ\'\'', '2017-08-21', 0),
(108, 'IWORKSHOPDAEDUCACAOESPECIALEINCLUSIVA21082017Capa.jpg', 'I WORKSHOP DA EDUCAÇÃO ESPECIAL E INCLUSIVA', 171, 113, 'IWORKSHOPDAEDUCACAOESPECIALEINCLUSIVA21082017', 'IWORKSHOPDAEDUCACAOESPECIALEINCLUSIVA21082017Capa.jpg', 225, 300, 'I WORKSHOP DA EDUCAÇÃO ESPECIAL E INCLUSIVA', '2017-08-22', 0),
(109, 'DECAMPrealizaplanejamentopedagogicobimestralnaEscolaBoaVentura21082017%20(10).jpg', 'DECAMP REALIZA PLANEJAMENTO PEDAGÓGICO BIMESTREAL NA ESCOLA BOA VENTURA – VILA SANTA CLARA', 171, 113, 'DECAMPrealizaplanejamentopedagogicobimestralnaEscolaBoaVentura21082017', 'DECAMPrealizaplanejamentopedagogicobimestralnaEscolaBoaVentura21082017%20(10).jpg', 190, 300, 'DECAMP REALIZA PLANEJAMENTO PEDAGÓGICO BIMESTREAL NA ESCOLA BOA VENTURA – VILA SANTA CLARA', '2017-08-23', 0),
(110, 'concursomissemisterestudantil22082017%20(0).jpg', 'CONCURSO MISS & MISTER ESTUDANTIL', 171, 113, 'concursomissemisterestudantil22082017', 'concursomissemisterestudantil22082017%20(0).jpg', 220, 300, 'CONCURSO MISS & MISTER ESTUDANTIL', '2017-08-24', 0),
(111, 'SEMEDCOMEMORADIADOCOORDENADORPEDAGOGICO23082017%20(1).JPG', 'SEMED COMEMORA DIA DO COORDENADOR PEDAGÓGICO', 171, 113, 'SEMEDCOMEMORADIADOCOORDENADORPEDAGOGICO23082017', 'SEMEDCOMEMORADIADOCOORDENADORPEDAGOGICO23082017%20(1).JPG', 220, 300, 'SEMED COMEMORA DIA DO COORDENADOR PEDAGÓGICO', '2017-08-25', 0),
(112, 'FAMILIAEESCOLAEMEFSERGINHOCORREIA24082017%20(1).JPG', 'FAMÍLIA E ESCOLA – E.M.E.F. SERGINHO CORREIA', 171, 113, 'FAMILIAEESCOLAEMEFSERGINHOCORREIA24082017', 'FAMILIAEESCOLAEMEFSERGINHOCORREIA24082017%20(1).JPG', 220, 300, 'FAMÍLIA E ESCOLA – E.M.E.F. SERGINHO CORREIA', '2017-08-26', 0),
(113, 'SEMEDREALIZAOFICINADOSISPAECOMPROFESSORES28082017%20(2).JPG', 'SEMED REALIZA OFICINA DO SISPAE COM PROFESSORES', 171, 113, 'SEMEDREALIZAOFICINADOSISPAECOMPROFESSORES28082017', 'SEMEDREALIZAOFICINADOSISPAECOMPROFESSORES28082017%20(2).JPG', 220, 300, 'SEMED REALIZA OFICINA DO SISPAE COM PROFESSORES', '2017-08-28', 0),
(114, 'educacaoinfantilCapa.jpg', 'EDUCAÇÃO INFANTIL', 171, 113, 'educacaoinfantil28082017', 'educacaoinfantilCapa.jpg', 225, 300, 'EDUCAÇÃO INFANTIL', '2017-08-28', 0),
(115, 'EMEFPROFMDAGLORIARPAIXAOREALIZAPROJETODEFOLCLORE29082017%20(2).JPG', 'E.M.E.F. PROFª. Mª. DA GLÓRIA R. PAIXÃO REALIZA PROJETO DE FOLCLORE', 171, 113, 'EMEFPROFMDAGLORIARPAIXAOREALIZAPROJETODEFOLCLORE29082017', 'EMEFPROFMDAGLORIARPAIXAOREALIZAPROJETODEFOLCLORE29082017%20(2).JPG', 220, 300, 'E.M.E.F. PROFª. Mª. DA GLÓRIA R. PAIXÃO REALIZA PROJETO DE FOLCLORE', '2017-08-29', 0),
(116, 'DECAMPPARTICIPADACONSTRUCAOPPPDAESCOLAINDIGENAKARAIGAUXU29082017%20(6).jpg', 'DECAMP PARTICIPA DA CONSTRUÇÃO DO ‘PPP’ DA ESCOLA INDÍGENA KARAÍ GUAXU', 171, 113, 'DECAMPPARTICIPADACONSTRUCAOPPPDAESCOLAINDIGENAKARAIGAUXU29082017', 'DECAMPPARTICIPADACONSTRUCAOPPPDAESCOLAINDIGENAKARAIGAUXU29082017%20(6).jpg', 220, 300, 'DECAMP PARTICIPA DA CONSTRUÇÃO DO ‘PPP’ DA ESCOLA INDÍGENA KARAÍ GUAXU', '2017-08-30', 0),
(117, 'informativouepa30082017%20(1).JPG', 'INFORMATIVO PROCESSO SELETIVO UEPA', 171, 113, 'informativouepa30082017', 'informativouepa30082017%20(1).JPG', 220, 300, 'INFORMATIVO PROCESSO SELETIVO UEPA', '2017-08-31', 0),
(118, 'NOTADEESCLARECIMENTO%20(1).JPG', 'NOTA DE ESCLARECIMENTO', 171, 113, 'NOTADEESCLARECIMENTO30082017', 'NOTADEESCLARECIMENTO%20(1).JPG', 220, 300, 'NOTA DE ESCLARECIMENTO', '2017-09-01', 0),
(119, '25DEAGOSTODIANACIONALDAEDUCACAOINFANTIL01092017%20(2).jpg', '25 DE AGOSTO - DIA NACIONAL DA EDUCAÇÃO INFANTIL', 171, 113, '25DEAGOSTODIANACIONALDAEDUCACAOINFANTIL01092017', '25DEAGOSTODIANACIONALDAEDUCACAOINFANTIL01092017%20(2).jpg', 220, 300, '25 DE AGOSTO - DIA NACIONAL DA EDUCAÇÃO INFANTIL', '2017-09-02', 0),
(120, 'OFICINACONSTRUCAODEJOGOSMATEMATICOSPARAEDUCACAOINFANTIL01092017%20(1).jpg', 'OFICINA: CONSTRUÇÃO DE JOGOS MATEMÁTICOS PARA EDUCAÇÃO INFANTIL', 171, 113, 'OFICINACONSTRUCAODEJOGOSMATEMATICOSPARAEDUCACAOINFANTIL01092017', 'OFICINACONSTRUCAODEJOGOSMATEMATICOSPARAEDUCACAOINFANTIL01092017%20(1).jpg', 220, 300, 'OFICINA: CONSTRUÇÃO DE JOGOS MATEMÁTICOS PARA EDUCAÇÃO INFANTIL', '2017-09-02', 0),
(121, 'profissionaleducacaofisicacapa.jpg', '1º de Setembro: Dia do Profissional de Educação Física', 171, 113, 'DIADOPRIFISSIONALDEEDUCACAOFISICA01092017', 'profissionaleducacaofisicacapa.jpg', 220, 300, '1º de Setembro: Dia do Profissional de Educação Física', '2017-09-03', 0),
(122, 'Listao_classificados_UAB2017.jpg', 'LISTÃO DOS CLASSIFICADOS - UEPA - JACUNDÁ', 171, 113, 'LISTAODOSCLASSIFICADOSUEPAJACUNDA04092017', 'Listao_classificados_UAB2017.jpg', 220, 300, 'LISTÃO DOS CLASSIFICADOS - UEPA - JACUNDÁ', '2017-09-04', 0),
(123, 'COMUNICADO0509207%20(1).jpg', 'COMUNICADO', 171, 113, 'COMUNICADO05092017', 'COMUNICADO0509207%20(1).jpg', 220, 300, 'COMUNICADO', '2017-09-05', 0),
(124, 'desfile07092017.jpg', 'DESFILE CÍVICO – SETE DE SETEMBRO', 171, 113, 'desfilecivico07092017', 'desfile07092017.jpg', 220, 300, 'DESFILE CÍVICO – SETE DE SETEMBRO', '2017-09-11', 0),
(125, 'MUTIRAONAEMEIFPETERPANANEXOBURITI11092017%20(2).jpg', 'MUTIRÃO NA E.M.E.I.F. PETER PAN – ANEXO BURITI', 171, 113, 'MUTIRAONAEMEIFPETERPANANEXOBURITI11092017', 'MUTIRAONAEMEIFPETERPANANEXOBURITI11092017%20(2).jpg', 220, 300, 'MUTIRÃO NA E.M.E.I.F. PETER PAN – ANEXO BURITI', '2017-09-11', 0),
(126, 'obmep14092017%20(1).JPG', 'OBMEP - 2º FASE', 171, 113, 'obmep14092017', 'obmep14092017%20(1).JPG', 220, 300, 'OBMEP - 2º FASE', '2017-09-14', 0),
(127, 'plenariappa15092017%20(28).JPG', 'AUDIÊNCIA PÚBLICA PARA APRESENTAÇÃO DA PROPOSTA DO PPA DA SECRETARIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ (2018-2021)', 150, 80, 'plenariappa15092017', 'plenariappa15092017%20(28).JPG', 160, 270, 'AUDIÊNCIA PÚBLICA PARA APRESENTAÇÃO DA PROPOSTA DO PPA DA SECRETARIA MUNICIPAL DE EDUCAÇÃO DE JACUNDÁ (2018-2021)', '2017-09-15', 0),
(128, 'NOTADEUTILIDADEPUBLICAUAB19092017%20(1).jpg', 'NOTA DE UTILIDADE PÚBLICA', 171, 113, 'NOTADEUTILIDADEPUBLICAUAB19092017', 'NOTADEUTILIDADEPUBLICAUAB19092017%20(1).jpg', 220, 300, 'NOTA DE UTILIDADE PÚBLICA', '2017-09-19', 0),
(129, 'ENCONTRODEFORMACAOMATEMATICAEREALIDADE19092017%20(1).jpg', 'ENCONTRO DE FORMAÇÃO: \"MATEMÁTICA E REALIDADE\"', 171, 113, 'ENCONTRODEFORMACAOMATEMATICAEREALIDADE19092017', 'ENCONTRODEFORMACAOMATEMATICAEREALIDADE19092017%20(1).jpg', 220, 300, 'ENCONTRO DE FORMAÇÃO: \"MATEMÁTICA E REALIDADE\"', '2017-09-19', 0),
(130, 'IWORKSHOPDEPAISDAEMEFTEOTONIOAPINAGES20092017%20(1).JPG', 'I WORKSHOP DE PAIS DA E.M.E.F. TEOTÔNIO APINAGÉS', 171, 113, 'IWORKSHOPDEPAISDAEMEFTEOTONIOAPINAGES20092017', 'IWORKSHOPDEPAISDAEMEFTEOTONIOAPINAGES20092017%20(1).JPG', 225, 300, 'I WORKSHOP DE PAIS DA E.M.E.F. TEOTÔNIO APINAGÉS', '2017-09-20', 0),
(131, 'IENCONTROFAMILIARROSALIACORREIA25092017%20(1).JPG', 'I ENCONTRO FAMILIAR – E.M.E.F. ROSÁLIA CORREIA', 171, 113, 'IENCONTROFAMILIARROSALIACORREIA25092017', 'IENCONTROFAMILIARROSALIACORREIA25092017%20(1).JPG', 220, 300, 'I ENCONTRO FAMILIAR – E.M.E.F. ROSÁLIA CORREIA', '2017-09-25', 0),
(132, 'secretarioescola.jpg', 'DIA DO SECRETÁRIO ESCOLAR - 30 DE SETEMBRO', 171, 113, 'diadosecretarioescolar30desetembro29092017', 'secretarioescola.jpg', 225, 300, 'DIA DO SECRETÁRIO ESCOLAR - 30 DE SETEMBRO', '2017-09-29', 0),
(133, 'SEMEDREALIZAATENDIMENTONUTRICIONALAOSALUNOS02102017%20(1).jpg', 'SEMED REALIZA ATENDIMENTO NUTRICIONAL AOS ALUNOS', 171, 113, 'SEMEDREALIZAATENDIMENTONUTRICIONALAOSALUNOS02102017', 'SEMEDREALIZAATENDIMENTONUTRICIONALAOSALUNOS02102017%20(1).jpg', 220, 300, 'SEMED REALIZA ATENDIMENTO NUTRICIONAL AOS ALUNOS', '2017-10-02', 0),
(134, 'IIMOSTRADEATIVIDADESPEDAGOGICASESTERANDRADE10102017%20(1).JPG', 'II MOSTRA DE ATIVIDADES PEDAGÓGICAS - E.M.E.F. ESTER ANDRADE', 171, 113, 'IIMOSTRADEATIVIDADESPEDAGOGICASESTERANDRADE10102017', 'IIMOSTRADEATIVIDADESPEDAGOGICASESTERANDRADE10102017%20(1).JPG', 205, 300, 'II MOSTRA DE ATIVIDADES PEDAGÓGICAS - E.M.E.F. ESTER ANDRADE', '2017-10-10', 0),
(135, 'GALERIADEFOTOSDIADASCRIANCASARCOIRIS11102017%20(1).JPG', 'GALERIA DE FOTOS – DIA DAS CRIANÇAS – E.M.E.I.F. ARCO-ÍRIS', 171, 113, 'GALERIADEFOTOSDIADASCRIANCASARCOIRIS11102017', 'GALERIADEFOTOSDIADASCRIANCASARCOIRIS11102017%20(1).JPG', 225, 300, 'GALERIA DE FOTOS – DIA DAS CRIANÇAS – E.M.E.I.F. ARCO-ÍRIS', '2017-10-11', 0),
(136, 'GALERIADEFOTOSDIADASCRIANCASCELJOAOPINHEIRO%20(1).JPG', 'GALERIA DE FOTOS – DIA DAS CRIANÇAS – E.M.E.F. CEL. JOÃO PINHEIRO', 171, 113, 'GALERIADEFOTOSDIADASCRIANCASCELJOAOPINHEIRO', 'GALERIADEFOTOSDIADASCRIANCASCELJOAOPINHEIRO%20(1).JPG', 215, 300, 'GALERIA DE FOTOS – DIA DAS CRIANÇAS – E.M.E.F. CEL. JOÃO PINHEIRO', '2017-10-11', 0),
(137, 'GALERIADEFOTOSDIADASCRIANCASROSALIACORREIA16102017%20(1).JPG', 'GALERIA DE FOTOS - DIA DAS CRIANÇAS - E.M.E.F. ROSÁLIA CORREIA', 171, 113, 'GALERIADEFOTOSDIADASCRIANCASROSALIACORREIA16102017', 'GALERIADEFOTOSDIADASCRIANCASROSALIACORREIA16102017%20(1).JPG', 220, 300, 'GALERIA DE FOTOS - DIA DAS CRIANÇAS - E.M.E.F. ROSÁLIA CORREIA', '2017-10-16', 0),
(138, 'GALERIADEFOTOSDIADASCRIANCASCRIANCAFELIZ16102017%20(1).JPG', 'GALERIA DE FOTOS - DIA DAS CRIANÇAS - E.M.E.F. CRIANÇA FELIZ', 171, 113, 'GALERIADEFOTOSDIADASCRIANCASCRIANCAFELIZ16102017', 'GALERIADEFOTOSDIADASCRIANCASCRIANCAFELIZ16102017%20(1).JPG', 220, 300, 'GALERIA DE FOTOS - DIA DAS CRIANÇAS - E.M.E.F. CRIANÇA FELIZ', '2017-10-16', 0),
(139, 'GALERIADEFOTOSDIADASCRIANCASCSEDEJACUNDA16102017%20(1).JPG', 'GALERIA DE FOTOS - DIA DAS CRIANÇAS- C.S.E. DE JACUNDÁ', 171, 113, 'GALERIADEFOTOSDIADASCRIANCASCSEDEJACUNDA16102017', 'GALERIADEFOTOSDIADASCRIANCASCSEDEJACUNDA16102017%20(1).JPG', 220, 300, 'GALERIA DE FOTOS - DIA DAS CRIANÇAS- C.S.E. DE JACUNDÁ', '2017-10-16', 0),
(140, 'CAMARAMUNICIPALDEJACUNDAFAZHOMENAGEMAOSPROFESSORES17102017%20(1).JPG', 'CÂMARA MUNICIPAL DE JACUNDÁ FAZ HOMENAGEM AOS PROFESSORES', 171, 113, 'CAMARAMUNICIPALDEJACUNDAFAZHOMENAGEMAOSPROFESSORES17102017', 'CAMARAMUNICIPALDEJACUNDAFAZHOMENAGEMAOSPROFESSORES17102017%20(1).JPG', 220, 300, 'CÂMARA MUNICIPAL DE JACUNDÁ FAZ HOMENAGEM AOS PROFESSORES', '2017-10-17', 0),
(141, 'NOTADEFALECIMENTO17102017%20(1).JPG', 'NOTA DE FALECIMENTO', 171, 113, 'NOTADEFALECIMENTO17102017', 'NOTADEFALECIMENTO17102017%20(1).JPG', 230, 315, 'NOTA DE FALECIMENTO', '2017-10-17', 0),
(142, 'SEMEDREALIZAENTREGADEVENTILADORESEMESCOLAS25102017%20(1).jpg', 'SEMED REALIZA ENTREGA DE VENTILADORES EM ESCOLAS', 171, 113, 'SEMEDREALIZAENTREGADEVENTILADORESEMESCOLAS25102017', 'SEMEDREALIZAENTREGADEVENTILADORESEMESCOLAS25102017%20(1).jpg', 220, 300, 'SEMED REALIZA ENTREGA DE VENTILADORES EM ESCOLAS', '2017-10-25', 0),
(143, 'BAILEDAPRIMAVERAEMHOMENAGEMAOSPROFISSIONAISDAEDUCACAO26102017%20(158).JPG', 'BAILE DA PRIMAVERA EM HOMENAGEM AOS PROFISSIONAIS DA EDUCAÇÃO', 171, 113, 'BAILEDAPRIMAVERAEMHOMENAGEMAOSPROFISSIONAISDAEDUCACAO26102017', 'BAILEDAPRIMAVERAEMHOMENAGEMAOSPROFISSIONAISDAEDUCACAO26102017%20(158).JPG', 220, 300, 'BAILE DA PRIMAVERA EM HOMENAGEM AOS PROFISSIONAIS DA EDUCAÇÃO', '2017-10-26', 0),
(144, 'PROFISSIONAISNOTA10DAEDUCACAO201726102017%20(2).JPG', 'PROFISSIONAIS NOTA 10 DA EDUCAÇÃO – 2017', 171, 113, 'PROFISSIONAISNOTA10DAEDUCACAO201726102017', 'PROFISSIONAISNOTA10DAEDUCACAO201726102017%20(2).JPG', 220, 300, 'PROFISSIONAIS NOTA 10 DA EDUCAÇÃO – 2017', '2017-10-26', 0),
(145, 'SEMEDESINTEPPPROMOVEMWORKSHOPDEREDACAOPARAOENEM30102017%20(1).JPG', 'SEMED E SINTEPP PROMOVEM WORKSHOP DE REDAÇÃO PARA O ENEM', 171, 113, 'SEMEDESINTEPPPROMOVEMWORKSHOPDEREDACAOPARAOENEM30102017', 'SEMEDESINTEPPPROMOVEMWORKSHOPDEREDACAOPARAOENEM30102017%20(1).JPG', 200, 300, 'SEMED E SINTEPP PROMOVEM WORKSHOP DE REDAÇÃO PARA O ENEM', '2017-10-30', 0),
(146, 'SEMEDPROMOVEREABERTURADAUABUNIVERSIDADEABERTADOBRASILEMJACUNDA08112017%20(1).JPG', 'SEMED PROMOVE REABERTURA DA UAB - UNIVERSIDADE ABERTA DO BRASIL EM JACUNDÁ', 171, 113, 'SEMEDPROMOVEREABERTURADAUABUNIVERSIDADEABERTADOBRASILEMJACUNDA08112017', 'SEMEDPROMOVEREABERTURADAUABUNIVERSIDADEABERTADOBRASILEMJACUNDA08112017%20(1).JPG', 190, 300, 'SEMED PROMOVE REABERTURA DA UAB - UNIVERSIDADE ABERTA DO BRASIL EM JACUNDÁ', '2017-11-08', 0),
(147, '12deNovembroDiadoDiretorEscolar12112017%20(1).jpg', 'DIA DO DIRETOR ESCOLAR 12 DE NOVEMBRO', 171, 113, '12deNovembroDiadoDiretorEscolar12112017', '12deNovembroDiadoDiretorEscolar12112017%20(1).jpg', 235, 300, 'DIA DO DIRETOR ESCOLAR 12 DE NOVEMBRO', '2017-11-12', 0),
(148, 'FORMACOESEMPRATICANASSALASDEAULADEVOLUTIVAS14112017%20(1).JPG', 'FORMAÇÕES EM PRÁTICA NAS SALAS DE AULA – DEVOLUTIVAS', 171, 113, 'FORMACOESEMPRATICANASSALASDEAULADEVOLUTIVAS14112017', 'FORMACOESEMPRATICANASSALASDEAULADEVOLUTIVAS14112017%20(1).JPG', 235, 300, 'FORMAÇÕES EM PRÁTICA NAS SALAS DE AULA – DEVOLUTIVAS', '2017-11-14', 0),
(149, 'REABERTURADOPOLOUABEAULAINAUGURALDAUFPA14112017%20(1).JPG', 'REABERTURA DO POLO UAB E AULA INAUGURAL DA UFPA', 171, 113, 'REABERTURADOPOLOUABEAULAINAUGURALDAUFPA14112017', 'REABERTURADOPOLOUABEAULAINAUGURALDAUFPA14112017%20(1).JPG', 235, 300, 'REABERTURA DO POLO UAB E AULA INAUGURAL DA UFPA', '2017-11-15', 0),
(150, 'SEMEDRECEBEVISITADEDEPUTADOFEDERAL20112017%20(1).JPG', 'SEMED RECEBE VISITA DE DEPUTADO FEDERAL', 171, 113, 'SEMEDRECEBEVISITADEDEPUTADOFEDERAL20112017', 'SEMEDRECEBEVISITADEDEPUTADOFEDERAL20112017%20(1).JPG', 230, 300, 'SEMED RECEBE VISITA DE DEPUTADO FEDERAL', '2017-11-20', 0),
(151, 'EDUCACAOESPECIALTORNASEREALIDADENAEDUCACAODOCAMPODEJACUNDA21112017%20(1).JPG', 'EDUCAÇÃO ESPECIAL DÁ CONTINUIDADE AOS TRABALHOS NO CAMPO DE JACUNDÁ', 171, 113, 'EDUCACAOESPECIALTORNASEREALIDADENAEDUCACAODOCAMPODEJACUNDA21112017', 'EDUCACAOESPECIALTORNASEREALIDADENAEDUCACAODOCAMPODEJACUNDA21112017%20(1).JPG', 220, 300, 'EDUCAÇÃO ESPECIAL DÁ CONTINUIDADE AOS TRABALHOS NO CAMPO DE JACUNDÁ', '2017-11-21', 0),
(152, 'DEVOLUTIVADAFORMACAOOFICINACONSTRUCAODEJOGOSMATEMATICOSPARAEDUCACAOINFANTIL22112017%20(3).jpg', 'DEVOLUTIVA DA FORMAÇÃO “OFICINA: CONSTRUÇÃO DE JOGOS MATEMÁTICOS PARA EDUCAÇÃO INFANTIL”', 171, 113, 'DEVOLUTIVADAFORMACAOOFICINACONSTRUCAODEJOGOSMATEMATICOSPARAEDUCACAOINFANTIL22112017', 'DEVOLUTIVADAFORMACAOOFICINACONSTRUCAODEJOGOSMATEMATICOSPARAEDUCACAOINFANTIL22112017%20(3).jpg', 180, 300, 'DEVOLUTIVA DA FORMAÇÃO “OFICINA: CONSTRUÇÃO DE JOGOS MATEMÁTICOS PARA EDUCAÇÃO INFANTIL”', '2017-11-22', 0),
(153, 'JACUNDAEMEDALHADEPRATANAOBMEP2017%20(1).jpg', 'JACUNDÁ É MEDALHA DE PRATA NA OBMEP 2017', 171, 113, 'JACUNDAEMEDALHADEPRATANAOBMEP2017', 'JACUNDAEMEDALHADEPRATANAOBMEP2017%20(1).jpg', 220, 300, 'JACUNDÁ É MEDALHA DE PRATA NA OBMEP 2017', '2017-11-23', 0),
(154, 'ROSALIACORREIAPARTICIPADEACAONASEMATUR27112017%20(1).JPG', 'E.M.E.F. ROSÁLIA CORREIA PARTICIPA DE AÇÃO NA SEMATUR', 171, 113, 'ROSALIACORREIAPARTICIPADEACAONASEMATUR27112017', 'ROSALIACORREIAPARTICIPADEACAONASEMATUR27112017%20(1).JPG', 200, 300, 'E.M.E.F. ROSÁLIA CORREIA PARTICIPA DE AÇÃO NA SEMATUR', '2017-11-26', 0),
(155, 'JACUNDAPARTICIPADASEMANANACIONALDECIENCIASETECNOLOGIAS27112017%20(1).JPG', 'JACUNDÁ PARTICIPA DA SEMANA NACIONAL DE CIÊNCIAS E TECNOLOGIAS', 171, 113, 'JACUNDAPARTICIPADASEMANANACIONALDECIENCIASETECNOLOGIAS27112017', 'JACUNDAPARTICIPADASEMANANACIONALDECIENCIASETECNOLOGIAS27112017%20(1).JPG', 200, 300, 'JACUNDÁ PARTICIPA DA SEMANA NACIONAL DE CIÊNCIAS E TECNOLOGIAS', '2017-11-27', 0),
(156, 'ESCOLADOCAMPOREALIZACOMSUCESSOINOITECULTURALELAZER30112017%20(1).JPG', 'ESCOLA DO CAMPO REALIZA COM SUCESSO I NOITE CULTURAL E LAZER', 171, 113, 'ESCOLADOCAMPOREALIZACOMSUCESSOINOITECULTURALELAZER30112017', 'ESCOLADOCAMPOREALIZACOMSUCESSOINOITECULTURALELAZER30112017%20(1).JPG', 200, 300, 'ESCOLA DO CAMPO REALIZA COM SUCESSO I NOITE CULTURAL E LAZER', '2017-11-30', 0),
(157, 'AULAINAUGURALDELETRASEMATEMATICAPELAUEPA04122017%20(1).JPG', 'AULA INAUGURAL DE LETRAS E MATEMÁTICA PELA UEPA', 171, 113, 'AULAINAUGURALDELETRASEMATEMATICAPELAUEPA04122017', 'AULAINAUGURALDELETRASEMATEMATICAPELAUEPA04122017%20(1).JPG', 220, 300, 'AULA INAUGURAL DE LETRAS E MATEMÁTICA PELA UEPA', '2017-12-04', 0),
(158, 'FORMACAOPNAIC2017201804122017%20(53).JPG', 'FORMAÇÃO PNAIC – 2017/2018', 171, 113, 'FORMACAOPNAIC2017201804122017', 'FORMACAOPNAIC2017201804122017%20(53).JPG', 240, 300, 'FORMAÇÃO PNAIC – 2017/2018', '2017-12-04', 0),
(159, 'ITORNEIODEKARATEDOPROGRAMANOVOMAISEDUCACAO04122017%20(1).JPG', 'I TORNEIO DE KARATÊ DO PROGRAMA NOVO MAIS EDUCAÇÃO', 171, 113, 'ITORNEIODEKARATEDOPROGRAMANOVOMAISEDUCACAO04122017', 'ITORNEIODEKARATEDOPROGRAMANOVOMAISEDUCACAO04122017%20(1).JPG', 220, 300, 'I TORNEIO DE KARATÊ DO PROGRAMA NOVO MAIS EDUCAÇÃO', '2017-12-04', 0),
(160, 'JACUNDAADEREPROGRAMAPARAALFABETIZADO06122017%20(1).JPG', 'JACUNDÁ ADERE PROGRAMA PARÁ ALFABETIZADO', 171, 113, 'JACUNDAADEREPROGRAMAPARAALFABETIZADO06122017', 'JACUNDAADEREPROGRAMAPARAALFABETIZADO06122017%20(1).JPG', 220, 300, 'JACUNDÁ ADERE PROGRAMA PARÁ ALFABETIZADO', '2017-12-06', 0),
(161, 'JACUNDARECEBEPREMIACOESPELAOBMEP06122017%20(1).JPG', 'JACUNDÁ RECEBE PREMIAÇÕES PELA OBMEP', 171, 113, 'JACUNDARECEBEPREMIACOESPELAOBMEP06122017', 'JACUNDARECEBEPREMIACOESPELAOBMEP06122017%20(1).JPG', 220, 300, 'JACUNDÁ RECEBE PREMIAÇÕES PELA OBMEP', '2017-12-06', 0),
(162, 'SEMEDREALIZACAFEDAMANHAPARADIRETORES11122017%20(1).JPG', 'SEMED REALIZA CAFÉ DA MANHÃ EM HOMENAGEM AOS DIRETORES ESCOLARES', 171, 113, 'SEMEDREALIZACAFEDAMANHAPARADIRETORES11122017', 'SEMEDREALIZACAFEDAMANHAPARADIRETORES11122017%20(1).JPG', 220, 300, 'SEMED REALIZA CAFÉ DA MANHÃ EM HOMENAGEM AOS DIRETORES ESCOLARES', '2017-12-11', 0),
(163, 'GALERIADEFOTOSCEICRERESER11122017%20(207).JPG', 'GALERIA DE FOTOS - FORMATURA C.E.I. CRER E SER', 171, 113, 'GALERIADEFOTOSCEICRERESER11122017', 'GALERIADEFOTOSCEICRERESER11122017%20(207).JPG', 220, 300, 'GALERIA DE FOTOS - FORMATURA C.E.I. CRER E SER', '2017-12-11', 0),
(164, 'GALERIADEFOTOSEMEFCRIANCAFELIZ11122017%20(1).JPG', 'GALERIA DE FOTOS - E.M.E.F. CRIANÇA FELIZ', 171, 113, 'GALERIADEFOTOSEMEFCRIANCAFELIZ11122017', 'GALERIADEFOTOSEMEFCRIANCAFELIZ11122017%20(1).JPG', 220, 300, 'GALERIA DE FOTOS - E.M.E.F. CRIANÇA FELIZ', '2017-12-11', 0),
(165, 'GALERIADEFOTOSROSALAIACORREIA11122017%20(16).JPG', 'EXPOSIÇÃO CULTURAL – E.M.E.F. ROSÁLIA CORREIA', 171, 113, 'GALERIADEFOTOSROSALAIACORREIA11122017', 'GALERIADEFOTOSROSALAIACORREIA11122017%20(16).JPG', 220, 300, 'EXPOSIÇÃO CULTURAL – E.M.E.F. ROSÁLIA CORREIA', '2017-12-11', 0),
(166, 'GALERIADEFOTOSCSEJ15122017%20(1).JPG', 'FORMATURA - CENTRO SOCIAL E EDUCACIONAL DE JACUNDÁ', 171, 113, 'GALERIADEFOTOSCSEJ15122017', 'GALERIADEFOTOSCSEJ15122017%20(1).JPG', 220, 300, 'FORMATURA - CENTRO SOCIAL E EDUCACIONAL DE JACUNDÁ', '2017-12-15', 0),
(167, 'GALERIADEFOTOSESTERANDRADE15122017%20(1).JPG', 'FORMATURA - E.M.E.F ESTER ANDRADE DOS SANTOS', 171, 113, 'GALERIADEFOTOSESTERANDRADE15122017', 'GALERIADEFOTOSESTERANDRADE15122017%20(1).JPG', 220, 300, 'FORMATURA - E.M.E.F ESTER ANDRADE DOS SANTOS', '2017-12-15', 0),
(168, 'FORMANDOSEEEMPROFMARAIDAGLORIA20122017%20(158).JPG', 'FORMATURA - E.E.E.M PROFESSORA MARIA DA GLÓRIA RODRIGUES PAIXÃO', 171, 113, 'FORMANDOSEEEMPROFMARAIDAGLORIA20122017', 'FORMANDOSEEEMPROFMARAIDAGLORIA20122017%20(158).JPG', 220, 300, 'FORMATURA - E.E.E.M PROFESSORA MARIA DA GLÓRIA RODRIGUES PAIXÃO', '2017-12-20', 0),
(169, 'VIIIFEIRACULTURALEMEFBOAVENTURA20122017%20(35).JPG', 'VIII FEIRA CULTURAL E.M.E.F. BOA VENTURA', 171, 113, 'VIIIFEIRACULTURALEMEFBOAVENTURA20122017', 'VIIIFEIRACULTURALEMEFBOAVENTURA20122017%20(35).JPG', 220, 300, 'VIII FEIRA CULTURAL E.M.E.F. BOA VENTURA', '2017-12-20', 0),
(170, 'FORMACAO-PARA-PROFESSORES-DO-CAMPO-QUE-ATUAM-NO-CICLO-DE-ALFABETIZACAO-20-12-2017%20(6).JPG', 'FORMAÇÃO PARA PROFESSORES DO CAMPO QUE ATUAM NO CICLO DE ALFABETIZAÇÃO', 171, 113, 'FORMACAO-PARA-PROFESSORES-DO-CAMPO-QUE-ATUAM-NO-CICLO-DE-ALFABETIZACAO-20-12-2017', 'FORMACAO-PARA-PROFESSORES-DO-CAMPO-QUE-ATUAM-NO-CICLO-DE-ALFABETIZACAO-20-12-2017%20(6).JPG', 190, 300, 'FORMAÇÃO PARA PROFESSORES DO CAMPO QUE ATUAM NO CICLO DE ALFABETIZAÇÃO', '2017-12-20', 0),
(171, 'PROJETO-POLITICO-PEDAGOGICO-(PPP)-DA-ESCOLA-KARAI-%20GUAXU-GUARANI-E-CONCLUIDO-20-12-2017%20(27).JPG', 'PROJETO POLÍTICO PEDAGÓGICO (PPP) DA ESCOLA KARAÍ GUAXU GUARANI É CONCLUÍDO', 171, 113, 'PROJETOPOLITICOPEDAGOGICOPPPDAKARAIGUAXUGUARANIECONCLUIDO20122017', 'PROJETO-POLITICO-PEDAGOGICO-(PPP)-DA-ESCOLA-KARAI-%20GUAXU-GUARANI-E-CONCLUIDO-20-12-2017%20(27).JPG', 190, 300, 'PROJETO POLÍTICO PEDAGÓGICO (PPP) DA ESCOLA KARAÍ GUAXU GUARANI É CONCLUÍDO', '2017-12-20', 0),
(172, 'SEMEDANUNCIAVOLTAASAULASDAREDEMUNICIPAL20022018%20(1).JPG', 'SEMED ANUNCIA VOLTA ÀS AULAS DA REDE MUNICIPAL', 171, 113, 'SEMEDANUNCIAVOLTAASAULASDAREDEMUNICIPAL20022018', 'SEMEDANUNCIAVOLTAASAULASDAREDEMUNICIPAL20022018%20(1).JPG', 230, 300, 'SEMED ANUNCIA VOLTA ÀS AULAS DA REDE MUNICIPAL', '2018-02-20', 0),
(173, 'COMUNICADO26022018%20(1).JPG', 'COMUNICADO - EDUCAÇÃO DO CAMPO', 171, 113, 'COMUNICADO26022018', 'COMUNICADO26022018%20(1).JPG', 240, 310, 'COMUNICADO - EDUCAÇÃO DO CAMPO', '2018-02-26', 0),
(174, 'REINAUGURACAOREGIMECONVENIOCENTROCOMUNITARIO28022018%20(1).JPG', 'REINAUGURAÇÃO - ESCOLA REGIME CONVÊNIO CENTRO COMUNITÁRIO', 171, 113, 'REINAUGURACAOREGIMECONVENIOCENTROCOMUNITARIO28022018', 'REINAUGURACAOREGIMECONVENIOCENTROCOMUNITARIO28022018%20(1).JPG', 210, 300, 'REINAUGURAÇÃO - ESCOLA REGIME CONVÊNIO CENTRO COMUNITÁRIO', '2018-02-28', 0),
(175, 'BASENACIONALCOMUMCURRICULO02032018%20(1).JPG', 'SEMED REALIZA ESTUDO PARA O DIA NACIONAL DE DISCUSSÃO SOBRE A BNCC', 171, 113, 'BASENACIONALCOMUMCURRICULO02032018', 'BASENACIONALCOMUMCURRICULO02032018%20(1).JPG', 220, 300, 'SEMED REALIZA ESTUDO PARA O DIA NACIONAL DE DISCUSSÃO SOBRE A BNCC', '2018-03-02', 0),
(176, 'PREFEITURAESEMEDINAUGURAMQUADRAPOLIESPORTIVADAESCOLALUZDOAMANHA%20(1).JPG', 'PREFEITURA E SEMED INAUGURAM QUADRA POLIESPORTIVA DA ESCOLA LUZ DO AMANHÃ', 171, 113, 'PREFEITURAESEMEDINAUGURAMQUADRAPOLIESPORTIVADAESCOLALUZDOAMANHA03032018', 'PREFEITURAESEMEDINAUGURAMQUADRAPOLIESPORTIVADAESCOLALUZDOAMANHA%20(1).JPG', 190, 290, 'PREFEITURA E SEMED INAUGURAM QUADRA POLIESPORTIVA DA ESCOLA LUZ DO AMANHÃ', '2018-03-03', 0),
(177, '06DEMARCODIADEMOBILIZACAODABASENACIONALCOMUMCURRICULAR06032018%20(119).JPG', '06 DE MARÇO – DIA DE MOBILIZAÇÃO DA BASE NACIONAL COMUM CURRICULAR', 171, 113, '06DEMARCODIADEMOBILIZACAODABASENACIONALCOMUMCURRICULAR06032018', '06DEMARCODIADEMOBILIZACAODABASENACIONALCOMUMCURRICULAR06032018%20(119).JPG', 220, 300, '06 DE MARÇO – DIA DE MOBILIZAÇÃO DA BASE NACIONAL COMUM CURRICULAR', '2018-03-06', 0),
(178, 'PROFISSIONAISDAEDUCACAOPARTICIPAMDESOLENIDADENODIAINTERNACIONALDAMULHER09032018%20(1).JPG', 'PROFISSIONAIS DA EDUCAÇÃO PARTICIPAM DE SOLENIDADE NO DIA INTERNACIONAL DA MULHER', 171, 113, 'PROFISSIONAISDAEDUCACAOPARTICIPAMDESOLENIDADENODIAINTERNACIONALDAMULHER09032018', 'PROFISSIONAISDAEDUCACAOPARTICIPAMDESOLENIDADENODIAINTERNACIONALDAMULHER09032018%20(1).JPG', 210, 300, 'PROFISSIONAIS DA EDUCAÇÃO PARTICIPAM DE SOLENIDADE NO DIA INTERNACIONAL DA MULHER', '2018-03-09', 0),
(179, 'GALERIADEFOTOSFORMATURAMUNDIAR12032018%20(1).JPG', 'GALERIA DE FOTOS - FORMATURA MUNDIAR', 171, 113, 'GALERIADEFOTOSFORMATURAMUNDIAR12032018', 'GALERIADEFOTOSFORMATURAMUNDIAR12032018%20(1).JPG', 225, 300, 'GALERIA DE FOTOS - FORMATURA MUNDIAR', '2018-03-12', 0),
(180, 'ESCOLAREGIMECONVENIOCENTROCOMUNITARIORECEBENOVOSVENTILADORES15032018%20(1).JPG', 'ESCOLA REGIME CONVÊNIO CENTRO COMUNITÁRIO RECEBE NOVOS VENTILADORES', 171, 113, 'ESCOLAREGIMECONVENIOCENTROCOMUNITARIORECEBENOVOSVENTILADORES15032018', 'ESCOLAREGIMECONVENIOCENTROCOMUNITARIORECEBENOVOSVENTILADORES15032018%20(1).JPG', 220, 300, 'ESCOLA REGIME CONVÊNIO CENTRO COMUNITÁRIO RECEBE NOVOS VENTILADORES', '2018-03-15', 0),
(181, 'IENCONTRODEFORMACAOCOMPROFISSIONAISDOAEE201816032018%20(1).JPG', 'I ENCONTRO DE FORMAÇÃO COM PROFISSIONAIS DO AEE – 2018', 171, 113, 'IENCONTRODEFORMACAOCOMPROFISSIONAISDOAEE201816032018', 'IENCONTRODEFORMACAOCOMPROFISSIONAISDOAEE201816032018%20(1).JPG', 210, 300, 'I ENCONTRO DE FORMAÇÃO COM PROFISSIONAIS DO AEE – 2018', '2018-03-16', 0);
INSERT INTO `noticias` (`id`, `fotoMobile`, `tituloMobile`, `larguraMobile`, `alturaMobile`, `arquivo`, `fotoDesktop`, `alturaDesktop`, `larguraDesktop`, `tituloDesktop`, `datapublicacao`, `visivel`) VALUES
(182, 'PREFEITURADEJACUNDALEVAALUNOSPARAAPRESENTACAOCIRCENSE19032018%20(1).JPG', 'PREFEITURA DE JACUNDÁ LEVA ALUNOS PARA APRESENTAÇÃO CIRCENSE', 171, 113, 'PREFEITURADEJACUNDALEVAALUNOSPARAAPRESENTACAOCIRCENSE19032018', 'PREFEITURADEJACUNDALEVAALUNOSPARAAPRESENTACAOCIRCENSE19032018%20(1).JPG', 220, 300, 'PREFEITURA DE JACUNDÁ LEVA ALUNOS PARA APRESENTAÇÃO CIRCENSE', '2018-03-19', 0),
(183, 'CONSELHOMUNICIPALDEEDUCACAOREALIZAREUNIAOCOMSEMEDEMEMBROSDOCONSELHO27032018%20(1).JPG', 'CONSELHO MUNICIPAL DE EDUCAÇÃO REALIZA REUNIÃO COM SEMED E MEMBROS DO CONSELHO', 171, 113, 'CONSELHOMUNICIPALDEEDUCACAOREALIZAREUNIAOCOMSEMEDEMEMBROSDOCONSELHO27032018', 'CONSELHOMUNICIPALDEEDUCACAOREALIZAREUNIAOCOMSEMEDEMEMBROSDOCONSELHO27032018%20(1).JPG', 190, 300, 'CONSELHO MUNICIPAL DE EDUCAÇÃO REALIZA REUNIÃO COM SEMED E MEMBROS DO CONSELHO', '2018-03-27', 0);

-- --------------------------------------------------------

--
-- Estrutura para view `fichaatual`
--
DROP TABLE IF EXISTS `fichaatual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`semedjac`@`localhost` SQL SECURITY DEFINER VIEW `fichaatual`  AS  select `fichadtc`.`id` AS `id`,`fichadtc`.`inep` AS `inep`,`fichadtc`.`nomeinstituicao` AS `nomeinstituicao`,`fichadtc`.`dataservico` AS `dataservico`,`fichadtc`.`observacoes` AS `observacoes`,`fichadtc`.`tecnicos` AS `tecnicos`,`fichadtc`.`categorias` AS `categorias`,`fichadtc`.`detalhes` AS `detalhes` from `fichadtc` where (`fichadtc`.`dataservico` >= '2018-01-01') ;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `contador`
--
ALTER TABLE `contador`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `escolas`
--
ALTER TABLE `escolas`
  ADD PRIMARY KEY (`id`,`inep`);

--
-- Índices de tabela `fichadtc`
--
ALTER TABLE `fichadtc`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `contador`
--
ALTER TABLE `contador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `escolas`
--
ALTER TABLE `escolas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `fichadtc`
--
ALTER TABLE `fichadtc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

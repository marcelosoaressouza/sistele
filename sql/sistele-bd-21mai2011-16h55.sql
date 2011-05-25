--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgres
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: bolsista; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE bolsista (
    nome character varying(256),
    email character varying(128),
    telefones character varying(256),
    tipo_bolsa character varying(8),
    inicio_vigencia date,
    termino_vigencia date,
    url_lattes character varying(256),
    id_telecentro integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.bolsista OWNER TO postgres;

--
-- Name: bolsista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bolsista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bolsista_id_seq OWNER TO postgres;

--
-- Name: bolsista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bolsista_id_seq OWNED BY bolsista.id;


--
-- Name: bolsista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bolsista_id_seq', 1, false);


--
-- Name: telecentro; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE telecentro (
    codigo character varying(16) NOT NULL,
    nome character varying(256),
    endereco character varying(512),
    cep character varying(16),
    municipio character varying(128),
    uf character varying(4),
    ponto_de_referencia character varying(256),
    responsavel character varying(256),
    email character varying(512),
    telefones character varying(256),
    proponente character varying(256),
    tipo_de_conexao character varying(256),
    tipo_de_telecentro character varying(256),
    observacao character varying(512),
    id integer NOT NULL
);


ALTER TABLE public.telecentro OWNER TO postgres;

--
-- Name: telecentro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE telecentro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telecentro_id_seq OWNER TO postgres;

--
-- Name: telecentro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE telecentro_id_seq OWNED BY telecentro.id;


--
-- Name: telecentro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('telecentro_id_seq', 122, true);


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    id integer NOT NULL,
    username character varying(32) NOT NULL,
    password character varying(32) NOT NULL,
    email character varying(128),
    profile character varying(256)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO postgres;

--
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_id_seq OWNED BY usuario.id;


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_seq', 1, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE bolsista ALTER COLUMN id SET DEFAULT nextval('bolsista_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE telecentro ALTER COLUMN id SET DEFAULT nextval('telecentro_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE usuario ALTER COLUMN id SET DEFAULT nextval('usuario_id_seq'::regclass);


--
-- Data for Name: bolsista; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: telecentro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO telecentro VALUES ('27698', 'ADASURC', 'Vila Nazaré  - Rio cupijó - zona rural', '68400-000', 'Cametá', 'PA', '', 'Osmar da Cruz', 'FALTA ', 'FALTA', 'IPEDE ', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 1);
INSERT INTO telecentro VALUES ('27909', 'Sindicato dos Trabalhadores Rurais de Cametá', 'Rua Frei Cristovão Lisboa, 1485 - Bairro: Central', '68400-000', 'Cametá', 'PA', 'Feira livre', 'José Maria Martins da Silva ', 'FALTA ', '(93) 91919130', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 2);
INSERT INTO telecentro VALUES ('25251', 'Associação Ashaninka do Rio Amônia ', 'Escola Yorenka Atame - Saberes da Floresta  - Apiwtxa - TI Kanpa do Rio Amônia', '69983-000', 'Marechal Taumaturgo', 'AC', '', 'Issac Pinhanta ', 'apiwtxa@yahoo.com.br', '(68) 33251082', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 3);
INSERT INTO telecentro VALUES ('25272', 'Comunidade Vila Restauração ', 'Vila Restauração', '', 'Marechal Taumaturgo', 'AC', '3 dias de barco subindo o Juruá até Marechal Thaumaturgo ou 45min de avião de 6 lugares partindo de Cruzeiro do Sul até Marechal Thaumaturgo/ De Marechal Thaumaturgo até a Vila Restauração sobe o Rio Juruá 2 horas ', 'Celso Freitas ', 'celso.pmmt@hotmail.com, pmmth@gmail.com, benkipiyanko@yahoo.com, beijaflorbenki@hotmail.com', '(68) 33251050', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 4);
INSERT INTO telecentro VALUES ('25293', 'Comunidade Foz do Bagé  ', '', '', 'Marechal Taumaturgo', 'AC', '3 dias de barco subindo o Juruá até Marechal Thaumaturgo ou 45min de avião de 6 lugares partindo de Cruzeiro do Sul até Marechal Thaumaturgo/ De Thaumaturgo 2 horas subindo o Rio Juruá até  o Tejo, 3 horas subindo o Tejo até o Bagé', 'Celso Freitas ', 'celso.pmmt@hotmail.com, pmmth@gmail.com, benkipiyanko@yahoo.com, beijaflorbenki@hotmail.com', '(68) 33251050', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 5);
INSERT INTO telecentro VALUES ('25351', ' Kaxinawa do Breu', 'Comunidade Jacobina - Rio Breu', '', 'Marechal Taumaturgo', 'AC', 'do Município de Marechal Thaumaturgo 2 dias de canoa pelo rio Breu', 'Celso Freitas ', 'celso.pmmt@hotmail.com, pmmth@gmail.com, benkipiyanko@yahoo.com, beijaflorbenki@hotmail.com', '(68) 33251050', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 6);
INSERT INTO telecentro VALUES ('25327', 'Comunidade Belfort', 'Comunidade Belfort', '', 'Marechal Taumaturgo', 'AC', 'Prefeitura e escola. Pode ser entregue na Prefeitura de Marechal Rua 05 de novembro s/n CEP 69983-000', 'Celso Freitas ', 'celso.pmmt@hotmail.com, pmmth@gmail.com, benkipiyanko@yahoo.com, beijaflorbenki@hotmail.com', '(68) 33251050', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 7);
INSERT INTO telecentro VALUES ('25341', 'Comunidade Apiwtxa ', 'Associação Ashaninka do Rio amonia - Terra indígena Kampa do Rio Amonia', '69983-000', 'Marechal Taumaturgo', 'AC', 'três horas de canoa  ou 1 hora de  ', 'Issac Pinhanta ', 'pinhanta@yahoo.com.br', '(68) 33251082', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 8);
INSERT INTO telecentro VALUES ('25571', 'Comunidade Buritizal ', '', '', 'Marechal Taumaturgo', 'AC', 'Rio Bagé  - dois dias  de viagem a partir da sede do município, pelo Rio Bagé', 'Celso Freitas ', 'celso.pmmt@hotmail.com, pmmth@gmail.com, benkipiyanko@yahoo.com, beijaflorbenki@hotmail.com', '(68) 33251050', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 9);
INSERT INTO telecentro VALUES ('25519', 'Terra Indigena Yawanawa do Rio Gregório', 'Aldeia Nova Esperança', '', 'Tarauacá', 'AC', 'Aldeia Nova Esperança - fica 92 km percorrendo de carro até o Rio Gregório, e mais 60 km pelo rio de barco, no total de um dia e meio.  ', 'Joaquim Tashka Yawanawa', ' coopyawa2008@hotmail.com, nixiwakayawa@hotmail.com', '(68) 34691000', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 10);
INSERT INTO telecentro VALUES ('25560', 'OPIRJ - Organização dos Povos Indígenas do Alto Juruá', ' Comunidade Aldeia São Francisco', '', 'Cruzeiro do sul', 'AC', '', 'Luiz Valdenir Silva de Souza ', 'opirj@bol.com.br,  luiz.nukini@yahoo.com.br', '(68) 33227997', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 11);
INSERT INTO telecentro VALUES ('25606', 'ASKARJ - Associação  de Seringueiros HUNI KUIN', 'Aldeia Tramataia', '', 'FALTA', 'AC', 'seguindo da sede do município pela PB 041 no sentido Marcação/Baía da Traição, por 04 km, segue a direita pela estrada vicinal por mais 3 km até a aldeia Tramataia, 10 minutos de viagem', 'Antonio Ferreira da Silva', 'marcospotiguara@ig.com.br', ' (83) 9114-0267', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 12);
INSERT INTO telecentro VALUES ('25613', 'ASKARIB - TI Kaxinawa do Breu', 'Aldeia Vila Nova', '', 'FALTA', 'AC', 'Pode ser entregue na Prefeitura de Marechal Rua 05 de novembro s/n CEP 69983-000', 'Celso Freitas e Benki Ashaninka', 'celso.pmmt@hotmail.com, pmmth@gmail.com, benkipiyanko@yahoo.com, beijaflorbenki@hotmail.com', '(68) 33251050', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 13);
INSERT INTO telecentro VALUES ('25722', 'Comunidade Aldeia Novo Segredo - TI Alto jordão', 'Associação de Seringueiros Huni Kuin do Rio Jordão - Rua Carlos Gonçalves de Farias s/n - Bairro: Centro', '69900-000', 'FALTA', 'AC', 'posto FUNAI. Apenas de canoa,barco ou a pé - um dia', 'José Manduca Mateus', ' siakaxinawa@bol.com.br; kaxinawabane@bol.com.br; dauakaro@yahoo.com.br ', '(68) 9979 8426', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 14);
INSERT INTO telecentro VALUES ('25723', 'Comunidade aldeia Três Fazendas ou Belmonte - TI Alto Jordão', 'Associação de Seringueiros Huni Kuin do Rio Jordão - Rua Carlos Gonçalves de Farias s/n - Bairro: Centro', '69900-000', 'FALTA', 'AC', 'Comunidade Aldeia Três Fazendas ou Belmonte (TI Alto Jordão) - Apenas de canoa, barco ou a pé(um dia) ou de helicóptero. Cerca de um dia da sede do município de barco.', ' Fernando Barbosa Sales', ' siakaxinawa@bol.com.br; kaxinawabane@bol.com.br; dauakaro@yahoo.com.br', '(068) 9959-4408', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 15);
INSERT INTO telecentro VALUES ('25749', 'Comunidade Sete Estrelas ', 'Aldeia Kuntanawa', '69983-000', 'FALTA', 'AC', ' Organização dos Povos Indígena do Rio Juruá – OPIRJ e  organização do Povo Kontanawa - um dia de viagem a partir da sede do município, pelo Rio Tejo', 'Luiz Valdenir Silva de Souza  ou  Maria Artemísia Araújo do Nascimento', ' opirj@bol.com.br ,  luiz.nukini@yahoo.com.br , irapuru@ig.com.br', '(68) 9212-7201', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 16);
INSERT INTO telecentro VALUES ('25763', 'Aldeia Kaxinawa do Breu Comunidade Cruzeirinho', '', '', 'FALTA', 'AC', 'Acesso apenas fluvial distancia de 15 horas subindo o Rio Juruá motor Honda 13 HP com canoa pequena/São dois dias de viagem via fluvial, subindo o rio  (sentido da nascente)', 'Celso Freitas e Benki Ashaninka', 'celso.pmmt@hotmail.com, pmmth@gmail.com, benkipiyanko@yahoo.com, beijaflorbenki@hotmail.com', '(68) 33251050', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 17);
INSERT INTO telecentro VALUES ('25777', 'Comunidade  Nukini do Republica - Escola Estadual', ' Avenida 28 de setembro  - Bairro: Escola Técnica', '69980-000', 'Mancio Lima', 'AC', 'OPIRJ - Organização dos Povos Indigenas do Rio Juruá', 'Luiz Valdenir Silva de Souza ', ' opirj@bol.com.br ,  luiz.nukini@yahoo.com.br ', '(68) 9212-7201', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 18);
INSERT INTO telecentro VALUES ('25859', 'Associação dos Povos Indígenas do Rio Humaitá - ASPIRH - TI Kaxinawá do Rio  Humaitá', 'Rua Maria da Liberdade, 0125 - Bairro: Senador Pompeu', '69970-000', 'FALTA', 'AC', 'Aldeia São Vicente- 5 dias de canoa até a aldeia saindo do município de Tarauaca', 'José Nilson Sabóia kaxinawa', ' tuwehunikui@yahoo.com.br, aspirh@yahoo.com.br', ' (068) 9971-4185', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 19);
INSERT INTO telecentro VALUES ('25920', 'Associação Agro-extrativista Puyanawa Barão Ypiranga -  TI Powanawá do Barão', '', '69900-000', 'Mancio Lima', 'AC', '', 'Joel Ferreira Lima e Jose Luiz Puyanawa', 'opirj@bol.com.br', '(68) 9911 5167', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 20);
INSERT INTO telecentro VALUES ('25995', 'Associação Indígena Xacriabá da  Aldeia Riacho dos Buritis e Adjacências', 'Aldeia Riacho dos Buritis', '', 'São  João das Missões', 'MG', ' TI Riacho dos Buritis', 'Jonesvam Pereira Oliveira', 'FALTA ', '(38) 3615 8144 ', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 21);
INSERT INTO telecentro VALUES ('26260', 'Comunidade Balaio', 'Comunidade Balaio', '', 'São Gabriel da Cachoeira', 'AM', 'Saindo de Manaus pegar avião p São gabriel- 2 horas de voo,2 horas de carro.', 'Alvaro Tukano', 'alvarotukano@yahoo.com.br', '(61) 9122-6240', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 22);
INSERT INTO telecentro VALUES ('26299', 'Associação do Povo Arara do Igarapé Humaitá - TI Arara do Humaitá', 'Foz do Nilo', '69982-000', 'Porto Walter', 'AC', 'TI Arara do Humaitá - Foz do Nilo - Porto Walter', 'Francisco Lima Silva', 'opirj@bol.com.br', ' (068)3322-7997', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 23);
INSERT INTO telecentro VALUES ('26355', 'Organização Metareilá do Povo Indígena Surui ', 'Rua Capitão Rui Luís Teixeira, 166 - Bairro:  Distrito do Riozinho', '', 'Cacoal', 'RO', 'Aldeia Sertanista Apoema Meireles ', 'Almir Narayamoga Surui', ' almirsurui@yahoo.com.br', ' (69)9981-9884;', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 24);
INSERT INTO telecentro VALUES ('26434', 'Terra Indígena Marubo', 'Aldeia Vida Nova', '', 'FALTA', 'AM', '30 minutos de Cruzeiro do Sul, De Manaus 3 horas de avião Aldeia Vida Nova - ALDEIA Vida Nova- Rio Ituí MARUBO', 'Luiz Valdenir Silva de Souza, Sebastião Marubo ', 'opirj@bol.com.br e luiz.nukini@yahoo.com.br ', '(069) 99119604', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 25);
INSERT INTO telecentro VALUES ('26562', ' Prefeitura Municipal de Santana do Riacho', 'Prefeitura Municipal de Santana do Riacho - Rua Alfredo Domingos de Melo, 44 - Bairro:  Centro ', '', 'Santana do Riacho', 'MG', 'Administração Regional da Subprefeitura da Lapinha – End. Praça da Lapinha sem número- povoado de lapinha - Partindo de Santana do Riacho 12 km pela estrada da lapinha - carro 40 min ', 'Gesner Belisario', 'seturcipo@yahoo.com.br', '(31) 8652-0151', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 26);
INSERT INTO telecentro VALUES ('26611', 'APMCESM -  Associação de Pais e Mestre da Escola São Miguel', '', 'CEP 69750-000', 'São Gabriel da Cachoeira', 'AM', 'Distrito de Iauerete – A partir da sede do município, a viagem dura cerca de um dia e meio de viagem rio acima (rio Uaupés). Para isso é necessário voadeira e motor 40 hp.', 'Bernadete Araujo Souza da Silva', ' rionegro@socioambiental.org, andreza@socioambiental.org, lucia@socioambiental.org, erivaldo@foim.org.br', '(97) 3475-1014', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 27);
INSERT INTO telecentro VALUES ('26637', ' ASIBA - Associação Indigena de Barcelos', 'Rua Veredor José Basilio, 02', '69700-000', 'Barcelos', 'AM', 'Chegada por  via Fluvial ou Aérea', 'Maria Aparecida', 'asiba@clik21.com.b', '(97) 3321-1592', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 28);
INSERT INTO telecentro VALUES ('26715', 'Associação Katukina do Campinas AKAC', 'Katukina da BR 364- Aldeia Samauma', ' 69980-000', 'Cruzeiro do sul', 'AC', 'Terra Indígena Katukina do Campinas - BR 364 km 62', ' Benjamin André Shere Katukina;', ' katukinaacre@yahoo.com.br', '(068)9968-0943', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 29);
INSERT INTO telecentro VALUES ('26727', 'Centro de Memória, Aldeia S. Joaquim e Morada Nova, TI Baixo Jordão ', 'Associação de Seringueiros Kaxinawa do Rio Jordão (ASKARJ) -  - Rua Carlos Gonçalves de Farias, s/n', ' 69970-000', 'Jordão', 'AC', 'Centro de Memória – local entre Aldeia S. Joaquim e Morada Nova (TI Baixo Jordão)', 'Siã Kaxinawa ', ' siakaxinawa@bol.com.br; kaxinawabane@bol.com.br; dauakaro@yahoo.com.br  ', ' (68) 9979 8426', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 30);
INSERT INTO telecentro VALUES ('26771', ' ASKPA – Associação dos Produtores e Criadores Kaxinawa da Praia do Carapanã', 'Comunidade Aldeia do Mucuripe - TI Praia do Carapanã ', ' 69970-000', 'Tarauacá', 'AC', 'Sede da ASKPA (TI Praia do Carapanã)', ' José de Lima Kaxinawa', ' yubehunikui@yahoo.com.br  ou  joaquimmana@yahoo.com.br', '(68) 32233177', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 31);
INSERT INTO telecentro VALUES ('26788', ' Aldeia Lapetanha', 'Organização Metareilá do Povo Indígena Surui', '', 'Cacoal', 'RO', 'Terra Indígena Surui - Terra Indígena Sete de Setembro, Posto Indígena Sete de Setembro, Aldeia Lapetanha Comunidade Paiter - Aldeia Lapetanha- TI Sete de Setembro- De Cacoal 45 min de carro até chegar na aldeia', 'Almir Narayamoga Surui', ' almirsurui@yahoo.com.br', ' (69)3441-1195', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 32);
INSERT INTO telecentro VALUES ('26855', ' Hutukara - Associação Yanomami em Boavista ', ' Rua Capitão Bessa, 143 – B - Bairro:  São Pedro', ' 69306-620', 'Boa Vista', 'RR', '', 'David Yanomani ', 'hutukara@yahoo.com.br ; dariovitorio@yahoo.com.br ; marcoswo@gmail.com', '(95) 3224-6767', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 33);
INSERT INTO telecentro VALUES ('26867', 'Aldeia Watoriki-Theri', 'Associação Yanomami em Boavista - Bairro: Rua Capitão Bessa, 143 - B', '69306-620', ' Boa Vista', 'RR', 'Aldeia Watoriki-Theri , situada ao pé da serra do Demini ("serra do Vento"), no estado do Amazonas  Do aeroporto de Boavista pegar um taxi até a Associação Hutukara (aprox 10min). Leva aproximadamente 1:30 da Associação até a aldeia.', 'David Yanomani ', 'hutukara@yahoo.com.br ; dariovitorio@yahoo.com.br ; marcoswo@gmail.com', '95 3224-6767', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 34);
INSERT INTO telecentro VALUES ('26949', ' Associação Indígena Rio Guaporé', ' Aldeia Ricardo Franco', '', 'Guajará Mirim', 'RO', 'Jaboti- Aldeia Ricardo Franco – 6 hrs de Guajará-Mirim até a Terra Indígena Rio  Guaporé, acesso de voadeira (barco à motor local). ', 'Sueli Canoe e Armando Moero Jaboti', 'suelicanoe@gmail.com,  armando.jaboti@bol.com.br  ', '(069) 9974-2685', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 35);
INSERT INTO telecentro VALUES ('25860', ' Associação dos Povos Indígenas do Rio Humaitá - ASPIRH - TI Kaxinawá do Rio Humaitá ', 'Aldeia São Vicente -  Rua maria da Liberdade, 0125 - Bairro: Senador Pompeu', '69970-000', 'FALTA', 'AC', 'Aldeia São Vicente- 5 dias de canoa até a aldeia saindo do município de Tarauaca', 'José Nilson Sabóia kaxinawa', ' tuwehunikui@yahoo.com.br, aspirh@yahoo.com.br', '(068) 9971-4185', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 36);
INSERT INTO telecentro VALUES ('25974', 'ASCOTA - Associação Comunitária de Tabuleiro', '', '', 'Conceição do Mato Dentro', 'MG', 'Sede do Parque - Sociedade dos Amigos do Tabuleiro/ Parauninha Peixe Tolo- Conceição do Mato Dentro', 'Maria das Dores Costa ', 'dorinha tabuleiro@yahoo.com.br', '(31) 9697 9502', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 37);
INSERT INTO telecentro VALUES ('26023', 'ACIMRN - Associação das Comunidades Indígenas do Médio Rio Negro', 'Rua Laura Vicunã, 01', '69740-000', 'Santa Isabel do Rio Negro', 'AM', 'Na sede da associação - Acesso via fluvial e Aerea ', 'Carlos Nery ', 'acimrn@hotmail.com', ' (97) 3441-1257', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Novo', '', 38);
INSERT INTO telecentro VALUES ('26039', 'Associação Comunitária de Córregos Endereço', 'Escola Estadual Cônego Antônio Madureira - Rua Conego Antonio Madureira, 201, Distrito Corregos - Bairro: Centro ', '     35864-000', 'Conceição do Mato Dentro', 'MG', 'Associação Comunitária de Córregos,  Associação Comunitária do Tabuleiro ASCOTA. ', 'Érica Maria Martins Pimenta e Robson Antônio Guedes', 'escola.23558@educacao.mg.gov.br, ', '(31) 3868 6013', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 39);
INSERT INTO telecentro VALUES ('26061', 'Sociedade dos Amigos do Tabuleiro', 'Parauninha Peixe Tolo -  Rua Olavo F. Ferreira 219', '', 'Conceição do Mato Dentro', 'MG', '', 'Carlos Eduardo Teixeira Nery', ' kryasat@gmail.com', '(31)9626-2552', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 40);
INSERT INTO telecentro VALUES ('26107', 'Conselho de Desenvolvimento Comunitário de Itacolomi', 'Associação Comunitária de Itacolomi - Bairro:  Rua São José, 218', '', 'Conceição do Mato Dentro', 'MG', '', ' Geraldo Assis de Araújo Queiroz', 'FALTA ', '(31) 3868 4026', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 41);
INSERT INTO telecentro VALUES ('26237', 'Parque Nacional Serra do Divisor', 'Comunidade Boa Vista ', '', 'Marechal Taumaturgo', 'AC', 'Resex Alto Juruá', 'Celso Freitas e Benki Ashaninka', 'celso.pmmt@hotmail.com, pmmth@gmail.com, benkipiyanko@yahoo.com, beijaflorbenki@hotmail.com', '(068) 33251050', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 42);
INSERT INTO telecentro VALUES ('26280', ' MAPKAHA - Organização Manchineri do Rio Iaco', 'Aldeia Jatobá, Rua Manoel Césario 01  Quadra 26 - Bairro: Capoeira', '69910-020', 'Rio Branco', 'AC', ' São dois dias de viagem via fluvial, subindo o rio Tarauacá (sentido da nascente).  75 Km de Ramal mais 4 horas de barco subindo o RIO IACO (sentido da nascente).', 'Jaime Sebastião P. Manchineri; ', ' mapkaha@ig.com.br', '(68) 3222-8707', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 43);
INSERT INTO telecentro VALUES ('26286', 'ASKARJ - Associação de Seringueiros Kaxinawa do Rio Jordão ', 'Associação de Seringueiros Kaxinawa ( Huni Kuin) do Rio Jordão ASKARJ  - Rua Carlos Gonçalves de Farias, S/N', '69970-000', 'Tarauacá', 'AC', 'Sede da ASKARJ, no Bairro Kaxinawa, na Sede do Município de Jordão (chegar endereço)', ' Virgulino Pinheiro Sales Kaxinawa ', '  siakaxinawa@bol.com.br; kaxinawabane@bol.com.br; dauakaro@yahoo.com.br', ' (68) 9979 8426', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 44);
INSERT INTO telecentro VALUES ('26367', 'Conselho das Comunidades Afro-Descendentes do Amapá', 'Comunidade Mel da Pedreira, Av. das Nações Unidas, 579 - Bairro: Laquinho', '', 'Macapá', 'AC', 'Comunidade Mel da Pedreira / 45 minutos de estrada pavimentada   ', 'José Paixão e  Eliseu Cirilo de Souza; ', ' ccada@ccada.org.br', '(96)3212-7319', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 45);
INSERT INTO telecentro VALUES ('26376', 'Associação dos Agricultores de São Pedro dos Bois', ' Comunidade São Pedro dos Bois, BR 156 quilômetro 50', '', 'Macapá', 'AP', '', 'João Batista Barbosa Fortunato', ' ccada@ccada.org.br', '(96)3223-3971', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 46);
INSERT INTO telecentro VALUES ('26388', 'ASCOB ', '', '', 'Conceição do Mato Dentro', 'MG', 'Localizada a 20km da sede. Acesso por via terrestre, Rodovia MG10, sem pavimentação,  em direção a cidade do Serro. Após 15km entrar a esquerda  sentido São Sebastião do Bom Sucesso. ', 'Raimundo Pereira dos Santos', 'FALTA ', '(31) 3868 1028', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 47);
INSERT INTO telecentro VALUES ('26492', ' ORGANIZACAO INDIGENA PATAXO DA ALDEIA MUA MIMATXI', 'ALDEIA MUA MIMATXI', '35550-000', 'Itapecerica', 'MG', 'ESCOLA  INDÍGENA PATAXÓ MOÃM MIMATY -  integrada a rede publica estadual de ensino - Secretaria Estadual de Educação - MG ', 'Rodrigues Medeiros', 'FALTA ', 'FALTA', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 48);
INSERT INTO telecentro VALUES ('26601', ' Associação dos Agricultores e Moradores da Comunidade do Torrão do Matapi', ' Av. Nações Unidas 579 - Bairro:  Laguinho', '', 'Torrão do Matapi', 'AM', 'Comunidade Torrão do Matapi/  Rodovia Macapá Jarí quilômetro 10 - Torrão do Matapi', 'Edílson da Silva Ramos e Valdiney Silva da Costa', ' edilsontorrao@yahoo.com.br', '(96) 3223-2923', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 49);
INSERT INTO telecentro VALUES ('26687', 'Comunidade Aldeia Apolima Arara ', '', '', 'Marechal Thaumaturgo', 'AC', 'Comunidade Aldeia Apolima Arara  - Acesso fluvial distancia 1:45 minutos subindo o rio amônia. São dois dias de viagem via fluvial,subindo o rio (sentido da nascente).', 'Celso Freitas e Benki Ashaninka', 'celso.pmmt@hotmail.com, pmmth@gmail.com, benkipiyanko@yahoo.com, beijaflorbenki@hotmail.com', '(068) 33251050', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 50);
INSERT INTO telecentro VALUES ('26895', 'Comunidade Areal', 'Conselho das Comunidades Afro-Descendentes do Amapá - Areal - Av. Nações Unidas 579 - Bairro: Laguinho', '', 'Macapá', 'AM', '', 'José Paixão e José Maria', ' ccada@ccada.org.br', '(96)3212-7319', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 51);
INSERT INTO telecentro VALUES ('26992', ' Associação de Moradores Nativos e Amigos da Praia Negra', 'Praia da Ponta Negra, 2º Distrito de Paraty', '23970-000', 'Paraty', 'RJ', '', 'Presidente da Associação Adenicio dos Remedios', ' praianegra@hotmail.com', '(024)9956-8822', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 52);
INSERT INTO telecentro VALUES ('27043', ' Associação dos Moradores da Praia do Sono', 'Praia do Sono,   2° distrito de Paraty', ' 23970 - 000', 'Paraty', 'RJ', '', 'Geazi dos Santos Araújo', 'FALTA ', '(24) 99434104', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 53);
INSERT INTO telecentro VALUES ('27066', 'Secretaria Municipal de Educação - Calhaus/ EMPC', '  Escola Municipal Praia do Calhaus: Praia do Calhaus, 2° Distrito de Paraty', '23970-000', 'Paraty', 'RJ', '', 'Elizete Malvão - Secretária de Educação', 'FALTA ', '(24) 3371-2512', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 54);
INSERT INTO telecentro VALUES ('27101', 'Associação de Moradores e Amigos  do Pouso da Cajaíba', ' Pouso da Cajaíba, 2° Distrito de Paraty ', '23970-000', 'Paraty', 'RJ', '', 'Vagner Luis do Nascimento', 'FALTA ', '(24) 9911 0035', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 55);
INSERT INTO telecentro VALUES ('27134', ' Instituto Antônio Carlos Jobim', '/Rua Jardim Botânico 674 Sala 620', '', 'Rio de Janeiro', 'RJ', 'Estrada RJ-134 / 5 Km / 15 minutos de carro. Resp: Coordenador Geral do Projeto Águas De Março', 'Marcos Brasileiro Madeira', ' acaocriativa@acaocriativa.net ou In@In.com.br', ' (21) 3255-5308', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 56);
INSERT INTO telecentro VALUES ('27153', 'REJ / INEA', 'Sede da Reserva, REJ / INEA Paraty Mirim, 2° Distrito de Paraty', '23970-000', 'Paraty', 'RJ', '', 'Rodrigo Rocha Barros', 'reservajuatinga@gmail.com', '(21) 8596-5192', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 57);
INSERT INTO telecentro VALUES ('27189', 'Comunidade Aldeia São Francisco ', 'Organização Indígena Potiguara do Estado da Paraíba – OIP/PB - /Aldeia do Forte s/n', '', 'Aldeia do Forte - Comunidade Aldeia São Francisco', 'PB', 'Comunidade Aldeia São Francisco  - Acesso através da estrada vicinal ligando a sede do município a Aldeia São Francisco, 8 km do Centro, 25 minutos de viagem.', 'Antonio Ferreira da Silva', 'marcospotiguara@ig.com.br', '(83) 9114-0267', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 58);
INSERT INTO telecentro VALUES ('27217', ' Comunidade Aldeia Jaraguá    ', 'Aldeia do Forte -  Comunidade Aldeia Jaraguá', '', 'Aldeia do Forte - Comunidade Aldeia Jaraguá', 'PB', 'Organização Indígena Potiguara do Estado da Paraíba – OIP/PB - Comunidade Aldeia Jaraguá  /Aldeia do Forte s/n    Acesso através da estrada vicinal ligando a sede do município a Aldeia Jaraguá, 5 km do Centro, 10 minutos de viagem.', 'Antonio Ferreira da Silva', 'marcospotiguara@ig.com.br', '(83) 9114-0267', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 59);
INSERT INTO telecentro VALUES ('27244', ' Comunidade Aldeia Silva de Belém', '', '', 'Aldeia do Forte – Comunidade Aldeia Silva de Belém', 'PB', 'Comunidade Aldeia Silva de Belém   Acesso através da BR Estadual (6 km) ligando as cidade de Rio Tinto a Mamanguape, seguindo 17 km pela BR 101 no sentido Mamanguape/Natal-RN, entra a direita na estrada vicinal do Campart II e segue por mais 3 km, 30 min', 'Antonio Ferreira da Silva', 'marcospotiguara@ig.com.br', '(83) 9114-0267', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 60);
INSERT INTO telecentro VALUES ('24710', ' Instituto Cultural Casa Via Magia', 'Rua Henriqueta Catarino, n 123 
 - Bairro: Federação', '40230-101', 'Salvador', 'BA', '', 'Heide Costa', 'viamagia@viamagia.org', '71 3247-0068
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 83);
INSERT INTO telecentro VALUES ('27269', ' Comunidade Aldeia Jacaré de César    ', '', '', 'Aldeia do Forte-  Comunidade Aldeia Jacaré de César', 'PB', 'Acesso seguindo da sede do município pela PB 041 no sentido Marcação/Baía da Traição, por 03 km, daí segue a esquerda pela estrada vicinal por mais 4 km até a aldeia Jacaré de César, 15 minutos de viagem.', 'Antonio Ferreira da Silva', 'marcospotiguara@ig.com.br', '83 9114-0267', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 61);
INSERT INTO telecentro VALUES ('27283', 'Comunidade Aldeia São Miguel ', '', '', 'Aldeia do Forte   Comunidade Aldeia São Miguel', 'PB', 'Comunidade Aldeia São Miguel  Acesso através da estrada vicinal que liga a sede do município a Aldeia São Miguel, distante 1 km, 5 minutos de viagem.', 'Antonio Ferreira da Silva ', 'marcospotiguara@ig.com.br', '83 9114-0267', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 62);
INSERT INTO telecentro VALUES ('27291', 'Comunidade Aldeia Galêgo   ', '', '', 'Aldeia do Forte   Comunidade Aldeia Galego', 'PB', ' Comunidade Aldeia Galêgo   Acesso através da estrada vicinal ligando a sede do município a Aldeia Galego, 5 km do Centro, 15 minutos de viagem.', 'Antonio Ferreira da Silva', 'marcospotiguara@ig.com.br', '83 9114-0267', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 63);
INSERT INTO telecentro VALUES ('27330', 'Comunidade Aldeia Cumarú ', '', '', 'Aldeia do Forte   Comunidade Aldeia Cumarú', 'PB', 'Acesso através da estrada vicinal que liga a sede do município a Aldeia Cumarú, seguindo da sede do município passando pela aldeia Forte, chegando na aldeia Galego segue a direita, passa pela aldeia Lagoa do Mato até a aldeia Cumarú, 013 km, 30 min', 'Antonio Ferreira da Silva ', 'marcospotiguara@ig.com.br', '83 9114-0267', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 64);
INSERT INTO telecentro VALUES ('27369', 'Comunidade Aldeia Camurupim ', '', '', 'Aldeia do Forte   Comunidade Aldeia Camurupim', 'PB', 'Acesso seguindo da sede do município pela PB 041 no sentido Marcação/Baía da Traição, por 04 km, daí segue a direita pela estrada vicinal por mais 6 km até a aldeia Camurupim, 20 minutos de viagem. ', 'Antonio Ferreira da Silva ', 'marcospotiguara@ig.com.br', '83 9114-0267', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 65);
INSERT INTO telecentro VALUES ('23585', 'Secretaria de Mineração e Meio Ambiente Itaituba', ' Av. Belém, 47 - Bairro: Centro', '', 'Itaituba', 'PA', '', 'Silvia Helena Pereira da Silva', 'silvia.itb@hotmail.com', '(93)3518-1185', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 66);
INSERT INTO telecentro VALUES ('23712', 'Associação Rede Cananéia ', 'Associação Rede Cananéia  - Comunidade Caiçara -  Rua Clodovel José de Lima, 20- Carijo', '11990-000', 'Cananéia', 'SP', '', 'Cleber Rocha Chiquinho', 'cleberbio@yahoo.com.br', '(13)9114-0749', 'SALA VERDE', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 67);
INSERT INTO telecentro VALUES ('23757', 'Fundação Universidade de Passo Fundo', 'Fundação Universidade de Passo Fundo - Prédio N6 - BR 285, Km 171, B - Bairro: São José', '99001-970', 'Passo Fundo', 'RS', '', 'FALTA', 'FALTA ', 'FALTA', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 68);
INSERT INTO telecentro VALUES ('23954', 'Associação Projeto Presente', 'AL. Das Orquídeas 11 - Distrito de Lapinha', '35847-000', 'Santana do Riacho', 'MG', 'Praça central do distrito de Lapinha - Serra do cipó - MG', 'Christiane Neto ou Vilmar Aparecido', 'vilmarlapinha@yahoo.com.br, chrisnetto@yahoo.com.br', '(31)3718-6171', 'SALA VERDE', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 69);
INSERT INTO telecentro VALUES ('24091', ' Prefeitura Municipal de Três Corações', 'Pedro Bonésio, 386   - Bairro: Centro', '37410-000', 'Três Corações', 'MG', 'Prefeitura Municipal de Três Corações - Rua Coronel Alfredo Silva (endereço alternativo)
', 'Fausto Mesquita Ximenes ', 'salaverdetc@hotmail.com ', '35) 3691-1102
', 'SALA VERDE', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 70);
INSERT INTO telecentro VALUES ('24103', 'Prefeitura de Osório', 'Rua Marechal Floriano, 980 - Bairro: Centro', ' 95.520-000', 'Osório', 'RS', 'Prefeitura Municipal de Osório - Rua Jorge Dariva, 1251 – Centro -Osório (endereço alternativo)', 'Leda Famer', 'pmoambiente@yahoo.com.br', '(51) 3663-1947
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 71);
INSERT INTO telecentro VALUES ('24111', 'Prefeitura Municipal de Estrela', 'Rua Coronel Flores, 353 - Bairro: Centro', '95880-000', 'Estrela', 'RS', 'Prefeitura Municipal de Estrela - Rua Júlio de Castilho n° 380- Centro- Estrela /RS (endereço alternativo)', 'Angela Maria Schossler', 'angela@estrela-rs.com.br', '51 9981-1044
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 72);
INSERT INTO telecentro VALUES ('24130', 'Departamento de Água e Esgotos de Bagé', 'Rua João Teixeira de Oliveira, 150 - Bairro: Narciso Sune', '96400-100', ' Bajé', 'RS', 'Departamento de Água e Esgotos de Bagé - Rua Marechal Deodoro, 541- Bagé /RS (endereço alternativo)
', 'Vanessa Souza', 'educacaoambiental@daeb.com.br', '53 32427255
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 73);
INSERT INTO telecentro VALUES ('24318', ' Prefeitura Municipal de Ouro Verde do Oeste', 'Rua Cuiabá, 435 - Bairro: Centro', '85933-000', 'Ouro Verde do Oeste', 'PR', 'Prefeitura Municipal de Ouro Verde do Oeste – Rua Curitiba, 657- Ouro Verde do Oeste/PR (endereço alternativo)
', 'Maria Cristina Batista Cordeiro ou Roberto Antonio Webber', 'webberroberto@hotmail.com, crisbatcordeiro@hotmail.com', '45 3251-1315
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 74);
INSERT INTO telecentro VALUES ('24334', ' Prefeitura Municipal de Medianeira', 'Rua Paraná s/n - terminal rodoviário,  sala 6 - Bairro: Centro', '85884000', 'Medianeira', 'PR', 'Prefeitura Municipal de Medianeira - Rua Argentina 1546- Centro- Medianeira/PR (endereço alternativo)', 'Lusiani Zanuzo', 'lusianizanuzo@yahoo.com.br', '
 
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 75);
INSERT INTO telecentro VALUES ('24338', 'ALMA- Associação Intercultural de Projetos Sociais', 'Rua Mar del Plata, 93 - Bairro: Vila Rodrigues', '', 'Londrina', 'PR', '', 'Luciana Aranda Barrozo', 'peroba.rosa.salaverde@gmail.com', '43 3327-3219', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 76);
INSERT INTO telecentro VALUES ('24365', 'Casa Familiar Rural', 'Linha Santa Barbára', '85575-000', 'Sao Jorge DOeste', 'PR', '', 'Jorge Henrique Rupp', 'espacoverde@hotmail.com', '46 3534-1497 
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 77);
INSERT INTO telecentro VALUES ('24388', 'Prefeitura Municipal de Vitória da Conquista', 'Secretaria Municipal DO Meio Ambiente - Praça Joaquim Ccorreira, 55  
 - Bairro: Centro', '45100-000', 'Vitória da Conquista', 'BA', 'RUA ACESSO À POUSADA DA CONQUISTA – S/N – CENTRO - 
 ', 'Ricardo Santos Marques', 'admricardomarques@gmail.com', '

', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 78);
INSERT INTO telecentro VALUES ('24410', ' Instituto Chico Mendes de Conservação da Biodiversidade', 'Universidade do Estado de Mato Grosso  - Bairro: Cavalhada 2', '', 'Cárceres', 'MT', 'Av. Getúlio Vargas, S/N- C.O.C – Cáceres- MT (endereço alternativo)
', 'Alessandra Morini', 'alessandramorini@bol.com.br', '65 3221-0507
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 79);
INSERT INTO telecentro VALUES ('24431', ' Núcleo de Est. em Tec. para Soc. do con. em Bio do Inst. de Ciências Biológicas da Universidade Federal de Goiás', 'Universidade Federal de Goiás – Instituto de Ciências Biológicas - C.P. 131 – Campus II 
', '', 'Goiânia', 'GO', 'Praça Dr. Freitas Carvalho, 246 – Centro ( endereço alternativo)
', 'Simone Maria Teixeira de Sabóia-Morais', 'saboias@terra.com.br', '62 3521-1485
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 80);
INSERT INTO telecentro VALUES ('24465', 'Centro de Conservação e Manejo de Répteis e Anfíbios- RAN/ ICMBio', 'Rua Belém , 115 - Bairro: Bom Pastor', '', 'Juruti', 'PA', 'Centro de Conservação e Manejo de Répteis e Anfíbios- RAN/ ICMBio - Rua 229 n°95 Setor Leste- Goiânia – GO (Endereço do proponente)
', 'Maria de Lourdes C. S. Cantarelli', 'mlourdescantar@hotmail.com', '62 3901-1997
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 81);
INSERT INTO telecentro VALUES ('24703', 'Polícia Civil do Estado do Pará', 'Rodovia Augusto Montenegro, 155 
', '', 'Nazaré', 'PA', 'Av. Magalhães Barata, 209 – Nazaré (endereço alternativo)
', 'Aurélio Walcyr Paiva', 'salaverde@policiacivil.pa.com.br', '91 3243-0122
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 82);
INSERT INTO telecentro VALUES ('24887', ' Fundação Movimento Ondazul', 'Ladeira da Misericórdia, 07  
 - Bairro: Sé', '40026-045', 'Salvador', 'BA', '', 'Daiane Gomes Santos  ', 'daiane@ejuventude.org.br', '71 3367-5891
', 'SALA VERDE', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 84);
INSERT INTO telecentro VALUES ('24906', 'Prefeitura Municipal de Dores do Indaiá', 'Praça do Rosário 268  - Bairro: Centro', '', 'Indaiá', 'MG', 'Rua Mestra Angélica- Dores do Indaiá – MG (endereço alternativo)
', 'Maria Cristina de Sousa Matos', 'mariacristinadesousa@yahoo.com.br', '37 3551-2916
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 85);
INSERT INTO telecentro VALUES ('24927', 'Prefeitura de Ibiraci', 'Escola Municipal Tio Angelo - Av. Peixoto, 225 - Bairro: Bairro Rural Lage', '', 'Ibiraci  ', 'MG', 'Rua Seis de Abril, 912 – Ibiraci /MG - (endereço proponente)
', 'Dgianni Domingos Andrade Neves', 'dama@ibiraci.mg.gov.br', '35 3544-1076
', 'SALA VERDE', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 86);
INSERT INTO telecentro VALUES ('24934', 'Caminhos da Serra, Ambiente, Educação e Cidadania - Bairro Capelinha', 'Rua do Carmo 296, Bairro Distrito de Santo Antonio do Norte  
', '35863000', 'Conceição do Mato Dentro', 'MG', 'Rua José Augusto Gomes, 149- Capelinha -Gouveia/ MG - endereço do proponente
', 'Giordani Oliveira Ottone', 'jojosom@ig.com.br', '31 38685032
', 'SALA VERDE', 'GESAC - TELECENTROS.BR', 'Recondicionado', '', 87);
INSERT INTO telecentro VALUES ('24962', ' Prefeitura Municicpal de São Gabriel do Oeste', 'Av. Getúlio Vargas, 1276 
 - Bairro: Centro', '79490-000', 'São Gabriel do Oeste', 'MS', 'Av. Getúlio Vargas, 600- São Gabriel do Oeste-MS - endereço do proponente
', 'André Mauro Dropa de Bortoli', 'andrebortoli@terra.com.br, sde.andre@saogabriel.ms.gov.br', '67 3295-1405
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 88);
INSERT INTO telecentro VALUES ('24968', 'Prefeitura Municipal de Jateí', 'Av. Weimar Gonçalves Torres n°772 
 - Bairro: Centro', '79720-000', 'Jateí', 'MS', 'Av. Bernadete Santos Leite n°382- Centro Jateí-MS - endereço entidade proponente
', 'Gerson Pereira Dias', 'semma@jatei.ms.gov.br', '67 3465-1152
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 89);
INSERT INTO telecentro VALUES ('24942', 'Caminhos da Serra, Ambiente, Educação e Cidadania - Distrito Santo Antonio do Norte', 'Ala meda Souza Lima, 2450 
 - Bairro: Capelinha', '', 'Gouveia', 'MG', 'Rua José Augusto Gomes, 149- Capelinha -Gouveia/ MG - endereço entidade proponente
', 'Alex Mendes Santos', 'alexms@jknet.com.br', '38 3543-2091 
', 'SALA VERDE', 'Não solicitou', 'Recondicionado', '', 90);
INSERT INTO telecentro VALUES ('28525', 'Associação das famílias da casa familiar rural de Altamira (CFRA)', 'Ramal Itaboca – Casa Família Rural de Altamira - Trav. Agrário Cavalcante Nº 565 - Bairro: Centro', '68371000 ', 'Altamira', 'PA', '', 'Domingos Alves de Oliveira', 'sttrdealtamira@yahoo.com.br', '93 91326110  e 35151843
', 'FVPP', 'GESAC - TELECENTROS.BR', 'Novo', '', 91);
INSERT INTO telecentro VALUES ('28539', 'Casa Familiar Rural Uruará', 'Casa Familiar Rural  - Km 185 faixa - Bairro: BR 230 meio Rural
', '68140000', 'Uruará', 'PA', '', 'Aguinaldo Patrocinio de Oliveira', 'agnaldo9@yahoo.com', '93 35321577
', 'FVPP', 'GESAC - TELECENTROS.BR', 'Novo', '', 92);
INSERT INTO telecentro VALUES ('28528', ' Associação da Casa Familiar Rural de Placas', 'Comunidade de São Mateus - BR 230. Km 255, Travessão da 57, Lote 16 Gleba 57     
 - Bairro: Zona Rural', '68138-000', 'Placas', 'PA', '', 'Valdo Oliveira de Sousa', 'jdsousapt@yahoo.com.br', '93 3552-1213
', 'FVPP', 'GESAC - TELECENTROS.BR', 'Novo', '', 93);
INSERT INTO telecentro VALUES ('28550', ' Associação da Casa Familiar Rural de Rurópolis', 'Rodovia Transamazônica - km 160 ( Altamira-Itaituba) zona Rural  Lote 10 – Gleba 35   
', '68165-000 ', 'Rurópolis', 'PA', '', 'Guido Antonio Kafer', 'FALTA ', '93 35431288 
', 'FVPP', 'GESAC - TELECENTROS.BR', 'Novo', '', 94);
INSERT INTO telecentro VALUES ('28531', ' Associação dos Pequenos Produtores  Rurais de Paksamba', 'Vitória do Xingu - km 55 Travessão do CENEC - Associação dos Pequenos Produtores  Rurais de Paksamba – APRUPAVIX - Bairro: Zona Rural  
', '', 'Vitória do Xingu', 'PA', '', 'Sebastião de Castro Silva ', 'marcia_xingu@yahoo.com.br', '93 3515-2406
', 'FVPP', 'GESAC - TELECENTROS.BR', 'Novo', '', 95);
INSERT INTO telecentro VALUES ('28535', 'Associação da Casa Familiar Rural de Brasil Novo', 'Comunidade Barraco Queimado vicinal 14 - km 03 Zona Rural 
', '68148-000', 'Brasil Novo', 'PA', '', 'David Carlos Paiva', 'FALTA ', '93 35141204
', 'FVPP', 'GESAC - TELECENTROS.BR', 'Novo', '', 96);
INSERT INTO telecentro VALUES ('28544', 'Associação da Casa Familiar Rural de medicilândia', 'Rodovia Transamazônica - km 100 norte ( Altamira-Itaituba) zona Rural 
', ' 68145-000 ', 'Medicilândia', 'PA', '', 'Antonio Leandro Augusto da Silva', 'FALTA ', '91 36941433
', 'FVPP', 'GESAC - TELECENTROS.BR', 'Novo', '', 97);
INSERT INTO telecentro VALUES ('1413', 'Federação das Organizações Indígenas do Rio Negro', 'Av: Alvaro Maia N° 79   - Bairro: Centro', '69750 – 000', 'São Gabriel da Cachoeira', 'AM', 'Endereço alternativo: Av. 31 de Março SN, Centro.São Gabriel da Cachoeira-AM (69750-000) ', 'Eliana Maria Saldanha Pedrosa e  Vilmara de Oliveira monteiro', 'FALTA ', 'FALTA', 'FOIRN', 'Não solicitou', 'Novo', '', 98);
INSERT INTO telecentro VALUES ('32326', 'Associação Escola Pamáali', 'Comunidade Escola Baniwa Coripaco Pamáali / Médio Rio Içana, Terra Indígena Alto Rio Negro
', ' 69750-000', ' São Gabriel da Cachoeira', 'AM', '', 'FALTA', 'FALTA ', 'FALTA', 'FOIRN', 'GESAC - TELECENTROS.BR', 'Novo', '', 99);
INSERT INTO telecentro VALUES ('32331', 'Escola Municipal Indígena de Santa Maria ', 'Escola Municipal Indígena de Santa Maria - Comunidade de Santa Maria- Margem esquerda do Rio Uaupés (região de Iauaretê) ', '', 'São Gabriel da Cachoeira', 'AM', 'Endereço Alternativo: AV. Alvaro Maia N° 79  ,Centro / São Gabriel da Cachoeira-AM (69750 – 000) OU  Av. 31 de Março SN,Centro.São Gabriel da Cachoeira-AM (69750-000) 
', 'Inácia Nogueira Galvão', 'FALTA ', 'FALTA', 'FOIRN', 'GESAC - TELECENTROS.BR', 'Novo', '', 100);
INSERT INTO telecentro VALUES ('32360', 'Ponto de Cultura Rio Negro ', 'Av. 31 de Março s/n
 - Bairro: Centro', '69750-000', 'São Gabriel da Cachoeira', 'AM', 'Endereço alternativo -> PONTO DE CULTURA -  Av: Alvaro Maia N° 79  ,Centro / São Gabriel da Cachoeira-AM (69750 – 000)
', 'Eliana Maria Saldanha Pedrosa , Vilmara de Oliveira monteiro', 'FALTA ', 'FALTA ', 'FOIRN', 'GESAC - TELECENTROS.BR', 'Novo', '', 101);
INSERT INTO telecentro VALUES ('32370', 'São Gabriel da Cachoeira', 'Av. Álvaro Maia 79, Centro.
 - Bairro: Centro', '69750-000', 'São Gabriel da Cachoeira', 'AM', '', 'FALTA', 'FALTA ', '92 81454203  97 3471-1632 e 3471-1156
', 'FOIRN', 'GESAC - TELECENTROS.BR', 'Novo', '', 102);
INSERT INTO telecentro VALUES ('27571', ' Assossiação dos Moradores da Reserva Extrativista  ARIOCA APRUANÃ', 'Comunidade Melancial – Assoc. dos Morad. da Res. Extrat. ARIOCA APRUANÃ M/E RIO OEIRAS CC RIBEIRA-CEP 68.470-000  
', '68470-000', 'Oeiras do Para', 'PA', '', 'Jorge Almeida Maciel', 'FALTA ', '91 91983497
', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Novo', '', 103);
INSERT INTO telecentro VALUES ('27589', 'AJUDI', 'Passagem Guarani, 698', ' 68400-000', 'Cametá', 'PA', '', 'Paulo Cesar Pinto Mendonça', 'ajudicameta@ig.com.br', '81570958
', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Novo', '', 104);
INSERT INTO telecentro VALUES ('27609', 'FEMA-PRUM', 'Rua João machado, 260  
', '68420-000', 'Mocajuba', 'PA', '', 'Vicente de Paulo', 'FALTA ', 'FALTA', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Novo', '', 105);
INSERT INTO telecentro VALUES ('27638', 'Prelazia de Cametá do Tocantins', 'Est. Cônego Siqueira, 1653  
', '68400-000', 'Cametá', 'PA', '', 'Pe. Ivaldo Pinheiro Rodrigues', 'ivaldo76@hotmail.com', '37811157 e 81686152
', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Novo', '', 106);
INSERT INTO telecentro VALUES ('27657', 'Associação Paraense de Apoio as Comum Carentes', 'Travessa Sete de Setembro nº 150 
', '684000-000', 'Cametá', 'PA', '', 'Franquismar Marciel de Souza', 'franquiagri@yahoo.com.br', '91 3781-2062
', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Novo', '', 107);
INSERT INTO telecentro VALUES ('27685', 'IPEDE - SEDE', 'Tv Ipiranga 856, Bairro novo 
', '68400-000', 'Cametá', 'PA', '', 'Paulo Roberto Nunes de Aviz', 'pauloviz@ig.com.br', '91 3781-1949e 91747673
', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Novo', '', 108);
INSERT INTO telecentro VALUES ('27752', 'Associação Casa Familiar Rural', 'Estrada do Coco, Ramal Gurupá, km 3.0.
', '', 'Cametá', 'PA', '', 'Vicente dos Santos do Carmo Figueiredo', 'FALTA ', '91252669
', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Novo', '', 109);
INSERT INTO telecentro VALUES ('27785', 'Associação dos Remanescentes de Quilombos - ARQUIM', 'Vila Localidade de Mupí  
', '68.400-000', 'Cametá', 'PA', '', 'José Maria de Carvalho Souza', 'cesarbosque@yahoo.com.br', '', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Novo', '', 110);
INSERT INTO telecentro VALUES ('27803', 'Associação Extrativista Ipaú Anilzinho  - TREPEA', 'Rua Embratel S/n', '68465-000', 'Baião', 'PA', '', 'Tiago Serrão Machado', 'FALTA ', '91 8830 1827
', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Novo', '', 111);
INSERT INTO telecentro VALUES ('27814', 'Sindicato dos Trabalhadores e Trabalhadoras Rurais de Bagre', 'Av. Presidente Vargas, 345  
', '68400-000', 'Bagre', 'PA', '', 'Maria José Souto Maia', 'mariajsmaia@hotmail.com', '3606-1127 ou 91580452
', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Novo', '', 112);
INSERT INTO telecentro VALUES ('27888', 'Associação Comunitária Rádio Ajuru FM', 'Tv. Severino Leão, 342 A
', '', 'limoeiro do Ajuru', 'PA', '', 'José Augusto Sacramenta Leão', 'vereadorzeaugustu@yahoo.com.br', '92020507
', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Novo', '', 113);
INSERT INTO telecentro VALUES ('27901', 'Cart', 'Comunidade Ponta Grande - BR 422 - Km 23
', '', 'Cametá', 'PA', '', 'Manoel nazareno Gonçalves Damasceno', 'cartcooperativa@yahoo.com.br', '91696879
', 'IPEDE', 'GESAC - TELECENTROS.BR', 'Novo', '', 114);
INSERT INTO telecentro VALUES ('25528', 'Centro de Fornação dos Povos da Floresta  ', 'Comissão Pro Índio do Acre CPI/AC Estrada Transacreana Km 8 - Bosque     
', ' 69907-580', 'Rio Branco', 'AC', '20 min de carro do centro de Rio Branco', 'Antonio Ferreira da Silva', 'marcospotiguara@ig.com.br', '83 9114-0267, 3296-1038, 3241-8746
', 'REDE POVOS DA FLORESTA', 'GESAC - TELECENTROS.BR', 'Novo', '', 115);
INSERT INTO telecentro VALUES ('00000', 'CRC BAHIA', 'Rua do radioamadores s/n  - Bairro: Pituaçu', '41741080', 'Salvador', 'BA', '', 'Cristiane,  Carla ou Edson (técnico)', 'crcbahia@pangea.org.br, carlamuniz@gmail.com, edsonmatosjr@hotmail.com', '71 33797326, 92363744 (grasiele), 99718258 (sônia), 91292501 (carla)', 'CRC', 'Não solicitou', 'Recondicionado', '', 116);
INSERT INTO telecentro VALUES ('25041', 'Associação dos Pequenos Agricultores do Wanderley', 'Comunidade de Wanderley   
', '47.100-000', 'Barra', 'BA', 'Endereço Alternativo - Colonia dos Pescadores Z-30 de Barra - Rua Nova da Manga,102 Cep 47.100.000 Barra – Bahia
', 'Jecino Gomes Rodrigues', 'FALTA ', '(74) 3662-2307
', 'Ingá', 'GESAC - TELECENTROS.BR', 'Novo', '', 117);
INSERT INTO telecentro VALUES ('25063', 'Associação Comunitaria de Itacoatiara', 'Comunidade de Itacoatiara  
', '47.100-000', 'Barra', 'BA', 'Endereço alternativo: Colonia dos Pescadores Z-30 de Barra - Rua Nova da Manga,102 Cep 47.100.000 Barra – Bahia
', 'Manoel Jorge da Silva', 'FALTA ', '(74) 3662-2307
', 'INGÁ', 'GESAC - TELECENTROS.BR', 'Novo', '', 118);
INSERT INTO telecentro VALUES ('25078', 'Associação dos Pequenos Produtores Rurais do Brejo do Saco', ' Brejo do Saco 
', '47.100-000', 'Barra', 'BA', 'Ingá através da Colonia dos Pescadores Z-30 de Barra - Rua Nova da Manga,102 Cep 47.100.000 Barra – Bahia
', 'Geraldo Pereira Alves', 'FALTA ', '(74) 3662-2307
', 'INGÁ', 'GESAC - TELECENTROS.BR', 'Novo', '', 119);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO usuario VALUES (1, 'admin', 'ff075700e0fd7e82f9a10286fb9a76c6', 'admin@ambientedigital.org', 'Admin');


--
-- Name: bolsista_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bolsista
    ADD CONSTRAINT bolsista_pkey PRIMARY KEY (id);


--
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY telecentro
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- Name: telecentro_codigo_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY telecentro
    ADD CONSTRAINT telecentro_codigo_key UNIQUE (codigo);


--
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- Name: telecentro_id_key; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX telecentro_id_key ON telecentro USING btree (id);


--
-- Name: fk_telecentro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bolsista
    ADD CONSTRAINT fk_telecentro FOREIGN KEY (id_telecentro) REFERENCES telecentro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


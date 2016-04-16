--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: locations; Type: TABLE; Schema: public; Owner: gus1775; Tablespace: 
--

CREATE TABLE locations (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    name text,
    coordinates point,
    score integer,
    address text,
    reports text[]
);


ALTER TABLE locations OWNER TO gus1775;

--
-- Name: reports; Type: TABLE; Schema: public; Owner: gus1775; Tablespace: 
--

CREATE TABLE reports (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    location_id uuid,
    report text
);


ALTER TABLE reports OWNER TO gus1775;

--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: gus1775
--

COPY locations (id, name, coordinates, score, address, reports) FROM stdin;
de6b96c8-036d-4b71-aa5e-fd74e4a4e4c1	\N	(30.2783956405000012,-97.7925266148999981)	\N	9, Sugar Creek Drive, West Lake Hills, Travis County, Texas, 78746, United States of America	\N
39a92861-5fe8-404f-aa7e-6bdeba077250	\N	(30.2338448070999988,-97.7988779204000025)	\N	4401, West Gate Boulevard, Austin, Travis County, Texas, 78745, United States of America	\N
8bd41550-3145-4052-a8ea-75514ff25c22	\N	(30.2511648509999986,-97.6836937273999979)	\N	828, Ed Bluestein Boulevard, Austin, Travis County, Texas, 78721, United States of America	\N
05055bc6-fe74-43d3-9790-dcb89b79ae73	\N	(30.3152815782000005,-97.7693704132999954)	\N	3403, Foothill Parkway, Austin, Travis County, Texas, 78731, United States of America	\N
edcb3f55-9120-4a3b-8041-c65bf1d05823	\N	(30.3200413429999998,-97.7180431360000057)	\N	5511, Avenue G, Austin, Travis County, Texas, 78751, United States of America	\N
fa67a9ca-55cf-4254-8286-81f12b8d1847	\N	(30.3056065767000007,-97.7787221366999972)	\N	Scenic Drive, Austin, Travis County, Texas, 78703, United States of America	\N
947fca11-0728-4cd6-9380-8ea32df3f906	\N	(30.2640662507000009,-97.7546504338999966)	\N	1100 1/2, West Riverside Drive, Austin, Travis County, Texas, 78704, United States of America	\N
34af4c46-ccd5-4be5-b389-298c469ad24e	\N	(30.2100544767999999,-97.8102291163999951)	\N	2508, Aldford Drive, Austin, Travis County, Texas, 78745, United States of America	\N
cd13b247-7942-47c4-9142-f6f557528737	\N	(30.1881496984999984,-97.6978013983000011)	\N	Burleson Road, Austin, Travis County, Texas, 78617, United States of America	\N
d923d5e0-ac8a-47c6-bc9e-62a8c5e4740f	\N	(30.3122056887000006,-97.7036280986999941)	\N	1224, Corona Drive, Austin, Travis County, Texas, 78723, United States of America	\N
8c2d93c0-8e2b-46d5-8b19-5a3862d19c03	\N	(30.2981184878000001,-97.820830851300002)	\N	1400, Yaupon Valley Road, West Lake Hills, Travis County, Texas, 78746, United States of America	\N
81020aa6-24c9-4938-be70-74198a90aa54	\N	(30.1868460170999988,-97.7775318460000022)	\N	400, Corral Lane, Austin, Travis County, Texas, 78745, United States of America	\N
390678e7-9da6-4c8c-a88a-24babd9c2d05	\N	(30.1977385681000001,-97.7754925976999942)	\N	212, North Bluff Drive, Austin, Travis County, Texas, 78745, United States of America	\N
7e72f4f1-d236-4689-bba1-65aa067b0e79	\N	(30.1682251848999989,-97.7278340625999959)	\N	Onion Creek Trail, Austin, Travis County, Texas, 78744, United States of America	\N
5f2cb901-a419-475e-87f1-4329dc1639be	\N	(30.2030510541999995,-97.7566336024000009)	\N	KIPP, Teri Road, Austin, Travis County, Texas, 78744, United States of America	\N
175e2e9c-7b0a-46ea-80ca-6172eaa62684	\N	(30.2948229996000009,-97.7365785647999985)	\N	103, East 31st Street, Austin, Travis County, Texas, 78705, United States of America	\N
393bd626-6a33-4009-a51f-77ae63106c3b	\N	(30.3042630493999994,-97.7641566263999948)	\N	Randalls 2471, 2727, Exposition Boulevard, Austin, Travis County, Texas, 78731, United States of America	\N
7b53b570-eeb7-4fe3-b6b1-715b74f53c3b	\N	(30.1903446047999999,-97.7687357905000027)	\N	6511, I 35 Frontage Road, Austin, Travis County, Texas, 78744; 78744; 78744; 78747; 78652; 78747; 78747, United States of America	\N
cd3c1dd8-a077-4ee6-b799-d977ffb821f6	\N	(30.3287280087000006,-97.7802101309000022)	\N	3925, Westlake Drive, Travis County, Texas, 78731, United States of America	\N
6341312d-d41a-419f-a07d-5b6c7b63d276	\N	(30.2775478352999983,-97.8078772132000012)	\N	3622, Doe Trail, StoneWall Ridge, Travis County, Texas, 78746, United States of America	\N
d707d2b4-87db-4b79-be6c-7192f55822ec	\N	(30.2750481532999984,-97.750805780099995)	\N	825, West 11th Street, Austin, Travis County, Texas, 78701, United States of America	\N
be1db2fe-5244-4d10-a735-3b6aa2410c2c	\N	(30.1700561058999988,-97.7740427860999972)	\N	Brockman Lane, Travis County, Texas, 78744, United States of America	\N
f700ba89-fc91-4149-834a-940abc965521	\N	(30.2188205717000002,-97.6746362163000015)	\N	Bastrop Highway, Austin, Travis County, Texas, 78617, United States of America	\N
418d6c45-7aaa-4fd6-bbd7-78bdd94345c6	\N	(30.2212288057999992,-97.7619791418999995)	\N	205, East Ben White Boulevard, Austin, Travis County, Texas, 78704, United States of America	\N
d8a7c720-f0f8-49bc-a72f-ffbab8e6174d	\N	(30.3094400752999995,-97.7585186949000047)	\N	2344, West 35th Street, Austin, Travis County, Texas, 78703, United States of America	\N
5c841c91-6f0c-4c46-8ccd-35e5a24d6340	\N	(30.3021384209000004,-97.7518985361000006)	\N	1509, West 31st Street, Austin, Travis County, Texas, 78703, United States of America	\N
9e28b909-2a69-4515-b56a-c3731e584a93	\N	(30.2826609427000015,-97.7679335430999998)	\N	2106, West 10th Street, Austin, Travis County, Texas, 78703, United States of America	\N
5d4316e3-67f9-4258-b31b-d1cac3d526b0	\N	(30.1937601827000002,-97.7078435850999938)	\N	4299, Felter Lane, Travis County, Texas, 78744, United States of America	\N
83e05fde-da91-43da-91cb-3c706903e325	\N	(30.2056089020999998,-97.8143482139000042)	\N	2606, Lazy Oaks Drive, Austin, Travis County, Texas, 78745, United States of America	\N
dc9023c5-bd63-4dfa-9537-e4db44d66ef7	\N	(30.2283968780999999,-97.8183164276999975)	\N	Ernest Robles Way, Sunset Valley, Travis County, Texas, 78735, United States of America	\N
b09478ac-c9e6-4012-9902-a04dad73e548	\N	(30.2823297396000015,-97.8150894683000018)	\N	308, Eanes School Road, West Lake Hills, Travis County, Texas, 78746, United States of America	\N
6a3d9c2e-763a-45d2-a0a8-d2648ba60a23	\N	(30.3274197677000004,-97.781026662900004)	\N	3807, Spirit Lake Cove, Travis County, Texas, 78746, United States of America	\N
3e38f13d-ea71-4f81-9188-52cb96b8302e	\N	(30.3004204522000009,-97.719272366200002)	\N	1000, East 41st Street, Austin, Travis County, Texas, 78751, United States of America	\N
1f274a4f-657f-43b4-aa8d-24e9bca4b9f2	\N	(30.2369492722999986,-97.7550414008999979)	\N	2515, South Congress Avenue, Austin, Travis County, Texas, 78704, United States of America	\N
7d010fef-4f6d-48ef-ad1c-b403a894ba3b	\N	(30.2658855214999996,-97.7464466418000058)	\N	W Hotel & Residences, West 3rd Street, Austin, Travis County, Texas, 78767, United States of America	\N
b5b51708-adab-4842-a199-85d9ebe9e23b	\N	(30.2973441395000016,-97.6855825861999989)	\N	5005, Blue Spruce Circle, Austin, Travis County, Texas, 78723, United States of America	\N
6b70c671-8504-449f-ab65-3462b70cae82	\N	(30.2232046674999992,-97.7901423555999969)	\N	4707, Glenhaven Circle, Austin, Travis County, Texas, 78745, United States of America	\N
681baab9-ffed-48ab-8ea7-892254b97374	\N	(30.1961068556000001,-97.7163495449999999)	\N	Homestead Trail, Austin, Travis County, Texas, 78744, United States of America	\N
b071a6d1-9bd5-46ee-89d2-050b575b69ec	\N	(30.2411254241999998,-97.8113477942000031)	\N	Barton Creek Greenbelt Trail, Austin, Travis County, Texas, 78735, United States of America	\N
ce57c58b-58ac-4627-acb7-e3207fb460d5	\N	(30.2878119139999988,-97.7608835112999941)	\N	1810, Niles Road, Austin, Travis County, Texas, 78703, United States of America	\N
8628f569-76b0-4d59-8111-f0e6f99306d7	\N	(30.2503690666999994,-97.7239468042999988)	\N	2109, Riverview Street, Austin, Travis County, Texas, 78702, United States of America	\N
80ad945b-d81d-4b7d-bc97-63cd320b14cf	\N	(30.3170210046999991,-97.6947045717000009)	\N	6019, Belfast Drive, Austin, Travis County, Texas, 78723, United States of America	\N
a1441596-76a1-454d-b3e6-dcb387d4441a	\N	(30.3005532124000005,-97.6917494205000025)	\N	2101, East 51st Street, Austin, Travis County, Texas, 78723, United States of America	\N
8045d004-5371-483b-a19c-b70f1b864d35	\N	(30.2607928725999997,-97.7008955313000058)	\N	3509, Lyons Road, Austin, Travis County, Texas, 78702, United States of America	\N
b230ad49-80b7-441f-ba59-7a81000be2fd	\N	(30.2727509664999985,-97.7968972251999986)	\N	3102, Bee Caves Road, West Lake Hills, Travis County, Texas, 78746, United States of America	\N
ba9c82da-fff8-4e3a-81f0-5f1567e0dc53	\N	(30.3290907732000008,-97.7737486832999991)	\N	Mount Barker Drive, Austin, Travis County, Texas, 78731, United States of America	\N
d6f04e33-b7ba-4b46-b83c-d16799a19269	\N	(30.2600597590999989,-97.7524525877000059)	\N	Palmer Events Center, Barton Springs Road, Austin, Travis County, Texas, 78746, United States of America	\N
665eef99-fdff-4683-971c-3ed257d2399f	\N	(30.183869508099999,-97.7214748291000035)	\N	Onion Creek Trail, Austin, Travis County, Texas, 78744, United States of America	\N
8156015b-34de-477e-ab85-dfb98884c0ac	\N	(30.3179113993000016,-97.7263743673999983)	\N	400, Zennia Street, Austin, Travis County, Texas, 78751, United States of America	\N
53d35496-d2bc-4c00-8686-8121747d3ce0	\N	(30.1762507267999993,-97.7310810962000005)	\N	Onion Creek Trail, Austin, Travis County, Texas, 78744, United States of America	\N
c66b1806-925d-4cf5-8e7d-ec720739b4d4	\N	(30.1907856925000004,-97.7891255945000069)	\N	7215, Teaberry Drive, Austin, Travis County, Texas, 78745, United States of America	\N
c02fb2d6-3772-40b3-bf8f-081910ce879f	\N	(30.2882565700000015,-97.6870680675999949)	\N	Manor Road, Austin, Travis County, Texas, 78723, United States of America	\N
774cf3fb-572b-49e5-86ad-8c7663f7ebea	\N	(30.2507812178000002,-97.7595251266999981)	\N	Becker Elementary School, 906, West Milton Street, Austin, Travis County, Texas, 78704, United States of America	\N
8299bf14-e42d-4d01-906b-7a5fa8850c27	\N	(30.2624538909999998,-97.7560725576000067)	\N	Butler Park Pitch & Putt, 201, Lee Barton Drive, Austin, Travis County, Texas, 78704, United States of America	\N
feddcc9b-b13a-46d0-8288-1fb068c65c20	\N	(30.2786894289000017,-97.8329748652000006)	\N	1704, Mill Springs Drive, StoneWall Ridge, Travis County, Texas, 78746, United States of America	\N
87ddeb69-e0d6-4999-95be-bcb4e051c926	\N	(30.2715360930999999,-97.7686991587000023)	\N	1541, West Cesar Chavez Street, Austin, Travis County, Texas, 78703, United States of America	\N
e55af016-af65-4f07-9c07-8dce4f90558a	\N	(30.2082557071999993,-97.7657277375000007)	\N	504, Westmorland Drive, Austin, Travis County, Texas, 78745, United States of America	\N
0b9c733d-34f5-40f3-be59-e5acf3c125ef	\N	(30.2009247163000012,-97.7730007764999982)	\N	329 1/2, Little Texas Lane, Austin, Travis County, Texas, 78745, United States of America	\N
2168def7-8286-4be9-a90e-49a12b0a6a0b	\N	(30.1874046287999995,-97.6908936173000058)	\N	8010, Burleson Road, Austin, Travis County, Texas, 78744, United States of America	\N
45638502-bf67-4c39-bf41-ef67465fd9c8	\N	(30.1904686513999998,-97.6898069073999977)	\N	Burleson Road, Austin, Travis County, Texas, 78617, United States of America	\N
56d9264d-7e92-4d60-8484-73fd795bbbe7	\N	(30.265791203900001,-97.7648185893999937)	\N	2000, Barton Springs Road, Austin, Travis County, Texas, 78746, United States of America	\N
b715ff04-d2c8-4820-a6a2-0d7779fb5e62	\N	(30.2972704565999997,-97.8121334683000043)	\N	960, Live Oak Circle, West Lake Hills, Travis County, Texas, 78746, United States of America	\N
b2ffc9c2-c5b9-4a1b-9608-d56e3be08881	\N	(30.2911191264000017,-97.7114260053999999)	\N	3808, Sycamore Drive, Austin, Travis County, Texas, 78722, United States of America	\N
38925eaf-7fa8-47d5-9f6c-4407308b2133	\N	(30.2800145450000002,-97.8010956626000052)	\N	307, Briarwood Trail, StoneWall Ridge, Travis County, Texas, 78746, United States of America	\N
958009f1-a5da-4972-b12f-fe3aee81f801	\N	(30.1634322103999999,-97.7377613200000042)	\N	7521, Marble Ridge Drive, Austin, Travis County, Texas, 78747, United States of America	\N
a631b851-7abf-40b6-87bc-9d24205fe038	\N	(30.2503122964999989,-97.6608856466999953)	\N	Edwin Lane, Travis County, Texas, 78742, United States of America	\N
470abe59-79cb-4774-8ec1-18e6e4ed7e2d	\N	(30.2231654716000016,-97.6901412482000069)	\N	1417, Coriander Drive, Austin, Travis County, Texas, 78742, United States of America	\N
a0ce2863-1c35-43a9-8780-4a13117112e3	\N	(30.3048570740000009,-97.7941414272000031)	\N	1810, Westlake Drive, Austin, Travis County, Texas, 78746, United States of America	\N
c689656b-7131-455f-a3bc-7536891c2f18	\N	(30.2139466910000003,-97.8186108024000021)	\N	3012, Headly Drive, Austin, Travis County, Texas, 78745, United States of America	\N
4d75e5f4-8a0d-4107-8642-57d38ae69724	\N	(30.2250997768000005,-97.6788429853999958)	\N	Old Bastrop Highway, Austin, Travis County, Texas, 78742, United States of America	\N
2c0ed961-29bd-40fe-9a93-881e86128cf2	\N	(30.2796027340000009,-97.7284040062999964)	\N	2050, North Interstate Highway 35 Service Road, Austin, Travis County, Texas, 78722, United States of America	\N
6a9425d2-1e8d-4934-9325-c555fc18998d	\N	(30.2267842084999998,-97.7890794010999969)	\N	4514, Merle Drive, Austin, Travis County, Texas, 78745, United States of America	\N
\.


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: gus1775
--

COPY reports (id, location_id, report) FROM stdin;
9468eaf6-03c2-4687-988d-aef0174563e4	39a92861-5fe8-404f-aa7e-6bdeba077250	Magna fames gravida pulvinar proin donec.
320503f0-bc71-48bf-a08a-0cc6386b6f54	39a92861-5fe8-404f-aa7e-6bdeba077250	Lorem felis mus tortor id.
c936e961-3f66-4564-9d66-4e37852762d2	8bd41550-3145-4052-a8ea-75514ff25c22	Etiam risus condimentum.
093701b5-1a99-4ad2-b724-19feee2f0fe3	8bd41550-3145-4052-a8ea-75514ff25c22	Risus metus mus odio at velit et.
7b5d7781-1496-40d9-8e10-497accffd88a	8bd41550-3145-4052-a8ea-75514ff25c22	Dolor vitae.
36ec99bc-54f5-4471-bf7e-78f88e3f763c	05055bc6-fe74-43d3-9790-dcb89b79ae73	Purus lorem platea libero hendrerit dictumst eu sit cras ac urna ante ac.
8675f2c1-5c6e-48ec-aec2-4933be1b38a9	05055bc6-fe74-43d3-9790-dcb89b79ae73	Curae fusce erat laoreet curabitur pulvinar cursus taciti nibh sollicitudin.
1dd0c702-244c-4ac6-9af3-4b9eb3daffa2	05055bc6-fe74-43d3-9790-dcb89b79ae73	Porta magna mus nisl adipiscing vulputate ipsum et.
f1ac74de-5891-4202-b89b-43cffc78c430	947fca11-0728-4cd6-9380-8ea32df3f906	Nulla donec feugiat vulputate interdum bibendum magna.
7f76a575-9af0-476d-a4e4-d4e76e7136e1	947fca11-0728-4cd6-9380-8ea32df3f906	Donec dolor a luctus arcu.
0910b940-23ed-4e38-98c7-7c72b0c8a7c2	947fca11-0728-4cd6-9380-8ea32df3f906	Class purus.
27e8db1c-b043-4671-ae43-93ad1da51f60	947fca11-0728-4cd6-9380-8ea32df3f906	Magna class facilisi parturient penatibus netus ve id.
255c632f-4217-4db5-a718-dc8a7d5efc35	34af4c46-ccd5-4be5-b389-298c469ad24e	Nulla fusce nam proin.
a8497352-b4be-40fa-980e-d61acbee5342	34af4c46-ccd5-4be5-b389-298c469ad24e	Porta ipsum laoreet vivamus auctor duis sollicitudin ac.
eb001fdc-491f-48ec-b34b-a61cf0f0c640	34af4c46-ccd5-4be5-b389-298c469ad24e	Metus curae mattis dignissim varius dolor purus laoreet leo ve.
fda1d296-e794-4376-bfb8-ad4f3e2cbab8	34af4c46-ccd5-4be5-b389-298c469ad24e	Nulla purus porta facilisis vestibulum.
ede8cfaa-f06c-4d81-8e05-344ba340b86b	cd13b247-7942-47c4-9142-f6f557528737	Ipsum lorem taciti phasellus in tellus sollicitudin tincidunt ipsum ve.
a98e317f-bf37-45f8-a1dc-8a30ffbcb7c4	cd13b247-7942-47c4-9142-f6f557528737	Risus magna morbi hac urna diam iaculis mi.
77295633-4e32-4735-a7a2-a6beed6bb685	cd13b247-7942-47c4-9142-f6f557528737	Ipsum lacus.
793a339d-21ee-4703-b530-bfc4bd3e7c86	81020aa6-24c9-4938-be70-74198a90aa54	Augue curae cras inceptos suscipit augue etiam praesent imperdiet inceptos litora.
6d8d0ffb-5531-40b7-9270-41628b67ff40	390678e7-9da6-4c8c-a88a-24babd9c2d05	Dolor metus fames non nisl.
8205905a-6cec-4415-a68f-dde3e3be4d9a	390678e7-9da6-4c8c-a88a-24babd9c2d05	Class justo egestas orci ad quis amet consequat.
6e19dc75-2d5b-4cf0-87b9-d4d94e9d512d	390678e7-9da6-4c8c-a88a-24babd9c2d05	Felis magna facilisi quis nisl odio lacinia natoque integer tellus id sociis.
f6564093-8a5c-443e-a710-fe5df4d337a4	7e72f4f1-d236-4689-bba1-65aa067b0e79	Justo ipsum sem nisi pede dapibus mi.
7cf87c06-df39-49fd-8f6e-b596b1f05828	7e72f4f1-d236-4689-bba1-65aa067b0e79	Felis velit praesent class.
56f7c6cf-d0a1-4b65-be5f-2379fdd33d7c	175e2e9c-7b0a-46ea-80ca-6172eaa62684	Augue curae.
252dfdb1-0390-4ec1-b465-b0d604a712ee	175e2e9c-7b0a-46ea-80ca-6172eaa62684	Felis donec.
cfcb4b25-8253-4a2b-abe3-fbd43c1f305e	175e2e9c-7b0a-46ea-80ca-6172eaa62684	Curae ipsum mauris eros nunc.
4f660256-1f21-4f59-a1f3-6d370eccf4bc	393bd626-6a33-4009-a51f-77ae63106c3b	Porta justo neque lorem condimentum ad cursus.
f4d8e805-e881-4aba-ac12-8555d95b848d	7b53b570-eeb7-4fe3-b6b1-715b74f53c3b	Lorem netus ligula in id mus.
5ed0232e-0cfb-4467-ab41-cc83dd59a1a1	7b53b570-eeb7-4fe3-b6b1-715b74f53c3b	Metus proin nullam euismod id fringilla.
126f2f57-06ac-4506-9890-2c2d516b2c82	7b53b570-eeb7-4fe3-b6b1-715b74f53c3b	Porta justo.
7c5bd53a-e03d-48a8-8e16-fe33cd7ed953	cd3c1dd8-a077-4ee6-b799-d977ffb821f6	Donec vitae hac.
8a5fcd58-77b5-4457-9770-bde24dc93ec7	cd3c1dd8-a077-4ee6-b799-d977ffb821f6	Justo nulla vehicula vestibulum venenatis donec.
2e1e206a-0087-42fa-a883-be0ed76080e5	cd3c1dd8-a077-4ee6-b799-d977ffb821f6	Nulla neque dictum mi habitant eros eget arcu sed.
206e8a17-ddc0-4aac-8516-f03c593401d4	6341312d-d41a-419f-a07d-5b6c7b63d276	Curae vitae vel nisi urna maecenas cursus primis.
d1b0c7ca-01b5-4311-bfa7-dcafe2c95689	d707d2b4-87db-4b79-be6c-7192f55822ec	Magna velit sapien sociis est.
1e1344ae-9754-4310-b05b-b1875b283e5b	d707d2b4-87db-4b79-be6c-7192f55822ec	Curae etiam nisl luctus.
bceea490-436b-481c-89fd-66bd7ab9e3f5	d707d2b4-87db-4b79-be6c-7192f55822ec	Velit fames eleifend nec in tincidunt mi.
185a6630-60e5-4cb2-9ca7-1104fb704d76	d707d2b4-87db-4b79-be6c-7192f55822ec	Massa nulla eros dolor.
9a68435c-0b59-4e9a-b101-12570dca4bf9	be1db2fe-5244-4d10-a735-3b6aa2410c2c	Felis magna.
0c80cc12-2e89-45fb-b6b6-8d3648d67449	be1db2fe-5244-4d10-a735-3b6aa2410c2c	Felis fames a.
0c2f2347-742b-42e8-b00d-19f6b464fe1d	be1db2fe-5244-4d10-a735-3b6aa2410c2c	Felis lorem curae condimentum.
2e6fec8e-5996-41c7-8f49-b814338db391	be1db2fe-5244-4d10-a735-3b6aa2410c2c	Augue dolor aliquam vel.
fd81bb8b-8c36-40d4-961f-b5c90a495ca4	f700ba89-fc91-4149-834a-940abc965521	Ipsum felis.
f854354a-6554-4b0d-82db-2958da225ed5	f700ba89-fc91-4149-834a-940abc965521	Massa purus etiam luctus.
78bd93a1-63fe-4937-89d4-0330534c66ec	f700ba89-fc91-4149-834a-940abc965521	Purus augue nam egestas tellus ultricies inceptos tortor ornare lobortis velit.
44b5c10f-4bb2-4710-b714-21649ae39113	f700ba89-fc91-4149-834a-940abc965521	Vitae nulla nam adipiscing dignissim pede eget pretium at nisi.
d8a7f319-de16-4f34-904f-1e7c45d4339e	d8a7c720-f0f8-49bc-a72f-ffbab8e6174d	Netus ipsum justo sociis quis posuere in est.
0f43c5da-42da-4d3f-ab43-b103711ce894	5c841c91-6f0c-4c46-8ccd-35e5a24d6340	Dolor morbi venenatis arcu euismod montes.
eac1fee5-5305-4021-9e0d-be849af08209	5c841c91-6f0c-4c46-8ccd-35e5a24d6340	Fames dolor.
db78ae3b-f02b-4059-9c36-d76e11dbcd64	5c841c91-6f0c-4c46-8ccd-35e5a24d6340	Massa neque cursus vestibulum sollicitudin dapibus facilisis at nostra suscipit fames aliquam vulputate.
170cf815-31d8-440b-8803-0b9b6b41a445	5c841c91-6f0c-4c46-8ccd-35e5a24d6340	Fames vitae semper vestibulum massa nisi tortor in velit malesuada cubilia pellentesque luctus.
178362c1-9432-4933-ac95-a7e723c64f1c	9e28b909-2a69-4515-b56a-c3731e584a93	Donec netus.
4f81e76c-6e20-4739-a5da-17212a617fb8	9e28b909-2a69-4515-b56a-c3731e584a93	Lacus dolor egestas ve at nibh dis nibh adipiscing ut dictum placerat quam molestie potenti.
458f1e05-4e2e-4713-96da-961342df80a4	9e28b909-2a69-4515-b56a-c3731e584a93	Metus lacus suscipit habitasse vel placerat feugiat enim.
6db5c72d-a8d7-4d51-8206-a3fa33025a9c	83e05fde-da91-43da-91cb-3c706903e325	Felis massa.
36e0998e-f220-4ed1-acb9-23b5ec0f6502	83e05fde-da91-43da-91cb-3c706903e325	Metus vitae dapibus donec adipiscing ve habitant nam mi turpis.
63d99f27-4117-4a5c-bee6-f1cb1d3be620	b09478ac-c9e6-4012-9902-a04dad73e548	Morbi porta scelerisque ac ligula id.
1081e42a-e605-4015-b355-1b2fb603e3ba	6a3d9c2e-763a-45d2-a0a8-d2648ba60a23	Metus felis risus feugiat odio in pellentesque euismod torquent nibh.
cc281847-2f80-4f3e-ba0e-31e5bf0d97de	3e38f13d-ea71-4f81-9188-52cb96b8302e	Fusce donec a tellus.
9c0751f3-c1e5-4ed1-a35e-9766a2c6bcb3	3e38f13d-ea71-4f81-9188-52cb96b8302e	Lacus nulla proin condimentum nam quam nascetur sociis odio ante velit viverra nunc.
8fd7f95c-d7c2-4175-acf7-618eca2695e2	3e38f13d-ea71-4f81-9188-52cb96b8302e	Augue proin fusce orci diam dapibus ut.
4c3d4f39-dc31-4fb8-b185-6c9bc6658894	1f274a4f-657f-43b4-aa8d-24e9bca4b9f2	Class risus enim ligula est tempus.
31f0fbeb-0b63-4e42-a86b-a7c4008a607e	1f274a4f-657f-43b4-aa8d-24e9bca4b9f2	Fames neque.
c7af1b7e-d916-4346-b9cb-58c26a221242	7d010fef-4f6d-48ef-ad1c-b403a894ba3b	Curae felis aenean dolor lectus neque.
dee9096b-226f-400a-9676-7113b2db040d	b5b51708-adab-4842-a199-85d9ebe9e23b	Risus curae varius.
3ba64583-e964-4819-9ad8-d42d117c830e	6b70c671-8504-449f-ab65-3462b70cae82	Lorem vitae ullamcorper suscipit orci maecenas scelerisque placerat imperdiet.
4b5d29c7-2a58-455d-9b53-f3934c2b7660	681baab9-ffed-48ab-8ea7-892254b97374	Massa neque maecenas parturient euismod per.
8e22fe17-f833-4fbf-89e3-7454db6e5c8e	b071a6d1-9bd5-46ee-89d2-050b575b69ec	Fusce class odio per.
091fe83c-fb32-49a6-ae0b-d982d8031d39	b071a6d1-9bd5-46ee-89d2-050b575b69ec	Risus justo tortor dictum egestas.
41201a23-b8b8-465d-8af8-d66ebfaa34c3	ce57c58b-58ac-4627-acb7-e3207fb460d5	Lacus fames platea.
02724c9e-88c8-4531-92e6-d238cef8b9ba	ce57c58b-58ac-4627-acb7-e3207fb460d5	Neque metus risus diam molestie.
849d5763-c938-4364-9d3b-cd29b8c740a2	ce57c58b-58ac-4627-acb7-e3207fb460d5	Risus magna auctor.
043bb31c-7c21-459f-8b5d-9f2398d14a9a	ce57c58b-58ac-4627-acb7-e3207fb460d5	Class neque viverra ultricies sem dapibus eros mi mus scelerisque quisque consectetuer convallis donec ac eros.
8885b767-75c7-45a9-b74e-45fbf577eaef	8628f569-76b0-4d59-8111-f0e6f99306d7	Fusce ipsum aptent accumsan ac suspendisse id turpis class adipiscing.
2178efea-f130-4ea8-9f29-c6193caabe3d	8628f569-76b0-4d59-8111-f0e6f99306d7	Netus curae luctus.
d58dc7e2-5610-4467-a4ac-fb21083d31b1	80ad945b-d81d-4b7d-bc97-63cd320b14cf	Netus proin nibh eni neque metus quis hymenaeos.
2bcec07a-92a4-42f6-bdd8-bb7ec0a5fe89	80ad945b-d81d-4b7d-bc97-63cd320b14cf	Proin felis condimentum non eu vulputate a porta ve ultricies curabitur.
19c0010f-7de8-45aa-b251-81dc06a31f6a	80ad945b-d81d-4b7d-bc97-63cd320b14cf	Porta curae.
8f81b766-7b86-4e61-bb6f-32ab43b9fe49	a1441596-76a1-454d-b3e6-dcb387d4441a	Lorem neque suspendisse torquent hymenaeos pellentesque gravida vel odio urna.
b645df56-5455-4454-818b-22c3ebb7891e	a1441596-76a1-454d-b3e6-dcb387d4441a	Class nulla accumsan mi mattis leo elit non elit pellentesque suscipit magna.
0191acb1-5d37-4192-b8fd-246448ceaba1	a1441596-76a1-454d-b3e6-dcb387d4441a	Netus proin rutrum aptent.
f52a6051-18a6-4697-a47a-4bcdb8a882d7	8045d004-5371-483b-a19c-b70f1b864d35	Proin morbi.
a84023fb-1f52-45ab-b3c7-8029718be8f0	8045d004-5371-483b-a19c-b70f1b864d35	Ipsum neque sagittis dignissim risus et eleifend iaculis pretium hymenaeos.
4674fb89-ac93-4984-a978-2060efa7df72	ba9c82da-fff8-4e3a-81f0-5f1567e0dc53	Fusce metus dignissim montes placerat odio tempus ac etiam at aptent.
c034cdde-f7cc-4dfe-adaf-79c14b05dd17	ba9c82da-fff8-4e3a-81f0-5f1567e0dc53	Justo nulla libero purus vestibulum elit.
8c27809a-b1e1-46ad-9f56-efe67fa9dc79	ba9c82da-fff8-4e3a-81f0-5f1567e0dc53	Felis velit scelerisque sed mollis nisl egestas feugiat aliquet.
7ca4c584-1fad-4982-83dd-bb4b33ff4e61	665eef99-fdff-4683-971c-3ed257d2399f	Magna purus.
92b4a564-b0c1-424a-a169-ce524312cd96	665eef99-fdff-4683-971c-3ed257d2399f	Neque etiam.
95345e13-9c82-4a65-8674-e7a9fe2d0536	665eef99-fdff-4683-971c-3ed257d2399f	Lorem porta.
ac09b7b5-8b00-42d7-a369-f4d6fcbee943	8156015b-34de-477e-ab85-dfb98884c0ac	Vitae velit magna mollis ve massa eu.
f04c4140-4139-42ec-ae31-1501242721ba	53d35496-d2bc-4c00-8686-8121747d3ce0	Proin augue rutrum netus mi quam rutrum viverra cubilia.
d6afa6f3-54ee-4750-8688-9610367cb649	53d35496-d2bc-4c00-8686-8121747d3ce0	Velit etiam varius nisi fringilla semper porta tincidunt.
805adc73-caf8-4f0c-a385-cf9abd27da63	53d35496-d2bc-4c00-8686-8121747d3ce0	Netus class est ante et.
078f1bb3-1a40-495e-92b9-2c35e57b50fc	c66b1806-925d-4cf5-8e7d-ec720739b4d4	Ipsum morbi luctus.
689c7ee5-da3a-4f67-9d15-2e9ea1d05bb1	c02fb2d6-3772-40b3-bf8f-081910ce879f	Fames augue dapibus vivamus ante orci nam.
511faba3-2fb8-4202-b367-340a1de3d214	c02fb2d6-3772-40b3-bf8f-081910ce879f	Neque lacus ornare eros at metus.
62517607-41f3-4f45-9422-122c84016b13	c02fb2d6-3772-40b3-bf8f-081910ce879f	Porta augue sed eget risus rutrum mollis curae.
04882fdd-fa81-45ce-8902-c7388c37fe0f	774cf3fb-572b-49e5-86ad-8c7663f7ebea	Neque massa non nunc orci elementum mollis magnis eu morbi et.
62aaa9ac-184e-466f-9649-e7e9e8d0a595	feddcc9b-b13a-46d0-8288-1fb068c65c20	Lorem risus eget odio.
3857b34f-5784-47b7-9b44-d000136fad37	87ddeb69-e0d6-4999-95be-bcb4e051c926	Ipsum morbi felis lorem eni nibh eros dapibus id mauris.
c6d64669-e15a-42b5-8b5a-8da903603709	e55af016-af65-4f07-9c07-8dce4f90558a	Curae metus mauris ut.
c60eb9b6-cada-4491-8358-1bf55926c588	e55af016-af65-4f07-9c07-8dce4f90558a	Vitae morbi.
22225129-c0d6-466a-a6ef-c6e0a718caa0	0b9c733d-34f5-40f3-be59-e5acf3c125ef	Curae justo rutrum velit vel.
012800da-8849-4ae8-95bd-b2f50f243f0a	0b9c733d-34f5-40f3-be59-e5acf3c125ef	Dolor porta mattis dictum elementum.
1dfc08bc-50fb-4151-8d68-a7fb7ddefcac	0b9c733d-34f5-40f3-be59-e5acf3c125ef	Neque lorem.
3f20e633-0277-4dca-a668-443189ce3dcd	2168def7-8286-4be9-a90e-49a12b0a6a0b	Fames etiam nullam tortor non.
99b743fa-b4d2-41db-8cc8-7fef28024b0b	2168def7-8286-4be9-a90e-49a12b0a6a0b	Fusce curae potenti diam donec mattis.
0c56a916-0c02-428c-a0ff-ecc8059aff8e	45638502-bf67-4c39-bf41-ef67465fd9c8	Metus velit.
f7eeeba6-fa44-48bb-b364-d36941b9d0b7	b2ffc9c2-c5b9-4a1b-9608-d56e3be08881	Velit ipsum eni faucibus pretium.
dd6a63e6-b533-48e7-b831-08074c52b802	a0ce2863-1c35-43a9-8780-4a13117112e3	Magna risus mollis sociis pede id pellentesque integer porttitor.
ceab6119-c095-4074-ab2a-543bea0c57b2	a0ce2863-1c35-43a9-8780-4a13117112e3	Donec vitae.
5689485d-2b36-4be8-a134-e3fe8883d424	c689656b-7131-455f-a3bc-7536891c2f18	Lacus morbi semper erat odio per.
2fecff30-44cb-4999-9bff-52c82249fcf8	c689656b-7131-455f-a3bc-7536891c2f18	Class magna volutpat hendrerit pede nec amet lobortis hendrerit pellentesque aliquam metus.
a860546d-18e7-4c3f-aaa8-4854d18a4878	4d75e5f4-8a0d-4107-8642-57d38ae69724	Magna curae congue ridiculus pretium.
ca26bce7-1daa-494e-871b-2e31c5c98fca	4d75e5f4-8a0d-4107-8642-57d38ae69724	Fames vitae.
85c071ef-44c9-4390-b483-ca6a894af1ff	2c0ed961-29bd-40fe-9a93-881e86128cf2	Dolor augue netus senectus phasellus a netus id felis sollicitudin etiam arcu ac mus ridiculus.
a96aacb0-c814-471f-97ba-5b1223cbff41	2c0ed961-29bd-40fe-9a93-881e86128cf2	Metus fusce pede sociis lectus.
15df36ac-31b5-4227-9c43-aa3509dfd728	6a9425d2-1e8d-4934-9325-c555fc18998d	Proin dolor taciti adipiscing nulla quisque praesent massa hymenaeos.
7df78c3f-2f66-40b5-8206-01dfa8c86773	6a9425d2-1e8d-4934-9325-c555fc18998d	Vitae porta pretium lacus eu.
717e155a-ddfd-45f3-b5bc-f06edf8fc4b8	6a9425d2-1e8d-4934-9325-c555fc18998d	Class lorem class.
\.


--
-- Name: locations_pkey; Type: CONSTRAINT; Schema: public; Owner: gus1775; Tablespace: 
--

ALTER TABLE ONLY locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: reports_pkey; Type: CONSTRAINT; Schema: public; Owner: gus1775; Tablespace: 
--

ALTER TABLE ONLY reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- Name: reports_location_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gus1775
--

ALTER TABLE ONLY reports
    ADD CONSTRAINT reports_location_id_fkey FOREIGN KEY (location_id) REFERENCES locations(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: gus1775
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM gus1775;
GRANT ALL ON SCHEMA public TO gus1775;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


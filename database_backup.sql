--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: brands; Type: TABLE; Schema: public; Owner: richa
--

CREATE TABLE brands (
    id integer NOT NULL,
    name character varying,
    price integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE brands OWNER TO richa;

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: richa
--

CREATE SEQUENCE brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE brands_id_seq OWNER TO richa;

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: richa
--

ALTER SEQUENCE brands_id_seq OWNED BY brands.id;


--
-- Name: brands_stores; Type: TABLE; Schema: public; Owner: richa
--

CREATE TABLE brands_stores (
    id integer NOT NULL,
    brand_id integer,
    store_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE brands_stores OWNER TO richa;

--
-- Name: brands_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: richa
--

CREATE SEQUENCE brands_stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE brands_stores_id_seq OWNER TO richa;

--
-- Name: brands_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: richa
--

ALTER SEQUENCE brands_stores_id_seq OWNED BY brands_stores.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: richa
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO richa;

--
-- Name: stores; Type: TABLE; Schema: public; Owner: richa
--

CREATE TABLE stores (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE stores OWNER TO richa;

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: richa
--

CREATE SEQUENCE stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stores_id_seq OWNER TO richa;

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: richa
--

ALTER SEQUENCE stores_id_seq OWNED BY stores.id;


--
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: richa
--

ALTER TABLE ONLY brands ALTER COLUMN id SET DEFAULT nextval('brands_id_seq'::regclass);


--
-- Name: brands_stores id; Type: DEFAULT; Schema: public; Owner: richa
--

ALTER TABLE ONLY brands_stores ALTER COLUMN id SET DEFAULT nextval('brands_stores_id_seq'::regclass);


--
-- Name: stores id; Type: DEFAULT; Schema: public; Owner: richa
--

ALTER TABLE ONLY stores ALTER COLUMN id SET DEFAULT nextval('stores_id_seq'::regclass);


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: richa
--

COPY brands (id, name, price, created_at, updated_at) FROM stdin;
1	MOCHI	20	2017-09-29 21:05:33.528474	2017-09-29 21:05:33.528474
2	LIBERITY	40	2017-09-29 21:09:13.855677	2017-09-29 21:09:13.855677
3	PUMA	67	2017-09-29 21:09:32.997527	2017-09-29 21:09:32.997527
4	REEBOK	62	2017-09-29 21:09:45.235914	2017-09-29 21:09:45.235914
5	CATWALK	98	2017-09-29 21:10:02.649853	2017-09-29 21:10:02.649853
6	ADIDAS	93	2017-09-29 21:10:50.336087	2017-09-29 21:10:50.336087
7	HEELYS	102	2017-09-29 21:11:10.401395	2017-09-29 21:11:10.401395
8	BALLY SHOE	43	2017-09-29 21:11:25.061245	2017-09-29 21:11:25.061245
9	CHENONE	108	2017-09-29 21:11:41.765068	2017-09-29 21:11:41.765068
10	CALVIN KLEIN	29	2017-09-29 21:11:55.989942	2017-09-29 21:11:55.989942
11	TOD'S	95	2017-09-29 21:12:13.913184	2017-09-29 21:12:13.913184
12	KICKERS	125	2017-09-29 21:12:31.334095	2017-09-29 21:12:31.334095
13	UNITED NUDE	120	2017-09-29 21:12:54.997624	2017-09-29 21:12:54.997624
14	PACIFIC BRANDS	85	2017-09-29 21:13:10.665699	2017-09-29 21:13:10.665699
15	THE ORIGINAL CAR SHOE	200	2017-09-29 21:13:26.651912	2017-09-29 21:13:26.651912
16	ECCO	55	2017-09-29 21:13:45.134224	2017-09-29 21:13:45.134224
17	DAMANI DADA	75	2017-09-29 21:13:59.558806	2017-09-29 21:13:59.558806
18	NEWTON RUNNING	90	2017-09-29 21:14:14.799876	2017-09-29 21:14:14.799876
19	BROOKS SPORTS	80	2017-09-29 21:14:52.611215	2017-09-29 21:14:52.611215
20	UGG	210	2017-09-29 21:15:51.698623	2017-09-29 21:15:51.698623
21	SHOE	20	2017-09-29 22:58:49.128872	2017-09-29 23:06:30.518099
\.


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: richa
--

SELECT pg_catalog.setval('brands_id_seq', 21, true);


--
-- Data for Name: brands_stores; Type: TABLE DATA; Schema: public; Owner: richa
--

COPY brands_stores (id, brand_id, store_id, created_at, updated_at) FROM stdin;
1	2	1	2017-09-29 23:33:18.268277	2017-09-29 23:33:18.268277
2	3	1	2017-09-29 23:34:22.387214	2017-09-29 23:34:22.387214
3	1	1	2017-09-29 23:38:11.991344	2017-09-29 23:38:11.991344
4	5	1	2017-09-29 23:39:16.062369	2017-09-29 23:39:16.062369
5	6	1	2017-09-29 23:40:22.373876	2017-09-29 23:40:22.373876
6	4	1	2017-09-29 23:40:30.03793	2017-09-29 23:40:30.03793
7	7	1	2017-09-29 23:41:25.308555	2017-09-29 23:41:25.308555
8	9	1	2017-09-29 23:41:38.302198	2017-09-29 23:41:38.302198
\.


--
-- Name: brands_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: richa
--

SELECT pg_catalog.setval('brands_stores_id_seq', 8, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: richa
--

COPY schema_migrations (version) FROM stdin;
20170929175952
20170929180002
20170929180011
\.


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: richa
--

COPY stores (id, name, created_at, updated_at) FROM stdin;
1	JOHN FLUEVOG SHOES	2017-09-29 21:21:45.597598	2017-09-29 21:21:45.597598
2	SEARS	2017-09-29 21:21:57.989255	2017-09-29 21:21:57.989255
4	MARKET STREET SHOES	2017-09-29 21:22:25.970578	2017-09-29 21:22:25.970578
5	BARNEYS NEW YORK	2017-09-29 21:22:40.437099	2017-09-29 21:22:40.437099
7	NORDSTROM RACK DOWNTOWN	2017-09-29 21:23:08.878492	2017-09-29 21:23:08.878492
8	VANS	2017-09-29 21:23:23.03651	2017-09-29 21:23:23.03651
9	PAYLESS SHOESOURCE	2017-09-29 21:23:40.129336	2017-09-29 21:23:40.129336
10	BANANA REPUBLIC	2017-09-29 21:23:58.444457	2017-09-29 21:23:58.444457
11	REI	2017-09-29 21:49:56.862107	2017-09-29 21:49:56.862107
3	MACY'S	2017-09-29 21:22:11.28678	2017-09-29 22:47:03.192136
12	SHOE	2017-09-29 22:57:33.573327	2017-09-29 22:57:33.573327
\.


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: richa
--

SELECT pg_catalog.setval('stores_id_seq', 12, true);


--
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: richa
--

ALTER TABLE ONLY brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: brands_stores brands_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: richa
--

ALTER TABLE ONLY brands_stores
    ADD CONSTRAINT brands_stores_pkey PRIMARY KEY (id);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: richa
--

ALTER TABLE ONLY stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: richa
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--


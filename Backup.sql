--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 16.2

-- Started on 2024-05-07 20:00:59

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 24609)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    nome character varying(100),
    telefone character varying(20),
    aniversario character varying(255)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24608)
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_seq OWNER TO postgres;

--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 214
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- TOC entry 217 (class 1259 OID 24616)
-- Name: itensvenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itensvenda (
    id integer NOT NULL,
    fk_venda_id integer,
    fk_produto_id integer,
    quantidade numeric(38,2),
    valor_total numeric(38,2),
    valor_unitario numeric(38,2),
    produto_id integer,
    venda_id integer
);


ALTER TABLE public.itensvenda OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24615)
-- Name: itensvenda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itensvenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.itensvenda_id_seq OWNER TO postgres;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 216
-- Name: itensvenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itensvenda_id_seq OWNED BY public.itensvenda.id;


--
-- TOC entry 219 (class 1259 OID 24623)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    id integer NOT NULL,
    descricao character varying(100),
    valor_unitario numeric(38,2)
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24622)
-- Name: produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produto_id_seq OWNER TO postgres;

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 218
-- Name: produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;


--
-- TOC entry 221 (class 1259 OID 24630)
-- Name: venda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venda (
    id integer NOT NULL,
    fk_cliente_id integer,
    observacoes character varying(20),
    total numeric(38,2),
    cliente_id integer
);


ALTER TABLE public.venda OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24629)
-- Name: venda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.venda_id_seq OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 220
-- Name: venda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venda_id_seq OWNED BY public.venda.id;


--
-- TOC entry 3188 (class 2604 OID 24612)
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- TOC entry 3189 (class 2604 OID 24619)
-- Name: itensvenda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itensvenda ALTER COLUMN id SET DEFAULT nextval('public.itensvenda_id_seq'::regclass);


--
-- TOC entry 3190 (class 2604 OID 24626)
-- Name: produto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);


--
-- TOC entry 3191 (class 2604 OID 24633)
-- Name: venda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);


--
-- TOC entry 3346 (class 0 OID 24609)
-- Dependencies: 215
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id, nome, telefone, aniversario) FROM stdin;
1	Matheus	45 99999-9999	21/01
3	Talini	45 88888-8888	21/05
4	Talini	45 88888-8888	21/05
5	Djoni	45 77777-7777	14/11
\.


--
-- TOC entry 3348 (class 0 OID 24616)
-- Dependencies: 217
-- Data for Name: itensvenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.itensvenda (id, fk_venda_id, fk_produto_id, quantidade, valor_total, valor_unitario, produto_id, venda_id) FROM stdin;
1	1	\N	10.00	750.00	7.50	\N	\N
2	1	1	10.00	750.00	7.50	\N	\N
\.


--
-- TOC entry 3350 (class 0 OID 24623)
-- Dependencies: 219
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto (id, descricao, valor_unitario) FROM stdin;
\.


--
-- TOC entry 3352 (class 0 OID 24630)
-- Dependencies: 221
-- Data for Name: venda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.venda (id, fk_cliente_id, observacoes, total, cliente_id) FROM stdin;
1	1	Venda Cocaina	750.00	1
2	\N	Venda Biblia	9850.00	1
3	\N	Cachorro	3453.00	1
4	\N	Cabrito	345.00	1
5	\N	Talini	1567.00	1
\.


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 214
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 5, true);


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 216
-- Name: itensvenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itensvenda_id_seq', 2, true);


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 218
-- Name: produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_id_seq', 1, true);


--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 220
-- Name: venda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venda_id_seq', 7, true);


--
-- TOC entry 3193 (class 2606 OID 24614)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 3195 (class 2606 OID 24621)
-- Name: itensvenda itensvenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itensvenda
    ADD CONSTRAINT itensvenda_pkey PRIMARY KEY (id);


--
-- TOC entry 3197 (class 2606 OID 24628)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);


--
-- TOC entry 3199 (class 2606 OID 24635)
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 24638)
-- Name: itensvenda fk8u8vi4qcjjlrdw0y032cg5byv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itensvenda
    ADD CONSTRAINT fk8u8vi4qcjjlrdw0y032cg5byv FOREIGN KEY (produto_id) REFERENCES public.produto(id);


--
-- TOC entry 3202 (class 2606 OID 24648)
-- Name: venda fkdofv694x76omty2jcr43wpi4y; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT fkdofv694x76omty2jcr43wpi4y FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);


--
-- TOC entry 3201 (class 2606 OID 24643)
-- Name: itensvenda fkiwufdx9rq340f4ri5dy3fp709; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itensvenda
    ADD CONSTRAINT fkiwufdx9rq340f4ri5dy3fp709 FOREIGN KEY (venda_id) REFERENCES public.venda(id);


-- Completed on 2024-05-07 20:00:59

--
-- PostgreSQL database dump complete
--


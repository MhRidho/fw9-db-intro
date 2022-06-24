--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

-- Started on 2022-06-24 20:43:59

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

DROP DATABASE "portal-artikel";
--
-- TOC entry 3331 (class 1262 OID 24602)
-- Name: portal-artikel; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "portal-artikel" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';


ALTER DATABASE "portal-artikel" OWNER TO postgres;

\connect -reuse-previous=on "dbname='portal-artikel'"

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 24616)
-- Name: komentar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.komentar (
    id integer NOT NULL,
    konten text NOT NULL,
    user_id integer NOT NULL,
    postingan_id integer NOT NULL
);


ALTER TABLE public.komentar OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 24615)
-- Name: komentar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.komentar ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.komentar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 24622)
-- Name: postingan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.postingan (
    id integer NOT NULL,
    judul character varying(255) NOT NULL,
    waktu_dibuat date NOT NULL,
    konten text NOT NULL,
    lokasi character varying(255) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.postingan OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24621)
-- Name: postingan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.postingan ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.postingan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 212 (class 1259 OID 24610)
-- Name: profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile (
    id integer NOT NULL,
    gender character varying NOT NULL,
    no_telp character varying(16) NOT NULL,
    tanggal_lahir date NOT NULL,
    tempat_lahir character varying(255) NOT NULL,
    bio character varying(160) NOT NULL,
    user_id integer NOT NULL,
    saldo double precision NOT NULL
);


ALTER TABLE public.profile OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24609)
-- Name: profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.profile ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 210 (class 1259 OID 24604)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    nik character varying(18) NOT NULL,
    nama character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(48) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24603)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3323 (class 0 OID 24616)
-- Dependencies: 214
-- Data for Name: komentar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.komentar (id, konten, user_id, postingan_id) FROM stdin;
\.


--
-- TOC entry 3325 (class 0 OID 24622)
-- Dependencies: 216
-- Data for Name: postingan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.postingan (id, judul, waktu_dibuat, konten, lokasi, user_id) FROM stdin;
\.


--
-- TOC entry 3321 (class 0 OID 24610)
-- Dependencies: 212
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profile (id, gender, no_telp, tanggal_lahir, tempat_lahir, bio, user_id, saldo) FROM stdin;
\.


--
-- TOC entry 3319 (class 0 OID 24604)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, nik, nama, email, password) FROM stdin;
\.


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 213
-- Name: komentar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.komentar_id_seq', 1, false);


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 215
-- Name: postingan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.postingan_id_seq', 1, false);


--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 211
-- Name: profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profile_id_seq', 1, false);


--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


-- Completed on 2022-06-24 20:44:00

--
-- PostgreSQL database dump complete
--


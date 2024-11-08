--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

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
-- Name: drsn_talent_mapping; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE drsn_talent_mapping WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';


ALTER DATABASE drsn_talent_mapping OWNER TO postgres;

\connect drsn_talent_mapping

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
-- Name: talent_mapping; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA talent_mapping;


ALTER SCHEMA talent_mapping OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: user_submissions; Type: TABLE; Schema: talent_mapping; Owner: postgres
--

CREATE TABLE talent_mapping.user_submissions (
    user_id character varying(128) NOT NULL,
    respon_1 character(1) NOT NULL,
    respon_2 character(1) NOT NULL,
    respon_3 character(1) NOT NULL,
    respon_4 character(1) NOT NULL,
    respon_5 character(1) NOT NULL,
    respon_6 character(1) NOT NULL,
    respon_7 character(1) NOT NULL,
    respon_8 character(1) NOT NULL,
    respon_9 character(1) NOT NULL,
    respon_10 character(1) NOT NULL,
    respon_11 character(1) NOT NULL,
    respon_12 character(1) NOT NULL,
    respon_13 character(1) NOT NULL,
    respon_14 character(1) NOT NULL,
    respon_15 character(1) NOT NULL,
    respon_16 character(1) NOT NULL,
    respon_17 character(1) NOT NULL,
    respon_18 character(1) NOT NULL,
    respon_19 character(1) NOT NULL,
    respon_20 character(1) NOT NULL,
    respon_21 character(1) NOT NULL,
    respon_22 character(1) NOT NULL,
    respon_23 character(1) NOT NULL,
    respon_24 character(1) NOT NULL,
    respon_25 character(1) NOT NULL,
    respon_26 character(1) NOT NULL,
    respon_27 character(1) NOT NULL,
    respon_28 character(1) NOT NULL,
    full_name character varying NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE talent_mapping.user_submissions OWNER TO postgres;

--
-- Name: user_submissions_codes; Type: VIEW; Schema: talent_mapping; Owner: postgres
--

CREATE VIEW talent_mapping.user_submissions_codes AS
 SELECT user_id,
        CASE
            WHEN (lower((respon_1)::text) = 'a'::text) THEN 'n'::text
            WHEN (lower((respon_1)::text) = 'b'::text) THEN 's'::text
            ELSE NULL::text
        END AS code_respon_1,
        CASE
            WHEN (lower((respon_2)::text) = 'a'::text) THEN 'i'::text
            WHEN (lower((respon_2)::text) = 'b'::text) THEN 'e'::text
            ELSE NULL::text
        END AS code_respon_2,
        CASE
            WHEN (lower((respon_3)::text) = 'a'::text) THEN 'f'::text
            WHEN (lower((respon_3)::text) = 'b'::text) THEN 't'::text
            ELSE NULL::text
        END AS code_respon_3,
        CASE
            WHEN (lower((respon_4)::text) = 'a'::text) THEN 'e'::text
            WHEN (lower((respon_4)::text) = 'b'::text) THEN 'i'::text
            ELSE NULL::text
        END AS code_respon_4,
        CASE
            WHEN (lower((respon_5)::text) = 'a'::text) THEN 'p'::text
            WHEN (lower((respon_5)::text) = 'b'::text) THEN 'j'::text
            ELSE NULL::text
        END AS code_respon_5,
        CASE
            WHEN (lower((respon_6)::text) = 'a'::text) THEN 'n'::text
            WHEN (lower((respon_6)::text) = 'b'::text) THEN 's'::text
            ELSE NULL::text
        END AS code_respon_6,
        CASE
            WHEN (lower((respon_7)::text) = 'a'::text) THEN 't'::text
            WHEN (lower((respon_7)::text) = 'b'::text) THEN 'f'::text
            ELSE NULL::text
        END AS code_respon_7,
        CASE
            WHEN (lower((respon_8)::text) = 'a'::text) THEN 'e'::text
            WHEN (lower((respon_8)::text) = 'b'::text) THEN 'i'::text
            ELSE NULL::text
        END AS code_respon_8,
        CASE
            WHEN (lower((respon_9)::text) = 'a'::text) THEN 'j'::text
            WHEN (lower((respon_9)::text) = 'b'::text) THEN 'p'::text
            ELSE NULL::text
        END AS code_respon_9,
        CASE
            WHEN (lower((respon_10)::text) = 'a'::text) THEN 'n'::text
            WHEN (lower((respon_10)::text) = 'b'::text) THEN 's'::text
            ELSE NULL::text
        END AS code_respon_10,
        CASE
            WHEN (lower((respon_11)::text) = 'a'::text) THEN 'i'::text
            WHEN (lower((respon_11)::text) = 'b'::text) THEN 'e'::text
            ELSE NULL::text
        END AS code_respon_11,
        CASE
            WHEN (lower((respon_12)::text) = 'a'::text) THEN 'f'::text
            WHEN (lower((respon_12)::text) = 'b'::text) THEN 't'::text
            ELSE NULL::text
        END AS code_respon_12,
        CASE
            WHEN (lower((respon_13)::text) = 'a'::text) THEN 's'::text
            WHEN (lower((respon_13)::text) = 'b'::text) THEN 'n'::text
            ELSE NULL::text
        END AS code_respon_13,
        CASE
            WHEN (lower((respon_14)::text) = 'a'::text) THEN 'j'::text
            WHEN (lower((respon_14)::text) = 'b'::text) THEN 'p'::text
            ELSE NULL::text
        END AS code_respon_14,
        CASE
            WHEN (lower((respon_15)::text) = 'a'::text) THEN 'j'::text
            WHEN (lower((respon_15)::text) = 'b'::text) THEN 'p'::text
            ELSE NULL::text
        END AS code_respon_15,
        CASE
            WHEN (lower((respon_16)::text) = 'a'::text) THEN 'e'::text
            WHEN (lower((respon_16)::text) = 'b'::text) THEN 'i'::text
            ELSE NULL::text
        END AS code_respon_16,
        CASE
            WHEN (lower((respon_17)::text) = 'a'::text) THEN 's'::text
            WHEN (lower((respon_17)::text) = 'b'::text) THEN 'n'::text
            ELSE NULL::text
        END AS code_respon_17,
        CASE
            WHEN (lower((respon_18)::text) = 'a'::text) THEN 't'::text
            WHEN (lower((respon_18)::text) = 'b'::text) THEN 'f'::text
            ELSE NULL::text
        END AS code_respon_18,
        CASE
            WHEN (lower((respon_19)::text) = 'a'::text) THEN 'j'::text
            WHEN (lower((respon_19)::text) = 'b'::text) THEN 'p'::text
            ELSE NULL::text
        END AS code_respon_19,
        CASE
            WHEN (lower((respon_20)::text) = 'a'::text) THEN 't'::text
            WHEN (lower((respon_20)::text) = 'b'::text) THEN 'f'::text
            ELSE NULL::text
        END AS code_respon_20,
        CASE
            WHEN (lower((respon_21)::text) = 'a'::text) THEN 'e'::text
            WHEN (lower((respon_21)::text) = 'b'::text) THEN 'i'::text
            ELSE NULL::text
        END AS code_respon_21,
        CASE
            WHEN (lower((respon_22)::text) = 'a'::text) THEN 's'::text
            WHEN (lower((respon_22)::text) = 'b'::text) THEN 'n'::text
            ELSE NULL::text
        END AS code_respon_22,
        CASE
            WHEN (lower((respon_23)::text) = 'a'::text) THEN 'f'::text
            WHEN (lower((respon_23)::text) = 'b'::text) THEN 't'::text
            ELSE NULL::text
        END AS code_respon_23,
        CASE
            WHEN (lower((respon_24)::text) = 'a'::text) THEN 'p'::text
            WHEN (lower((respon_24)::text) = 'b'::text) THEN 'j'::text
            ELSE NULL::text
        END AS code_respon_24,
        CASE
            WHEN (lower((respon_25)::text) = 'a'::text) THEN 'i'::text
            WHEN (lower((respon_25)::text) = 'b'::text) THEN 'e'::text
            ELSE NULL::text
        END AS code_respon_25,
        CASE
            WHEN (lower((respon_26)::text) = 'a'::text) THEN 's'::text
            WHEN (lower((respon_26)::text) = 'b'::text) THEN 'n'::text
            ELSE NULL::text
        END AS code_respon_26,
        CASE
            WHEN (lower((respon_27)::text) = 'a'::text) THEN 'j'::text
            WHEN (lower((respon_27)::text) = 'b'::text) THEN 'p'::text
            ELSE NULL::text
        END AS code_respon_27,
        CASE
            WHEN (lower((respon_28)::text) = 'a'::text) THEN 'f'::text
            WHEN (lower((respon_28)::text) = 'b'::text) THEN 't'::text
            ELSE NULL::text
        END AS code_respon_28,
    full_name
   FROM talent_mapping.user_submissions;


ALTER VIEW talent_mapping.user_submissions_codes OWNER TO postgres;

--
-- Name: row_counting; Type: VIEW; Schema: talent_mapping; Owner: postgres
--

CREATE VIEW talent_mapping.row_counting AS
 SELECT user_id,
    full_name,
    unnest(ARRAY[code_respon_1, code_respon_2, code_respon_3, code_respon_4, code_respon_5, code_respon_6, code_respon_7, code_respon_8, code_respon_9, code_respon_10, code_respon_11, code_respon_12, code_respon_13, code_respon_14, code_respon_15, code_respon_16, code_respon_17, code_respon_18, code_respon_19, code_respon_20, code_respon_21, code_respon_22, code_respon_23, code_respon_24, code_respon_25, code_respon_26, code_respon_27, code_respon_28]) AS code_value
   FROM talent_mapping.user_submissions_codes;


ALTER VIEW talent_mapping.row_counting OWNER TO postgres;

--
-- Name: code_value_group; Type: VIEW; Schema: talent_mapping; Owner: postgres
--

CREATE VIEW talent_mapping.code_value_group AS
 SELECT user_id,
    full_name,
    code_value,
    count(*) AS count
   FROM talent_mapping.row_counting
  GROUP BY user_id, full_name, code_value
  ORDER BY user_id;


ALTER VIEW talent_mapping.code_value_group OWNER TO postgres;

--
-- Name: count_each_code; Type: VIEW; Schema: talent_mapping; Owner: postgres
--

CREATE VIEW talent_mapping.count_each_code AS
 SELECT user_id,
    full_name,
    COALESCE(max(
        CASE
            WHEN (code_value = 'e'::text) THEN count
            ELSE NULL::bigint
        END), (0)::bigint) AS e,
    COALESCE(max(
        CASE
            WHEN (code_value = 'i'::text) THEN count
            ELSE NULL::bigint
        END), (0)::bigint) AS i,
    COALESCE(max(
        CASE
            WHEN (code_value = 'n'::text) THEN count
            ELSE NULL::bigint
        END), (0)::bigint) AS n,
    COALESCE(max(
        CASE
            WHEN (code_value = 's'::text) THEN count
            ELSE NULL::bigint
        END), (0)::bigint) AS s,
    COALESCE(max(
        CASE
            WHEN (code_value = 'f'::text) THEN count
            ELSE NULL::bigint
        END), (0)::bigint) AS f,
    COALESCE(max(
        CASE
            WHEN (code_value = 't'::text) THEN count
            ELSE NULL::bigint
        END), (0)::bigint) AS t,
    COALESCE(max(
        CASE
            WHEN (code_value = 'j'::text) THEN count
            ELSE NULL::bigint
        END), (0)::bigint) AS j,
    COALESCE(max(
        CASE
            WHEN (code_value = 'p'::text) THEN count
            ELSE NULL::bigint
        END), (0)::bigint) AS p
   FROM talent_mapping.code_value_group
  GROUP BY user_id, full_name;


ALTER VIEW talent_mapping.count_each_code OWNER TO postgres;

--
-- Name: personality_roles; Type: TABLE; Schema: talent_mapping; Owner: postgres
--

CREATE TABLE talent_mapping.personality_roles (
    typology character varying(4) NOT NULL,
    personality_role_name character varying(50) NOT NULL,
    cluster character varying(20) NOT NULL
);


ALTER TABLE talent_mapping.personality_roles OWNER TO postgres;

--
-- Name: raw_result; Type: VIEW; Schema: talent_mapping; Owner: postgres
--

CREATE VIEW talent_mapping.raw_result AS
 SELECT user_id,
    full_name,
    e,
    i,
    n,
    s,
    f,
    t,
    j,
    p,
        CASE
            WHEN (e > i) THEN 'e'::text
            ELSE 'i'::text
        END AS e_or_i,
        CASE
            WHEN (n > s) THEN 'n'::text
            ELSE 's'::text
        END AS n_or_s,
        CASE
            WHEN (f > t) THEN 'f'::text
            ELSE 't'::text
        END AS f_or_t,
        CASE
            WHEN (j > p) THEN 'j'::text
            ELSE 'p'::text
        END AS j_or_p
   FROM talent_mapping.count_each_code;


ALTER VIEW talent_mapping.raw_result OWNER TO postgres;

--
-- Name: view_final_result; Type: VIEW; Schema: talent_mapping; Owner: postgres
--

CREATE VIEW talent_mapping.view_final_result AS
 SELECT user_id,
    full_name,
    (((e_or_i || n_or_s) || f_or_t) || j_or_p) AS final_result,
    ((((e)::double precision / (7)::double precision) * (5)::double precision))::integer AS outgoing,
    ((((i)::double precision / (7)::double precision) * (5)::double precision))::integer AS solitary,
    ((((n)::double precision / (7)::double precision) * (5)::double precision))::integer AS conceptual,
    ((((s)::double precision / (7)::double precision) * (5)::double precision))::integer AS practical,
    ((((f)::double precision / (7)::double precision) * (5)::double precision))::integer AS empathetic,
    ((((t)::double precision / (7)::double precision) * (5)::double precision))::integer AS logical,
    ((((j)::double precision / (7)::double precision) * (5)::double precision))::integer AS organized,
    ((((p)::double precision / (7)::double precision) * (5)::double precision))::integer AS flexible
   FROM talent_mapping.raw_result;


ALTER VIEW talent_mapping.view_final_result OWNER TO postgres;

--
-- Data for Name: personality_roles; Type: TABLE DATA; Schema: talent_mapping; Owner: postgres
--

INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('esfj', 'Caregiver', 'Pelayanan (SF)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('esfp', 'Performer', 'Pelayanan (SF)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('isfj', 'Nurturer', 'Pelayanan (SF)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('isfp', 'Adventurer/Artist', 'Pelayanan (SF)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('estj', 'Executor', 'Pelaksanaan (ST)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('estp', 'Entrepreneur', 'Pelaksanaan (ST)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('istj', 'Logistician', 'Pelaksanaan (ST)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('istp', 'Technician', 'Pelaksanaan (ST)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('enfj', 'Protagonist', 'Pengembangan (NF)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('enfp', 'Campaigner', 'Pengembangan (NF)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('infj', 'Advocate', 'Pengembangan (NF)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('infp', 'Mediator', 'Pengembangan (NF)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('entj', 'Commander', 'Perancangan (NT)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('entp', 'Spokesperson', 'Perancangan (NT)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('intj', 'Architect', 'Perancangan (NT)');
INSERT INTO talent_mapping.personality_roles (typology, personality_role_name, cluster) VALUES ('intp', 'Logician', 'Perancangan (NT)');


--
-- Data for Name: user_submissions; Type: TABLE DATA; Schema: talent_mapping; Owner: postgres
--

INSERT INTO talent_mapping.user_submissions (user_id, respon_1, respon_2, respon_3, respon_4, respon_5, respon_6, respon_7, respon_8, respon_9, respon_10, respon_11, respon_12, respon_13, respon_14, respon_15, respon_16, respon_17, respon_18, respon_19, respon_20, respon_21, respon_22, respon_23, respon_24, respon_25, respon_26, respon_27, respon_28, full_name, created_at) VALUES ('chikabikinemaillagi@gmail.com', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'Chika Bikinemaillagi', '2024-11-07 04:28:53.102672');
INSERT INTO talent_mapping.user_submissions (user_id, respon_1, respon_2, respon_3, respon_4, respon_5, respon_6, respon_7, respon_8, respon_9, respon_10, respon_11, respon_12, respon_13, respon_14, respon_15, respon_16, respon_17, respon_18, respon_19, respon_20, respon_21, respon_22, respon_23, respon_24, respon_25, respon_26, respon_27, respon_28, full_name, created_at) VALUES ('ulfa.ispiani97@gmail.com', 'b', 'a', 'a', 'b', 'b', 'a', 'b', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'Ulfa Ispiani', '2024-11-07 10:13:08.827587');
INSERT INTO talent_mapping.user_submissions (user_id, respon_1, respon_2, respon_3, respon_4, respon_5, respon_6, respon_7, respon_8, respon_9, respon_10, respon_11, respon_12, respon_13, respon_14, respon_15, respon_16, respon_17, respon_18, respon_19, respon_20, respon_21, respon_22, respon_23, respon_24, respon_25, respon_26, respon_27, respon_28, full_name, created_at) VALUES ('rizka.renandar@gmail.com', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'Rizka Renandar', '2024-11-07 10:13:08.827587');
INSERT INTO talent_mapping.user_submissions (user_id, respon_1, respon_2, respon_3, respon_4, respon_5, respon_6, respon_7, respon_8, respon_9, respon_10, respon_11, respon_12, respon_13, respon_14, respon_15, respon_16, respon_17, respon_18, respon_19, respon_20, respon_21, respon_22, respon_23, respon_24, respon_25, respon_26, respon_27, respon_28, full_name, created_at) VALUES ('donwafiqo@gmail.com', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'Don Wafiqo', '2024-11-07 10:13:08.827587');
INSERT INTO talent_mapping.user_submissions (user_id, respon_1, respon_2, respon_3, respon_4, respon_5, respon_6, respon_7, respon_8, respon_9, respon_10, respon_11, respon_12, respon_13, respon_14, respon_15, respon_16, respon_17, respon_18, respon_19, respon_20, respon_21, respon_22, respon_23, respon_24, respon_25, respon_26, respon_27, respon_28, full_name, created_at) VALUES ('riza.ramadan@gmail.com', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'riza', '2024-11-08 12:35:11.439546');


--
-- Name: personality_roles personality_roles_pkey; Type: CONSTRAINT; Schema: talent_mapping; Owner: postgres
--

ALTER TABLE ONLY talent_mapping.personality_roles
    ADD CONSTRAINT personality_roles_pkey PRIMARY KEY (typology);


--
-- PostgreSQL database dump complete
--


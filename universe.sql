--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying(50),
    moons integer,
    mass integer,
    distance_sun numeric(10,5),
    description text,
    is_on_milky_way boolean NOT NULL,
    is_planet boolean NOT NULL
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.dwarf_planet ALTER COLUMN dwarf_planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.dwarf_planet_dwarf_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    moons integer,
    mass integer,
    distance_sun numeric(10,5),
    description text,
    is_on_milky_way boolean NOT NULL,
    is_planet boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    moons integer,
    mass integer,
    distance_sun numeric(10,5),
    description text,
    is_on_milky_way boolean NOT NULL,
    is_planet boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    moons integer,
    mass integer,
    distance_sun numeric(10,5),
    description text,
    is_on_milky_way boolean NOT NULL,
    is_planet boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    moons integer,
    mass integer,
    distance_sun numeric(10,5),
    description text,
    is_on_milky_way boolean NOT NULL,
    is_planet boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.dwarf_planet (dwarf_planet_id, name, moons, mass, distance_sun, description, is_on_milky_way, is_planet) FROM stdin;
1	zezinho	3	5	5.50000	very smol	t	t
2	planetao	13	15	15.50000	very big	t	t
3	planetaozao	13	115	115.50000	very very big	t	t
\.


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, moons, mass, distance_sun, description, is_on_milky_way, is_planet) FROM stdin;
1	planetaozao	13	115	115.50000	very very big	t	t
2	pladsanetaozao	113	125	115.50000	verydsf very big	t	t
3	pladsasdffsd	143	15	135.50000	verydsfbig	t	t
4	plsdsdffsd	183	15	15.50000	veryfddsfbig	t	t
5	plsd	193	15	10.50000	verysfbig	t	t
6	plsfsdfsfd	13	15	10.50000	veryig	t	t
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, moons, mass, distance_sun, description, is_on_milky_way, is_planet, planet_id) FROM stdin;
1	asdadsdsad	13	15	10.50000	veryig	t	t	1
2	asdadssfddsad	13	15	10.50000	veryig	t	t	2
3	acvbxcvdssfddsad	13	15	10.50000	veryig	t	t	3
4	acvbxcvdssfddsadd	13	15	10.50000	veryig	t	t	4
5	dd	13	15	10.50000	veryig	t	t	5
6	ddd	13	15	10.50000	veryig	t	t	6
7	dddd	13	15	10.50000	veryig	t	t	7
8	ddddd	13	15	10.50000	veryig	t	t	8
9	dddddd	13	15	10.50000	veryig	t	t	9
10	ddddddd	13	15	10.50000	veryig	t	t	10
11	dddddddd	13	15	10.50000	veryig	t	t	11
13	ddddddddd	13	15	10.50000	veryig	t	t	12
18	dddddddddddddd	13	15	10.50000	veryig	t	t	1
19	adddddddddddddd	13	15	10.50000	veryig	t	t	2
20	aadddddddddddddd	13	15	10.50000	veryig	t	t	3
21	aaadddddddddddddd	13	15	10.50000	veryig	t	t	4
22	aaaadddddddddddddd	13	15	10.50000	veryig	t	t	5
23	aaaaadddddddddddddd	13	15	10.50000	veryig	t	t	6
24	aaaaaadddddddddddddd	13	15	10.50000	veryig	t	t	7
25	aaaaaaadddddddddddddd	13	15	10.50000	veryig	t	t	8
26	aaaaaaaadddddddddddddd	13	15	10.50000	veryig	t	t	9
27	aaaaaaaaadddddddddddddd	13	15	10.50000	veryig	t	t	10
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, moons, mass, distance_sun, description, is_on_milky_way, is_planet, star_id) FROM stdin;
1	asdfd	13	15	10.50000	veryig	t	t	1
2	fdfsfasdfd	13	15	10.50000	veryig	t	t	2
3	asddsaffe	13	15	10.50000	veryig	t	t	3
4	saddsasddsaffe	13	15	10.50000	veryig	t	t	4
5	saddsasddse	13	15	10.50000	veryig	t	t	5
6	saddsasddasdddse	13	15	10.50000	veryig	t	t	6
7	saddsasdde	13	15	10.50000	veryig	t	t	1
8	saddsasddsdade	13	15	10.50000	veryig	t	t	2
9	sddwssaddsasddsdade	13	15	10.50000	veryig	t	t	3
10	sdasdddwssaddsasddsdade	13	15	10.50000	veryig	t	t	4
11	sdssaddsasddsdade	13	15	10.50000	veryig	t	t	5
12	sdssaddsbcvbvasddsdade	13	15	10.50000	veryig	t	t	6
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, moons, mass, distance_sun, description, is_on_milky_way, is_planet, galaxy_id) FROM stdin;
1	plsfsdfsfd	13	15	10.50000	veryig	t	t	1
2	fsdfplsfsdfsfd	13	15	10.50000	veryig	t	t	2
3	fsdfplfsdfsfsdfsfd	13	15	10.50000	veryig	t	t	3
4	fsdfplazzxcfsfd	13	15	10.50000	veryig	t	t	4
5	asdxcfsfd	13	15	10.50000	veryig	t	t	5
6	asdfd	13	15	10.50000	veryig	t	t	6
\.


--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_planet_dwarf_planet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dwarf_planet dwarf_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_name_key UNIQUE (name);


--
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


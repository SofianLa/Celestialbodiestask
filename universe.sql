--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    continent character varying(30) NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    size text,
    distance numeric(5,2),
    moon_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    moondetails text,
    planet_id integer NOT NULL,
    moon__type_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    planetheight integer NOT NULL,
    planet_weight integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    random_id integer NOT NULL,
    star_true boolean,
    star_false boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'q', 'q');
INSERT INTO public.earth VALUES (2, 'w', 'w');
INSERT INTO public.earth VALUES (3, 'e', 'e');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'milkyway', 'superbig', 123.00, 1, 1);
INSERT INTO public.galaxy VALUES (3, 'milkyway', 'superbig', 123.00, 2, 2);
INSERT INTO public.galaxy VALUES (4, 'Milkway2', 'supersmall', 123.01, 3, 3);
INSERT INTO public.galaxy VALUES (5, 'milkway3', 'supersupersmall', 123.02, 4, 4);
INSERT INTO public.galaxy VALUES (6, 'DebraWay', 'superbig', 124.00, 5, 5);
INSERT INTO public.galaxy VALUES (7, 'Debrolini', 'supersmall', 125.00, 6, 6);
INSERT INTO public.galaxy VALUES (1, 'milkway4', 'Superbig', 125.55, 7, 7);
INSERT INTO public.galaxy VALUES (8, 'milkway8', 'super', 127.99, 8, 8);
INSERT INTO public.galaxy VALUES (9, 'milk9', 'milk9', 139.00, 9, 9);
INSERT INTO public.galaxy VALUES (10, 'milk10', 'milk10', 144.00, 10, 10);
INSERT INTO public.galaxy VALUES (11, 'milk11', 'milk11', 132.00, 11, 11);
INSERT INTO public.galaxy VALUES (12, 'milk12', 'milk12', 149.00, 12, 12);
INSERT INTO public.galaxy VALUES (13, 'milk13', 'milk13', 170.00, 13, 13);
INSERT INTO public.galaxy VALUES (14, 'milk14', 'milk14', 179.00, 14, 14);
INSERT INTO public.galaxy VALUES (15, 'milk15', 'milk15', 192.00, 15, 15);
INSERT INTO public.galaxy VALUES (16, '16', '16', 143.23, 16, 16);
INSERT INTO public.galaxy VALUES (17, '17', '17', 999.12, 17, 17);
INSERT INTO public.galaxy VALUES (18, '18', '18', 123.22, 18, 18);
INSERT INTO public.galaxy VALUES (19, '19', '19', 143.23, 19, 19);
INSERT INTO public.galaxy VALUES (20, '20', '20', 176.99, 20, 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'moon1', 1, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 'moon2', 2, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 'moon3', 3, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 'moon4', 4, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 'moon5', 5, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 'moon6', 6, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 'moon7', 7, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 'moon8', 8, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 'moon9', 9, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 'moon10', 10, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 'moon11', 11, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 'moon12', 12, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 'moon13', 13, 13);
INSERT INTO public.moon VALUES (14, 'moon14', 'moon14', 14, 14);
INSERT INTO public.moon VALUES (15, 'moon15', 'moon15', 15, 15);
INSERT INTO public.moon VALUES (16, 'moon16', 'moon16', 16, 16);
INSERT INTO public.moon VALUES (17, 'moon17', 'moon17', 17, 17);
INSERT INTO public.moon VALUES (18, 'moon18', 'moon18', 18, 18);
INSERT INTO public.moon VALUES (19, 'moon19', 'moon19', 19, 19);
INSERT INTO public.moon VALUES (20, 'moon20', 'moon20', 20, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '1', 1, 1, 1);
INSERT INTO public.planet VALUES (2, '2', 2, 2, 2);
INSERT INTO public.planet VALUES (3, '3', 3, 3, 3);
INSERT INTO public.planet VALUES (4, '4', 4, 4, 4);
INSERT INTO public.planet VALUES (5, '5', 5, 5, 5);
INSERT INTO public.planet VALUES (6, '6', 6, 6, 6);
INSERT INTO public.planet VALUES (7, '7', 7, 7, 7);
INSERT INTO public.planet VALUES (8, '8', 8, 8, 8);
INSERT INTO public.planet VALUES (9, '9', 9, 9, 9);
INSERT INTO public.planet VALUES (10, '10', 10, 10, 10);
INSERT INTO public.planet VALUES (11, '11', 11, 11, 11);
INSERT INTO public.planet VALUES (12, '12', 12, 12, 12);
INSERT INTO public.planet VALUES (13, '13', 13, 13, 13);
INSERT INTO public.planet VALUES (14, '14', 14, 14, 14);
INSERT INTO public.planet VALUES (15, '15', 15, 15, 15);
INSERT INTO public.planet VALUES (16, '16', 16, 16, 16);
INSERT INTO public.planet VALUES (17, '17', 17, 17, 17);
INSERT INTO public.planet VALUES (18, '18', 18, 18, 18);
INSERT INTO public.planet VALUES (19, '19', 19, 19, 19);
INSERT INTO public.planet VALUES (20, '20', 20, 20, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 1, 2, true, false);
INSERT INTO public.star VALUES (3, 'Galaxy1', 2, 1, true, false);
INSERT INTO public.star VALUES (4, 'galaxy3', 3, 3, true, true);
INSERT INTO public.star VALUES (5, 'galaxy5', 4, 4, true, false);
INSERT INTO public.star VALUES (6, 'galaxy6', 5, 5, true, true);
INSERT INTO public.star VALUES (7, 'galaxy7', 6, 6, true, false);
INSERT INTO public.star VALUES (1, 'sun2', 7, 7, true, true);
INSERT INTO public.star VALUES (9, 'sun9', 9, 9, true, true);
INSERT INTO public.star VALUES (10, 'SUN10', 10, 10, true, true);
INSERT INTO public.star VALUES (11, 'SUN11', 11, 11, true, true);
INSERT INTO public.star VALUES (12, 'SUN12', 12, 12, true, true);
INSERT INTO public.star VALUES (8, 'sun8', 8, 8, true, true);
INSERT INTO public.star VALUES (13, NULL, 13, 13, NULL, NULL);
INSERT INTO public.star VALUES (14, NULL, 14, 14, NULL, NULL);
INSERT INTO public.star VALUES (15, NULL, 15, 15, NULL, NULL);
INSERT INTO public.star VALUES (16, NULL, 16, 16, NULL, NULL);
INSERT INTO public.star VALUES (17, NULL, 17, 17, NULL, NULL);
INSERT INTO public.star VALUES (18, NULL, 18, 18, NULL, NULL);
INSERT INTO public.star VALUES (19, NULL, 19, 19, NULL, NULL);
INSERT INTO public.star VALUES (20, NULL, 20, 20, NULL, NULL);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


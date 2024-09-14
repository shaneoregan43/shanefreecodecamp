--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: alien_species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien_species (
    alien_species_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    population numeric
);


ALTER TABLE public.alien_species OWNER TO freecodecamp;

--
-- Name: alien_species_alien_species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_species_alien_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_species_alien_species_id_seq OWNER TO freecodecamp;

--
-- Name: alien_species_alien_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_species_alien_species_id_seq OWNED BY public.alien_species.alien_species_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age integer,
    name character varying(30) NOT NULL,
    has_life boolean,
    alien_species_id integer
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
    age integer,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean
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
    age integer,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean
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
    age integer,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean
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
-- Name: alien_species alien_species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_species ALTER COLUMN alien_species_id SET DEFAULT nextval('public.alien_species_alien_species_id_seq'::regclass);


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
-- Data for Name: alien_species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien_species VALUES (1, 'Humans', 'description1', 100);
INSERT INTO public.alien_species VALUES (2, 'Dogs', 'description2', 200);
INSERT INTO public.alien_species VALUES (3, 'Cats', 'description3', 300);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'Human Heaven', true, 1);
INSERT INTO public.galaxy VALUES (2, 2, 'Human Hell', true, 1);
INSERT INTO public.galaxy VALUES (3, 3, 'Dog Heaven', true, 2);
INSERT INTO public.galaxy VALUES (4, 4, 'Dog Hell', true, 2);
INSERT INTO public.galaxy VALUES (5, 5, 'Cat Heaven', true, 3);
INSERT INTO public.galaxy VALUES (6, 6, 'Cat Hell', true, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 1, 'moon1', NULL);
INSERT INTO public.moon VALUES (2, NULL, 1, 'moon2', NULL);
INSERT INTO public.moon VALUES (3, NULL, 2, 'moon3', NULL);
INSERT INTO public.moon VALUES (4, NULL, 2, 'moon4', NULL);
INSERT INTO public.moon VALUES (5, NULL, 3, 'moon5', NULL);
INSERT INTO public.moon VALUES (6, NULL, 3, 'moon6', NULL);
INSERT INTO public.moon VALUES (7, NULL, 4, 'moon7', NULL);
INSERT INTO public.moon VALUES (8, NULL, 4, 'moon8', NULL);
INSERT INTO public.moon VALUES (9, NULL, 5, 'moon9', NULL);
INSERT INTO public.moon VALUES (10, NULL, 5, 'moon10', NULL);
INSERT INTO public.moon VALUES (11, NULL, 6, 'moon11', NULL);
INSERT INTO public.moon VALUES (12, NULL, 6, 'moon12', NULL);
INSERT INTO public.moon VALUES (13, NULL, 7, 'moon13', NULL);
INSERT INTO public.moon VALUES (14, NULL, 7, 'moon14', NULL);
INSERT INTO public.moon VALUES (15, NULL, 8, 'moon15', NULL);
INSERT INTO public.moon VALUES (16, NULL, 8, 'moon16', NULL);
INSERT INTO public.moon VALUES (17, NULL, 9, 'moon17', NULL);
INSERT INTO public.moon VALUES (18, NULL, 9, 'moon18', NULL);
INSERT INTO public.moon VALUES (19, NULL, 10, 'moon19', NULL);
INSERT INTO public.moon VALUES (20, NULL, 10, 'moon20', NULL);
INSERT INTO public.moon VALUES (21, NULL, 11, 'moon21', NULL);
INSERT INTO public.moon VALUES (22, NULL, 11, 'moon22', NULL);
INSERT INTO public.moon VALUES (23, NULL, 12, 'moon23', NULL);
INSERT INTO public.moon VALUES (24, NULL, 12, 'moon24', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 1, 'star1', NULL);
INSERT INTO public.planet VALUES (2, NULL, 1, 'star2', NULL);
INSERT INTO public.planet VALUES (3, NULL, 2, 'star3', NULL);
INSERT INTO public.planet VALUES (4, NULL, 2, 'star4', NULL);
INSERT INTO public.planet VALUES (5, NULL, 3, 'star5', NULL);
INSERT INTO public.planet VALUES (6, NULL, 3, 'star6', NULL);
INSERT INTO public.planet VALUES (7, NULL, 4, 'star7', NULL);
INSERT INTO public.planet VALUES (8, NULL, 4, 'star8', NULL);
INSERT INTO public.planet VALUES (9, NULL, 5, 'star9', NULL);
INSERT INTO public.planet VALUES (10, NULL, 5, 'star10', NULL);
INSERT INTO public.planet VALUES (11, NULL, 6, 'star11', NULL);
INSERT INTO public.planet VALUES (12, NULL, 6, 'star12', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 1, 'star1', true);
INSERT INTO public.star VALUES (2, 2, 2, 'star2', true);
INSERT INTO public.star VALUES (3, 3, 3, 'star3', true);
INSERT INTO public.star VALUES (4, 4, 4, 'star4', true);
INSERT INTO public.star VALUES (5, 5, 5, 'star5', true);
INSERT INTO public.star VALUES (6, 6, 6, 'star6', true);


--
-- Name: alien_species_alien_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_species_alien_species_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: alien_species alien_species_alien_species_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_species
    ADD CONSTRAINT alien_species_alien_species_id_key UNIQUE (alien_species_id);


--
-- Name: alien_species alien_species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_species
    ADD CONSTRAINT alien_species_pkey PRIMARY KEY (alien_species_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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


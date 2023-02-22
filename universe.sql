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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    size numeric NOT NULL,
    galaxy_type text NOT NULL
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
    name character varying(30) NOT NULL,
    moon_size numeric NOT NULL,
    moon_type text NOT NULL,
    moon_dist integer,
    planet_id integer
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
-- Name: other; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other (
    other_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_sphere boolean,
    other_type text
);


ALTER TABLE public.other OWNER TO freecodecamp;

--
-- Name: other_other_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_other_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_other_id_seq OWNER TO freecodecamp;

--
-- Name: other_other_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_other_id_seq OWNED BY public.other.other_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    distance_from_sun numeric NOT NULL,
    has_moons boolean NOT NULL,
    star_id integer
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
    name character varying(30) NOT NULL,
    star_size numeric NOT NULL,
    is_center boolean NOT NULL,
    star_temp numeric NOT NULL,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: other other_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other ALTER COLUMN other_id SET DEFAULT nextval('public.other_other_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galA', true, 10000, 'A');
INSERT INTO public.galaxy VALUES (2, 'galB', false, 20000, 'A');
INSERT INTO public.galaxy VALUES (3, 'galC', false, 10000, 'B');
INSERT INTO public.galaxy VALUES (4, 'galD', true, 60000, 'C');
INSERT INTO public.galaxy VALUES (5, 'galE', false, 70000, 'A');
INSERT INTO public.galaxy VALUES (6, 'galF', false, 20000, 'C');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moonA', 2, 'A', 30, 3);
INSERT INTO public.moon VALUES (2, 'moonB', 3, 'A', 40, 3);
INSERT INTO public.moon VALUES (3, 'moonC', 22, 'B', 50, 3);
INSERT INTO public.moon VALUES (4, 'moonD', 5, 'B', 550, 3);
INSERT INTO public.moon VALUES (5, 'moonE', 6, 'C', 10, 3);
INSERT INTO public.moon VALUES (6, 'moonF', 7, 'A', 30, 4);
INSERT INTO public.moon VALUES (7, 'moonG', 2, 'B', 3, 4);
INSERT INTO public.moon VALUES (8, 'moonH', 4, 'B', 30, 4);
INSERT INTO public.moon VALUES (9, 'moonI', 10, 'A', 80, 5);
INSERT INTO public.moon VALUES (10, 'moonJ', 10, 'A', 10, 5);
INSERT INTO public.moon VALUES (11, 'moonK', 1, 'C', 90, 7);
INSERT INTO public.moon VALUES (12, 'moonL', 2, 'D', 100, 7);
INSERT INTO public.moon VALUES (13, 'moonM', 20, 'D', 200, 7);
INSERT INTO public.moon VALUES (14, 'moonN', 20, 'D', 400, 7);
INSERT INTO public.moon VALUES (15, 'moonO', 20, 'A', 4, 7);
INSERT INTO public.moon VALUES (16, 'moonP', 10, 'A', 4, 8);
INSERT INTO public.moon VALUES (17, 'moonQ', 5, 'B', 500, 8);
INSERT INTO public.moon VALUES (18, 'moonR', 5, 'C', 1000, 8);
INSERT INTO public.moon VALUES (19, 'moonS', 10, 'A', 2000, 8);
INSERT INTO public.moon VALUES (20, 'moonT', 1, 'A', 100, 8);
INSERT INTO public.moon VALUES (21, 'moonU', 100, 'A', 200, 12);
INSERT INTO public.moon VALUES (22, 'moonV', 100, 'A', 300, 12);


--
-- Data for Name: other; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other VALUES (1, 'otherA', false, 'A');
INSERT INTO public.other VALUES (2, 'otherB', true, 'A');
INSERT INTO public.other VALUES (3, 'otherC', false, 'B');
INSERT INTO public.other VALUES (4, 'otherD', false, 'C');
INSERT INTO public.other VALUES (5, 'otherE', true, 'A');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planetA', 10, 20, false, 1);
INSERT INTO public.planet VALUES (3, 'planetC', 5, 35, true, 2);
INSERT INTO public.planet VALUES (4, 'planetD', 40, 45, true, 3);
INSERT INTO public.planet VALUES (2, 'planetB', 15, 25, false, 2);
INSERT INTO public.planet VALUES (5, 'planetE', 50, 50, true, 2);
INSERT INTO public.planet VALUES (6, 'planetF', 50, 55, false, 4);
INSERT INTO public.planet VALUES (7, 'planetG', 40, 60, true, 2);
INSERT INTO public.planet VALUES (8, 'planetH', 40, 68, true, 5);
INSERT INTO public.planet VALUES (9, 'planetI', 10, 70, false, 5);
INSERT INTO public.planet VALUES (10, 'planetJ', 15, 75, false, 6);
INSERT INTO public.planet VALUES (11, 'planetK', 20, 78, false, 5);
INSERT INTO public.planet VALUES (12, 'planetL', 25, 85, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'starA', 1000, true, 5000, 1);
INSERT INTO public.star VALUES (2, 'starB', 1000, true, 5000, 2);
INSERT INTO public.star VALUES (3, 'starC', 1000, true, 5000, 3);
INSERT INTO public.star VALUES (4, 'starD', 1000, true, 5000, 4);
INSERT INTO public.star VALUES (5, 'starE', 2000, true, 6000, 5);
INSERT INTO public.star VALUES (6, 'starF', 1500, true, 1000, 6);
INSERT INTO public.star VALUES (7, 'starG', 2500, false, 7000, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: other_other_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_other_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


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
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


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
-- Name: other other_other_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_other_name_key UNIQUE (name);


--
-- Name: other other_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_pkey PRIMARY KEY (other_id);


--
-- Name: planet planet_distance_from_sun_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_sun_key UNIQUE (distance_from_sun);


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


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
    name character varying(100) NOT NULL,
    description text,
    number_of_planets_in_galaxy integer,
    number_of_star_in_galaxy integer
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
    name character varying(100) NOT NULL,
    description text,
    is_habitable boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    number_of_rings integer,
    number_of_moons integer,
    surface_area_in_million_km2 numeric(5,2),
    is_habitable boolean,
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
-- Name: relation_of_universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.relation_of_universe (
    name character varying(100) NOT NULL,
    relation_of_universe_id integer NOT NULL,
    serial_number integer NOT NULL
);


ALTER TABLE public.relation_of_universe OWNER TO freecodecamp;

--
-- Name: relation_of_universe_relation_of_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.relation_of_universe_relation_of_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.relation_of_universe_relation_of_universe_id_seq OWNER TO freecodecamp;

--
-- Name: relation_of_universe_relation_of_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.relation_of_universe_relation_of_universe_id_seq OWNED BY public.relation_of_universe.relation_of_universe_id;


--
-- Name: relation_of_universe_serial_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.relation_of_universe_serial_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.relation_of_universe_serial_number_seq OWNER TO freecodecamp;

--
-- Name: relation_of_universe_serial_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.relation_of_universe_serial_number_seq OWNED BY public.relation_of_universe.serial_number;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    galaxy_id integer,
    age_in_million_year integer
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: relation_of_universe relation_of_universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation_of_universe ALTER COLUMN relation_of_universe_id SET DEFAULT nextval('public.relation_of_universe_relation_of_universe_id_seq'::regclass);


--
-- Name: relation_of_universe serial_number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation_of_universe ALTER COLUMN serial_number SET DEFAULT nextval('public.relation_of_universe_serial_number_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 'It is a wrapped galaxy which contains our home planet earth', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'It is closest galaxy to the milky way galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Antenna', 'It is a galaxy that is in a collision with five other galaxies', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Backward', 'It is a galaxy with spiral arms', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Black eye', 'Also known as sleeping beauty galaxy is an isolated galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Bode', 'It is also a type of spiral galaxy', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (2, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (3, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (4, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (5, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (6, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (7, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (8, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (9, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (10, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (11, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (12, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (13, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (14, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (15, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (16, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (17, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (18, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (19, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);
INSERT INTO public.moon VALUES (20, 'moon', 'its the moon of earth its the nearest  planet to earth', true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'only known planet that has life on it.', 0, 1, 510.10, true, 4);
INSERT INTO public.planet VALUES (2, 'Mars', 'It is the 4th planet from the sun', 0, 2, 144.80, false, 4);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Its the biggest planet in the milky way galaxy', 0, 80, 614.00, false, 4);
INSERT INTO public.planet VALUES (4, 'Mercury', '', 0, 0, 0.00, false, 4);
INSERT INTO public.planet VALUES (5, 'Saturn', '', 0, 0, 0.00, false, 4);
INSERT INTO public.planet VALUES (6, 'Neptune', '', 0, 0, 0.00, false, 4);
INSERT INTO public.planet VALUES (7, 'Earth', 'only known planet that has life on it.', 0, 1, 510.10, true, 4);
INSERT INTO public.planet VALUES (8, 'Mars', 'It is the 4th planet from the sun', 0, 2, 144.80, false, 4);
INSERT INTO public.planet VALUES (9, 'Jupiter', 'Its the biggest planet in the milky way galaxy', 0, 80, 614.00, false, 4);
INSERT INTO public.planet VALUES (10, 'Mercury', '', 0, 0, 0.00, false, 4);
INSERT INTO public.planet VALUES (11, 'Saturn', '', 0, 0, 0.00, false, 4);
INSERT INTO public.planet VALUES (12, 'Neptune', '', 0, 0, 0.00, false, 4);


--
-- Data for Name: relation_of_universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.relation_of_universe VALUES ('', 1, 1);
INSERT INTO public.relation_of_universe VALUES ('', 2, 2);
INSERT INTO public.relation_of_universe VALUES ('', 3, 3);
INSERT INTO public.relation_of_universe VALUES ('', 4, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 'Its the 10th largest star in milky way galaxy', 1, NULL);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Its the 9th largest star in milky way galaxy', 1, NULL);
INSERT INTO public.star VALUES (3, 'KW saittarii', 'Its the 8th largest star in milky waay galaxy', 1, NULL);
INSERT INTO public.star VALUES (4, 'Sun', 'Its most important star for the planet earth without it all the living thing will vanish on earth', 1, NULL);
INSERT INTO public.star VALUES (5, 'VV Cephei A', 'Its the 7th biggest star in milky way galaxy', 1, NULL);
INSERT INTO public.star VALUES (6, 'MU Cephei', 'Its the 6th biggest star iin milky way galaxy', 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: relation_of_universe_relation_of_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.relation_of_universe_relation_of_universe_id_seq', 4, true);


--
-- Name: relation_of_universe_serial_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.relation_of_universe_serial_number_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: relation_of_universe relation_of_universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation_of_universe
    ADD CONSTRAINT relation_of_universe_pkey PRIMARY KEY (relation_of_universe_id);


--
-- Name: relation_of_universe relation_of_universe_serial_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation_of_universe
    ADD CONSTRAINT relation_of_universe_serial_number_key UNIQUE (serial_number);


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


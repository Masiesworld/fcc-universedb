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
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    age integer,
    distance_to_earth numeric
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
-- Name: galaxy_star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_star (
    galaxy_id integer,
    star_id integer,
    name character varying(30) NOT NULL,
    galaxy_star_id integer NOT NULL
);


ALTER TABLE public.galaxy_star OWNER TO freecodecamp;

--
-- Name: galaxy_star_galaxy_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_star_galaxy_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_star_galaxy_star_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_star_galaxy_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_star_galaxy_star_id_seq OWNED BY public.galaxy_star.galaxy_star_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(30) NOT NULL,
    has_life boolean,
    funky boolean
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
    name character varying(30) NOT NULL,
    age integer,
    color character varying(30),
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
    name character varying(40) NOT NULL,
    has_life boolean,
    age integer,
    distance_to_earth numeric,
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
-- Name: galaxy_star galaxy_star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star ALTER COLUMN galaxy_star_id SET DEFAULT nextval('public.galaxy_star_galaxy_star_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky way', 2, 'Our place', 10000, 324234);
INSERT INTO public.galaxy VALUES ('Cloud way', 3, 'Beautiful places', 34343534, 909);
INSERT INTO public.galaxy VALUES ('Metallic cloud', 4, NULL, 76351324, 13412);
INSERT INTO public.galaxy VALUES ('Starship', 1, NULL, 898998, NULL);
INSERT INTO public.galaxy VALUES ('N', 5, 'bi', 343, 222);
INSERT INTO public.galaxy VALUES ('Ni', 6, 'NIUBI', 9999, 2333);


--
-- Data for Name: galaxy_star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_star VALUES (1, 2, 'tell me', 1);
INSERT INTO public.galaxy_star VALUES (2, 2, 'Wonder girls', 2);
INSERT INTO public.galaxy_star VALUES (3, 1, 'Twice', 3);
INSERT INTO public.galaxy_star VALUES (4, 2, 'TTT', 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 2, 'Futuristic night', true, NULL);
INSERT INTO public.moon VALUES (2, 1, 'Sailor Moon', false, NULL);
INSERT INTO public.moon VALUES (3, 1, 'Funky funk', false, NULL);
INSERT INTO public.moon VALUES (4, 4, 'Acid jazz', true, NULL);
INSERT INTO public.moon VALUES (5, 5, 'hip hop', true, NULL);
INSERT INTO public.moon VALUES (6, 1, 'bass pop', false, NULL);
INSERT INTO public.moon VALUES (7, 2, 'Metalic', false, NULL);
INSERT INTO public.moon VALUES (8, 12, 'Empowering', false, NULL);
INSERT INTO public.moon VALUES (9, 11, 'Rainy lofi', true, NULL);
INSERT INTO public.moon VALUES (10, 10, 'Afro jazz', false, NULL);
INSERT INTO public.moon VALUES (11, 9, 'lofi soundtrack', false, NULL);
INSERT INTO public.moon VALUES (12, 8, 'Jpop', false, NULL);
INSERT INTO public.moon VALUES (13, 7, 'Kpop', false, NULL);
INSERT INTO public.moon VALUES (14, 6, 'Man-pop', false, NULL);
INSERT INTO public.moon VALUES (15, 5, 'Spritual', true, NULL);
INSERT INTO public.moon VALUES (16, 4, 'Latin', false, NULL);
INSERT INTO public.moon VALUES (17, 3, 'Arab', false, NULL);
INSERT INTO public.moon VALUES (18, 2, 'Piano soundtracks', false, NULL);
INSERT INTO public.moon VALUES (19, 12, 'Anime soundtrack', true, NULL);
INSERT INTO public.moon VALUES (20, 12, 'composition', false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Cookley', 2010, 'Violet', 6);
INSERT INTO public.planet VALUES (2, 'Sonair', 20089, 'Maroon', 5);
INSERT INTO public.planet VALUES (3, 'Kanlam', 19922, 'Navy', 4);
INSERT INTO public.planet VALUES (4, 'Finstone', 19090, 'Mauv', 3);
INSERT INTO public.planet VALUES (5, 'Biodex', 1997, 'Yellow', 2);
INSERT INTO public.planet VALUES (6, 'Alpha', 2009, 'Khaki', 1);
INSERT INTO public.planet VALUES (7, 'Y-find', 20045, 'Teal', 2);
INSERT INTO public.planet VALUES (8, 'Cardify', 9403, 'Pink', 2);
INSERT INTO public.planet VALUES (9, 'Tres-zap', 5848, 'Aquamarine', 3);
INSERT INTO public.planet VALUES (10, 'IT', 4343, 'Green', 4);
INSERT INTO public.planet VALUES (11, 'Sub', 43949, 'Indigo', 5);
INSERT INTO public.planet VALUES (12, 'Opelax', 34343, 'Fuscia', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Mu', false, 10000, NULL, 2);
INSERT INTO public.star VALUES (2, 'Huang', true, 200000, 3000000, 1);
INSERT INTO public.star VALUES (3, 'Ming', false, 200, 2000, 2);
INSERT INTO public.star VALUES (4, 'Gray langur', true, 1008, 90232, 1);
INSERT INTO public.star VALUES (5, 'Blue winged shark', false, 2010, 99631, 2);
INSERT INTO public.star VALUES (6, 'Giant lizard', false, 2005, 994245, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_star_galaxy_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_star_galaxy_star_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


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
-- Name: galaxy_star galaxy_star_galaxy_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_galaxy_star_id_key UNIQUE (galaxy_star_id);


--
-- Name: galaxy_star galaxy_star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_pkey PRIMARY KEY (galaxy_star_id);


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
-- Name: galaxy_star galaxy_star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy_star galaxy_star_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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



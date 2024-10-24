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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer NOT NULL,
    visited boolean,
    stars_count bigint NOT NULL
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
    diameter integer,
    planet_id integer NOT NULL,
    orbital_period numeric(5,2)
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
-- Name: my_list; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.my_list (
    my_list_id integer NOT NULL,
    name character varying(30) NOT NULL,
    choice character varying(30) NOT NULL
);


ALTER TABLE public.my_list OWNER TO freecodecamp;

--
-- Name: my_list_my_list_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.my_list_my_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.my_list_my_list_id_seq OWNER TO freecodecamp;

--
-- Name: my_list_my_list_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.my_list_my_list_id_seq OWNED BY public.my_list.my_list_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    no_moons integer,
    visited boolean,
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
    name character varying(30) NOT NULL,
    age numeric(5,2),
    type text,
    galaxy_id integer NOT NULL
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
-- Name: my_list my_list_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_list ALTER COLUMN my_list_id SET DEFAULT nextval('public.my_list_my_list_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, true, 100000000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, false, 1000000000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, false, 40000000000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 80000, true, 100000000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 50000, false, 80000000000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 170000, true, 1000000000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3474, 1, 27.30);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, 2, 0.30);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 2, 0.60);
INSERT INTO public.moon VALUES (4, 'Europa', 3121, 3, 3.50);
INSERT INTO public.moon VALUES (5, 'Io', 3643, 3, 1.80);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5268, 3, 7.10);
INSERT INTO public.moon VALUES (7, 'Callisto', 4820, 3, 16.70);
INSERT INTO public.moon VALUES (8, 'Titan', 5150, 4, 15.90);
INSERT INTO public.moon VALUES (9, 'Enceladus', 504, 4, 1.40);
INSERT INTO public.moon VALUES (10, 'Mimas', 396, 4, 0.30);
INSERT INTO public.moon VALUES (11, 'Triton', 2706, 11, 5.90);
INSERT INTO public.moon VALUES (12, 'Nereid', 340, 11, 11.80);
INSERT INTO public.moon VALUES (13, 'Miranda', 471, 12, 0.90);
INSERT INTO public.moon VALUES (14, 'Ariel', 1157, 12, 1.50);
INSERT INTO public.moon VALUES (15, 'Umbriel', 1169, 12, 2.40);
INSERT INTO public.moon VALUES (16, 'Titania', 1578, 12, 8.70);
INSERT INTO public.moon VALUES (17, 'Oberon', 1523, 12, 13.50);
INSERT INTO public.moon VALUES (18, 'Thebe', 98, 3, 0.40);
INSERT INTO public.moon VALUES (19, 'Charon', 1212, 6, 6.10);
INSERT INTO public.moon VALUES (20, 'Nyx', 49, 7, 0.30);


--
-- Data for Name: my_list; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.my_list VALUES (1, 'Item 1', 'Choice A');
INSERT INTO public.my_list VALUES (2, 'Item 2', 'Choice B');
INSERT INTO public.my_list VALUES (3, 'Item 3', 'Choice C');
INSERT INTO public.my_list VALUES (4, 'Item 4', 'Choice D');
INSERT INTO public.my_list VALUES (5, 'Item 5', 'Choice E');
INSERT INTO public.my_list VALUES (6, 'Item 6', 'Choice F');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 2, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 79, true, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 82, false, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 0, false, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 0, true, 1);
INSERT INTO public.planet VALUES (7, 'Kepler-22b', 0, false, 2);
INSERT INTO public.planet VALUES (8, 'Proxima b', 0, false, 2);
INSERT INTO public.planet VALUES (9, 'GJ 1214b', 0, false, 3);
INSERT INTO public.planet VALUES (10, 'Trappist-1d', 3, true, 3);
INSERT INTO public.planet VALUES (11, 'Neptune', 14, false, 1);
INSERT INTO public.planet VALUES (12, 'Uranus', 27, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4.60, 'G-type main-sequence', 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 5.30, 'G-type main-sequence', 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 8.00, 'Red supergiant', 3);
INSERT INTO public.star VALUES (4, 'Sirius', 6.00, 'A-type main-sequence', 4);
INSERT INTO public.star VALUES (5, 'Rigel', 9.00, 'Blue supergiant', 5);
INSERT INTO public.star VALUES (6, 'Vega', 7.50, 'A-type main-sequence', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: my_list_my_list_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.my_list_my_list_id_seq', 6, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: my_list my_list_choice_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_list
    ADD CONSTRAINT my_list_choice_key UNIQUE (choice);


--
-- Name: my_list my_list_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_list
    ADD CONSTRAINT my_list_pkey PRIMARY KEY (my_list_id);


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


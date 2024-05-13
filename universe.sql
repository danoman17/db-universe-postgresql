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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size numeric(10,2),
    description text,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size numeric(10,2),
    galaxy_types character varying(40),
    age_in_millions_of_years numeric(10,2),
    distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    size numeric(10,2),
    description text,
    is_spherical boolean,
    distance_from_earth integer,
    has_life boolean,
    age_in_millions_of_years numeric(10,2),
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    description text,
    is_spherical boolean,
    distance_from_earth integer,
    has_life boolean,
    age_in_millions_of_years numeric(10,2),
    star_id integer NOT NULL,
    size numeric(10,2)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    distance_from_earth integer,
    age_in_millions_of_years numeric(10,2),
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (6, 'Eunomia', 282000.00, 'Eunomia is one of the largest asteroids in the asteroid belt.', false, 2);
INSERT INTO public.asteroid VALUES (7, 'Psyche', 210000.00, 'Psyche is one of the ten most massive asteroids in the asteroid belt.', false, 2);
INSERT INTO public.asteroid VALUES (8, 'Hektor', 202000.00, 'Hektor is the largest Jupiter trojan.', false, 2);
INSERT INTO public.asteroid VALUES (9, 'Juno', 243000.00, 'Juno is one of the largest asteroids in the asteroid belt.', false, 2);
INSERT INTO public.asteroid VALUES (10, 'Davida', 324000.00, 'Davida is one of the largest asteroids in the asteroid belt.', false, 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 200000.50, 'Spiral', 10000.75, 2500000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 150000.25, 'Spiral', 13000.00, 0);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 300000.75, 'Elliptical', 13000.50, 5500000);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 100000.75, 'Spiral', 8000.25, 3000000);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 180000.00, 'Elliptical', 12000.00, 4000000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 120000.00, 'Spiral', 9000.50, 1800000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3797000.00, 'The Moon is Earth''s only natural satellite.', true, 384400, false, 4500.50, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 220.00, 'Phobos is the larger and closer of the two natural satellites of Mars.', true, 9377, false, 3500.25, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 12.40, 'Deimos is the smaller and outer of the two natural satellites of Mars.', true, 23460, false, 3500.25, 2);
INSERT INTO public.moon VALUES (4, 'Io', 3642000.00, 'Io is the innermost of the four Galilean moons of the planet Jupiter.', true, 421800, false, 4600.75, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 3121000.00, 'Europa is the smallest of the four Galilean moons orbiting Jupiter.', true, 671100, false, 4600.75, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 8721000.00, 'Ganymede is the largest and most massive moon of Jupiter.', true, 1070400, false, 4600.75, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 7480000.00, 'Callisto is the second-largest moon of Jupiter.', true, 1882700, false, 4600.75, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 7550000.00, 'Titan is the largest moon of Saturn.', true, 1250000, false, 4700.00, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 1530000.00, 'Rhea is the second-largest moon of Saturn.', true, 527000, false, 4700.00, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 1470000.00, 'Iapetus is the third-largest moon of Saturn.', true, 3561000, false, 4700.00, 6);
INSERT INTO public.moon VALUES (11, 'Titania', 788900.00, 'Titania is the largest moon of Uranus.', true, 435910, false, 4800.50, 7);
INSERT INTO public.moon VALUES (12, 'Oberon', 761400.00, 'Oberon is the second-largest moon of Uranus.', true, 583520, false, 4800.50, 7);
INSERT INTO public.moon VALUES (13, 'Triton', 2707000.00, 'Triton is the largest natural satellite of the planet Neptune.', true, 354760, false, 4900.25, 8);
INSERT INTO public.moon VALUES (14, 'Nereid', 340.00, 'Nereid is the third-largest moon of Neptune.', true, 5513800, false, 4900.25, 8);
INSERT INTO public.moon VALUES (15, 'Charon', 1212000.00, 'Charon is the largest moon of the dwarf planet Pluto.', true, 19571, false, 5200.75, 9);
INSERT INTO public.moon VALUES (16, 'Proteus', 420.00, 'Proteus is the second-largest moon of Neptune.', true, 117647, false, 4900.25, 8);
INSERT INTO public.moon VALUES (17, 'Hyperion', 360.00, 'Hyperion is one of Saturn''s largest moons.', true, 1481000, false, 4700.00, 6);
INSERT INTO public.moon VALUES (18, 'Dione', 1128000.00, 'Dione is a moon of Saturn discovered by Cassini.', true, 377400, false, 4700.00, 6);
INSERT INTO public.moon VALUES (19, 'Enceladus', 504000.00, 'Enceladus is one of the major inner satellites of Saturn.', true, 238020, false, 4700.00, 6);
INSERT INTO public.moon VALUES (20, 'Mimas', 396000.00, 'Mimas is a moon of Saturn which was discovered in 1789.', true, 185520, false, 4700.00, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury is the smallest planet in the Solar System and the closest to the Sun.', true, 77, false, 4500.75, 2, 0.95);
INSERT INTO public.planet VALUES (2, 'Mars', 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System.', true, 225, false, 3500.50, 2, 0.38);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, 0, true, 4500.50, 2, 1.00);
INSERT INTO public.planet VALUES (4, 'Venus', 'Venus is the second planet from the Sun and the hottest planet in the Solar System.', true, 38, false, 5000.25, 2, 0.53);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the largest planet in the Solar System.', true, 365, false, 4600.75, 2, 11.21);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System.', true, 746, false, 4700.00, 2, 9.45);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is the seventh planet from the Sun.', true, 1650, false, 4800.50, 2, 4.01);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the eighth and farthest known Solar System planet from the Sun.', true, 2575, false, 4900.25, 2, 3.88);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Pluto is a dwarf planet in the Kuiper belt, a ring of bodies beyond Neptune.', true, 3900, false, 5200.75, 2, 0.18);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 'Kepler-186f is the first Earth-size exoplanet discovered within the habitable zone of its star.', true, 560000, true, 500.50, 1, 1.18);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 'TRAPPIST-1e is an exoplanet orbiting within the habitable zone of the ultracool dwarf star TRAPPIST-1.', true, 39, true, 100.25, 3, 2.49);
INSERT INTO public.planet VALUES (12, 'Gliese 581c', 'Gliese 581c is an extrasolar planet orbiting the red dwarf star Gliese 581.', true, 20, true, 1500.75, 4, 1.63);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 9, 0.24, 'Sirius is the brightest star in the night sky.', 2);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 4, 6.30, 'Alpha Centauri A is the primary star in the Alpha Centauri star system.', 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 4, 6.30, 'Alpha Centauri B is a companion star to Alpha Centauri A.', 2);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 4, 4.85, 'Proxima Centauri is the closest known star to the Sun.', 2);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 642, 8.60, 'Betelgeuse is a red supergiant star in the constellation of Orion.', 1);
INSERT INTO public.star VALUES (6, 'Rigel', 860, 8.60, 'Rigel is the brightest star in the constellation of Orion.', 1);


--
-- Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_glaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_glaxy_id_key UNIQUE (galaxy_id);


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
-- Name: asteroid asteroid_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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


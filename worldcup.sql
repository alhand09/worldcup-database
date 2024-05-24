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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (3137, 2018, 'Final', 4121, 4122, 4, 2);
INSERT INTO public.games VALUES (3138, 2018, 'Third Place', 4123, 4124, 2, 0);
INSERT INTO public.games VALUES (3139, 2018, 'Semi-Final', 4122, 4124, 2, 1);
INSERT INTO public.games VALUES (3140, 2018, 'Semi-Final', 4121, 4123, 1, 0);
INSERT INTO public.games VALUES (3141, 2018, 'Quarter-Final', 4122, 4125, 3, 2);
INSERT INTO public.games VALUES (3142, 2018, 'Quarter-Final', 4124, 4126, 2, 0);
INSERT INTO public.games VALUES (3143, 2018, 'Quarter-Final', 4123, 4127, 2, 1);
INSERT INTO public.games VALUES (3144, 2018, 'Quarter-Final', 4121, 4128, 2, 0);
INSERT INTO public.games VALUES (3145, 2018, 'Eighth-Final', 4124, 4129, 2, 1);
INSERT INTO public.games VALUES (3146, 2018, 'Eighth-Final', 4126, 4130, 1, 0);
INSERT INTO public.games VALUES (3147, 2018, 'Eighth-Final', 4123, 4131, 3, 2);
INSERT INTO public.games VALUES (3148, 2018, 'Eighth-Final', 4127, 4132, 2, 0);
INSERT INTO public.games VALUES (3149, 2018, 'Eighth-Final', 4122, 4133, 2, 1);
INSERT INTO public.games VALUES (3150, 2018, 'Eighth-Final', 4125, 4134, 2, 1);
INSERT INTO public.games VALUES (3151, 2018, 'Eighth-Final', 4128, 4135, 2, 1);
INSERT INTO public.games VALUES (3152, 2018, 'Eighth-Final', 4121, 4136, 4, 3);
INSERT INTO public.games VALUES (3153, 2014, 'Final', 4137, 4136, 1, 0);
INSERT INTO public.games VALUES (3154, 2014, 'Third Place', 4138, 4127, 3, 0);
INSERT INTO public.games VALUES (3155, 2014, 'Semi-Final', 4136, 4138, 1, 0);
INSERT INTO public.games VALUES (3156, 2014, 'Semi-Final', 4137, 4127, 7, 1);
INSERT INTO public.games VALUES (3157, 2014, 'Quarter-Final', 4138, 4139, 1, 0);
INSERT INTO public.games VALUES (3158, 2014, 'Quarter-Final', 4136, 4123, 1, 0);
INSERT INTO public.games VALUES (3159, 2014, 'Quarter-Final', 4127, 4129, 2, 1);
INSERT INTO public.games VALUES (3160, 2014, 'Quarter-Final', 4137, 4121, 1, 0);
INSERT INTO public.games VALUES (3161, 2014, 'Eighth-Final', 4127, 4140, 2, 1);
INSERT INTO public.games VALUES (3162, 2014, 'Eighth-Final', 4129, 4128, 2, 0);
INSERT INTO public.games VALUES (3163, 2014, 'Eighth-Final', 4121, 4141, 2, 0);
INSERT INTO public.games VALUES (3164, 2014, 'Eighth-Final', 4137, 4142, 2, 1);
INSERT INTO public.games VALUES (3165, 2014, 'Eighth-Final', 4138, 4132, 2, 1);
INSERT INTO public.games VALUES (3166, 2014, 'Eighth-Final', 4139, 4143, 2, 1);
INSERT INTO public.games VALUES (3167, 2014, 'Eighth-Final', 4136, 4130, 1, 0);
INSERT INTO public.games VALUES (3168, 2014, 'Eighth-Final', 4123, 4144, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (4121, 'France');
INSERT INTO public.teams VALUES (4122, 'Croatia');
INSERT INTO public.teams VALUES (4123, 'Belgium');
INSERT INTO public.teams VALUES (4124, 'England');
INSERT INTO public.teams VALUES (4125, 'Russia');
INSERT INTO public.teams VALUES (4126, 'Sweden');
INSERT INTO public.teams VALUES (4127, 'Brazil');
INSERT INTO public.teams VALUES (4128, 'Uruguay');
INSERT INTO public.teams VALUES (4129, 'Colombia');
INSERT INTO public.teams VALUES (4130, 'Switzerland');
INSERT INTO public.teams VALUES (4131, 'Japan');
INSERT INTO public.teams VALUES (4132, 'Mexico');
INSERT INTO public.teams VALUES (4133, 'Denmark');
INSERT INTO public.teams VALUES (4134, 'Spain');
INSERT INTO public.teams VALUES (4135, 'Portugal');
INSERT INTO public.teams VALUES (4136, 'Argentina');
INSERT INTO public.teams VALUES (4137, 'Germany');
INSERT INTO public.teams VALUES (4138, 'Netherlands');
INSERT INTO public.teams VALUES (4139, 'Costa Rica');
INSERT INTO public.teams VALUES (4140, 'Chile');
INSERT INTO public.teams VALUES (4141, 'Nigeria');
INSERT INTO public.teams VALUES (4142, 'Algeria');
INSERT INTO public.teams VALUES (4143, 'Greece');
INSERT INTO public.teams VALUES (4144, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 3168, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 4144, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: games opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


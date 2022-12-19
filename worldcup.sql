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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL
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
    name character varying(40) NOT NULL
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
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    round character varying(50)
);


ALTER TABLE public.test OWNER TO freecodecamp;

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

INSERT INTO public.games VALUES (2018, 'Final', 798, 799, 4, 2, 161);
INSERT INTO public.games VALUES (2018, 'Third Place', 800, 801, 2, 0, 162);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 799, 801, 2, 1, 163);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 798, 800, 1, 0, 164);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 799, 802, 3, 2, 165);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 801, 803, 2, 0, 166);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 800, 804, 2, 1, 167);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 798, 805, 2, 0, 168);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 801, 806, 2, 1, 169);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 803, 807, 1, 0, 170);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 800, 808, 3, 2, 171);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 804, 809, 2, 0, 172);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 799, 810, 2, 1, 173);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 802, 811, 2, 1, 174);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 805, 812, 2, 1, 175);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 798, 813, 4, 3, 176);
INSERT INTO public.games VALUES (2014, 'Final', 814, 813, 1, 0, 177);
INSERT INTO public.games VALUES (2014, 'Third Place', 815, 804, 3, 0, 178);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 813, 815, 1, 0, 179);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 814, 804, 7, 1, 180);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 815, 816, 1, 0, 181);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 813, 800, 1, 0, 182);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 804, 806, 2, 1, 183);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 814, 798, 1, 0, 184);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 804, 817, 2, 1, 185);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 806, 805, 2, 0, 186);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 798, 818, 2, 0, 187);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 814, 819, 2, 1, 188);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 815, 809, 2, 1, 189);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 816, 820, 2, 1, 190);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 813, 807, 1, 0, 191);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 800, 821, 2, 1, 192);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (798, 'France');
INSERT INTO public.teams VALUES (799, 'Croatia');
INSERT INTO public.teams VALUES (800, 'Belgium');
INSERT INTO public.teams VALUES (801, 'England');
INSERT INTO public.teams VALUES (802, 'Russia');
INSERT INTO public.teams VALUES (803, 'Sweden');
INSERT INTO public.teams VALUES (804, 'Brazil');
INSERT INTO public.teams VALUES (805, 'Uruguay');
INSERT INTO public.teams VALUES (806, 'Colombia');
INSERT INTO public.teams VALUES (807, 'Switzerland');
INSERT INTO public.teams VALUES (808, 'Japan');
INSERT INTO public.teams VALUES (809, 'Mexico');
INSERT INTO public.teams VALUES (810, 'Denmark');
INSERT INTO public.teams VALUES (811, 'Spain');
INSERT INTO public.teams VALUES (812, 'Portugal');
INSERT INTO public.teams VALUES (813, 'Argentina');
INSERT INTO public.teams VALUES (814, 'Germany');
INSERT INTO public.teams VALUES (815, 'Netherlands');
INSERT INTO public.teams VALUES (816, 'Costa Rica');
INSERT INTO public.teams VALUES (817, 'Chile');
INSERT INTO public.teams VALUES (818, 'Nigeria');
INSERT INTO public.teams VALUES (819, 'Algeria');
INSERT INTO public.teams VALUES (820, 'Greece');
INSERT INTO public.teams VALUES (821, 'United States');


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 821, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

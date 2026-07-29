--
-- PostgreSQL database cluster dump
--

\restrict u7zaqhtedel6ncmpX94E4cygezIziLFrhTUmotux3r3jNGQkmMeSNn1iLqa4s7T

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:Sp0Ll62Jtt7yVEUJY/LUeQ==$IRUb+DKZ6kicVFu2d/GmflbdMS8GwMI4FwnBouWgbiU=:P9rt6ZTbN76dX5fIEwZvvHhpu7ApjYMdEGV97K+J+EA=';

--
-- User Configurations
--








\unrestrict u7zaqhtedel6ncmpX94E4cygezIziLFrhTUmotux3r3jNGQkmMeSNn1iLqa4s7T

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict K02WQROXj7MYIeLyJvOg5bUc6Gd7JMsPrzsos6yP1SCU45hJ9Y0YuGCtNuFebXU

-- Dumped from database version 16.14
-- Dumped by pg_dump version 16.14

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

--
-- PostgreSQL database dump complete
--

\unrestrict K02WQROXj7MYIeLyJvOg5bUc6Gd7JMsPrzsos6yP1SCU45hJ9Y0YuGCtNuFebXU

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict wVLl0SEJqdmxAPpEZox9R3yyFxAz4xc5UoW5hb572VcOEnQbqj0oOpmT7O9jb33

-- Dumped from database version 16.14
-- Dumped by pg_dump version 16.14

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

--
-- PostgreSQL database dump complete
--

\unrestrict wVLl0SEJqdmxAPpEZox9R3yyFxAz4xc5UoW5hb572VcOEnQbqj0oOpmT7O9jb33

--
-- Database "test-db" dump
--

--
-- PostgreSQL database dump
--

\restrict 1zZ3junty0QDfDSg1nZAlRIAhA5Sb12hse0AZ0lazkx7iQ3kA8adN13AtAW0QTr

-- Dumped from database version 16.14
-- Dumped by pg_dump version 16.14

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

--
-- Name: test-db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "test-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE "test-db" OWNER TO postgres;

\unrestrict 1zZ3junty0QDfDSg1nZAlRIAhA5Sb12hse0AZ0lazkx7iQ3kA8adN13AtAW0QTr
\encoding SQL_ASCII
\connect -reuse-previous=on "dbname='test-db'"
\restrict 1zZ3junty0QDfDSg1nZAlRIAhA5Sb12hse0AZ0lazkx7iQ3kA8adN13AtAW0QTr

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

--
-- PostgreSQL database dump complete
--

\unrestrict 1zZ3junty0QDfDSg1nZAlRIAhA5Sb12hse0AZ0lazkx7iQ3kA8adN13AtAW0QTr

--
-- PostgreSQL database cluster dump complete
--


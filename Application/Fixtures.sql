

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body) VALUES ('ff6e87a6-085b-4223-81fa-a0a0a2d22554', 'Hello World!', 'I know kung-fu.');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.schema_migrations DISABLE TRIGGER ALL;

INSERT INTO public.schema_migrations (revision) VALUES (1665249129);
INSERT INTO public.schema_migrations (revision) VALUES (1665437346);
INSERT INTO public.schema_migrations (revision) VALUES (1665445018);


ALTER TABLE public.schema_migrations ENABLE TRIGGER ALL;



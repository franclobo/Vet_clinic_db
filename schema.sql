CREATE TABLE IF NOT EXISTS public.animals
(
    id integer NOT NULL DEFAULT nextval('animals_id_seq'::regclass),
    name text COLLATE pg_catalog."default" NOT NULL,
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg numeric,
    CONSTRAINT animals_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.animals
    OWNER to postgres;

COMMENT ON TABLE public.animals
    IS 'Create table';
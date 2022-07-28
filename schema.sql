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

ALTER TABLE public.animals ADD species text;

BEGIN;
UPDATE public.animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE public.animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;

BEGIN;
DELETE FROM public.animals;
ROLLBACK;

BEGIN;
DELETE FROM public.animals WHERE date_of_birth > '01/01/2022';
SAVEPOINT SP1;
UPDATE public.animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SP1;
UPDATE public.animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

-- Table: public.owners

-- DROP TABLE IF EXISTS public.owners;

CREATE TABLE IF NOT EXISTS public.owners
(
    id integer NOT NULL,
    full_name text COLLATE pg_catalog."default",
    age integer,
    CONSTRAINT owners_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.owners
    OWNER to postgres;

COMMENT ON TABLE public.owners
    IS 'Create owners table';


-- Table: public.species

-- DROP TABLE IF EXISTS public.species;

CREATE TABLE IF NOT EXISTS public.species
(
    id integer NOT NULL,
    name text COLLATE pg_catalog."default",
    CONSTRAINT species_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.species
    OWNER to postgres;

COMMENT ON TABLE public.species
    IS 'Create species table';

ALTER TABLE IF EXISTS public.animals
    ADD COLUMN owners_id integer;

ALTER TABLE IF EXISTS public.animals
    ADD COLUMN species_id integer;

ALTER TABLE public.animals
add constraint fk_owners foreign key (owners_id) references owners (id)

ALTER TABLE public.animals
add constraint fk_species foreign key (species_id) references species (id)
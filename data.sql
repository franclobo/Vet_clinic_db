INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Agumon'::text, '03/02/2020'::date, '0'::integer, true::boolean, '10.23'::numeric)
returning id;
INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Gabumon'::text, '15/11/2018'::date, '2'::integer, true::boolean, '8'::numeric)
returning id;
INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Pikachu'::text, '07/01/2021'::date, '1'::integer, false::boolean, '15.04'::numeric)
returning id;
INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Devimon'::text, '12/05/2017'::date, '5'::integer, true::boolean, '10.23'::numeric)
returning id;
INSERT INTO public.animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Charmander', '08/02/2020', '0', false, '-11')returning id;
INSERT INTO public.animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Plantmon', '15/11/2021', '2', true, '-5.7')returning id;
INSERT INTO public.animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Squirtle', '02/04/1993', '3', false, '-12.13')returning id;
INSERT INTO public.animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Angemon', '12/06/2005', '1', true, '-45')returning id;
INSERT INTO public.animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Boarmon', '07/06/2005', '7', true, '20.4')returning id;
INSERT INTO public.animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Blossom', '13/10/1998', '3', true, '17')returning id;
INSERT INTO public.animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Ditto', '14/05/2022', '4', true, '22')returning id;

-- Owners

INSERT INTO public.owners (full_name, age) VALUES (
'Sam Smith'::text, '34'::integer)
 returning id;
INSERT INTO public.owners (full_name, age) VALUES (
'Jennifer Orwell'::text, '19'::integer)
 returning id;
INSERT INTO public.owners (full_name, age) VALUES (
'Bob'::text, '45'::integer)
 returning id;
INSERT INTO public.owners (full_name, age) VALUES (
'Melody Pond'::text, '77'::integer)
 returning id;
INSERT INTO public.owners (full_name, age) VALUES (
'Dean Winchester'::text, '14'::integer)
 returning id;
 INSERT INTO public.owners (full_name, age) VALUES (
'Jodie Whittaker'::text, '38'::integer)
 returning id;

BEGIN;
UPDATE public.animals SET owners_id = '24'::integer WHERE id = 13;
UPDATE public.animals SET owners_id = '25'::integer WHERE id = 14;
UPDATE public.animals SET owners_id = '25'::integer WHERE id = 15;
UPDATE public.animals SET owners_id = '26'::integer WHERE id = 16;
UPDATE public.animals SET owners_id = '27'::integer WHERE id = 17;
UPDATE public.animals SET owners_id = '26'::integer WHERE id = 18;
UPDATE public.animals SET owners_id = '27'::integer WHERE id = 19;
UPDATE public.animals SET owners_id = '28'::integer WHERE id = 20;
UPDATE public.animals SET owners_id = '28'::integer WHERE id = 21;
UPDATE public.animals SET owners_id = '27'::integer WHERE id = 22;
COMMIT;

 --Species

 INSERT INTO public.species (name) VALUES (
'Pokemon'::text)
 returning id;
INSERT INTO public.species (name) VALUES (
'Digimon'::text)
 returning id;

BEGIN;
UPDATE public.animals SET species_id = '31'::integer WHERE name LIKE '%mon';
UPDATE public.animals SET species_id = '30'::integer WHERE species_id IS NULL;
COMMIT;

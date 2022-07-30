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

--Vets

INSERT INTO public.vets (
name, age, date_of_graduation) VALUES (
'William Tatche'::text, '45'::integer, '23/04/2000'::date)
 returning id;
 INSERT INTO public.vets (
name, age, date_of_graduation) VALUES (
'Maisy Smith'::text, '26'::integer, '17/01/2019'::date)
 returning id;
 INSERT INTO public.vets (
name, age, date_of_graduation) VALUES (
'Stephanie Mendez'::text, '64'::integer, '04/05/1981'::date)
 returning id;
INSERT INTO public.vets (
name, age, date_of_graduation) VALUES (
'Jack Harkness'::text, '38'::integer, '08/01/2008'::date)
 returning id;

 -- Specializations

BEGIN;
INSERT INTO public.specializations (species_id, vets_id) VALUES (
'30'::integer, '32'::integer)
 returning id;
INSERT INTO public.specializations (species_id, vets_id) VALUES (
'30'::integer, '34'::integer)
 returning id;
INSERT INTO public.specializations (species_id, vets_id) VALUES (
'31'::integer, '34'::integer)
 returning id;
INSERT INTO public.specializations (species_id, vets_id) VALUES (
'31'::integer, '35'::integer)
 returning id;
COMMIT;

--Visits

BEGIN;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('13'::integer, '32'::integer, '24/05/2020'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('13'::integer, '34'::integer, '22/07/2020'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('14'::integer, '35'::integer, '02/02/2021'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('15'::integer, '33'::integer, '05/01/2020'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('15'::integer, '33'::integer, '08/03/2020'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('15'::integer, '33'::integer, '14/05/2020'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('16'::integer, '34'::integer, '04/05/2021'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('17'::integer, '35'::integer, '24/02/2021'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('18'::integer, '33'::integer, '21/12/2019'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('18'::integer, '32'::integer, '10/08/2020'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('18'::integer, '33'::integer, '07/04/2021'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('19'::integer, '34'::integer, '29/09/2019'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('20'::integer, '35'::integer, '03/10/2020'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('20'::integer, '35'::integer, '04/11/2020'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('21'::integer, '33'::integer, '24/01/2019'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('21'::integer, '33'::integer, '15/05/2019'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('21'::integer, '33'::integer, '27/02/2020'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('21'::integer, '33'::integer, '03/08/2020'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('22'::integer, '34'::integer, '24/05/2020'::date)
 returning id;
INSERT INTO public.visits (
animals_id, vets_id, date_of_visits) VALUES ('22'::integer, '32'::integer, '11/01/2021'::date)
 returning id;
COMMIT;
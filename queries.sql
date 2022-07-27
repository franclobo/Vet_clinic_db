SELECT * FROM public.animals WHERE name LIKE '%mon';
SELECT name FROM public.animals WHERE date_of_birth BETWEEN '01/01/2016' AND '31/12/2019';
SELECT name FROM public.animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM public.animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts FROM public.animals WHERE weight_kg > 10.5;
SELECT * FROM public.animals WHERE neutered = true;
SELECT * FROM public.animals WHERE name != 'Gabumon';
SELECT * FROM public.animals WHERE weight_kg BETWEEN 10.4 AND 17.3 OR weight_kg = 10 OR weight_kg = 4 OR weight_kg = 17.3;

SELECT COUNT(*) as count_animals FROM public.animals;
SELECT COUNT(*) as count_animals FROM public.animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM public.animals;
SELECT neutered, MAX(escape_attempts) FROM public.animals GROUP BY neutered;
SELECT MIN(weight_kg), MAX(weight_kg) FROM public.animals;
SELECT species, AVG(escape_attempts) FROM public.animals WHERE date_of_birth BETWEEN '01/01/1990' AND '31/12/2000' GROUP BY species;

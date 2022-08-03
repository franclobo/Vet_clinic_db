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

SELECT full_name, name FROM public.owners JOIN public.animals  ON owners_id = owners.id WHERE full_name = 'Melody Pond';
SELECT animals.name, species.name FROM public.animals JOIN public.species ON species_id = species.id WHERE species_id = '30';
SELECT full_name, name FROM public.owners LEFT JOIN public.animals  ON owners_id = owners.id;
SELECT species.name, COUNT(animals.name) FROM public.animals JOIN public.species ON species_id = species.id GROUP BY species.name;
SELECT full_name, name FROM public.owners JOIN public.animals  ON owners_id = owners.id WHERE full_name = 'Jennifer Orwell';
SELECT full_name, COUNT(name) FROM public.owners JOIN public.animals  ON owners_id = owners.id GROUP BY full_name HAVING COUNT(name)>2;

--Who was the last animal seen by William Tatcher?
SELECT vets.name, animals.name, date_of_visits FROM public.vets, public.animals
 JOIN public.visits ON animals.id = animals_id WHERE vets.name = 'William Tatcher'
 GROUP BY vets.name, animals.name, date_of_visits ORDER BY date_of_visits DESC LIMIT 1;
--How many different animals did Stephanie Mendez see?
SELECT vets.name, animals.name FROM public.vets, public.animals JOIN public.visits
 ON animals.id = animals_id WHERE vets.name = 'Stephanie Mendez' GROUP BY vets.name, animals.name;
--List all vets and their specialties, including vets with no specialties.
SELECT vets.name, species.name FROM public.vets, public.species LEFT JOIN public.specializations
 ON species.id = species_id;
--List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.
SELECT vets.name, animals.name, date_of_visits FROM public.vets, public.animals JOIN public.visits
 ON animals.id = animals_id WHERE vets.name = 'Stephanie Mendez' GROUP BY vets.name, animals.name, date_of_visits
 HAVING date_of_visits BETWEEN '01/04/2020' AND '30/08/2020'
--What animal has the most visits to vets?
SELECT vets.name, animals.name, COUNT(vets.name) FROM public.vets, public.animals JOIN public.visits
 ON animals.id = animals_id GROUP BY vets.name, animals.name HAVING COUNT(vets.name) > 3;
--Who was Maisy Smith's first visit?
SELECT name, MIN(date_of_visits) FROM public.vets JOIN public.visits ON vets.id = vets_id WHERE name =
 'Maisy Smith' GROUP BY name;
--Details for most recent visit: animal information, vet information, and date of visit.
SELECT vets.name, animals.name, date_of_visits FROM public.vets, public.animals
 JOIN public.visits ON animals.id = animals_id GROUP BY vets.name, animals.name,
 date_of_visits HAVING date_of_visits BETWEEN '01/01/2021' AND '31/12/2022';
--How many visits were with a vet that did not specialize in that animal's species?
SELECT vets.name, species.name, COUNT(species.id) count_species, COUNT(animals.species_id) count_diferent_species
 FROM public.vets, public.species, public.animals JOIN public.visits ON animals.id = animals_id
 GROUP BY vets.name, species.name, species.id, animals.species_id HAVING species.id != species_id;
--What specialty should Maisy Smith consider getting? Look for the species she gets the most.
SELECT vets.name, species.name, COUNT(species.id) count_species, COUNT(animals.species_id) count_diferent_species
 FROM public.vets, public.species, public.animals JOIN public.visits ON animals.id = animals_id WHERE vets.name =
 'Maisy Smith' GROUP BY vets.name, species.name, species.id, animals.species_id HAVING species.id != species_id;

SELECT COUNT(*) FROM visits where animal_id = 4;
SELECT * FROM visits where vet_id = 2;
SELECT * FROM owners where email = 'owner_18327@mail.com';

CREATE INDEX date_asc ON public.visits(date_of_visits ASC);
CREATE INDEX date_desc ON public.visits(date_of_visits DESC);
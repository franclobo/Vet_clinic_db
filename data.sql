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
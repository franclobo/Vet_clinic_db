INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Agumon'::text, '02/03/2020'::date, '0'::integer, true::boolean, '10.23'::numeric)
returning id;
INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Gabumon'::text, '15/11/2018'::date, '2'::integer, true::boolean, '8'::numeric)
returning id;
INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Picachu'::text, '01/07/2021'::date, '1'::integer, false::boolean, '15.04'::numeric)
returning id;
INSERT INTO public.animals (
name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Devimon'::text, '12/05/2017'::date, '5'::integer, true::boolean, '10.23'::numeric)
returning id;
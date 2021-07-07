select city_id, customer.first_name as Nombre, customer.last_name as Apellido, email, address.address as Direccion
from customer
left join address
on address.address_id =  customer.address_id 
where city_id= '312';

select title, description, release_year, special_features, category.name as Categoria
from category
join film_category on category.category_id = film_category.category_id
join film on film.film_id = film_category.film_id
where name = 'Comedy';

select actor.actor_id as idact, actor.first_name as nombr, actor.last_name as apellido, film.title as Titulo, film.description, film.release_year as Lanzamiento
from film
join film_actor on film_actor.film_id = film.film_id
join actor on actor.actor_id = film_actor.actor_id
where actor.actor_id = '5';


select store.store_id,city.city_id, customer.first_name as nombre, customer.last_name as apellido, customer.email as mail, address.address as direccion
from customer
join address on address.address_id = customer.address_id
join city on city.city_id = address.city_id
join store on store.store_id  =1
where city.city_id in (1,42,312,459) ;

select * from film;
select * from actor;
select * from film_actor;

select film.title, film.description, film.release_year, film.rating, film.special_features
from film
join film_actor on film.film_id = film_actor.film_id 
join actor on actor.actor_id = film_actor.actor_id
where actor.actor_id = 15 and film.rating= "G" and film.special_features LIKE "%Behind%";

select film.film_id, film.title, actor.actor_id, concat(actor.first_name, actor.last_name) as nombreactor
from film
join film_actor on film.film_id = film_actor.film_id 
join actor on actor.actor_id = film_actor.actor_id
where film.film_id = 369;

select * from category;

select film.film_id,film.title, film.description, film.release_year, film.rating, film.special_features, category.name, film.rental_rate
from film
join film_category on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id
where category.name = 'Drama' or film.rental_rate ='2.99';


select actor.actor_id, concat(actor.first_name, actor.last_name) as nombreactor, film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name
from film
join film_actor on film.film_id = film_actor.film_id 
join actor on actor.actor_id = film_actor.actor_id
join film_category on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id
where category.name ='Action' and actor.first_name = 'SANDRA' and actor.last_name ='KILMER'
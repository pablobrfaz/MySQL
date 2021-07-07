select * from users;
select * from friendships;

select users.first_name, users.last_name, user2.first_name as firend_first_name, user2.last_name as friend_last_name
from users
join friendships on users.id = user_id
join users as user2 on user2.id = friend_id;


select concat(user2.first_name," ",user2.last_name) as Persona, concat(users.first_name," ",users.last_name) as SusAmigos
from users
join friendships on users.id = user_id
join users as user2 on user2.id = friend_id
where friendships.friend_id = 4;

select count(id) as conteoamistades 
from friendships;

select users.first_name, users.last_name, user2.first_name as firend_first_name, user2.last_name as friend_last_name, count(user_id) as sumaamigos
from users
join friendships on users.id = user_id
join users as user2 on user2.id = friend_id
where user_id in (1 or 2 or 3 or 4);

insert into users (first_name, last_name) 
values ("Pablo", "Bravo"); 
select * from users;

insert into friendships(user_id, friend_id)
values('6','2');
insert into friendships(user_id, friend_id)
values('6','4');
insert into friendships(user_id, friend_id)
values('6','5');
select * from friendships;

select concat(user2.first_name," ",user2.last_name) as Persona, concat(users.first_name," ",users.last_name) as SusAmigos
from users
join friendships on users.id = user_id
join users as user2 on user2.id = friend_id
where friendships.friend_id = 2 order by SusAmigos asc;

delete from friendships
where id = 5 and user_id = 2;

select users.first_name, users.last_name
from users
join friendships on users.id = user_id;

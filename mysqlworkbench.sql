insert into users (first_name, last_name, handle, birthday, created_at, updated_at)
Values ('Pablo', 'Bravo',  'pablob', '1995-03-19', now(), now());
-- select * from users

select first_name
from users
where users.id = '5';

update users
set first_name = 'jose'
where users.id= '6';
-- select * from users

delete from users 
where users.id = '6'
-- select * from users

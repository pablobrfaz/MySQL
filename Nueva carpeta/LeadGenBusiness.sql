select * from sites;
select * from clients;
select * from leads;
select * from billing;

-- Ejercicio 01 --
SELECT monthname(billing.charged_datetime) as Mes, sum(billing.amount) as sumaingresos
FROM billing 
WHERE charged_datetime between '2012/03/01' AND '2012/03/31';

-- Ejercicio 02 --
SELECT billing.client_id, sum(billing.amount) as sumaingresos
FROM billing 
WHERE billing.client_id= '2';

-- Ejercicio 03 --
select client_id, domain_name as nombredominio
from sites
where client_id = 10;

-- Ejercicio 04 --
SELECT client_id, count(site_id) as totsitios,monthname(created_datetime) as Mes, year(created_datetime)
FROM sites
where client_id = 1 group by site_id;


SELECT client_id, count(site_id) as totsitios,monthname(created_datetime) as Mes, year(created_datetime)
FROM sites
where client_id = 20 group by site_id;

-- Ejercicio 05 --
SELECT domain_name,count(leads.leads_id) as numclientes,registered_datetime
FROM sites
join leads on sites.site_id = leads.site_id
WHERE registered_datetime between '2011/01/01' AND '2011/02/15' group by sites.site_id;

-- Ejercicio 06 --
select clients.client_id, concat(clients.first_name," ",clients.last_name) as Nombre, count(leads.leads_id) as numclientes
from sites
join leads on sites.site_id = leads.site_id
join clients on clients.client_id = sites.client_id 
WHERE registered_datetime between '2011/01/01' AND '2011/12/31' group by clients.client_id;

-- Ejercicio 07 --
select  concat(clients.first_name," ",clients.last_name) as Nombre, count(leads.leads_id) as numclientes, monthname(registered_datetime)
from sites
join leads on sites.site_id = leads.site_id
join clients on clients.client_id = sites.client_id 
WHERE registered_datetime between '2011/01/01' AND '2011/06/30' group by leads.leads_id;

-- Ejercicio 08 --
select  concat(clients.first_name," ",clients.last_name) as Nombre, sites.domain_name, count(leads.leads_id) as numclientes, concat(monthname(registered_datetime)," ",year(registered_datetime)) as Fecha
from clients
join sites on clients.client_id = sites.client_id 
join leads on sites.site_id = leads.site_id
WHERE leads.registered_datetime between '2011/01/01' AND '2011/12/30' group by sites.domain_name;

select  concat(clients.first_name," ",clients.last_name) as Nombre, sites.domain_name, count(leads.leads_id) as numclientes
from clients
join sites on clients.client_id = sites.client_id 
join leads on sites.site_id = leads.site_id group by sites.domain_name;

-- Ejercicio 09 --
select  concat(clients.first_name," ",clients.last_name) as Nombre, sum(billing.amount) as sumaingresos, concat(monthname(charged_datetime)," ",year(charged_datetime)) as Fecha
FROM billing
join clients on clients.client_id = billing.client_id 
WHERE billing.charged_datetime between '2011/01/01' AND '2012/12/30' group by billing.billing_id order by billing.client_id;

-- Ejercicio 10 --
select  concat(clients.first_name," ",clients.last_name) as Nombre, group_concat(sites.domain_name, "/" SEPARATOR '' ) as sitios
FROM sites
join clients on clients.client_id = sites.client_id 
group by sites.client_id;


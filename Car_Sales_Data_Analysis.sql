create database cars
use cars
select * from car_dekho

--------------------------------Read data-------------------------------------

---------------------- Total Cars:To get a count of total records----------------------
select count(*) from car_dekho    --7927--

------ The manager asked the employee how many cars will be available in 2023?----

select count(*) from car_dekho where year=2023   --6--

--------------- how many cars will be available in 2020,2021,2022?-----------------

select count(*) from car_dekho where year=2020 --74
select count(*) from car_dekho where year=2021 --7
select count(*) from car_dekho where year=2022  --7

-- group by--
select count(*) from car_dekho where year in (2020,2021,2023) group by year

------- client asked me to print the total of all cars by year. -------

 select year, count(*) from car_dekho group by year
 
 -- how many diesel cars will be there be in 2020 --
 
 select count(*) from car_dekho where year = 2020 and fuel ="Diesel"   --20
 
 --------- how many Petrol cars will be there be in 2020 -----------
 
 select count(*) from car_dekho where year=2020 and fuel="Petrol" --51
 
 ------- give all the fuel cars (petrol, diesel, and CNG ) aome by all year -----
 
select year, count(*) from car_dekho where fuel= "Petrol" group by year
select year, count(*) from car_dekho where fuel= "Diesel" group by year
select year, count(*) from car_dekho where fuel= "CNG" group by year

------------ there were more than 100 cars in a given year, which year had more than 100 cars-------

select year, count(*) from car_dekho group by year having count(*) >100
select year, count(*) from car_dekho group by year having count(*) <50 

-- all  employess cars count details between 2015 and 2023 complete list --

select count(*) from car_dekho where year between 2015 and 2023         --4124--

-------- all  employess cars details details between 2015 and 2023 complete list -----

select * from car_dekho where year between 2015 and 2023

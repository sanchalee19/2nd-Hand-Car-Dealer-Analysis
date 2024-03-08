create schema cars;
use cars;

-- READ DATA --
select * from car_dekho;

-- GET TOTAL NUMBER OF CARS(rows) -- 
select count(*) from car_dekho;    

-- HOW MANY CARS ARE THERE IN THE YEAR 2023? -- 
select year, count(*) as count_of_2023 from car_dekho where year = 2023; 

-- HOW MANY CARS ARE THERE IN 2020, 2021, 2022? --
SELECT year, COUNT(*) AS car_count
FROM car_dekho
WHERE year IN (2020, 2021, 2022)
GROUP BY year;

-- HOW MANY CARS ARE PRESENT IN EACH YEAR? --
select year, count(*) as count_of_cars from car_dekho
group by year;

-- HOW MANY DIESEL CARS ARE THERE IN 2020?-- 
select year, count(*) as diesel_car_count from car_dekho where year = 2020 and fuel = 'diesel'; 

-- HOW MANY PETROL CARS WILL BE THERE IN 2023? -- 
select year, count(*) as petrol_car_count from car_dekho where year = 2023 and fuel = 'petrol';

-- print count of all types of fuel in all the years -- 

SELECT DISTINCT fuel      # to see all types of fuels
FROM car_dekho;


select year , count(*) as petrol_car_count from car_dekho where fuel = 'petrol' group by year; 
select year , count(*) as diesel_car_count from car_dekho where fuel = 'diesel' group by year; 
select year , count(*) as electric_car_count from car_dekho where fuel = 'electric' group by year; 
select year , count(*) as LPG_car_count from car_dekho where fuel = 'LPG' group by year; 
select year , count(*) as CNG_car_count from car_dekho where fuel = 'CNG' group by year; 

-- PRINT ALL YEARS AND COUNT OF ALL TYPES OF FUEL CARS IN THAT YEAR -- 
SELECT 
    year,
    SUM(CASE WHEN fuel = 'petrol' THEN 1 ELSE 0 END) AS petrol_count,
    SUM(CASE WHEN fuel = 'diesel' THEN 1 ELSE 0 END) AS diesel_count,
    SUM(CASE WHEN fuel = 'electric' THEN 1 ELSE 0 END) AS electric_count 
FROM 
    car_dekho 
GROUP BY 
    year;
    
-- WHICH YEAR HAS MORE THAN 500 CARS --

select year , count(*) as more_than_100 from car_dekho group by year having count(*) > 500;  

-- CAR COUNT BETWEEN 2013 AND 2017 --

select count(*) as count_betw_2013_to_2017 from car_dekho where year BETWEEN 2013 AND 2017;

-- DETAILS OF CARS BETWEEN 2013 TO 2017 --
select *  from car_dekho where year BETWEEN 2013 AND 2017;


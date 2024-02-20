create schema mobiledata;
use mobiledata;
select * from mobileinfo;

## check mobile features and price list--
select phone_name, price from mobileinfo;

## find out the price of 5 most expensive phone--
select * from mobileinfo
order by price desc
limit 5;

## find out the price of 5 most cheapest phones--
select * from mobileinfo
order by price asc
limit 5;

## list of top 5 samsung phones with price and all features--
select * from mobileinfo where Brands= 'samsung'
order by price desc
limit 5;

## Must have android phone list then top 5 high price android phones--
select * from mobileinfo where Operating_System_Type= 'Android'
order by price desc
limit 5;

## Must have android phone list then top 5 lower price android phones--
select * from mobileinfo where Operating_System_Type= 'Android'
order by price asc
limit 5;

## Must have IOS phone list then top 5 High price IOS phones--
select * from mobileinfo where Operating_System_Type= 'IOS'
order by price desc
limit 5;

## Must have IOS phone list then top 5 lower price IOS phones--
select * from mobileinfo where Operating_System_Type= 'IOS'
order by price asc
limit 5;

## write a query which phone support 5g and also top 5 phone with 5g support--
select * from mobileinfo where 5G_Availability= 'Yes'
order by price desc
limit 5;

## Total price of all mobile is to be found with brand name--
select brands, sum(price) from mobileinfo group by brands;
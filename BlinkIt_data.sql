SELECT * FROM blinkit.blinkit_data;
select * from blinkit_data;

select count(*)from blinkit_data;

SET SQL_SAFE_UPDATES = 0;
update blinkit_data
set ï»¿Item_Fat_Content =
case 
when ï»¿Item_Fat_Content in ("LF","low fat") then "Low Fat"
when ï»¿Item_Fat_Content in ("reg") then "Regular"
else ï»¿Item_Fat_Content
end;

select distinct(ï»¿Item_Fat_Content) from blinkit_data;

select sum(sales) from blinkit_data;
select cast(sum(Sales)/1000000 as decimal(10,2)) as Total_SalesinMillions from blinkit_data;

select round(avg(Sales),2) as AVG_SALES from blinkit_data;

select count(*) as totalnumberofitems from  blinkit_data;

select cast(sum(Sales)/1000000 as decimal(10,2)) as Total_SalesinMillions from blinkit_data where ï»¿Item_Fat_Content="Low Fat";

select round(avg(Rating),2) as avgrating from blinkit_data;

select ï»¿Item_Fat_Content, 
             round(sum(Sales),2) as totalsales,
             round(avg(Sales),2) as avgsales, 
             count(*) as numberOfItems,
             round(avg(Rating),2) as avgRating
             from blinkit_data group by ï»¿Item_Fat_Content;
             
select Item_Type, 
             round(sum(Sales),2) as totalsales,
             round(avg(Sales),2) as avgsales, 
             count(*) as numberOfItems,
             round(avg(Rating),2) as avgRating
             from blinkit_data group by Item_Type order by totalsales desc  limit 5;

select Outlet_Establishment_Year,
           round(sum(Sales),2) as totalsales,
		   round(avg(Sales),2) as avgsales, 
		   count(*) as numberOfItems,
		   round(avg(Rating),2) as avgRating
from blinkit_data group by Outlet_Establishment_Year order by Outlet_Establishment_Year asc;

select Outlet_Size,
        round(sum(Sales),2) as totalsales,
        round(sum(Sales)*100 / (select sum(Sales) from blinkit_data),2) as percentagesales
        from blinkit_data group by Outlet_size order by totalsales desc;

select Outlet_Location, 
             round(sum(Sales),2) as totalsales,
			 round(sum(Sales)*100 / (select sum(Sales) from blinkit_data),2) as percentagesales,
             round(avg(Sales),2) as avgsales, 
             count(*) as numberOfItems,
             round(avg(Rating),2) as avgRating
             from blinkit_data group by Outlet_Location order by totalsales desc;

select Outlet_Type, 
             round(sum(Sales),2) as totalsales,
			 round(sum(Sales)*100 / (select sum(Sales) from blinkit_data),2) as percentagesales,
             round(avg(Sales),2) as avgsales, 
             count(*) as numberOfItems,
             round(avg(Rating),2) as avgRating
             from blinkit_data group by Outlet_Type order by totalsales desc;







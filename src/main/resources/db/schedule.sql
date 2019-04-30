use neurodb;
SET @startDate = '2019-01-01';
SET @endDate = null;

select * from 
schedule schedule0_ 
left outer join actividad actividad1_ on schedule0_.actividad_id=actividad1_.id 
left outer join empleado empleado2_ on schedule0_.profesional_id=empleado2_.id 
left outer join schedule_day diasdesema3_ on schedule0_.id=diasdesema3_.schedule_fk 
where 
month(@startDate)>=month(schedule0_.inicia) and year(@startDate)>=year(schedule0_.inicia) 
and (schedule0_.fin is null or month(@endDate)<=month(schedule0_.fin) and year(@endDate)<=year(schedule0_.fin))
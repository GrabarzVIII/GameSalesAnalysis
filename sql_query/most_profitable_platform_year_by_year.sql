with
	total_sale as
	(
	select 
		Platform
		,sum(Global_Sales) as t_sale
	from vgsales v 
	where v.Release_year between 2000 and 2016
	group by 1
	order by 2 desc 
	)
select 
	v.Platform  
	,v.Release_year 
	,sum(v.Global_Sales)		as sale_by_year
	,ts.t_sale					as total_sale
from vgsales v 
join total_sale ts on v.Platform = ts.Platform
where Release_year between 2000 and 2016
group by 1,2
order by 1,2


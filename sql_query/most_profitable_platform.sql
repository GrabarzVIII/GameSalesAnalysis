select 
	Platform 
	,sum(Global_Sales) 
from vgsales v 
where v.Release_year between 2000 and 2016
group by 1
order by 2 desc 
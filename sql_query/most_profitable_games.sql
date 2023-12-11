select 
	Genre
	,sum(Global_Sales) 
from vgsales v 
where v.Release_year between 2000 and 2020
group by 1
order by 2 desc 
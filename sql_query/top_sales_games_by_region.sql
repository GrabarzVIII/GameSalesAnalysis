with
	sale_in_NA as
	(select 
		'NA'				as region
		,Genre
		,sum(NA_Sales)		as sale_in_region
		,sum(Global_Sales)	as total_sale
	from vgsales v 
	where Release_year between 2000 and 2016
	group by 2
	order by 3 desc
	limit 3),
	sale_in_EU as
	(select 
		'EU'				as region
		,Genre
		,sum(EU_Sales)		as sale_in_region
		,sum(Global_Sales)	as total_sale
	from vgsales v 
	where Release_year between 2000 and 2016
	group by 2
	order by 3 desc
	limit 3),
	sale_in_JP as
	(select 
		'JP'				as region
		,Genre
		,sum(JP_Sales)		as sale_in_region
		,sum(Global_Sales)	as total_sale
	from vgsales v 
	where Release_year between 2000 and 2016
	group by 2
	order by 3 desc
	limit 3),
	sale_in_Other as
	(select 
		'Other'				as region
		,Genre
		,sum(Other_Sales)	as sale_in_region
		,sum(Global_Sales)	as total_sale
	from vgsales v 
	where Release_year between 2000 and 2016
	group by 2
	order by 3 desc
	limit 3)
select
	*
from sale_in_NA
union all
select
	*
from sale_in_EU
union all
select
	*
from sale_in_JP
union all
select
	*
from sale_in_Other




	
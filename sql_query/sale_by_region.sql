select 
	Genre
	,sum(NA_Sales)			as sale_in_NA
	,sum(EU_Sales)			as sale_in_EU
	,sum(JP_Sales)			as sale_in_JP
	,sum(Other_Sales)		as sale_in_Other
from vgsales v 
where v.Release_year between 2000 and 2016
group by 1
order by sum(Global_Sales) desc
	
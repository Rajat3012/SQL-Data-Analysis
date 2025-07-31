--Task 3:Analytical Queries
--Query 1: Write a query to calculate the total number of claim per policy type.

select
pt.PolicyTypename,
count(c.ClaimID) as TotalClaim
from
Claims C
join
Policies p on c.PolicyID=p.PolicyID
join
PolicyTypes pt on p.PolicyTypeID=pt.PolicyTypeID
Group By
pt.PolicyTypeName
Order By
TotalClaim desc

-----------------

--Query 2:Monthly Claim Frequency and Average Claim Amount
select
date_trunc('month',ClaimDate) as ClaimMonth,
count(*) as ClaimFrequency,
avg(ClaimAmount) as AverageClaimAmount
from
Claims
group by
ClaimMonth
order by
ClaimMonth
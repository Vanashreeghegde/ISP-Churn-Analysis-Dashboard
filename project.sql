select * from data


--Q1 What is the overall churn rate of the ISP company?
select avg(cast(churn_flag as float))*100 as churn_percent
from data

--Q2 Which area has the highest churn rate?
select top 1 area,avg(cast(churn_flag as float))*100 as highest
from data
group by area
order by highest desc

--Q3 Compare the average packet loss and average latency 
--between churned and non-churned customers.
select churn_flag,
round(avg(packet_loss_percent),2) as avg_packetloss,
round(avg(latency_ms),2) as avg_latency
from data
group by churn_flag

--q4 For customers experiencing high latency what is the churn
--rate accross different areas
select area,avg(cast(churn_flag as float))*100 as churn_percent
from data
where latency_ms > 150
group by area
order by churn_percent desc

--Q5 Identify the top 3 areas with the highest average packet loss 
--percentage among customers who have churned.
select top 3 avg(packet_loss_percent) as avg_packetloss,area
from data
where churn_flag=1
group by area
order by avg_packetloss desc

--q6 Which customers are affecting more
select plan_type,
round(avg(cast(churn_flag as float))*100,2) as churn_cust
from data
group by plan_type
order by churn_cust desc

--q7 Identifying customer segment that has high risk
select count(*) as total_cust,
round(avg(cast(churn_flag as float))*100,2) as churn_cust
from data
where latency_ms>150 and packet_loss_percent >3 and tenure_months <=5

--q8 Critical Zone(region) for latency
with area_metrics as (
select area,round(avg(cast(churn_flag as float))*100,2) as churn_percent,
round(avg(latency_ms),2) as latency
from data
group by area)

select  *, rank()over(order by churn_percent desc,latency desc) as risk_rank
from area_metrics


--q9 Churn rate analysis of tenure grp
with tenure_seg as(
    select 
        case 
            when tenure_months <= 1 then '0-1'
			when tenure_months <=3 then '1-3'
			else '3-6'
        end as tenure_grp,
        churn_flag
    from data
)

select 
    tenure_grp,
    count(*) as total_cust,
    sum(churn_flag) as churn_cust,
    round(avg(cast(churn_flag as float))*100,2) as churn_percent
from tenure_seg
group by tenure_grp
order by churn_percent desc;

--q10 Effted premium level customers
select 
    round(avg(latency_ms),2) as avg_latency,
    round(avg(packet_loss_percent),2) as avg_packet_loss,
    round(avg(tenure_months),2) as avg_tenure,
    avg(cast(churn_flag as float))*100 as churn_percent
from data
where plan_type ='premium'











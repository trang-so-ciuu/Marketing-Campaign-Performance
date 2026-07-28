--1. T? l? chuy?n ??i c?a t?ng Campaign Channel, CPA?
select 
    campaignchannel,
    count(customerid) as toatl_customer,
    sum(conversion) as convertedCustomers,
    round( avg (CAST( conversion as float)) *100,2) as ConversionRate,
    SUM(adspend) as total_spend,
    round( SUM(adspend) /count(customerid) ,2) as CPA
from [dbo].[marketing_data]
group by campaignchannel
order by  count(customerid) desc

--2. Campaign Type nào có Conversion Rate
select 
    campaignchannel , 
    campaigntype, 
    COUNT(customerid) as total_customer,
    sum(conversion) as convertedCustomers,
    round( avg (CAST( conversion as float)) *100,2) as ConversionRate
from [dbo].[marketing_data]
group by campaignchannel, campaigntype
order by campaignchannel, campaigntype desc

--3. Top Performing Campaign
SELECT TOP 5
    CampaignChannel,
    CampaignType,
    AVG(ConversionRate) AS Avg_CR,
    SUM(Conversion) AS Converted_Customers,
    SUM(AdSpend)/NULLIF(SUM(Conversion),0) AS CAC
FROM marketing_data
GROUP BY
    CampaignChannel,
    CampaignType
ORDER BY Avg_CR DESC;

--4. CAC theo Channel + Campaign
SELECT
    CampaignChannel,
    CampaignType,
    SUM(AdSpend) AS Total_AdSpend,
    SUM(Conversion) AS Converted_Customers,
    SUM(AdSpend) / NULLIF(SUM(Conversion),0) AS CAC
FROM marketing_data
GROUP BY
    CampaignChannel,
    CampaignType
ORDER BY CAC;
        
--5. Time On Site có khác bi?t không?
 with tb_time_seg as(
 select customerid, 
        timeonsite,
        case 
            when timeonsite < 2 then 'very low'
            when timeonsite <=5  then 'low'
            when timeonsite <=8 then 'Medium'
            when timeonsite <=10 then 'high'
            else 'very high'
        end as time_seg
from [dbo].[marketing_data])

select time_seg, 
        COUNT(tb.customerid) as total_customer ,
        round( count(*) * 100.0/Sum(count(*)) over() ,2) as phantram,
        round( avg(Cast(md.conversion as float)) *100.0 , 2) as conversion_rate
from tb_time_seg as tb , marketing_data as md
where tb.customerid = md.customerid
group by time_seg
order by conversion_rate desc

--6.So sánh Converted vs Non-Converted
SELECT
    conversion,
    ROUND(AVG(websitevisits),2) AS avg_visits,
    ROUND(AVG(pagespervisit),2) AS avg_pages,
    ROUND(AVG(timeonsite),2) AS avg_time,
    ROUND(AVG(emailopens),2) AS avg_email_opens,
    ROUND(AVG(emailclicks),2) AS avg_email_clicks
FROM [dbo].[marketing_data]
GROUP BY conversion;

--7. 
with income_seg as( 
  select customerid,
    CASE
        WHEN income < 40000 THEN 'Low'
        WHEN income < 80000 THEN 'Medium'
        ELSE 'High'
    END as income_group 
    from [dbo].[marketing_data])

SELECT ic.income_group ,
    COUNT(ic.customerid),
    round( avg(Cast(ma.conversion as float)) *100.0 , 2) as conversion_rate
FROM [dbo].[marketing_data] as ma, income_seg as ic
where ma.customerid = ic.customerid
GROUP BY ic.income_group


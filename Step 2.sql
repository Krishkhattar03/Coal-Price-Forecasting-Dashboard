DROP TABLE IF EXISTS data_set;

CREATE TABLE data_set (
    Date DATE,
    Coal_RB_4800_FOB_London_Close_USD NUMERIC,
    Coal_RB_5500_FOB_London_Close_USD NUMERIC,
    Coal_RB_5700_FOB_London_Close_USD NUMERIC,
    Coal_RB_6000_FOB_CurrentWeek_Avg_USD NUMERIC,
    Coal_India_5500_CFR_London_Close_USD NUMERIC,
    Price_WTI NUMERIC,
    Price_Brent_Oil NUMERIC,
    Price_Dubai_Brent_Oil NUMERIC,
    Price_ExxonMobil NUMERIC,
    Price_Shenhua NUMERIC,
    Price_All_Share NUMERIC,
    Price_Mining NUMERIC,
    Price_LNG_Japan_Korea_Marker_PLATTS NUMERIC,
    Price_ZAR_USD NUMERIC,
    Price_Natural_Gas NUMERIC,
    Price_ICE NUMERIC,
    Price_Dutch_TTF NUMERIC
);

SELECT * FROM data_set;

--CENTRAL TENDANCY---
--1 Mean
SELECT 
Avg(Coal_RB_4800_FOB_London_Close_USD) AS Mean_OF_Coal_4800,
Avg(Coal_RB_5500_FOB_London_Close_USD) AS Mean_OF_Coal_5500,
Avg(Coal_RB_5700_FOB_London_Close_USD) AS Mean_OF_Coal_5700,
Avg(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS Mean_OF_Coal_6000,
Avg(Coal_India_5500_CFR_London_Close_USD) AS Mean_OF_Coal_5500,
Avg(Price_WTI) AS Mean_OF_Price_WTI,
Avg(Price_Brent_Oil) AS Mean_OF_Price_Brent_Oil,
Avg(Price_Dubai_Brent_Oil) AS Mean_OF_Price_Dubai_Brent_Oil,
Avg(Price_ExxonMobil) AS Mean_OF_Price_ExxonMobil,
Avg(Price_Shenhua) AS Mean_OF_Price_Shenhua,
Avg(Price_All_Share) AS Mean_OF_Price_All_Share,
Avg(Price_Mining) AS Mean_OF_Price_Mining,
Avg(Price_LNG_Japan_Korea_Marker_PLATTS) AS Mean_OF_Price_LNG_Japan_Korea_Marker_PLATTS,
Avg(Price_ZAR_USD) AS Mean_OF_Price_ZAR_USD,
Avg(Price_Natural_Gas) AS Mean_OF_Price_Natural_Gas,
Avg(Price_ICE) AS Mean_OF_Price_ICE,
Avg(Price_Dutch_TTF) AS Mean_OF_Price_Dutch_TTF
FROM data_set;


--2 Mode

With freq_cte AS (
SELECT Coal_RB_4800_FOB_London_Close_USD ,count(*) AS freq 
    from data_set
    WHERE Coal_RB_4800_FOB_London_Close_USD IS NOT NULL
    Group by Coal_RB_4800_FOB_London_Close_USD
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);
 
With freq_cte AS (
SELECT Coal_RB_5500_FOB_London_Close_USD ,count(*) AS freq 
    from data_set
    WHERE Coal_RB_5500_FOB_London_Close_USD IS NOT NULL
    Group by Coal_RB_5500_FOB_London_Close_USD
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Coal_RB_5700_FOB_London_Close_USD ,count(*) AS freq 
    from data_set
    WHERE Coal_RB_5700_FOB_London_Close_USD IS NOT NULL
    Group by Coal_RB_5700_FOB_London_Close_USD
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Coal_RB_6000_FOB_CurrentWeek_Avg_USD ,count(*) AS freq 
    from data_set
    WHERE Coal_RB_6000_FOB_CurrentWeek_Avg_USD IS NOT NULL
    Group by Coal_RB_6000_FOB_CurrentWeek_Avg_USD
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Coal_India_5500_CFR_London_Close_USD ,count(*) AS freq 
    from data_set
    WHERE Coal_India_5500_CFR_London_Close_USD IS NOT NULL
    Group by Coal_India_5500_CFR_London_Close_USD
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Price_WTI,count(*) AS freq 
    from data_set
    WHERE Price_WTI IS NOT NULL
    Group by Price_WTI
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Price_Brent_Oil,count(*) AS freq 
    from data_set
    WHERE Price_Brent_Oil IS NOT NULL
    Group by Price_Brent_Oil
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Price_Dubai_Brent_Oil,count(*) AS freq 
    from data_set
    WHERE Price_Dubai_Brent_Oil IS NOT NULL
    Group by Price_Dubai_Brent_Oil
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Price_ExxonMobil,count(*) AS freq 
    from data_set
    WHERE Price_ExxonMobil IS NOT NULL
    Group by Price_ExxonMobil
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Price_Shenhua,count(*) AS freq 
    from data_set
    WHERE Price_Shenhua IS NOT NULL
    Group by Price_Shenhua
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Price_All_Share,count(*) AS freq 
    from data_set
    WHERE Price_All_Share IS NOT NULL
    Group by Price_All_Share
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Price_Mining,count(*) AS freq 
    from data_set
    WHERE Price_Mining IS NOT NULL
    Group by Price_Mining
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Price_LNG_Japan_Korea_Marker_PLATTS,count(*) AS freq 
    from data_set
    WHERE Price_LNG_Japan_Korea_Marker_PLATTS IS NOT NULL
    Group by Price_LNG_Japan_Korea_Marker_PLATTS
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Price_ZAR_USD,count(*) AS freq 
    from data_set
    WHERE Price_ZAR_USD IS NOT NULL
    Group by Price_ZAR_USD
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Price_Natural_Gas,count(*) AS freq 
    from data_set
    WHERE Price_Natural_Gas IS NOT NULL
    Group by Price_Natural_Gas
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Price_ICE,count(*) AS freq 
    from data_set
    WHERE Price_ICE IS NOT NULL
    Group by Price_ICE
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);

With freq_cte AS (
SELECT Price_Dutch_TTF,count(*) AS freq 
    from data_set
    WHERE Price_Dutch_TTF IS NOT NULL
    Group by Price_Dutch_TTF
)
SELECT * FROM freq_cte 
WHERE freq = ( SELECT MAX(freq) FROM freq_cte);


--3 MEDIAN 

SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY  Coal_RB_4800_FOB_London_Close_USD) AS median_Coal_RB_4800_FOB_London_Close_USD
FROM data_set
WHERE  Coal_RB_4800_FOB_London_Close_USD IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Coal_RB_5500_FOB_London_Close_USD) AS median_Coal_RB_5500_FOB_London_Close_USD
FROM data_set
WHERE Coal_RB_5500_FOB_London_Close_USD IS NOT NULL;

SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Coal_RB_5700_FOB_London_Close_USD) AS median_Coal_RB_5700_FOB_London_Close_USD
FROM data_set
WHERE Coal_RB_5700_FOB_London_Close_USD IS NOT NULL;

SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS median_Coal_RB_6000_FOB_CurrentWeek_Avg_USD
FROM data_set
WHERE Coal_RB_6000_FOB_CurrentWeek_Avg_USD IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Coal_India_5500_CFR_London_Close_USD) AS median_Coal_India_5500_CFR_London_Close_USD
FROM data_set
WHERE Coal_India_5500_CFR_London_Close_USD IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_WTI) AS median_price_wti
FROM data_set
WHERE Price_WTI IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_Brent_Oil) AS median_Price_Brent_Oil
FROM data_set
WHERE Price_Brent_Oil IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_Dubai_Brent_Oil) AS median_Price_Dubai_Brent_Oil
FROM data_set
WHERE Price_Dubai_Brent_Oil IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_ExxonMobil) AS median_Price_ExxonMobil
FROM data_set
WHERE Price_ExxonMobil IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_Shenhua) AS median_Price_Shenhua
FROM data_set
WHERE Price_Shenhua IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_All_Share) AS median_Price_All_Share
FROM data_set
WHERE Price_All_Share IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_Mining) AS median_Price_Mining
FROM data_set
WHERE Price_Mining IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_LNG_Japan_Korea_Marker_PLATTS) AS median_Price_LNG_Japan_Korea_Marker_PLATTS
FROM data_set
WHERE Price_LNG_Japan_Korea_Marker_PLATTS IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_ZAR_USD) AS median_Price_ZAR_USD
FROM data_set
WHERE Price_ZAR_USD IS NOT NULL;

SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_Natural_Gas) AS median_Price_Natural_Gas
FROM data_set
WHERE Price_Natural_Gas IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_ICE) AS median_Price_ICE
FROM data_set
WHERE Price_ICE IS NOT NULL;


SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_WTI) AS median_price_wti
FROM data_set
WHERE Price_WTI IS NOT NULL;

SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_WTI) AS median_price_wti
FROM data_set
WHERE Price_WTI IS NOT NULL;

SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_WTI) AS median_price_wti
FROM data_set
WHERE Price_WTI IS NOT NULL;

SELECT 
  percentile_cont(0.5) WITHIN GROUP (ORDER BY Price_Dutch_TTF) AS median_Price_Dutch_TTF
FROM data_set
WHERE Price_Dutch_TTF IS NOT NULL;

----MEASURE OF DISPERSION----

---1 Varience:

SELECT
 
  VARIANCE(Coal_RB_4800_FOB_London_Close_USD) AS var_coal_4800,
  STDDEV(Coal_RB_4800_FOB_London_Close_USD) AS std_coal_4800,
  MAX(Coal_RB_4800_FOB_London_Close_USD) - MIN(Coal_RB_4800_FOB_London_Close_USD) AS range_coal_4800,

  VARIANCE(Coal_RB_5500_FOB_London_Close_USD) AS var_coal_5500,
  STDDEV(Coal_RB_5500_FOB_London_Close_USD) AS std_coal_5500,
  MAX(Coal_RB_5500_FOB_London_Close_USD) - MIN(Coal_RB_5500_FOB_London_Close_USD) AS range_coal_5500,

  VARIANCE(Coal_RB_5700_FOB_London_Close_USD) AS var_coal_5700,
  STDDEV(Coal_RB_5700_FOB_London_Close_USD) AS std_coal_5700,
  MAX(Coal_RB_5700_FOB_London_Close_USD) - MIN(Coal_RB_5700_FOB_London_Close_USD) AS range_coal_5700,

  VARIANCE(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS var_coal_6000,
  STDDEV(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS std_coal_6000,
  MAX(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) - MIN(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS range_coal_6000,

  VARIANCE(Coal_India_5500_CFR_London_Close_USD) AS var_coal_india,
  STDDEV(Coal_India_5500_CFR_London_Close_USD) AS std_coal_india,
  MAX(Coal_India_5500_CFR_London_Close_USD) - MIN(Coal_India_5500_CFR_London_Close_USD) AS range_coal_india,

 
  VARIANCE(Price_WTI) AS var_wti,
  STDDEV(Price_WTI) AS std_wti,
  MAX(Price_WTI) - MIN(Price_WTI) AS range_wti,

  VARIANCE(Price_Brent_Oil) AS var_brent,
  STDDEV(Price_Brent_Oil) AS std_brent,
  MAX(Price_Brent_Oil) - MIN(Price_Brent_Oil) AS range_brent,

  VARIANCE(Price_Dubai_Brent_Oil) AS var_dubai,
  STDDEV(Price_Dubai_Brent_Oil) AS std_dubai,
  MAX(Price_Dubai_Brent_Oil) - MIN(Price_Dubai_Brent_Oil) AS range_dubai,

  VARIANCE(Price_LNG_Japan_Korea_Marker_PLATTS) AS var_lng,
  STDDEV(Price_LNG_Japan_Korea_Marker_PLATTS) AS std_lng,
  MAX(Price_LNG_Japan_Korea_Marker_PLATTS) - MIN(Price_LNG_Japan_Korea_Marker_PLATTS) AS range_lng,

  VARIANCE(Price_Natural_Gas) AS var_natgas,
  STDDEV(Price_Natural_Gas) AS std_natgas,
  MAX(Price_Natural_Gas) - MIN(Price_Natural_Gas) AS range_natgas,


  VARIANCE(Price_ICE) AS var_ice,
  STDDEV(Price_ICE) AS std_ice,
  MAX(Price_ICE) - MIN(Price_ICE) AS range_ice,

  VARIANCE(Price_Dutch_TTF) AS var_ttf,
  STDDEV(Price_Dutch_TTF) AS std_ttf,
  MAX(Price_Dutch_TTF) - MIN(Price_Dutch_TTF) AS range_ttf,

  VARIANCE(Price_ZAR_USD) AS var_zar,
  STDDEV(Price_ZAR_USD) AS std_zar,
  MAX(Price_ZAR_USD) - MIN(Price_ZAR_USD) AS range_zar,

  VARIANCE(Price_All_Share) AS var_allshare,
  STDDEV(Price_All_Share) AS std_allshare,
  MAX(Price_All_Share) - MIN(Price_All_Share) AS range_allshare,

  VARIANCE(Price_Mining) AS var_mining,
  STDDEV(Price_Mining) AS std_mining,
  MAX(Price_Mining) - MIN(Price_Mining) AS range_mining

FROM data_set;

---Skewness AND kurtosis

---Skwness for all colunms -----

--1
WITH stats AS (
    SELECT 
	  'Coal_RB_4800_FOB_London_Close_USD' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Coal_RB_4800_FOB_London_Close_USD) AS mean,
        STDDEV_POP(Coal_RB_4800_FOB_London_Close_USD) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Coal_RB_4800_FOB_London_Close_USD - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;

--2
WITH stats AS (
    SELECT 
	  'Coal_RB_5500_FOB_London_Close_USD' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Coal_RB_5500_FOB_London_Close_USD) AS mean,
        STDDEV_POP(Coal_RB_5500_FOB_London_Close_USD) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Coal_RB_5500_FOB_London_Close_USD - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;

--3
WITH stats AS (
    SELECT 
	  'Coal_RB_5700_FOB_London_Close_USD' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Coal_RB_5700_FOB_London_Close_USD) AS mean,
        STDDEV_POP(Coal_RB_5700_FOB_London_Close_USD) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Coal_RB_5700_FOB_London_Close_USD - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;
--4

WITH stats AS (
    SELECT 
	  'Coal_RB_6000_FOB_CurrentWeek_Avg_USD	' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD	) AS mean,
        STDDEV_POP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD	) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Coal_RB_6000_FOB_CurrentWeek_Avg_USD	 - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;

--5
WITH stats AS (
    SELECT 
	  'Coal_India_5500_CFR_London_Close_USD' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Coal_India_5500_CFR_London_Close_USD	) AS mean,
        STDDEV_POP(Coal_India_5500_CFR_London_Close_USD	) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Coal_India_5500_CFR_London_Close_USD	 - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;
--7
WITH stats AS (
    SELECT 
	  'Price_WTI' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Price_WTI	) AS mean,
        STDDEV_POP(Price_WTI	) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Price_WTI	 - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;
--8 

WITH stats AS (
    SELECT 
	  'Price_Brent_Oil' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Price_Brent_Oil	) AS mean,
        STDDEV_POP(Price_Brent_Oil	) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Price_Brent_Oil	 - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;

--9


WITH stats AS (
    SELECT 
	  'Price_Dubai_Brent_Oil' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Price_Dubai_Brent_Oil	) AS mean,
        STDDEV_POP(Price_Dubai_Brent_Oil	) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Price_Dubai_Brent_Oil	 - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;

--10
WITH stats AS (
    SELECT 
	  'Price_LNG_Japan_Korea_Marker_PLATTS' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Price_LNG_Japan_Korea_Marker_PLATTS	) AS mean,
        STDDEV_POP(Price_LNG_Japan_Korea_Marker_PLATTS	) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Price_LNG_Japan_Korea_Marker_PLATTS - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;

--11
WITH stats AS (
    SELECT 
	  'Price_Natural_Gas' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Price_Natural_Gas	) AS mean,
        STDDEV_POP(Price_Natural_Gas	) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Price_Natural_Gas - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;

--12
WITH stats AS (
    SELECT 
	  'Price_ICE' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Price_ICE	) AS mean,
        STDDEV_POP(Price_Natural_Gas	) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Price_ICE - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;

--13 


WITH stats AS (
    SELECT 
	  'Price_Dutch_TTF' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Price_Dutch_TTF	) AS mean,
        STDDEV_POP(Price_Dutch_TTF	) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Price_Dutch_TTF - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;

--14
WITH stats AS (
    SELECT 
	  'Price_ZAR_USD' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Price_ZAR_USD) AS mean,
        STDDEV_POP(Price_ZAR_USD) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Price_ZAR_USD - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;

--15

WITH stats AS (
    SELECT 
	  'Price_All_Share' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Price_All_Share) AS mean,
        STDDEV_POP(Price_All_Share) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Price_All_Share - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;

--16
WITH stats AS (
    SELECT 
	  'Price_Mining' AS colunm_name,
        COUNT(*)::float AS n ,
        AVG(Price_Mining) AS mean,
        STDDEV_POP(Price_Mining)) AS stddev
    FROM data_set
),
moment AS (
    SELECT 
        SUM(POWER(Price_Mining - s.mean, 3)) AS third_moment
    FROM data_set d
    CROSS JOIN stats s
)
SELECT
    s.colunm_name,
    s.n,
    s.mean,
    s.stddev,
    m.third_moment / (s.n * POWER(s.stddev, 3)) AS skewness
FROM stats s
JOIN moment m ON true;













  
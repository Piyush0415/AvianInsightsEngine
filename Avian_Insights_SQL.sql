-- 1. Temporal Analysis
-- Seasonal Trends
SELECT YEAR(Date) AS Year, COUNT(*) AS Bird_Count
FROM birds
GROUP BY YEAR(Date);

SELECT MONTH(Date) AS Month, COUNT(*) AS Bird_Count
FROM birds
GROUP BY MONTH(Date);

-- Observation Time Analysis
SELECT HOUR(Start_Time) AS Hour, COUNT(*) AS Bird_Count
FROM birds
GROUP BY HOUR(Start_Time)
ORDER BY Hour;

-- 2. Spatial Analysis
-- Location Insights
SELECT Location_Type, COUNT(DISTINCT Scientific_Name) AS Species_Count
FROM birds
GROUP BY Location_Type;

-- Plot-Level Analysis
SELECT Plot_Name, COUNT(*) AS Observation_Count
FROM birds
GROUP BY Plot_Name
ORDER BY Observation_Count DESC;

-- 3. Species Analysis
-- Diversity Metrics
SELECT COUNT(DISTINCT Scientific_Name) AS Total_Species FROM birds;
SELECT Location_Type, COUNT(DISTINCT Scientific_Name)
FROM birds
GROUP BY Location_Type;

-- Activity Patterns
SELECT Interval_Length, ID_Method, COUNT(*) AS Count
FROM birds
GROUP BY Interval_Length, ID_Method;

-- Sex Ratio
SELECT Scientific_Name, Sex, COUNT(*) AS Count
FROM birds
GROUP BY Scientific_Name, Sex;

-- 4. Environmental Conditions
-- Weather Correlation
SELECT Sky, Wind, COUNT(*) AS Bird_Count
FROM birds
GROUP BY Sky, Wind;

SELECT Temperature, COUNT(*) FROM birds GROUP BY Temperature;
SELECT Humidity, COUNT(*) FROM birds GROUP BY Humidity;
-- Disturbance Effect
SELECT Disturbance, COUNT(*) AS Bird_Count
FROM birds
GROUP BY Disturbance;

-- 5. Distance and Behavior
-- Distance Analysis
SELECT Distance, Scientific_Name, COUNT(*) AS Count
FROM birds
GROUP BY Distance, Scientific_Name;

-- Flyover Frequency
SELECT Flyover_Observed, COUNT(*) AS Count
FROM birds
GROUP BY Flyover_Observed;

-- 6. Observer Trends
-- Observer Bias
SELECT Observer, COUNT(*) AS Observations
FROM birds
GROUP BY Observer
ORDER BY Observations DESC;

-- Visit Patterns
SELECT Visit, COUNT(DISTINCT Scientific_Name) AS Species_Count
FROM birds
GROUP BY Visit;

-- 7. Conservation Insights
-- Watchlist Trends
SELECT PIF_Watchlist_Status, COUNT(*) FROM birds GROUP BY PIF_Watchlist_Status;
SELECT Regional_Stewardship_Status, COUNT(*) 
FROM birds 
GROUP BY Regional_Stewardship_Status;

-- AOU Code Patterns
SELECT AOU_Code, COUNT(*) AS Count
FROM birds
GROUP BY AOU_Code;
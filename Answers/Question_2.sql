--Question 2.1
SELECT
    m.Product_Code,
    AVG(m.T_Height) AS Mean_Height,
    SQRT(AVG(m.T_Height * m.T_Height) - AVG(m.T_Height) * AVG(m.T_Height)) AS Stddev_Height,
    AVG(m.T_Weight) AS Mean_Weight,
    SQRT(AVG(m.T_Weight * m.T_Weight) - AVG(m.T_Weight) * AVG(m.T_Weight)) AS Stddev_Weight
FROM measurements m
GROUP BY m.Product_Code;



--Question 2.2
SELECT m.*
FROM measurements m
JOIN specifications s ON m.Product_Code = s.Product_Code AND m.T_Weight < s.LSL;



--Question 2.3
SELECT
    pm.Product_Code,
    AVG(pm.M) AS Mean_Height
FROM ProductMetrics pm
WHERE pm.T_Name = 'T_height'
GROUP BY pm.Product_Code
ORDER BY Mean_Height DESC
LIMIT 2;

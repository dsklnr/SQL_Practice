SELECT Weather.id AS ID
FROM Weather
JOIN Weather w2 ON DATEDIFF(Weather.recordDate, w2.recordDate) = 1 AND Weather.temperature > w2.temperature;
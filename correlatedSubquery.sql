SELECT p.ID, p.Name,
    (SELECT AVG(s.Score) FROM custom_schema.Scores AS s WHERE s.ID = p.ID) AS AvgScore
FROM custom_schema.Pupils AS p;

SELECT p.ID, p.Name
FROM custom_schema.Pupils AS p
WHERE EXISTS (
    SELECT 1 FROM custom_schema.Scores AS s 
    WHERE s.ID = p.ID AND s.Score > 300
);
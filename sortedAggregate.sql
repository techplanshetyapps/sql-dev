SELECT ColumnName, COUNT(*) AS SummaryCount
FROM TableName
GROUP BY ColumnName
ORDER BY SummaryCount DESC, ColumnName ASC;
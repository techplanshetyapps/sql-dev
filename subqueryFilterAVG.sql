SELECT 
    ReferenceID, 
    ColumnName, 
    FilterColumn
FROM (
    SELECT 
        ReferenceID, 
        ColumnName, 
        FilterColumn 
    FROM TableName 
    WHERE FilterColumn >= (SELECT AVG(FilterColumn) FROM TableName)
) FilteredTable;
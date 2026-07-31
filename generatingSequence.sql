CREATE SEQUENCE SchemaName.SequenceName
    AS INT
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 1000;

CREATE TABLE SchemaName.TableName (
    IDColumn INT DEFAULT (NEXT VALUE FOR SchemaName.SequenceName),
    DataColumn VARCHAR(100)
);

UPDATE SchemaName.TableName
SET IDColumn = NEXT VALUE FOR SchemaName.SequenceName;
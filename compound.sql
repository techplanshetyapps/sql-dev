CREATE TABLE TableName (
    ReferenceID INT NOT NULL,
    ColumnName INT NOT NULL,
    FilterColumn INT NOT NULL,
    CONSTRAINT CheckConstraintName CHECK (FilterColumn >= 9)
);

INSERT INTO TableName (ReferenceID, ColumnName, FilterColumn) 
VALUES (4, 20, 9);
USE EstudianteDB

-- Insert rows into table 'TableName'
INSERT INTO DatosEstudiante
( -- columns to insert data into
 [nombre], [carrera]
)
VALUES
( -- first row: values for the columns in the list above
 'Fernando Manzanares', 'Ing Informática'
),
( -- second row: values for the columns in the list above
 'Melvin Diaz', 'Ing Eléctrica'
)
-- add more rows here
GO

INSERT INTO Materias
( -- columns to insert data into
 [nombre]
)
VALUES
( -- first row: values for the columns in the list above
 'Cálculo'
),
( -- second row: values for the columns in the list above
 'Admon DB'
),
( -- second row: values for the columns in the list above
 'Sistemas Operativos'
)
-- add more rows here
GO

INSERT INTO NotasEstudiante
( -- columns to insert data into
 [idEstudiante], [idMateria], [Nota]
)
VALUES
( -- first row: values for the columns in the list above
 1, 1, 99
),
( -- second row: values for the columns in the list above
 2, 2, 82
)
GO

SELECT * FROM dbo.DatosEstudiante
GO
SELECT * FROM dbo.Materias
GO
SELECT * FROM dbo.NotasEstudiante
GO
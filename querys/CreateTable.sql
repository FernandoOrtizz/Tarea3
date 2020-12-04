use master
GO
if EXISTS (
    SELECT name
    FROM sys.databases
    WHERE name = N'EstudianteDB'
)
DROP DATABASE EstudianteDB
GO
CREATE DATABASE EstudianteDB
GO
USE EstudianteDB
GO

-- Create a new table called 'DatosEstudiante' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.DatosEstudiante', 'U') IS NOT NULL
DROP TABLE dbo.DatosEstudiante
GO
-- Create the table in the specified schema
CREATE TABLE dbo.DatosEstudiante
(
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- primary key column
    nombre [NVARCHAR](50) NOT NULL,
    carrera [NVARCHAR](50) NOT NULL
    -- specify more columns here
);
GO

IF OBJECT_ID('dbo.Materias', 'U') IS NOT NULL
DROP TABLE dbo.Materias
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Materias
(
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- primary key column
    nombre [NVARCHAR](50) NOT NULL,
);
GO

IF OBJECT_ID('dbo.NotasEstudiante', 'U') IS NOT NULL
DROP TABLE dbo.NotasEstudiante
GO
-- Create the table in the specified schema
CREATE TABLE dbo.NotasEstudiante
(
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- primary key column
    idEstudiante INT NOT NULL,
    idMateria INT NOT NULL,
    nota FLOAT NOT NULL,
    -- specify more columns here

    CONSTRAINT pk_idEstudiante FOREIGN KEY (idEstudiante) REFERENCES DatosEstudiante(id),
    CONSTRAINT pk_idMateria FOREIGN KEY (idMateria) REFERENCES Materias(id)
);
GO
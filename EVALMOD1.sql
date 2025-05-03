-- Parte A Lenguaje DDL

-- 1. Escribe el comando SQL para crear la tabla anterior.

CREATE TABLE alumnos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  edad INT,
  promedio DECIMAL(4,2),
  genero CHAR(1),
  fecha_ingreso DATE
);

-- 2. Agrega una restricción para que el promedio no pueda ser menor a 6.

ALTER TABLE alumnos
ADD CONSTRAINT chk_promedio CHECK (promedio >= 6);

-- Parte B Inserción y actualización

-- 3. Inserta tres alumnos con datos reales.

INSERT INTO alumnos (nombre, edad, promedio, genero, fecha_ingreso)
VALUES 
('Amy Burton', 25, 8.5, 'F', '2025-02-15'),
('Jesus Arellano', 32, 9.9, 'M', '2024-08-10'),
('Aylin Villanueva', 18, 6.9, 'F', '2025-03-01');

-- 4. Actualiza el promedio de un alumno a 9.5.

UPDATE alumnos
SET promedio = 9.5
WHERE id=1;

-- Parte C Consultas básicas

-- 5. Muestra todos los alumnos.

SELECT *
FROM alumnos;

-- 6. Muestra solo los nombres de las alumnas.
Select nombre
FROM alumnos
WHERE genero='F';

-- 7. Muestra los alumnos con promedio mayor a 8.
SELECT *
FROM alumnos
WHERE promedio > 8;

-- 8. Muestra los alumnos ordenados por fecha de ingreso. 
SELECT *
FROM alumnos
ORDER BY fecha_ingreso DESC;

-- 9. Muestra el nombre y promedio con alias. 
SELECT
   nombre,
   promedio,
   id
FROM alumnos;

-- 10. Busca alumnos cuyo nombre comience con "A".
SELECT *
FROM alumnos
WHERE nombre LIKE 'A%';

-- Parte D Funciones y operadores

-- 11. Cantidad total de alumnos
SELECT
   COUNT(*) AS Total_alumnos
FROM alumnos;

-- 12. Promedio general.
SELECT
   AVG(promedio) AS promedio_general
FROM alumnos;

-- 13. Alumno con menor promedio. 
SELECT *
FROM alumnos
ORDER BY promedio ASC
LIMIT 1;

-- 14. Alumnos que ingresaron este año. 
SELECT * FROM alumnos
WHERE YEAR(fecha_ingreso) = 2025;
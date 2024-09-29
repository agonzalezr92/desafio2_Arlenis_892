CREATE DATABASE "desafio2_Arlenis_892";
\c "desafio2_Arlenis_892";

-- Crear la tabla e insertar los registros --
CREATE TABLE IF NOT EXISTS INSCRITOS (
    cantidad INT,
    fecha DATE,
    fuente VARCHAR(50)
);

INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES
(44, '2021-01-01', 'Blog'),
(56, '2021-01-01', 'Página'),
(39, '2021-02-01', 'Blog'),
(81, '2021-02-01', 'Página'),
(12, '2021-03-01', 'Blog'),
(91, '2021-03-01', 'Página'),
(48, '2021-04-01', 'Blog'),
(45, '2021-04-01', 'Página'),
(55, '2021-05-01', 'Blog'),
(33, '2021-05-01', 'Página'),
(18, '2021-06-01', 'Blog'),
(12, '2021-06-01', 'Página'),
(34, '2021-07-01', 'Blog'),
(24, '2021-07-01', 'Página'),
(83, '2021-08-01', 'Blog'),
(99, '2021-08-01', 'Página');

--¿Cuántos registros hay?--
SELECT COUNT(*) AS total_registros FROM INSCRITOS;

--¿Cuántos inscritos hay en total?--
SELECT SUM(cantidad) AS total_inscritos FROM INSCRITOS

--¿Cuál o cuáles son los registros de mayor antigüedad?--
SELECT *
FROM INSCRITOS
WHERE fecha = (SELECT MIN(fecha) FROM INSCRITOS);

-- ¿Cuántos inscritos hay por día? --
SELECT fecha, SUM(cantidad) AS inscritos_por_dia
FROM INSCRITOS
GROUP BY fecha;

-- ¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?--
SELECT fecha, SUM(cantidad) AS total_inscritos
FROM INSCRITOS
GROUP BY fecha
ORDER BY total_inscritos DESC
LIMIT 1;




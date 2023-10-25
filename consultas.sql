--------------consulta 1--------------------------------

SELECT propietario.nombre, vehiculo.matricula
FROM propietario, vehiculo WHERE propietario.id=vehiculo.id_propietario ORDER BY propietario.nombre;

--------------consulta 2--------------------------------
SELECT categoria.tipo , COUNT(registro.id) 
FROM categoria,  vehiculo, registro
WHERE categoria.id = vehiculo.id_categoria AND vehiculo.id= registro.id_vehiculo and fecha_entrada LIKE '%2023-12-23%' GROUP BY categoria.tipo;

--------------consulta 3--------------------------------
SELECT fecha_entrada, COUNT(*) as total_vehiculos
FROM registro
GROUP BY fecha_entrada;

--------------consulta 4--------------------------------
SELECT v.matricula, c.nombre as color,  m.nombre as marca
FROM vehiculo v, color c,  marca m
WHERE 
   v.id_color = c.id AND v.id_marca = m.id  AND (c.nombre LIKE 'A%' OR m.nombre LIKE 'T%');

--------------consulta 5--------------------------------
SELECT  vehiculo.matricula, 
  DATEDIFF(registro.fecha_salida, registro.fecha_entrada) AS tiempo_estadia
FROM registro , vehiculo 
WHERE registro.id_vehiculo = vehiculo.id ORDER BY tiempo_estadia;

--------------consulta 6--------------------------------
SELECT  (SELECT nombre FROM propietario WHERE id = v.id_propietario) AS nombre_cliente,
    COUNT(r.id) AS cantidad_usos
FROM registro r, vehiculo v
WHERE r.id_vehiculo = v.id
  AND r.fecha_salida >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
GROUP BY v.id_propietario
ORDER BY cantidad_usos DESC
LIMIT 2;

--------------consulta 7--------------------------------
SELECT 
    r.fecha_entrada AS fecha,
    ca.tipo AS tipo_vehiculo,
    SUM(ca.tarifa_dia) AS ingresos_diarios
FROM registro r, vehiculo v, categoria ca
WHERE r.id_vehiculo = v.id
    AND v.id_categoria = ca.id
GROUP BY r.fecha_entrada, ca.tipo
ORDER BY r.fecha_entrada, ca.tipo;

--------------consulta 8--------------------------------
SELECT AVG(ingresos_diarios) AS promedio_ingresos
FROM (
    SELECT 
        v.id AS id_vehiculo,
        SUM(ca.tarifa_dia) AS ingresos_diarios
    FROM registro r, vehiculo v, categoria ca
    WHERE r.id_vehiculo = v.id
        AND v.id_categoria = ca.id
        AND r.fecha_salida IS NOT NULL
        AND r.fecha_salida >= DATE_SUB(CURDATE(), INTERVAL 7 DAY)
    GROUP BY v.id
) AS ingresos_por_vehiculo;
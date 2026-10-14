
-- =====================================================
-- 1. TABLA: empleados (5 registros)
-- =====================================================
INSERT INTO empleados
(dni_empleado, nombre, fecha_nacimiento, fecha_contratacion)
VALUES
('11111111A', 'Ana Garcia', '1990-03-15', '2020-01-10'),
('22222222B', 'Luis Martin', '1985-07-22', '2019-05-20'),
('33333333C', 'Maria Lopez', '1992-11-08', '2021-03-01'),
('44444444D', 'Carlos Perez', '1988-01-30', '2018-09-15'),
('55555555E', 'Laura Sanchez', '1995-06-12', '2022-02-01');


-- =====================================================
-- 2. TABLA: viveros (5 registros)
-- =====================================================
INSERT INTO viveros
(id_vivero, nombre, longitud, latitud)
VALUES
(1, 'Vivero Norte', -16.251000, 28.468000),
(2, 'Vivero Sur', -16.300000, 28.050000),
(3, 'Vivero Central', -16.290000, 28.460000),
(4, 'Vivero Botanico', -16.320000, 28.480000),
(5, 'Vivero Atlantico', -16.270000, 28.420000);


-- =====================================================
-- 3. TABLA: cliente_tajinaste_plus (5 registros)
-- =====================================================
INSERT INTO cliente_tajinaste_plus
(dni_cliente, nombre, fecha_nacimiento)
VALUES
('66666666F', 'Pedro Rodriguez', '1980-04-10'),
('77777777G', 'Elena Torres', '1991-09-25'),
('88888888H', 'Javier Diaz', '1987-12-03'),
('99999999J', 'Carmen Morales', '1994-02-18'),
('12345678Z', 'Sofia Hernandez', '1989-08-14');


-- =====================================================
-- 4. TABLA: productos (5 registros)
-- =====================================================
INSERT INTO productos
(id_producto, tipo, nombre, precio)
VALUES
(1, 'Arbol', 'Drago canario', 25.50),
(2, 'Flor', 'Tajinaste rojo', 12.75),
(3, 'Arbusto', 'Laurel', 18.00),
(4, 'Cactus', 'Cactus canario', 9.50),
(5, 'Palmera', 'Palmera datilera', 45.00);


-- =====================================================
-- 5. TABLA: puestos (5 registros)
-- =====================================================
INSERT INTO puestos
(id_puesto, dni_empleado, id_vivero, cargo, fecha_inicio, fecha_fin)
VALUES
(1, '11111111A', 1, 'Jardinera', '2020-01-10', NULL),
(2, '22222222B', 2, 'Encargado', '2019-05-20', NULL),
(3, '33333333C', 3, 'Especialista en plantas', '2021-03-01', NULL),
(4, '44444444D', 4, 'Supervisor', '2018-09-15', NULL),
(5, '55555555E', 5, 'Auxiliar de vivero', '2022-02-01', NULL);


-- =====================================================
-- 6. TABLA: zonas (5 registros)
-- =====================================================
INSERT INTO zonas
(id_zona, id_vivero, nombre, longitud, latitud)
VALUES
(1, 1, 'Zona de arboles', -16.251100, 28.468100),
(2, 2, 'Zona de flores', -16.300100, 28.050100),
(3, 3, 'Zona de arbustos', -16.290100, 28.460100),
(4, 4, 'Zona de cactus', -16.320100, 28.480100),
(5, 5, 'Zona de palmeras', -16.270100, 28.420100);


-- =====================================================
-- 7. TABLA: pedidos (5 registros)
-- =====================================================
INSERT INTO pedidos
(id_pedido, dni_cliente, dni_empleado, fecha_pedido)
VALUES
(1, '66666666F', '11111111A', '2026-01-10'),
(2, '77777777G', '22222222B', '2026-01-12'),
(3, '88888888H', '33333333C', '2026-02-05'),
(4, '99999999J', '44444444D', '2026-02-15'),
(5, '12345678Z', '55555555E', '2026-03-01');


-- =====================================================
-- 8. TABLA: bonificacion (5 registros)
-- =====================================================
INSERT INTO bonificacion
(dni_cliente, anio, mes)
VALUES
('66666666F', 2026, 1),
('77777777G', 2026, 2),
('88888888H', 2026, 3),
('99999999J', 2026, 4),
('12345678Z', 2026, 5);


-- =====================================================
-- 9. TABLA: tareas (5 registros)
-- =====================================================
INSERT INTO tareas
(id_tarea, id_puesto, tiempo_estimado_minutos, nombre_tarea, material_necesario)
VALUES
(1, 1, 30.00, 'Riego de arboles', 'Manguera y agua'),
(2, 2, 45.00, 'Abonado de flores', 'Abono y guantes'),
(3, 3, 60.00, 'Poda de arbustos', 'Tijeras de podar'),
(4, 4, 25.00, 'Mantenimiento de cactus', 'Guantes protectores'),
(5, 5, 90.00, 'Trasplante de palmeras', 'Pala y sustrato');


-- =====================================================
-- 10. TABLA: detalle_pedido (5 registros)
-- =====================================================
INSERT INTO detalle_pedido
(id_pedido, id_producto, cantidad, precio_unitario)
VALUES
(1, 1, 2, 25.50),
(2, 2, 5, 12.75),
(3, 3, 3, 18.00),
(4, 4, 4, 9.50),
(5, 5, 1, 45.00);


-- =====================================================
-- 11. TABLA: zona_producto (5 registros)
-- =====================================================
INSERT INTO zona_producto
(id_zona, id_producto, cantidad)
VALUES
(1, 1, 20),
(2, 2, 50),
(3, 3, 15),
(4, 4, 40),
(5, 5, 10);


-- =====================================================
-- 12. TABLA: realizar (5 registros)
-- =====================================================
INSERT INTO realizar
(id_zona, id_tarea, fecha, tiempo_real_minutos)
VALUES
(1, 1, '2026-03-01 08:00:00', 28.00),
(2, 2, '2026-03-02 09:00:00', 50.00),
(3, 3, '2026-03-03 10:00:00', 55.00),
(4, 4, '2026-03-04 11:00:00', 30.00),
(5, 5, '2026-03-05 08:30:00', 85.00);

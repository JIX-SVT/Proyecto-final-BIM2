use hotel_ddl_in4cm;
-- 1. TABLA: HABITACIONES 
insert into habitaciones (numero_de_habitacion, piso_habitacion, precio_noche_habitacion, tipo_habitacion) values
(104, 1, 250.00, 'doble'),
(105, 1, 450.00, 'suite'),
(106, 1, 150.00, 'sencilla'),
(107, 1, 150.00, 'sencilla'),
(108, 1, 250.00, 'doble'),
(109, 1, 250.00, 'doble'),
(110, 1, 450.00, 'suite'),
(111, 1, 150.00, 'sencilla'),
(112, 1, 150.00, 'sencilla'),
(113, 1, 250.00, 'doble'),
(114, 1, 250.00, 'doble'),
(115, 1, 450.00, 'suite'),
(116, 1, 150.00, 'sencilla'),
(117, 1, 150.00, 'sencilla'),
(118, 1, 250.00, 'doble'),
(119, 1, 250.00, 'doble'),
(120, 1, 450.00, 'suite'),
(201, 2, 150.00, 'sencilla'),
(202, 2, 150.00, 'sencilla'),
(203, 2, 250.00, 'doble');


-- 2. TABLA: CLIENTES
insert into clientes (cui_cliente, nombre_cliente, apellido_cliente, nacionalidad_cliente, telefono_cliente) values
(2615948370101, 'Juan', 'Pérez', 'Guatemalteco', '33669988'),
(3412589670101, 'Luis', 'Morales', 'Guatemalteco', '50124789'),
(1524369870108, 'Elena', 'Gómez', 'Salvadoreña', '78451236'),
(2896147530101, 'Pedro', 'Ramírez', 'Guatemalteco', '41253698'),
(3025147890103, 'Pierre', 'Dubois', 'Francés', '66998877'),
(2415369870101, 'Sofía', 'Castillo', 'Guatemalteca', '53214789'),
(1896253410101, 'Diego', 'Álvarez', 'Guatemalteco', '47896521'),
(3251478960105, 'Laura', 'Martínez', 'Mexicana', '30214578'),
(2145789630101, 'Jorge', 'Herrera', 'Guatemalteco', '59874123'),
(1423568970101, 'Lucía', 'Méndez', 'Guatemalteca', '42153698'),
(2985632140104, 'Hans', 'Müller', 'Alemán', '55667788'),
(3142536980101, 'Mario', 'Estrada', 'Guatemalteco', '31245678'),
(1742536980101, 'Carmen', 'Sandoval', 'Guatemalteca', '49875123'),
(2365147890106, 'Yuki', 'Tanaka', 'Japonesa', '44556622'),
(2589631470101, 'Francisco', 'Mejía', 'Guatemalteco', '51243698'),
(1632541780101, 'Andrea', 'Fuentes', 'Guatemalteca', '30142589'),
(3054128970101, 'Gustavo', 'Santos', 'Guatemalteco', '58962147'),
(2715963480101, 'Fernando', 'Chacón', 'Guatemalteco', '45127836'),
(1824369510101, 'Patricia', 'Palma', 'Guatemalteca', '59841236'),
(3054219870102, 'Robert', 'Johnson', 'Estadounidense', '23145698');


-- 3. TABLA: EMPLEADOS 
insert into empleados (nombre_empleado, apellido_empleado, encargo_empleado) values
('Marta', 'Chajón', 'Botones'),
('Sergio', 'Valenzuela', 'Gerente de Operaciones'),
('Claudia', 'García', 'Recepcionista Turno Tarde'),
('Roberto', 'Cáceres', 'Auditor Nocturno'),
('Julio', 'Lemus', 'Encargado de Reservas'),
('Gabriela', 'Cutzal', 'Atención al Cliente'),
('Fernando', 'Acajabón', 'Botones Principal'),
('Josué', 'Xiquín', 'Recepcionista Turno Mañana'),
('Mayra', 'Tun', 'Recepcionista Turno Tarde'),
('Esteban', 'Pinto', 'Seguridad de Entrada'),
('Karla', 'Marroquín', 'Asistente de Reservas'),
('Ricardo', 'Monroy', 'Conserje Principal'),
('Diana', 'Tocop', 'Anfitriona de Bienvenida'),
('Brandon', 'Solares', 'Recepcionista Fin de Semana'),
('Vivian', 'Orozco', 'Supervisora de Turno'),
('Daniel', 'Sajcabún', 'Botones Turno Noche'),
('Sandra', 'Palacios', 'Gerente de Turno'),
('Miguel', 'Ángel', 'Conserje Nocturno'),
('Sofia', 'Loren', 'Atención de Teléfonos'),
('Cristian', 'Castro', 'Botones Turno Tarde');

-- 4. TABLA: RESERVAS 
insert into reservas (fecha_inicio_cliente, fecha_fin_cliente, estado_cliente, cui_cliente, id_empleado) values
('2026-07-10', '2026-07-15', 'confirmada', 2615948370101, 3),
('2026-05-24', '2026-05-28', 'confirmada', 3412589670101, 6),
('2026-05-26', '2026-05-30', 'confirmada', 1524369870108, 11),
('2026-06-05', '2026-06-12', 'pendiente', 2896147530101, 8),
('2026-06-15', '2026-06-20', 'confirmada', 3025147890103, 9),
('2026-06-18', '2026-06-19', 'cancelada', 2415369870101, 3),
('2026-07-01', '2026-07-05', 'confirmada', 1896253410101, 12),
('2026-07-04', '2026-07-11', 'confirmada', 3251478960105, 3),
('2026-07-20', '2026-07-22', 'pendiente', 2145789630101, 6),
('2026-08-01', '2026-08-07', 'confirmada', 1423568970101, 14),
('2026-08-10', '2026-08-15', 'confirmada', 2985632140104, 3),
('2026-08-12', '2026-08-14', 'cancelada', 3142536980101, 7),
('2026-09-01', '2026-09-05', 'confirmada', 1742536980101, 17),
('2026-09-10', '2026-09-18', 'confirmada', 2365147890106, 9),
('2026-09-20', '2026-09-22', 'pendiente', 2589631470101, 11),
('2026-10-05', '2026-10-10', 'confirmada', 1632541780101, 12),
('2026-10-15', '2026-10-20', 'confirmada', 3054128970101, 18),
('2026-11-01', '2026-11-05', 'confirmada', 2715963480101, 1),  -- Cambiado de 21 a 1
('2026-11-10', '2026-11-12', 'pendiente', 1824369510101, 2),   -- Cambiado de 22 a 2
('2026-11-15', '2026-11-20', 'confirmada', 3054219870102, 3);  -- Cambiado de 23 a 3


-- 5. tabla intermedia: detalles_reservas
insert into detalles_reservas (id_reservas, numero_de_habitacion) values
(1, 104), -- cambiado de 3 a 1
(2, 105), -- cambiado de 4 a 2
(3, 106), -- cambiado de 5 a 3
(4, 107), 
(5, 108),
(6, 109),
(7, 110),
(8, 111),
(9, 112),
(10, 113),
(11, 114),
(12, 115),
(13, 116),
(14, 117),
(15, 118),
(16, 119),
(17, 120),
(18, 201),
(19, 202),
(20, 203); -- cambiado de 22 a 20

-- -------------------------------------------------------------
-- crud habitaciones
call sp_insertarhabitacion(204, 2, 250.00, 'doble');
call sp_insertarhabitacion(205, 2, 450.00, 'suite');
call sp_insertarhabitacion(206, 2, 150.00, 'sencilla');
call sp_insertarhabitacion(207, 2, 150.00, 'sencilla');
call sp_insertarhabitacion(208, 2, 250.00, 'doble');
call sp_insertarhabitacion(209, 2, 250.00, 'doble');
call sp_insertarhabitacion(210, 2, 450.00, 'suite');
call sp_insertarhabitacion(211, 2, 150.00, 'sencilla');
call sp_insertarhabitacion(212, 2, 150.00, 'sencilla');
call sp_insertarhabitacion(213, 2, 250.00, 'doble');
call sp_insertarhabitacion(214, 2, 250.00, 'doble');
call sp_insertarhabitacion(215, 2, 450.00, 'suite');
call sp_insertarhabitacion(216, 2, 150.00, 'sencilla');
call sp_insertarhabitacion(217, 2, 150.00, 'sencilla');
call sp_insertarhabitacion(218, 2, 250.00, 'doble');
call sp_insertarhabitacion(219, 2, 250.00, 'doble');
call sp_insertarhabitacion(220, 2, 450.00, 'suite');
call sp_insertarhabitacion(301, 3, 160.00, 'sencilla');
call sp_insertarhabitacion(302, 3, 160.00, 'sencilla');
call sp_insertarhabitacion(303, 3, 275.00, 'doble');
call sp_insertarhabitacion(304, 3, 275.00, 'doble');

-- crud clientes
call sp_insertarcliente(2415987360101, 'Estuardo', 'Ramos', 'Guatemalteco', '40125398');
call sp_insertarcliente(1632549870107, 'Gabriela', 'Mendoza', 'Hondureña', '53142698');
call sp_insertarcliente(2985412360101, 'Manuel', 'Solórzano', 'Guatemalteco', '32145698');
call sp_insertarcliente(3214569870101, 'Regina', 'Orellana', 'Guatemalteca', '41526398');
call sp_insertarcliente(1542639870104, 'Antonio', 'Banderas', 'Español', '58124369');
call sp_insertarcliente(2698541230101, 'Monica', 'Gaitán', 'Guatemalteca', '30251478');
call sp_insertarcliente(1987452130101, 'Javier', 'Ibarra', 'Guatemalteco', '49852136');
call sp_insertarcliente(3154269870106, 'Alejandra', 'Silva', 'Colombiana', '51243698');
call sp_insertarcliente(2314569870101, 'Ricardo', 'Arjona', 'Guatemalteco', '42153698');
call sp_insertarcliente(1452639870101, 'Beatriz', 'Guzmán', 'Guatemalteca', '33665544');
call sp_insertarcliente(2896541230109, 'Enrique', 'Iglesias', 'Español', '55443322');
call sp_insertarcliente(3021547890101, 'Héctor', 'Sandoval', 'Guatemalteco', '41122334');
call sp_insertarcliente(1745263980101, 'Isabel', 'Villatoro', 'Guatemalteca', '59988776');
call sp_insertarcliente(2236541780101, 'Julio', 'Cifuentes', 'Guatemalteco', '30112233');
call sp_insertarcliente(2596841370101, 'Marielos', 'Dávila', 'Guatemalteca', '48877665');
call sp_insertarcliente(1698541230101, 'César', 'Augusto', 'Guatemalteco', '52233441');
call sp_insertarcliente(3142569870101, 'Adriana', 'Lima', 'Guatemalteca', '46655771');
call sp_insertarcliente(2101425890101, 'Alejandro', 'Zelaya', 'Guatemalteco', '52143698');
call sp_insertarcliente(1954263980102, 'Nancy', 'Sinatra', 'Estadounidense', '22441133');
call sp_insertarcliente(2895412630101, 'Ramiro', 'De León', 'Guatemalteco', '59874125');

-- crud empleados
call sp_insertarempleado('Verónica', 'Castro', 'Camarera Principal');
call sp_insertarempleado('Juan', 'Gabriel', 'Pianista del Lobby');
call sp_insertarempleado('Laura', 'Pausini', 'Encargada de Eventos');
call sp_insertarempleado('Marco', 'Antonio', 'Seguridad Nocturna');
call sp_insertarempleado('Vicente', 'Fernández', 'Chofer del Hotel');
call sp_insertarempleado('Lucero', 'Hogaza', 'Relaciones Públicas');
call sp_insertarempleado('Chayanne', 'Figueroa', 'Instructor del Gimnasio');
call sp_insertarempleado('Paulina', 'Rubio', 'Asistente de Spa');
call sp_insertarempleado('Thalía', 'Sodi', 'Encargada de Tienda de Regalos');
call sp_insertarempleado('Enrique', 'Bunbury', 'Barman Principal');
call sp_insertarempleado('Gustavo', 'Cerati', 'Encargado de Audio y Eventos');
call sp_insertarempleado('Shakira', 'Mebarak', 'Coreógrafa del Hotel');
call sp_insertarempleado('Ricky', 'Martin', 'Coordinador de Animación');
call sp_insertarempleado('Marc', 'Anthony', 'Supervisor de Alimentos');
call sp_insertarempleado('Daddy', 'Yankee', 'Coordinador Logístico');
call sp_insertarempleado('Don', 'Omar', 'Encargado de Estacionamiento');
call sp_insertarempleado('Bad', 'Bunny', 'Diseñador de Entretenimiento');
call sp_insertarempleado('Pedro', 'Infante', 'Encargado de Mantenimiento');
call sp_insertarempleado('Jorge', 'Negrete', 'Seguridad de Estacionamiento');
call sp_insertarempleado('Luis', 'Miguel', 'Cantante del Restaurante');

-- crud reservas
call sp_insertarreserva('2026-11-22', '2026-11-24', 'cancelada', 2415987360101, 4);
call sp_insertarreserva('2026-12-01', '2026-12-05', 'confirmada', 1632549870107, 5);
call sp_insertarreserva('2026-12-15', '2026-12-18', 'confirmada', 2985412360101, 6);
call sp_insertarreserva('2026-12-20', '2026-12-24', 'pendiente', 3214569870101, 7);
call sp_insertarreserva('2026-12-28', '2027-01-02', 'confirmada', 1542639870104, 8);
call sp_insertarreserva('2027-01-05', '2027-01-08', 'cancelada', 2698541230101, 9);
call sp_insertarreserva('2027-01-10', '2027-01-15', 'confirmada', 1987452130101, 10);
call sp_insertarreserva('2027-01-20', '2027-01-25', 'confirmada', 3154269870106, 11);
call sp_insertarreserva('2027-02-01', '2027-02-03', 'pendiente', 2314569870101, 12);
call sp_insertarreserva('2027-02-10', '2027-02-14', 'confirmada', 1452639870101, 13);
call sp_insertarreserva('2027-02-18', '2027-02-22', 'confirmada', 2896541230109, 14);
call sp_insertarreserva('2027-03-01', '2027-03-05', 'cancelada', 3021547890101, 15);
call sp_insertarreserva('2027-03-08', '2027-03-12', 'confirmada', 1745263980101, 16);
call sp_insertarreserva('2027-03-15', '2027-03-20', 'confirmada', 2236541780101, 17);
call sp_insertarreserva('2027-03-22', '2027-03-25', 'pendiente', 2596841370101, 18);
call sp_insertarreserva('2027-04-01', '2027-04-05', 'confirmada', 1698541230101, 19);
call sp_insertarreserva('2027-04-10', '2027-04-15', 'confirmada', 3142569870101, 20);
call sp_insertarreserva('2027-05-01', '2027-05-05', 'confirmada', 2101425890101, 1);
call sp_insertarreserva('2027-05-10', '2027-05-15', 'confirmada', 1954263980102, 2);
call sp_insertarreserva('2027-05-20', '2027-05-25', 'pendiente', 2895412630101, 3);

-- crud detalle_reserva
call sp_insertardetallereserva(21, 204);
call sp_insertardetallereserva(22, 205);
call sp_insertardetallereserva(23, 206);
call sp_insertardetallereserva(24, 207);
call sp_insertardetallereserva(25, 208);
call sp_insertardetallereserva(26, 209);
call sp_insertardetallereserva(27, 210);
call sp_insertardetallereserva(28, 211);
call sp_insertardetallereserva(29, 212);
call sp_insertardetallereserva(30, 213);
call sp_insertardetallereserva(31, 214);
call sp_insertardetallereserva(32, 215);
call sp_insertardetallereserva(33, 216);
call sp_insertardetallereserva(34, 217);
call sp_insertardetallereserva(35, 218);
call sp_insertardetallereserva(36, 219);
call sp_insertardetallereserva(37, 220);
call sp_insertardetallereserva(38, 301);
call sp_insertardetallereserva(39, 302);
call sp_insertardetallereserva(40, 303);
select * from habitaciones;
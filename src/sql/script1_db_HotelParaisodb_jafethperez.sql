-- alumno: jafeth pérez  
-- carné: 2026078
-- proyecto: base de datos "hotel paraíso" script no. 1 estructura (adaptado)

-- drop database if exists hotel_ddl_in4cm;
create database if not exists hotel_ddl_in4cm;
use hotel_ddl_in4cm;

-- =============================================================================
-- 1. creación de tablas (entidades limpias)
-- =============================================================================

create table habitaciones (
    numero_de_habitacion int not null,
    piso_habitacion int not null,
    precio_noche_habitacion decimal(10,2) not null,
    tipo_habitacion varchar(20) not null,
    primary key (numero_de_habitacion)
);

create table clientes (
    cui_cliente bigint not null,
    nombre_cliente varchar(50) not null,
    apellido_cliente varchar(50) not null,
    nacionalidad_cliente varchar(25) not null,
    telefono_cliente varchar(15) not null,
    primary key (cui_cliente)
);

create table empleados (
    id_empleado int auto_increment not null,
    nombre_empleado varchar(50) not null,
    apellido_empleado varchar(50) not null,
    encargo_empleado varchar(100) not null,
    primary key (id_empleado)
);

create table reservas (
    id_reservas int auto_increment not null,
    fecha_inicio_cliente date not null,
    fecha_fin_cliente date not null,
    estado_cliente varchar(20) not null,
    cui_cliente bigint not null,
    id_empleado int not null,
    primary key (id_reservas)
);

create table detalles_reservas (
    id_reservas int not null,
    numero_de_habitacion int not null,
    primary key (id_reservas, numero_de_habitacion)
);

-- =============================================================================
-- 2. llaves foráneas y relaciones (alter table)
-- =============================================================================

alter table reservas
add constraint fk_cui_cliente foreign key (cui_cliente) references clientes(cui_cliente) on delete cascade,
add constraint fk_id_empleado foreign key (id_empleado) references empleados(id_empleado) on delete cascade;

alter table detalles_reservas
add constraint fk_id_reservas foreign key (id_reservas) references reservas(id_reservas) on delete cascade,
add constraint fk_no_habitacion foreign key (numero_de_habitacion) references habitaciones(numero_de_habitacion) on delete cascade;


-- =============================================================================
-- 3. procedimientos almacenados (crud)
-- =============================================================================

-- 3.1 crud: habitaciones
delimiter $$

create procedure sp_insertarhabitacion(
    in _numero int,
    in _piso int,
    in _precio decimal(10,2),
    in _tipo varchar(20)
)
begin
    insert into habitaciones (numero_de_habitacion, piso_habitacion, precio_noche_habitacion, tipo_habitacion) 
    values (_numero, _piso, _precio, _tipo);
end $$

create procedure sp_listarhabitaciones()
begin
    select numero_de_habitacion, piso_habitacion, precio_noche_habitacion, tipo_habitacion 
    from habitaciones;
end $$

create procedure sp_buscarhabitacion(
    in _numero int
)
begin
    select numero_de_habitacion, piso_habitacion, precio_noche_habitacion, tipo_habitacion 
    from habitaciones 
    where numero_de_habitacion = _numero;
end $$

create procedure sp_actualizarhabitacion(
    in _numero int,
    in _piso int,
    in _precio decimal(10,2),
    in _tipo varchar(20)
)
begin
    update habitaciones 
    set piso_habitacion = _piso, 
        precio_noche_habitacion = _precio, 
        tipo_habitacion = _tipo 
    where numero_de_habitacion = _numero;
end $$

create procedure sp_eliminarhabitacion(
    in _numero int
)
begin
    delete from habitaciones where numero_de_habitacion = _numero;
end $$

delimiter ;

-- 3.2 crud: clientes
delimiter $$

create procedure sp_insertarcliente(
    in _cui bigint,
    in _nombre varchar(50),
    in _apellido varchar(50),
    in _nacionalidad varchar(25),
    in _telefono varchar(15)
)
begin
    insert into clientes (cui_cliente, nombre_cliente, apellido_cliente, nacionalidad_cliente, telefono_cliente) 
    values (_cui, _nombre, _apellido, _nacionalidad, _telefono);
end $$

create procedure sp_listarclientes()
begin
    select cui_cliente, nombre_cliente, apellido_cliente, nacionalidad_cliente, telefono_cliente 
    from clientes;
end $$

create procedure sp_buscarcliente(
    in _cui bigint
)
begin
    select cui_cliente, nombre_cliente, apellido_cliente, nacionalidad_cliente, telefono_cliente 
    from clientes 
    where cui_cliente = _cui;
end $$

create procedure sp_actualizarcliente(
    in _cui bigint,
    in _nombre varchar(50),
    in _apellido varchar(50),
    in _nacionalidad varchar(25),
    in _telefono varchar(15)
)
begin
    update clientes 
    set nombre_cliente = _nombre, 
        apellido_cliente = _apellido, 
        nacionalidad_cliente = _nacionalidad, 
        telefono_cliente = _telefono 
    where cui_cliente = _cui;
end $$

create procedure sp_eliminarcliente(
    in _cui bigint
)
begin
    delete from clientes where cui_cliente = _cui;
end $$

delimiter ;

-- 3.3 crud: empleados
delimiter $$

create procedure sp_insertarempleado(
    in _nombre varchar(50),
    in _apellido varchar(50),
    in _encargo varchar(100)
)
begin
    insert into empleados (nombre_empleado, apellido_empleado, encargo_empleado) 
    values (_nombre, _apellido, _encargo);
end $$

create procedure sp_listarempleados()
begin
    select id_empleado, nombre_empleado, apellido_empleado, encargo_empleado 
    from empleados;
end $$

create procedure sp_buscarempleado(
    in _id int
)
begin
    select id_empleado, nombre_empleado, apellido_empleado, encargo_empleado 
    from empleados 
    where id_empleado = _id;
end $$

create procedure sp_actualizarempleado(
    in _id int,
    in _nombre varchar(50),
    in _apellido varchar(50),
    in _encargo varchar(100)
)
begin
    update empleados 
    set nombre_empleado = _nombre, 
        apellido_empleado = _apellido, 
        encargo_empleado = _encargo 
    where id_empleado = _id;
end $$

create procedure sp_eliminarempleado(
    in _id int
)
begin
    delete from empleados where id_empleado = _id;
end $$

delimiter ;

-- 3.4 crud: reservas
delimiter $$

create procedure sp_insertarreserva(
    in _fecha_inicio date,
    in _fecha_fin date,
    in _estado varchar(20),
    in _cui bigint,
    in _id_empleado int
)
begin
    insert into reservas (fecha_inicio_cliente, fecha_fin_cliente, estado_cliente, cui_cliente, id_empleado) 
    values (_fecha_inicio, _fecha_fin, _estado, _cui, _id_empleado);
end $$

create procedure sp_listarreservas()
begin
    select r.id_reservas, r.fecha_inicio_cliente, r.fecha_fin_cliente, r.estado_cliente, 
           c.nombre_cliente, e.nombre_empleado
    from reservas r
    inner join clientes c on r.cui_cliente = c.cui_cliente
    inner join empleados e on r.id_empleado = e.id_empleado;
end $$

create procedure sp_buscarreserva(
    in _id int
)
begin
    select r.id_reservas, r.fecha_inicio_cliente, r.fecha_fin_cliente, r.estado_cliente, 
           c.nombre_cliente, e.nombre_empleado
    from reservas r
    inner join clientes c on r.cui_cliente = c.cui_cliente
    inner join empleados e on r.id_empleado = e.id_empleado
    where r.id_reservas = _id;
end $$

create procedure sp_actualizarreserva(
    in _id int,
    in _fecha_inicio date,
    in _fecha_fin date,
    in _estado varchar(20),
    in _cui bigint,
    in _id_empleado int
)
begin
    update reservas 
    set fecha_inicio_cliente = _fecha_inicio, 
        fecha_fin_cliente = _fecha_fin, 
        estado_cliente = _estado, 
        cui_cliente = _cui, 
        id_empleado = _id_empleado 
    where id_reservas = _id;
end $$

create procedure sp_eliminarreserva(
    in _id int
)
begin
    delete from reservas where id_reservas = _id;
end $$

delimiter ;

-- 3.5 crud: detalles_reservas
delimiter $$

create procedure sp_insertardetallereserva(
    in _id_reserva int,
    in _numero_habitacion int
)
begin
    insert into detalles_reservas (id_reservas, numero_de_habitacion) 
    values (_id_reserva, _numero_habitacion);
end $$

create procedure sp_listardetallesreservas()
begin
    select dr.id_reservas, dr.numero_de_habitacion, h.tipo_habitacion, h.precio_noche_habitacion
    from detalles_reservas dr
    inner join habitaciones h on dr.numero_de_habitacion = h.numero_de_habitacion;
end $$

create procedure sp_buscardetallereserva(
    in _id_reserva int
)
begin
    select dr.id_reservas, dr.numero_de_habitacion, h.tipo_habitacion, h.precio_noche_habitacion
    from detalles_reservas dr
    inner join habitaciones h on dr.numero_de_habitacion = h.numero_de_habitacion
    where dr.id_reservas = _id_reserva;
end $$

create procedure sp_actualizardetallereserva(
    in _id_reserva int,
    in _habitacion_vieja int,
    in _habitacion_nueva int
)
begin
    update detalles_reservas
    set numero_de_habitacion = _habitacion_nueva
    where id_reservas = _id_reserva and numero_de_habitacion = _habitacion_vieja;
end $$

create procedure sp_eliminardetallereserva(
    in _id_reserva int, 
    in _numero_habitacion int
)
begin
    delete from detalles_reservas 
    where id_reservas = _id_reserva and numero_de_habitacion = _numero_habitacion;
end $$

delimiter ;


-- =============================================================================
-- 4. vistas (views usando create or replace y alias)
-- =============================================================================

-- 4.1 vistas de listado simple
create or replace view vw_lista_habitaciones as
select 
    numero_de_habitacion as 'número habitación',
    piso_habitacion as 'piso',
    precio_noche_habitacion as 'precio por noche',
    tipo_habitacion as 'tipo'
from habitaciones;

create or replace view vw_lista_clientes as
select 
    cui_cliente as 'cui cliente',
    concat(nombre_cliente, ' ', apellido_cliente) as 'cliente',
    nacionalidad_cliente as 'nacionalidad',
    telefono_cliente as 'teléfono'
from clientes;

create or replace view vw_lista_empleados as
select 
    id_empleado as 'id empleado',
    concat(nombre_empleado, ' ', apellido_empleado) as 'empleado',
    encargo_empleado as 'puesto/encargo'
from empleados;

-- 4.2 vistas complejas con joins y formato factura/resumen
create or replace view vw_factura_reservas as
select 
    r.id_reservas as 'numero_reserva',
    r.fecha_inicio_cliente as 'fecha_ingreso',
    r.fecha_fin_cliente as 'fecha_salida',
    r.estado_cliente as 'estado_reserva',
    c.cui_cliente as 'cui_cliente',
    concat(c.nombre_cliente, ' ', c.apellido_cliente) as 'nombre_cliente',
    c.telefono_cliente as 'telefono_cliente',
    h.numero_de_habitacion as 'no_habitacion',
    h.tipo_habitacion as 'descripcion_habitacion',
    h.precio_noche_habitacion as 'precio_noche'
from reservas r
inner join clientes c on r.cui_cliente = c.cui_cliente
inner join empleados e on r.id_empleado = e.id_empleado
inner join detalles_reservas dr on r.id_reservas = dr.id_reservas
inner join habitaciones h on dr.numero_de_habitacion = h.numero_de_habitacion;
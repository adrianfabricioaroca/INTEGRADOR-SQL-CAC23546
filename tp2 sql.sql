#creacion de la bdd
create database integrador_cac;

#seleccion de la bdd
use integrador_cac;

#creaacion de la tabla con sus pk + restricciones mediante ddl
CREATE TABLE `oradores` (
  `id_orador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `tema` varchar(50) NOT NULL,
  `fecha_alta` date NOT NULL,
  PRIMARY KEY (`id_orador`),
  UNIQUE KEY `mail_UNIQUE` (`mail`)
) 

#insercion de 10 registros mediante dml
INSERT INTO oradores (nombre, apellido, mail, tema, fecha_alta)
VALUES
    ('Juan', 'Pérez', 'juan@example.com', 'Tecnología', '2023-11-04'),
    ('María', 'Gómez', 'maria@example.com', 'Ciencia', '2023-11-04'),
    ('Carlos', 'Rodríguez', 'carlos@example.com', 'Educación', '2023-11-04'),
    ('Ana', 'Sánchez', 'ana@example.com', 'Arte', '2023-11-04'),
    ('Pedro', 'Martínez', 'pedro@example.com', 'Deporte', '2023-11-04'),
    ('Luisa', 'López', 'luisa@example.com', 'Medicina', '2023-11-04'),
    ('Santiago', 'Fernández', 'santiago@example.com', 'Política', '2023-11-04'),
    ('Laura', 'Torres', 'laura@example.com', 'Música', '2023-11-04'),
    ('Eduardo', 'García', 'eduardo@example.com', 'Historia', '2023-11-04'),
    ('Isabel', 'Ramírez', NULL, 'Literatura', '2023-11-04');
  
  #comprobacion de los registros cargados en la tabla
  select * from oradores;
  
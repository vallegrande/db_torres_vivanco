INSERT INTO campus (code, register_date, name, direction,place, status) VALUES
( '0001','2024-03-01','Universidad Lima','Paseo de los Héroes 789', 'Lima','A'),
( '0002','2020-06-12','Universidad Cañete','Av. Siempre Viva 123', 'Cañete', 'A'),
( '0003','2022-06-18','Universidad Chincha','Jardines del Sur 101', 'Chincha', 'A'),
( '0004','2019-03-15','Universidad Ica','Calle Alfonso Arcilla 456', 'Ica','A'),
( '0005','2018-03-17','Universidad Comas','Av. de la Paz 202', 'Comas','A');
GO


INSERT INTO careers (id, names, descriptions, durations,register_date, status) VALUES
( '1','Análisis de Sistemas','Carrera de AS','5', '2024-03-01','A'),
( '2','Producción Agraria','Carrera de Agraria','5', '2020-06-12', 'A'),
( '3','Contabilidad','Carrera de contabilidad','5', '2022-06-18', 'A'),
( '4','Administración de empresas','Carrera de Administración','5', '2019-03-15','A'),
( '5','Psicologia','Carrera de psicologia','5', '2018-03-17','A');
GO


INSERT INTO careers_detail (id, careers_id, course_code) VALUES
( '1','1','0001'),
( '2','2','0002'),
( '3','3','0003'),
( '4','4','0004'),
( '5','5','0005');
GO

INSERT INTO course (code, names, credits,teachers_id, status) VALUES
( '0001','Matematicas','15','1','A'),
( '0002','Economia','20','2','A'),
( '0003','Algebra','25','3','A'),
( '0004','Comunicacion','30','4','A'),
( '0005','Medio Ambiente','15','5','A');
GO

INSERT INTO enrollment (id, register_date, student_id, seller_code,careers_id,campus_code, price, start_date, status) VALUES
( '1','2024-03-01','1','0001', '1','0001','200','2024-03-01', 'A'),
( '2','2020-06-12','2','0002', '2','0002','120','2020-06-12',  'A'),
( '3','2022-06-18','3','0003', '3','0003','150','2022-06-18', 'A'),
( '4','2019-03-15','4','0004', '4','0004','210','2019-03-15', 'A'),
( '5','2018-03-17','5','0005', '5','0005','220','2018-03-17', 'A');
GO

INSERT INTO seller (code, names, last_names, email,birthday,place,salary, status) VALUES
( '0001','Julissa','Mendoza','julissa.m@example.com', '1997-06-08','San Luis', '1200.0', 'A'),
( '0002','Grecia','Torres','grecia.t@example.com', '2000-09-01','San Vicente', '2100.0', 'A'),
( '0003','Alexis','Chavez','alexis.c@example.com', '1992-12-07','Florida', '1300.0', 'A'),
( '0004','Luis','Manzo','luis.m@example.com', '1985-03-20','San vicente', '3500.0', 'A'),
( '0005','Ebert','Ocares','ebert.c@example.com', '1988-07-30','Nuevo Imperial', '2200.0', 'A');
GO

INSERT INTO student (id, names, last_names, email, register_date,birthday, status) VALUES
( '1','Rosa','Saman','Rosa.s@example.com','2024-03-01', '1997-06-08','A'),
( '2','Yadira','Campos','Yadira.c@example.com', '2020-06-12','2000-09-01', 'A'),
( '3','Juan','Portuguez','Juan.p@example.com','2022-06-18', '1992-12-07','A'),
( '4','Piero','Rosas','Piero.r@example.com','2018-03-17', '1985-03-20', 'A'),
( '5','Jossue','Rodriguez','Jossue.r@example.com','2019-03-15', '1988-07-30', 'A');
GO

INSERT INTO teachers (id, register_date, names, last_names, specialty,phone,email, status) VALUES
( '1','2020-06-12','Juana','Arenas','Matematicas','956847895','Rosa.s@example.com','A'),
( '2','2000-09-01','José','Cuba','Comunicación','986847885','Yadira.c@example.com', 'A'),
( '3','1992-12-07','Julio','Malazques','Algebra','976847295','Juan.p@example.com','A'),
( '4','1985-03-20','Zair','Rojas','Historia','989847815','Piero.r@example.com', 'A'),
( '5','1988-07-30','Zamyr','Vivanco','Medio Ambiente','986847812','Jossue.r@example.com', 'A');
GO

SELECT * FROM campus;
SELECT * FROM careers;
SELECT * FROM careers_detail;
SELECT * FROM course;
SELECT * FROM enrollment;
SELECT * FROM seller;
SELECT * FROM student;
SELECT * FROM teachers;

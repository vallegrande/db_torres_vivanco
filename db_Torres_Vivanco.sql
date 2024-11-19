
/* Poner en uso la base de datos master */
USE master;
GO

/* Crear base de datos dbAkiExpress */
IF DB_ID (N'dbEnrollmenStudent') IS NOT NULL
    DROP DATABASE dbEnrollmenStudent;
GO
CREATE DATABASE dbEnrollmenStudent;
GO

CREATE TABLE campus (
    code char(4)  NOT NULL,
    register_date date  NOT NULL,
    name varchar(100)  NOT NULL,
    direction varchar(150)  NOT NULL,
	place varchar(150) NOT NULL,
    status char(1)  NOT NULL,
    CONSTRAINT campus_pk PRIMARY KEY  (code)
);
GO
-- Table: careers
CREATE TABLE careers (
    id int  NOT NULL,
    names varchar(150)  NOT NULL,
    descriptions varchar(200)  NOT NULL,
    durations int  NOT NULL,
    register_date date  NOT NULL,
    status char(1)  NOT NULL,
    CONSTRAINT careers_pk PRIMARY KEY  (id)
);
GO
-- Table: careers_detail
CREATE TABLE careers_detail (
    id int  NOT NULL,
    careers_id int  NOT NULL,
    course_code char(4)  NOT NULL,
    CONSTRAINT careers_detail_pk PRIMARY KEY  (id)
);
GO
-- Table: course
CREATE TABLE course (
    code char(4)  NOT NULL,
    names varchar(150)  NOT NULL,
    credits int  NOT NULL,
	teachers_id int  NOT NULL,
	status char(1)  NOT NULL,
    CONSTRAINT course_pk PRIMARY KEY  (code)
);
GO
-- Table: enrollment
CREATE TABLE enrollment (
    id int  NOT NULL,
    register_date date  NOT NULL,
    student_id int  NOT NULL,
    seller_code char(4)  NOT NULL,
    careers_id int  NOT NULL,
    campus_code char(4)  NOT NULL,
    price decimal(8,2)  NOT NULL,
    start_date date  NOT NULL,
    status char(1)  NOT NULL,
    CONSTRAINT enrollment_pk PRIMARY KEY  (id)
);
GO
-- Table: seller
CREATE TABLE seller (
    code char(4)  NOT NULL,
    names varchar(70)  NOT NULL,
    last_names varchar(120)  NOT NULL,
    email varchar(90)  NOT NULL,
    birthday date  NOT NULL,
    place varchar(150)  NOT NULL,
    salary decimal(8,2)  NOT NULL,
    status char(1)  NOT NULL,
    CONSTRAINT seller_pk PRIMARY KEY  (code)
);
GO
-- Table: student
CREATE TABLE student (
    id int  NOT NULL,
    names varchar(60)  NOT NULL,
    last_names varchar(90)  NOT NULL,
    email varchar(100)  NOT NULL,
    register_date date  NOT NULL,
    birthday date  NOT NULL,
    status char(1)  NOT NULL,
    CONSTRAINT student_pk PRIMARY KEY  (id)
);
GO
-- Table: teachers
CREATE TABLE teachers (
    id int  NOT NULL,
    register_date date  NOT NULL,
    names varchar(70)  NOT NULL,
    last_names varchar(150)  NOT NULL,
    specialty varchar(120)  NOT NULL,
    phone char(9)  NOT NULL,
    email varchar(120)  NOT NULL,
    status char(1)  NOT NULL,
    CONSTRAINT teachers_pk PRIMARY KEY  (id)
);
GO


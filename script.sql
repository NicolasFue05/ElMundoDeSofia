CREATE DATABASE ElMundoDeSofia

CREATE TABLE Libros (
    ID INT PRIMARY KEY,
    CategoriaID INT FOREIGN KEY,
    AutorID INT FOREIGN KEY,
    EditorialID INT FOREIGN KEY,
    Titulo VARCHAR(255) UNIQUE,
    FechaPublicacion DATE,
    ISBN INT(13),
    Precio FLOAT
    Stock INT OR NULL
);

CREATE TABLE Pedidos (
    ID INT PRIMARY KEY,
    LibroID INT FOREIGN KEY,
    ClienteID INT FOREIGN KEY,
    TransaccionID INT FOREIGN KEY,
    FechaCompra DATE,
    Cantidad INT
);

CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    Email VARCHAR(255),
    Telefono INT(10),
    Direccion VACHAR(255)
);

CREATE TABLE Transacciones (
    ID INT PRIMARY KEY,
    ClienteID INT FOREIGN KEY,
    MetodoPago VARCHAR(255),
    MontoTotal FLOAT,
    FechaTransaccion DATE
);

CREATE TABLE Categorias (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(255)
);

CREATE TABLE Autores (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellidos VARCHAR(255) OR NULL,
    FechaNacimiento DATE
);

CREATE TABLE Editoriales (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(255)
);


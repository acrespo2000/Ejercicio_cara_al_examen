--Las claves foraneas no funcionan, asi que las escribi como se deberian poner--
CREATE TABLE Personas(
    id INTEGER(9) NOT NULL UNIQUE primary key,
    Name VARCHAR(128),
    Apellido1 VARCHAR(128),
    Apellido2 VARCHAR(128),
    Telefono INTEGER(9) NOT NULL UNIQUE,
    Edad INTEGER(3),
    FOREIGN KEY (idPersonajes) REFERENCES Personajes(idPersonajes)
    
);

INSERT INTO Personas(id,Name,Apellido1,Apellido2,Telefono,Edad) VALUES(1, 'Andres', 'Crespo', 'Alvarez', 664272615, 21);
INSERT INTO Personas(id,Name,Apellido1,Apellido2,Telefono,Edad) VALUES(2, 'Mario', 'Martínez', 'De Felis', 626329878, 19);
INSERT INTO Personas(id,Name,Apellido1,Apellido2,Telefono,Edad) VALUES(3, 'Carlos', 'Javier', 'Diaz', 667288901, 25);

CREATE TABLE Personajes(
    idPersonajes INTEGER(9) NOT NULL UNIQUE primary key,
    Rol VARCHAR(128),
    Capitulos VARCHAR(128),
    Namepersonajes VARCHAR(128),
    FOREIGN KEY (id) REFERENCES Personas(id),
    FOREIGN KEY Namepersonajes REFERENCES Personajes(Namepersonajes),
    FOREIGN KEY idCapitulo REFERENCES Capitulos(idCapitulo)
);

INSERT INTO Personajes(idPersonajes,Rol,Capitulos,Namepersonajes) VALUES(100,'Mago','tercero','Gandalf');
INSERT INTO Personajes(idPersonajes,Rol,Capitulos,Namepersonajes) VALUES(101,'Arquero','segundo','Legolas');
INSERT INTO Personajes(idPersonajes,Rol,Capitulos,Namepersonajes) VALUES(102,'Espadachin','primero','Aragorn');


CREATE TABLE Anecdotas(
    idAnecdota INTEGER(9) NOT NULL UNIQUE primary key,
    Duracion TIME,
    Nameanecdota VARCHAR(128),
    FOREIGN KEY (idPersonajes) REFERENCES Personajes(idPersonajes)
    FOREIGN KEY Namepersonajes REFERENCES Personajes(Namepersonajes),
    FOREIGN KEY idCapitulo REFERENCES Capitulos(idCapitulo)
);

INSERT INTO Anecdotas (idAnecdota,Duracion,Nameanecdota) VALUES(10,'30:00','Batalla de magos');
INSERT INTO Anecdotas (idAnecdota,Duracion,Nameanecdota) VALUES(20,'10:00','Rrecorrido por el castillo');
INSERT INTO Anecdotas (idAnecdota,Duracion,Nameanecdota) VALUES(30,'18:00','Duelo');


CREATE TABLE Capitulos(
    idCapitulo INTEGER(9) NOT NULL UNIQUE primary key,
    NameCapitulo VARCHAR(128),
    Descripcion TEXT,
    FOREIGN KEY (idPersonajes) REFERENCES Personajes(idPersonajes),
    FOREIGN KEY Namepersonajes REFERENCES Personajes(Namepersonajes),
    FOREIGN KEY idAnecdota REFERENCES Anecdotas(idAnecdota)
);

INSERT INTO Capitulos (idCapitulo,NameCapitulo,Descripcion) VALUES(1,'Capitulo1','Inicio de la aventura');
INSERT INTO Capitulos (idCapitulo,NameCapitulo,Descripcion) VALUES(2,'Capitulo2','Entrenamiento');
INSERT INTO Capitulos (idCapitulo,NameCapitulo,Descripcion) VALUES(3,'Capitulo3','Batalla final');
use BlogDB;

create table Author (
AuthorID INT primary key auto_increment,
Name VARCHAR(100) unique 
);

create table Post (
PostID INT primary key auto_increment,
AuthorID INT,
Title VARCHAR(200),
WordCount INT,
Views INT,
foreign key (authorid) references Author (AuthorID)
);

-- Descripción: Script para crear estructura de base de datos del blog
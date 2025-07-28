USE AirlineDB;

-- Tabla de clientes
create table Customers (
CustomerID INT primary key auto_increment,
CustomerName VARCHAR(100),
CustomerStatus VARCHAR(50)
);

-- Tabla de aviones
create table Aircraft (
AircraftID INT primary key auto_increment,
AircraftName VARCHAR(100)
);

-- Tabla de vuelos
create table Flights (
FlightID INT primary key auto_increment,
FlightNumber VARCHAR(50),
AircraftID INT,
TotalAircraftSeats INT,
FlightMileage INT,
foreign key (AircraftID) references Aircraft(AircraftID)
);

-- Tabla intermedia entre clientes y vuelos
create table CustomerFlights (
CustomerFlightID INT primary key auto_increment,
CustomerID INT,
FlightID INT,
TotalCustomerMileage INT,
foreign key (CustomerID) references Customers(CustomerID),
foreign key (FlightID) references Flights(FlightID)
);

-- Descripción: Script para crear estructura de base de datos del la aerolínea
USE AirlineDB;

insert into Customers (CustomerName, CustomerStatus, TotalCustomerMileage)
values
('Agustine Riviera', 'Silver', 115235),
('Alaina Sepulvida', 'None', 6008),
('Ana Janco', 'Silver',	136773),
('Christian Janco', 'Silver', 14642),
('Jennifer Cortez', 'Gold', 300582),
('Jessica James', 'Silver',	127656),
('Sam Rio', 'None',	2653),
('Tom Jones', 'Gold', 205767);

insert into Aircraft (AircraftName)
values 
('Boeing 747'),
('Airbus A330'),
('Boeing 777');

insert into Flights (FlightNumber, AircraftID, TotalAircraftSeats, FlightMileage)
values
('DL143', 1, 400, 135),
('DL122', 2, 236, 4370),
('DL222', 3, 264, 1765),
('DL37', 1, 400, 531),
('DL53', 3, 264, 2078);

insert into CustomerFlights (CustomerID, FlightID)
values
(1, 1),
(1, 2),
(2, 3),
(3, 3),
(4, 3),
(5, 1),
(6, 2),
(7, 1),
(7, 4),
(8, 2),
(8, 5),
(8, 3);

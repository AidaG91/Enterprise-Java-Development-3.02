USE AirlineDB;

insert into Customers (CustomerName, CustomerStatus)
values
('Agustine Riviera', 'Silver'),
('Alaina Sepulvida', 'None'),
('Tom Jones', 'Gold'),
('Sam Rio', 'None'),
('Jessica James', 'Silver'),
('Ana Janco', 'Silver'),
('Jennifer Cortez', 'Gold'),
('Christian Janco', 'Silver');

insert into Aircraft (AircraftName)
values 
('Boeing 747'),
('Airbus A330'),
('Boeing 777');

insert into Flights (FlightNumber, AircraftID, TotalAircraftSeats, FlightMileage)
values
('DL143', 1, 400, 135),
('DL122', 2, 236, 4370),
('DL53', 3, 264, 2078),
('DL222', 3, 264, 1765),
('DL37', 1, 400, 531);

insert into CustomerFlights (CustomerID, FlightID, TotalCustomerMileage)
values
(1, 1, 115235),
(1, 2, 115235),
(2, 2, 6008),
(1, 1, 115235),
(3, 2, 205767),
(3, 3, 205767),
(1, 1, 115235),
(4, 1, 2653),
(1, 1, 115235),
(3, 4, 205767),
(5, 1, 127656),
(4, 1, 2653),
(6, 4, 136773),
(7, 4, 300582),
(5, 2, 127656),
(4, 5, 2653),
(8, 4, 14642);

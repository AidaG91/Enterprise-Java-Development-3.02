USE AirlineDB;

-- Total number of Flights
select COUNT(*) as TotalFlights
from Flights;

-- Average flight distance
select AVG(FlightMileage) as AverageFlightDistance
from Flights;

-- Average number of seats
select AVG(TotalAircraftSeats) as AverageSeats
from Flights;

-- Average number of customer mileage by status
select CustomerStatus, AVG(TotalCustomerMileage) as AverageCustomerMileageByStatus
from Customers
group by CustomerStatus;

-- Maximum number of miles flown by customers grouped by status
select CustomerStatus, MAX(TotalCustomerMileage) as MaxMilesByStatus
from Customers
group by CustomerStatus;

-- Total number of aircraft with a name containing Boeing
select COUNT(*) as TotalOfBoeing
from Aircraft
where AircraftName like '%Boeing%';

-- Flights with a distance between 300 and 2000 miles
select FlightMileage as BetweenDistance
from Flights
where FlightMileage between 300 and 2000;

-- Average flight distance booked grouped by customer status
select c.CustomerStatus, AVG(f.FlightMileage) as AverageDistanceBooked
from CustomerFlights cf
join Customers c on cf.CustomerID = c.CustomerID
join Flights f on cf.FlightID = f.FlightID
group by c.CustomerStatus;

-- Most often booked aircraft by gold status members
select a.AircraftName, COUNT(*) as TimesBooked
from CustomerFlights cf
join Customers c on cf.CustomerID = c.CustomerID
join Flights f on cf.FlightID = f.FlightID
join Aircraft a on f.AircraftID = a.AircraftID
where c.CustomerStatus = 'Gold'
group by a.AircraftName
order by TimesBooked desc 
limit 1;
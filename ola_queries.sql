CREATE DATABASE OLA;

USE OLA;

-- Retrieve all successful bookings:
SELECT * FROM BOOKINGS 
WHERE BOOKING_STATUS = 'SUCCESS';

-- Find the average ride distance for each vehicle type:
SELECT VEHICLE_TYPE, ROUND(AVG(RIDE_DISTANCE),2) AS AVG_DISTANCE FROM BOOKINGS
GROUP BY VEHICLE_TYPE;

-- Get the total number of cancelled rides by customers: 
SELECT COUNT(*) FROM BOOKINGS WHERE BOOKING_STATUS = 'CANCELED BY CUSTOMER';

-- List the top 5 customers who booked the highest number of rides:
SELECT CUSTOMER_ID,COUNT(BOOKING_ID) AS TOTAL_RIDES FROM BOOKINGS 
GROUP BY CUSTOMER_ID
ORDER BY TOTAL_RIDES DESC
LIMIT 5;

-- Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT COUNT(*) FROM BOOKINGS
WHERE CANCELED_RIDES_BY_DRIVER = 'PERSONAL & CAR RELATED ISSUE';

-- Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT VEHICLE_TYPE,MAX(DRIVER_RATINGS) AS MAX_RATING,MIN(DRIVER_RATINGS) AS MIN_RATING FROM BOOKINGS
WHERE VEHICLE_TYPE = 'PRIME SEDAN';

-- Retrieve all rides where payment was made using UPI:
SELECT * FROM BOOKINGS 
WHERE PAYMENT_METHOD = 'UPI';

-- Find the average customer rating per vehicle type
SELECT VEHICLE_TYPE,ROUND(AVG(CUSTOMER_RATING),2) AS AVG_CUSTOMER_RATING FROM BOOKINGS
GROUP BY VEHICLE_TYPE;

-- Calculate the total booking value of rides completed successfully:
SELECT SUM(BOOKING_VALUE) AS TOTAL_BOOKING_VALUE FROM BOOKINGS
WHERE BOOKING_STATUS = 'SUCCESS';

-- List all incomplete rides along with the reason:
SELECT BOOKING_ID,INCOMPLETE_RIDES_REASON FROM BOOKINGS
WHERE INCOMPLETE_RIDES = 'YES';


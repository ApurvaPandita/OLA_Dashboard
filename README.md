# 🚗 Ola Ride Analytics Dashboard

> An end-to-end analytics project using SQL for data extraction and Power BI for interactive dashboards — analyzing 1,03,024 Ola ride bookings across July 2024 to uncover booking trends, cancellation patterns, revenue insights, vehicle performance, and customer ratings.

---

## 📋 Overview

This project combines SQL-based data analysis with a multi-page Power BI dashboard. SQL was used to create the database, extract insights through views and queries, and prepare the data before importing into Power BI. The final dashboard covers five key areas — overall booking performance, vehicle type analysis, revenue breakdown, cancellation deep-dive, and ratings — with a date slicer that filters all pages simultaneously.

---

## ❓ Problem Statement

Ride-hailing platforms like Ola generate thousands of bookings daily, but raw data alone doesn't reveal what's working and what isn't. This project aims to answer:

- Why is the cancellation rate as high as 28%?
- Which vehicle types are performing best in terms of revenue and distance?
- How are customers paying and who are the top spenders?
- Are drivers and customers satisfied with the service across vehicle categories?
- What are the reasons behind incomplete rides?
---

## 📁 Dataset

| Attribute | Detail |
|---|---|
| Period | 01 July 2024 – 31 July 2024 |
| Total Records | 1,03,024 bookings |
| Key Columns | Booking ID, Customer ID, Date, Vehicle Type, Booking Status, Booking Value, Ride Distance, Cancelled Rides By Customer,  Cancelled Rides By Driver, Ride Distance, Incomplete Rides, Incomplete Rides Reason, Payment Method, Customer Rating, Driver Rating |

---

## 🛠️ Tools & Technologies

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-orange?style=flat-square&logo=powerbi&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-MySQL-blue?style=flat-square&logo=mysql&logoColor=white)


- **MySQL** — Database creation, data extraction, views, aggregations
- **Power BI** — Dashboard design, DAX measures, data modeling, visualizations

---

## 🔄 Methods

### Step 1 — Database Setup & SQL Analysis
Created a MySQL database and wrote 10+ SQL views and queries to extract key insights before importing into Power BI:
```sql
-- Database setup
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


```
### Step 2 — Data Import into Power BI
Imported the cleaned and queried data from MySQL into Power BI using the database connector.

### Step 3 — Dashboard Design
- Built 5 report pages with consistent navigation and slicers
- Created DAX measures for cancellation rate, number of cancelled rides and total rides
- Added a date slicer to enable dynamic filtering across all pages

---

## 💡 Key Insights

- **28.08% cancellation rate** — driver-initiated cancellations (17.89%) were nearly double customer-initiated (10.19%), pointing to a supply-side operational problem
- **Prime Sedan** generated the highest total booking value (₹8.30M)
- **Cash and UPI** dominated payment methods — credit and debit card usage was significantly lower
- **Ratings are consistently ~4.0** across all vehicle types for both drivers and customers — service quality is stable
- Ride volume showed a **sharp drop in the last week of July** — worth investigating for seasonal or operational causes

---


## 📸 Dashboard Screenshots

### Booking Overview
![Bookings](screenshots/overview_of_bookings.png)

### Revenue Overview
![Revenue](screenshots/revenue_through_bookings.png)

### Vehicle Performance
![Vehicle](screenshots/vehicle_performance.png)

### Cancellation Analysis
![Cancellation](screenshots/cancellation_analysis.png)

### Ratings Analysis
![Ratings](screenshots/overall_ratings.png)


---

## ✅ Results & Conclusion

The dashboard reveals that while Ola's revenue and ratings are healthy (₹35M total booking value, ~4.0 average ratings), the **28.08% cancellation rate is a critical operational concern** — and the data clearly shows it is primarily driver-driven. Addressing personal and car-related issues among drivers could meaningfully improve the completion rate and customer experience.

Vehicle-wise, all categories perform comparably in revenue (~₹8M each), suggesting balanced demand. However, focusing on expanding UPI/digital payment adoption could further drive revenue growth.

---
## 🙋 Author

**Apurva Pandita**  
[LinkedIn](https://www.linkedin.com/in/apurva-pandita-b51812272/) · [GitHub](https://github.com/ApurvaPandita) · apandita04@gmail.com

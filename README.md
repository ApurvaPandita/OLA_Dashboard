# 🚗 Ola Ride Analytics Dashboard

> An interactive Power BI dashboard analyzing 100,000+ Ola ride bookings to uncover revenue trends, cancellation patterns, and customer behavior insights.

---

## 📌 Objective

This project answers key operational and business questions for a ride-hailing platform:

- What is the overall booking performance and ride volume trend?
- What is driving the 28% cancellation rate — customers or drivers?
- Which vehicle types generate the most revenue and travel the most distance?
- How is revenue distributed across payment methods?
- How are drivers and customers rating each other across vehicle categories?

---

## 🛠️ Tools & Technologies

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-orange?style=flat-square&logo=powerbi&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Data%20Prep-green?style=flat-square&logo=microsoftexcel&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-MySQL-blue?style=flat-square&logo=mysql&logoColor=white)


## 📊 Dashboard Overview

The dashboard is divided into the following report pages:

### Page 1 — Overall Booking Status
High-level overview of all bookings for July 2024.

| Metric | Value |
|---|---|
| Total Bookings | 1,03,024 |
| Total Booking Value | ₹35M |
| Success Rate | 62.09% |
| Cancelled by Driver | 17.89% |
| Cancelled by Customer | 10.19% |
| Driver Not Found | 9.83% |

**Visuals:**
- Booking Status Breakdown (Pie Chart)
- Ride Volume Over Time (Line Chart — daily trend across July)

### Page 2 — Vehicle Type
Performance breakdown across 7 vehicle categories.

| Vehicle | Total Booking Value | Success Booking Value | Avg. Distance | Total Distance |
|---|---|---|---|---|
| Prime Sedan | 8.30M | 5.22M | 25.01 km | 235K |
| Prime SUV | 7.93M | 4.88M | 24.88 km | 224K |
| Prime Plus | 8.05M | 5.02M | 25.03 km | 227K |
| Mini | 7.99M | 4.89M | 24.98 km | 226K |
| Auto | 8.09M | 5.05M | 10.04 km | 92K |
| Bike | 7.99M | 4.97M | 24.93 km | 228K |
| E-bike | 8.18M | 5.05M | 25.15 km | 231K |

---

### Page 3 — Revenue
Detailed revenue and customer analysis.

**Visuals:**
- Revenue by Payment Method (Bar Chart) — Cash and UPI are the dominant payment methods
- Ride Distance Distribution Per Day (Bar Chart)
- Top 5 Customers by Booking Value

| Customer ID | Booking Value |
|---|---|
| CID785112 | ₹8,025 |
| CID308763 | ₹6,281 |
| CID734557 | ₹6,177 |
| CID353074 | ₹6,110 |
| CID836942 | ₹6,019 |

---


### Page 4 — Cancellation
Deep dive into cancellation reasons from both sides.

| Metric | Value |
|---|---|
| Total Bookings | 1,03,024 |
| Success Bookings | 63,967 |
| Cancelled Bookings | 28,933 |
| Cancellation Rate | 28.08% |

**Cancelled by Customer — Top Reasons:**
1. Driver is not moving towards pickup (3.18K)
2. Driver asked to cancel (2.67K)
3. Change of plans (2.08K)
4. AC is not working (1.57K)
5. Wrong address (1.01K)


**Cancelled by Driver — Top Reasons:**
1. Personal & car related issue (6.54K)
2. Customer related issue (5.41K)
3. Customer was coughing/sick (3.65K)
4. More than permitted people (2.83K)

---

### Page 5 — Ratings
Driver and customer ratings across all 7 vehicle types.

**Driver Ratings:**
| Prime Sedan | Prime SUV | Prime Plus | Mini | Auto | Bike | E-bike |
|---|---|---|---|---|---|---|
| 3.99 | 4.01 | 4.00 | 3.99 | 4.00 | 3.98 | 4.01 |

**Customer Ratings:**
| Prime Sedan | Prime SUV | Prime Plus | Mini | Auto | Bike | E-bike |
|---|---|---|---|---|---|---|
| 4.00 | 4.00 | 4.01 | 4.00 | 4.00 | 3.99 | 3.99 |


---


## 🔍 Key Insights

- **28.08% cancellation rate** — driver-initiated cancellations (17.89%) were nearly double customer-initiated (10.19%), pointing to a supply-side operational issue
- **Prime Sedan** had the highest total booking value (₹8.30M); **Auto** had the shortest average distance (10.04 km), reflecting urban short-trip demand
- **Cash and UPI** dominated payment methods, indicating low credit/debit card adoption among users
- **Ratings are consistently ~4.0** across all vehicle types for both drivers and customers — indicating stable service quality
- **Top customer CID785112** spent ₹8,025 — significantly higher than others, indicating a high-value customer segment worth targeting

---

---

## 📸 Dashboard Screenshots

> *(Add your Power BI screenshots here — drag and drop images into the repo and reference them below)*


### Revenue Overview
![Revenue](screenshots/revenue_through_bookings.png)

### Booking Overview
![Bookings](screenshots/overview_of_bookings.png)

### Ratings Analysis
![Ratings](screenshots/overall_ratings.png)

### Cancellation Analysis
![Cancellation](screenshots/cancellation_analysis.png)

### Vehicle Performance
![Vehicle](screenshots/vehicle_performance.png)

```
## 🙋 Author

**Apurva Pandita**  
[LinkedIn](https://www.linkedin.com/in/apurva-pandita-b51812272/) · [GitHub](https://github.com/ApurvaPandita) · apandita04@gmail.com

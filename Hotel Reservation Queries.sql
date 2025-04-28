USE hotelreservationdb;

/* Query 1: Cancellation rate by Room Type and Special Requests 
(For Goal 1: Factors influencing reservation status) */
SELECT r.Room_Type_Reserved, g.No_of_Special_Requests, 
r.Booking_Status, COUNT(*) AS Total_Bookings
FROM Reservations r JOIN Guests g 
ON r.Booking_ID = g.Booking_ID
GROUP BY r.Room_Type_Reserved, g.No_of_Special_Requests, r.Booking_Status
ORDER BY r.Room_Type_Reserved, g.No_of_Special_Requests;


/* Query 2: Average Lead Time for Canceled vs. Not Canceled Bookings 
(For Goal 2: Lead time effect on cancellations) */
SELECT Booking_Status, AVG(Lead_Time) AS Avg_Lead_Time
FROM Reservations
GROUP BY Booking_Status;


/* Query 3: Cancellation rate by Market Segment Type 
(For Goal 2: Market segment effect) */
SELECT a.Market_Segment_Type, r.Booking_Status, COUNT(*) AS Total_Bookings
FROM ArrivalInfo a JOIN Reservations r 
ON a.Booking_ID = r.Booking_ID
GROUP BY a.Market_Segment_Type, r.Booking_Status
ORDER BY a.Market_Segment_Type;

/* Combined Query (2 and 3): Average Lead Time and Cancellation Rate by Market Segment Type*/
SELECT a.Market_Segment_Type, r.Booking_Status, 
AVG(r.Lead_Time) AS Avg_Lead_Time, COUNT(*) AS Total_Bookings
FROM ArrivalInfo a JOIN Reservations r 
ON a.Booking_ID = r.Booking_ID
GROUP BY a.Market_Segment_Type, r.Booking_Status
ORDER BY a.Market_Segment_Type, r.Booking_Status;


/* Query 4: Booking and Cancellation Trends by Arrival Month 
(For Goal 3: Identify key trends to improve booking retention) */
SELECT 
    CASE a.Arrival_Month
        WHEN 1 THEN 'Jan'
        WHEN 2 THEN 'Feb'
        WHEN 3 THEN 'Mar'
        WHEN 4 THEN 'Apr'
        WHEN 5 THEN 'May'
        WHEN 6 THEN 'Jun'
        WHEN 7 THEN 'Jul'
        WHEN 8 THEN 'Aug'
        WHEN 9 THEN 'Sep'
        WHEN 10 THEN 'Oct'
        WHEN 11 THEN 'Nov'
        WHEN 12 THEN 'Dec'
    END AS Arrival_Month_Name, r.Booking_Status, COUNT(*) AS Total_Bookings
FROM ArrivalInfo a JOIN Reservations r
ON a.Booking_ID = r.Booking_ID
GROUP BY Arrival_Month_Name, r.Booking_Status
ORDER BY MIN(a.Arrival_Month), r.Booking_Status; 


CREATE DATABASE CAPSTONE_PROJECT

Select  top 10 * FROM bookings

SELECT top 10 * FROM rooms

SELECT top 10 * From food_orders

SELECT top 10 * FROM requests

SELECT top 10 * FROM menu


--I joined the Menu and Food_orders tables together on Menu ID*/
--
 SELECT mn.menuid,mn.MenuName,mn.price,mn.category,fo.dest_room,fo.OrderDate, fo.time,fo.OrderNo, (fo.OrderNo*mn.price) As OrderCost
 FROM menu AS mn 

JOIN food_orders As fo ON fo.menu_id = mn.Menuid*/

-- I joined the Requests and Bookings tables and then the Rooms table.

SELECT re.Request_id, re.client_name,room, re.Room_type, re.Request_type,bk.Bookingid, bk.start_date, bk.end_date, 
DATEDIFF(DAY, bk.start_date, bk.end_date) AS length_of_stay,rm.price_per_day, 
rm.price_per_day* (DATEDIFF(DAY, bk.start_date, bk.end_date))AS TotalCost,
 rm.RoomCapacity, re.adults, re.children
FROM Requests re
INNER JOIN Bookings bk ON re.Request_id = bk.Request_id
INNER JOIN rooms rm ON re.room_type = rm.RoomType



    
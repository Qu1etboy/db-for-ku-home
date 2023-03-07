SELECT temp2.room_type ,COUNT(temp2.room_type) as total
FROM (
	SELECT temp.booking_id, temp.room_type_id, RoomType.room_type
    FROM (
        SELECT Booking.booking_id, Room.room_id, Room.room_type_id, USER.is_ku_member
        FROM booking
        JOIN room ON Booking.room_id = Room.room_id
        JOIN USER ON Booking.uid_card = USER.uid_card
        WHERE is_ku_member = 'yes'
    ) AS temp
    JOIN RoomType ON RoomType.room_type_id = temp.room_type_id
) AS temp2
GROUP BY temp2.room_type
ORDER BY total DESC
LIMIT 1
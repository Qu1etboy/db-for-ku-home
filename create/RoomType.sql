-- ประเภทของห้องพัก
CREATE TABLE RoomType (
    room_type_id INT(4) AUTO_INCREMENT,
    room_type VARCHAR(31) NOT NULL,
    room_price FLOAT NOT NULL,
    room_image VARCHAR(255),
    room_description VARCHAR(255),

    CHECK (room_type IN ('Superior', 'Deluxe', 'Suite')),
    CHECK (room_price >= 0),

    PRIMARY KEY(room_type_id)
);
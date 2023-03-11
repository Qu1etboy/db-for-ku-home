-- ห้องพัก
CREATE TABLE Room (
    room_id INT(4) AUTO_INCREMENT,
    room_type_id INT(4) NOT NULL,
    room_number INT(4) NOT NULL,
    room_status VARCHAR(255) NOT NULL,

    UNIQUE (room_number),
    CHECK (room_status IN ('Available', 'Unavailable', 'Maintenance')),

    PRIMARY KEY(room_id),
    FOREIGN KEY(room_type_id) REFERENCES RoomType(room_type_id)
);
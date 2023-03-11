-- การจองห้องพัก
CREATE TABLE Booking (
    booking_id INT(4) AUTO_INCREMENT,
    room_id INT(4) NOT NULL,
    uid_card CHAR(13) NOT NULL,
    booking_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    check_in_date TIMESTAMP NOT NULL,
    check_out_date TIMESTAMP NOT NULL,
    number_of_resident INT NOT NULL,
    booking_status VARCHAR(20),
    
    CHECK(number_of_resident > 0 AND number_of_resident <= 2),
    CHECK(booking_status IN ('Success', 'Failed')),
    CHECK(check_in_date < check_out_date),
    
    PRIMARY KEY(booking_id),
    FOREIGN KEY(room_id) REFERENCES Room(room_id) ON DELETE CASCADE,
    FOREIGN KEY(uid_card) REFERENCES User(uid_card) ON DELETE CASCADE
);
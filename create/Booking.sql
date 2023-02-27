CREATE TABLE Booking (
    booking_id INT(4) AUTO_INCREMENT,
    room_id INT(4) NOT NULL,
    user_id CHAR(13) NOT NULL,
    booking_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    check_in_date TIMESTAMP NOT NULL,
    check_out_date TIMESTAMP NOT NULL,
    number_of_resident INT NOT NULL,
    booking_status VARCHAR(20) CHECK(booking_status IN ('Success', 'Failed')),

    PRIMARY KEY(booking_id),
    FOREIGN KEY(room_id) REFERENCES Room(room_id) ON DELETE CASCADE,
    FOREIGN KEY(user_id) REFERENCES User(user_id) ON DELETE CASCADE
)
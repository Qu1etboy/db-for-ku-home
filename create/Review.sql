-- รีวิว
CREATE TABLE Review (
    uid_card CHAR(13),
    room_id INT(4),
    rating FLOAT NOT NULL,
    comment TEXT,

    PRIMARY KEY (uid_card, room_id),
    FOREIGN KEY (uid_card) REFERENCES User(uid_card) ON DELETE CASCADE,
    FOREIGN KEY (room_id) REFERENCES Room(room_id) ON DELETE CASCADE
);
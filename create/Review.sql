CREATE TABLE Review (
  id_card CHAR(13),
  room_id INT(4),
  rating FLOAT NOT NULL,
  comment TEXT,
  PRIMARY KEY (id_card, room_id),
  FOREIGN KEY (id_card) REFERENCES User(id_card) ON DELETE CASCADE,
  FOREIGN KEY (room_id) REFERENCES Room(room_id) ON DELETE CASCADE
);
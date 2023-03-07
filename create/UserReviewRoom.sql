CREATE TABLE User_Review_Room (
  id_card CHAR(13),
  room_id INT(4),
  review_id INT(4),

  PRIMARY KEY (id_card, room_id, review_id),
  FOREIGN KEY (id_card) REFERENCES User(id_card) ON DELETE CASCADE,
  FOREIGN KEY (room_id) REFERENCES Room(room_id) ON DELETE CASCADE,
  FOREIGN KEY (review_id) REFERENCES Review(review_id) ON DELETE CASCADE
);
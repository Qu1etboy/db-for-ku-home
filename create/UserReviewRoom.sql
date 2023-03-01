CREATE TABLE User_Review_Room (
  user_id CHAR(13),
  room_id INT(4),
  review_id INT(4),

  PRIMARY KEY (user_id, room_id, review_id),
  FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE,
  FOREIGN KEY (room_id) REFERENCES Room(room_id) ON DELETE CASCADE,
  FOREIGN KEY (review_id) REFERENCES Review(review_id) ON DELETE CASCADE
);
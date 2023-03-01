CREATE TABLE Bill (
  invoice_id INT(4) AUTO_INCREMENT,
  user_id char(13) NOT NULL,
  booking_id INT(4) UNIQUE NOT NULL,
  payment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  if_late_payment BOOLEAN NOT NULL DEFAULT 0,
  expire_date TIMESTAMP NOT NULL,
  discount_amount FLOAT NOT NULL DEFAULT 0,

  PRIMARY KEY(invoice_id),
  FOREIGN KEY(booking_id) REFERENCES Booking(booking_id) ON DELETE CASCADE,
  FOREIGN KEY(user_id) REFERENCES Booking(user_id) ON DELETE CASCADE
);
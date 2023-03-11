-- การจองห้องพัก
INSERT INTO Booking (booking_id, room_id, uid_card, booking_date, check_in_date, check_out_date, number_of_resident, booking_status)
VALUES 
    (0001, 1, '1010406232401', '2021-06-25 16:51:28', '2021-07-09 06:15:36', '2021-08-07 03:28:54', 2, 'Success'),
    (0002, 2, '1103406860811', '2021-04-12 11:50:41', '2021-04-21 07:34:05', '2021-05-11 14:17:13', 1, 'Failed'),
    (0003, 3, '1210336865902', '2022-02-01 14:55:34', '2022-02-15 08:16:20', '2022-03-08 13:17:59', 1, 'Success'),
    (0004, 4, '1410406860001', '2021-12-26 22:31:10', '2022-01-07 06:10:18', '2022-02-02 15:23:45', 2, 'Success'),
    (0005, 5, '6410406878000', '2021-01-06 10:11:47', '2021-01-20 03:44:20', '2021-02-17 02:48:09', 2, 'Success'),
    (0006, 6, '1010406232401', '2021-05-24 21:58:39', '2021-06-06 16:36:33', '2021-07-01 09:05:16', 1, 'Failed'),
    (0007, 7, '1103406860811', '2020-10-13 06:56:23', '2020-10-23 04:49:05', '2020-11-16 01:51:12', 2, 'Success'),
    (0008, 8, '1210336865902', '2021-02-26 03:43:58', '2021-03-10 10:53:20', '2021-04-01 09:46:39', 2, 'Success'),
    (0009, 9, '1410406860001', '2021-08-06 07:02:21', '2021-08-19 03:56:34', '2021-09-09 05:48:17', 1, 'Success'),
    (0010, 10, '6410406878000', '2020-12-18 09:43:25', '2020-12-31 23:27:23', '2021-01-28 16:54:28', 2, 'Failed');
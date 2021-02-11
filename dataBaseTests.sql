CALL `mydb`.`guests_in_hotel`(3);
CALL `mydb`.`avaliable_animals_in_location`('Krakow');
/* po prostu update*/
UPDATE Users SET name = 'Monika' WHERE user_id = 23;
/*jak usunie użytkownika to też usunie jego rezerwacje*/
DELETE FROM Users WHERE user_id = 17;
/*Sprawdza unique*/
INSERT INTO Users (login, password, email, role, phone, name, surname) VALUES ('lchurchill1', 'fdsf', 'ddjs@.pl', 'admin', 83472, 'asd', 'sasd');
/*Sprawdza trigger - email*/
INSERT INTO Users (login, password, email, role, phone, name, surname) VALUES ('lchurchill1', 'fdsf', 'ddjspl', 'admin', 83472, 'asd', 'sasd');
/*jeżeli podana lokalizacja nie istenieje to dodaje się z następującymi danymi (location_id, city, street, number, postal_code) 'tba', 'tba', 0, 0 */
INSERT INTO Hotels (location_id) VALUES (10);
/*nie doda rezerwacji jeżeli date_start > date_end*/
insert into Reservations (room_id, user_id, date_start, date_end) values (176, 20, '2022-12-18', '2020-11-09');
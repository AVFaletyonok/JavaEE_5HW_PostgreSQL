INSERT INTO clients (id, first_name, last_name, passport_number, phone_number)
             VALUES (1, 'John', 'Lennon', '1234', '+1-999-999-99-99');
INSERT INTO clients (id, first_name, last_name, passport_number, phone_number)
             VALUES (2, 'John', 'Travolta', '1234', '+1-999-999-99-99');
INSERT INTO clients (id, first_name, last_name, passport_number, phone_number)
             VALUES (3, 'Dmitriy', 'Mendeleev', '1234', '+7-999-999-99-99');
INSERT INTO clients (id, first_name, last_name, passport_number, phone_number)
             VALUES (4, 'Charles', 'Darwin', '1234', '+44-999-999-99-99');
INSERT INTO clients (id, first_name, last_name, passport_number, phone_number)
             VALUES (5, 'Leonardo', 'DaVinci', '1234', '+39-999-999-99-99');
INSERT INTO managers (id, first_name, last_name, position)
              VALUES (1, 'Anton', 'Gorodetsky', 'personal manager');
INSERT INTO managers (id, first_name, last_name, position)
              VALUES (2, 'Michael', 'Krug', 'main manager');
INSERT INTO contracts (id, id_client, id_manager) VALUES (1, 1, 1);
INSERT INTO contracts (id, id_client, id_manager) VALUES (2, 2, 1);
INSERT INTO contracts (id, id_client, id_manager) VALUES (3, 3, 2);
INSERT INTO contracts (id, id_client, id_manager) VALUES (4, 4, 1);
INSERT INTO contracts (id, id_client, id_manager) VALUES (5, 5, 2);
INSERT INTO accounts (id, id_contract, amount) VALUES (1, 1, 2000);
INSERT INTO accounts (id, id_contract, amount) VALUES (2, 2, 1000);
INSERT INTO accounts (id, id_contract, amount) VALUES (3, 3, 5000);
INSERT INTO accounts (id, id_contract, amount) VALUES (4, 4, 1000);
INSERT INTO accounts (id, id_contract, amount) VALUES (5, 5, 8000);
INSERT INTO transactions (id, id_account, amount, type) VALUES (1, 1, 400, 'income');
INSERT INTO transactions (id, id_account, amount, type) VALUES (2, 2, 250, 'outcome');
INSERT INTO transactions (id, id_account, amount, type) VALUES (3, 3, 600, 'income');
INSERT INTO transactions (id, id_account, amount, type) VALUES (4, 4, 500, 'income');
INSERT INTO transactions (id, id_account, amount, type) VALUES (5, 5, 100, 'outcome');
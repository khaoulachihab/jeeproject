/* Populate tables */
INSERT INTO clients (id, first_name, last_name, email, create_at, photo) VALUES (1, 'Emsi', 'emsiUser', 'emsi@gmail.com', '2019-10-09', '');
INSERT INTO clients (id, first_name, last_name, email, create_at, photo) VALUES (2, 'Mohammed', 'BERRADA', 'simoB@gmail.com', '2000-10-09', '');

/* Populate table products */
INSERT INTO products (id, name, price, create_at) VALUES(1, 'Panasonic LCD', 259990, NOW());
INSERT INTO products (id, name, price, create_at) VALUES(2, 'Sony Camera DSC-W320B', 1234590, NOW());
INSERT INTO products (id, name, price, create_at) VALUES(3, 'Apple iPod', 1499990, NOW());
INSERT INTO products (id, name, price, create_at) VALUES(4, 'Sony Notebook Z110', 37990, NOW());
INSERT INTO products (id, name, price, create_at) VALUES(5, 'HP F2280 MultiF', 69990, NOW());
INSERT INTO products (id, name, price, create_at) VALUES(6, 'Bike 26 BMW', 69990, NOW());
INSERT INTO products (id, name, price, create_at) VALUES(7, 'Keyboard Razer CLGv', 299990, NOW());
INSERT INTO products (id, name, price, create_at) VALUES(8, 'Mouse Razer Deathadder', 299650, NOW());

/* Invoices */
INSERT INTO invoices(id, description, observation, client_id, create_at) VALUES(1, 'Invoice office team', null, 1, NOW());
INSERT INTO items_invoices(amount, invoice_id, product_id) VALUES(1, 1, 1); 
INSERT INTO items_invoices(amount, invoice_id, product_id) VALUES(2, 1, 4); 
INSERT INTO items_invoices(amount, invoice_id, product_id) VALUES(1, 1, 5); 
INSERT INTO items_invoices(amount, invoice_id, product_id) VALUES(1, 1, 7); 

INSERT INTO invoices(id, description, observation, client_id, create_at) VALUES(2, 'Bike Invoice', 'IMPORTANT STUFF', 1, NOW());
INSERT INTO items_invoices(amount, invoice_id, product_id) VALUES(3, 2, 6); 

/* */
INSERT INTO users (id, username, password, enabled) VALUES (1, 'rodri', '$2a$10$bwhu5TxyJPuxwn6.g2bUC.8dUCV5vh9eq40RoFX4pEIDqrHlEUx3.', 1);
INSERT INTO users (id, username, password, enabled) VALUES (2, 'admin', '$2a$10$R244P6hZ4MUa9EBeAUEcne5B8Lb6mTzw5.2vzKH6S7q9u3pqrGfoW', 1);

INSERT INTO authorities (user_id, authority) VALUES ('1', 'ROLE_USER');
INSERT INTO authorities (user_id, authority) VALUES ('2', 'ROLE_ADMIN');
INSERT INTO authorities (user_id, authority) VALUES ('2', 'ROLE_USER');

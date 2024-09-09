DROP TABLE IF EXISTS phones;

CREATE TABLE phones (
    id SERIAL PRIMARY KEY,  
    name VARCHAR(255) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    amount INT NOT NULL
);
  
INSERT INTO phones (name, price, amount) VALUES 
('Iphone 12', 700, 20),
('Samsung Galaxy S21', 800, 15),
('Xiaomi Mi 11', 600, 25),
('OnePlus 9', 700, 20),
('Google Pixel 5', 700, 20),
('Sony Xperia 1 II', 700, 20),
('LG Velvet', 700, 20),
('Asus ROG Phone 5', 700, 20),
('Motorola Edge', 700, 20),
('Nokia 8.3', 700, 20);

CREATE INDEX idx_amount ON phones (amount);





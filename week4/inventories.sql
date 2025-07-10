create database inventories;

create table suppliers (
    id int primary key,
    name varchar(100) not null,
    phone varchar(255)
);

create table products (
    id int primary key,
    name varchar not null,
    category varchar(100),
    quantity int not null,
    price decimal(10, 2) not null,
    supplier_id int not null references suppliers(id)
);

insert into suppliers (id, name, phone) values
    (1, 'BestGrains Ltd', '123-456-7890'),
    (2, 'Uncle Henrys', '234-567-8901'),
    (3, 'Kellogs', '345-678-9012'),
    (4, 'Barilla', '456-789-0123'),
    (5, 'Loops&Threads', '567-890-1234'),
    (6, 'Colgate', '678-901-2345'),
    (7, 'Dove', '789-012-3456'),
    (8, 'Always', '890-123-4567');

insert into products (id, name, category, quantity, price, supplier_id) values
    (1, 'Rice', 'Food', 50, 29.99, 1),
    (2, 'Beans', 'Food', 50, 29.99, 1),
    (3, 'Eggs', 'Dairy', 100, 6.99, 2),
    (4, 'Cereal', 'Wheat&Fibres', 20, 3.99, 3),
    (5, 'Spaghetti', 'Food', 200, 1.99, 4),
    (6, 'Yarn', 'Wool', 150, 11.99, 5),
    (7, 'Toothpaste', 'Toiletries', 100, 1.50, 6),
    (8, 'Body Lotion', 'Toiletries', 160, 2.99, 7),
    (9, 'Sanitary Pads', 'Toiletries', 60, 9.99, 8);

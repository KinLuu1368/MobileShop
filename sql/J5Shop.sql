CREATE DATABASE J5Shop;
USE J5Shop;

CREATE TABLE Categories (
  id NVARCHAR(255) PRIMARY KEY,
  name NVARCHAR(255)
);

CREATE TABLE Products (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name NVARCHAR(255),
  image NVARCHAR(255),
  price FLOAT,
  Createdate DATE,
  available BIT,
  Categoryid NVARCHAR(255),
  FOREIGN KEY (Categoryid) REFERENCES Categories(id)
);

-- Thêm các bản ghi vào bảng Categories trước
INSERT INTO Categories (id, name)
VALUES
  ('Category1', 'Category 1'),
  ('Category2', 'Category 2'),
  ('Category3', 'Category 3'),
  ('Category4', 'Category 4'),
  ('Category5', 'Category 5');

-- Sau đó, thêm các bản ghi vào bảng Products
INSERT INTO Products (name, image, price, Createdate, available, Categoryid)
VALUES
  ('Product 1', 'image1.jpg', 10.99, '2024-04-01', 1, 'Category1'),
  ('Product 2', 'image2.jpg', 15.99, '2024-04-02', 1, 'Category1'),
  ('Product 3', 'image3.jpg', 20.99, '2024-04-03', 1, 'Category2'),
  ('Product 4', 'image4.jpg', 8.99, '2024-04-04', 1, 'Category2'),
  ('Product 5', 'image5.jpg', 12.99, '2024-04-05', 1, 'Category3'),
  ('Product 6', 'image6.jpg', 18.99, '2024-04-06', 1, 'Category3'),
  ('Product 7', 'image7.jpg', 14.99, '2024-04-07', 1, 'Category4'),
  ('Product 8', 'image8.jpg', 9.99, '2024-04-08', 1, 'Category4'),
  ('Product 9', 'image9.jpg', 16.99, '2024-04-09', 1, 'Category5'),
  ('Product 10', 'image10.jpg', 22.99, '2024-04-10', 1, 'Category5');

select * from Categories

CREATE TABLE Accounts (
  username NVARCHAR(255) PRIMARY KEY,
  password NVARCHAR(255),
  fullname NVARCHAR(255),
  email NVARCHAR(255),
  photo NVARCHAR(255),
  activated BIT,
  admin BIT
);

CREATE TABLE Orders (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,
  address NVARCHAR(255),
  Createdate DATE,
  Username NVARCHAR(255),
  FOREIGN KEY (Username) REFERENCES Accounts(username)
);

CREATE TABLE Orderdetails (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,
  price FLOAT,
  quantity INT,
  Productid INT,
  Orderid BIGINT,
  FOREIGN KEY (Productid) REFERENCES Products(id),
  FOREIGN KEY (Orderid) REFERENCES Orders(id)
);


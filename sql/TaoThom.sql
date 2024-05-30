drop database qlbh
-- Tạo cơ sở dữ liệu
CREATE DATABASE qlbh;
GO

-- Sử dụng cơ sở dữ liệu qlbh
USE qlbh;
GO

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

-- Thêm dữ liệu vào bảng "Account"
INSERT INTO [Accounts] (username, password, fullname, email, photo, activated, admin)
VALUES ('KienLuu', '123456', 'Kiên Lưu', 'luukien323@gmail.com',null,1,1),
       ('KienLuu1', '123456', 'Kiên Lưu', 'luukien323@gmail.com',null,1,0);
GO

--Thêm dữ liệu bảng category
INSERT INTO Categories(id, name)
VALUES
(1,'iPhone'),
(2,'iPad'),
(3,'Macbook'),
(4, 'Accessary');


-- Thêm dữ liệu vào bảng "sanpham"
INSERT INTO Products (name, image, price, Createdate, available, Categoryid)
VALUES
('iPhone 15', 'iphone/15.webp', 9200000, GETDATE(), 1, '1'),
('iPhone 13', 'iphone/13.jpeg', 15500000, GETDATE(), 1, '1'),
('iPhone 14', 'iphone/14.webp', 20000000, GETDATE(), 1, '1'),
('iPhone 14 Pro Max', 'iphone/14pm.png', 28000000, GETDATE(), 1, '1'),
('iPhone 13 Pro', 'iphone/iphone13pro.webp', 9990000, GETDATE(), 1, '1'),
('iPhone 13', 'iphone/iphone13.webp', 8990000, GETDATE(), 1, '1'),
('iPhone 12 Pro Max', 'iphone/iphone12promax.webp', 10900009, GETDATE(), 1, '1'),
('iPhone 12 Mini', 'iphone/iphone12mini.webp', 6990000, GETDATE(), 1, '1'),
('iPhone SE (2020)', 'iphone/iphonese2020.webp', 3990000, GETDATE(), 1, '1'),
('iPhone 11', 'iphone/iphone11.webp', 6990000, GETDATE(), 1, '1'),
('iPhone XR', 'iphone/iphonexr.webp', 5990000, GETDATE(), 1, '1'),
('iPhone XS', 'iphone/iphonexs.webp', 8990000, GETDATE(), 1, '1'),
('iPhone X', 'iphone/iphonex.webp', 7990000, GETDATE(), 1, '1'),
('iPhone 8 Plus', 'iphone/iphone8plus.webp', 6990000, GETDATE(), 1, '1'),
('iPad Gen 7', 'ipad/ip2.webp', 6999000, GETDATE(), 1, '2'),
('iPhone gen 9', 'ipad/ip1.jpg', 9999000, GETDATE(), 1, '2'),
('iPad Air 5', 'ipad/ip5.webp', 15000000, GETDATE(), 1, '2'),
('iPad Pro M2', 'ipad/ip6.webp', 19500000, GETDATE(), 1, '2'),
('Macbook Pro 13 M1', 'macbook/prm1.jpeg', 28000000, GETDATE(), 1, '3'),
('Macbook Pro 14 M2', 'macbook/pr14.png', 28000000, GETDATE(), 1, '3'),
('Macbook Pro 14 M2', 'macbook/pr16.jpg', 28000000, GETDATE(), 1, '3'),
('Macbook Air M1', 'macbook/arm1.png', 28000000, GETDATE(), 1, '3'),
('Macbook Air M1', 'macbook/arm1.png', 28000000, GETDATE(), 1, '3'),
(N'Sạc nhanh 20W', 'accessory/20w.jpg', 500000, GETDATE(), 1, '4'),
('AirPod 2', 'accessory/airpod.jpg', 2500000, GETDATE(), 1, '4'),
(N'Cổng chuyển cho Macbook', 'accessory/hub.webp', 2800000, GETDATE(), 1, '4'),
('Apple Pencil for iPad', 'accessory/pencil.jpg', 6000000, GETDATE(), 1, '4');


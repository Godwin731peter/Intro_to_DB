CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

--creating books table
CREATE TABLE Books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(130) NOT NULL,
  author_id INT,
  price DOUBLE NOT NULL,
  publication_date DATE,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Author (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(215) NOT NULL,
  email VARCHAR(215) UNIQUE OT NULL,
  address TEXT NOT NULL
);

CREATE TABLE Orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATE NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Order_Details (
  orderdetail_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  book_id INT,
  quantity DOUBLE NOT NULL,
  FOREIGN KEY (order_id) REFERENCES Orders(customer_id),
  FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
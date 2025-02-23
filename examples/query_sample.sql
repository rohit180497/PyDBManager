Use TestDB;

CREATE TABLE users (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    email NVARCHAR(100) UNIQUE NOT NULL,
    age INT,
    gender NVARCHAR(10),
    phone_number NVARCHAR(15),
    address NVARCHAR(255),
    city NVARCHAR(50),
    country NVARCHAR(50),
    created_at DATETIME DEFAULT GETDATE()
);


INSERT INTO users (name, email, age, gender, phone_number, address, city, country) 
VALUES 
('Alice Johnson', 'alice@example.com', 28, 'Female', '123-456-7890', '123 Maple Street', 'New York', 'USA'),
('Bob Smith', 'bob@example.com', 35, 'Male', '987-654-3210', '456 Oak Avenue', 'Los Angeles', 'USA'),
('Charlie Brown', 'charlie@example.com', 40, 'Male', '555-555-5555', '789 Pine Road', 'Chicago', 'USA'),
('David Miller', 'david.miller@example.com', 29, 'Male', '222-333-4444', '321 Birch Lane', 'Houston', 'USA'),
('Emma Wilson', 'emma.wilson@example.com', 32, 'Female', '444-555-6666', '654 Cedar Street', 'Phoenix', 'USA'),
('Frank Thomas', 'frank.thomas@example.com', 38, 'Male', '777-888-9999', '987 Redwood Blvd', 'Seattle', 'USA'),
('Grace Lee', 'grace.lee@example.com', 26, 'Female', '111-222-3333', '741 Spruce Drive', 'San Francisco', 'USA'),
('Henry Walker', 'henry.walker@example.com', 45, 'Male', '666-777-8888', '852 Elm Street', 'Miami', 'USA'),
('Isabella Adams', 'isabella.adams@example.com', 30, 'Female', '999-000-1111', '963 Willow Lane', 'Dallas', 'USA'),
('Jack Robinson', 'jack.robinson@example.com', 27, 'Male', '333-444-5555', '147 Palm Court', 'Denver', 'USA'),
('Katherine Young', 'katherine.young@example.com', 34, 'Female', '888-999-0000', '258 Magnolia Road', 'Boston', 'USA'),
('Liam Harris', 'liam.harris@example.com', 31, 'Male', '111-999-2222', '369 Aspen Avenue', 'Atlanta', 'USA'),
('Mia Anderson', 'mia.anderson@example.com', 29, 'Female', '555-666-7777', '753 Chestnut Blvd', 'Washington', 'USA'),
('Nathan White', 'nathan.white@example.com', 42, 'Male', '777-555-4444', '159 Juniper Lane', 'Detroit', 'USA'),
('Olivia Scott', 'olivia.scott@example.com', 25, 'Female', '222-111-3333', '357 Sycamore Street', 'Austin', 'USA');


select * from users
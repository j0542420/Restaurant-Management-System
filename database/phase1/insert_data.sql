-- Insert sample roles (Admin, Manager, Staff)
INSERT INTO Roles (RoleID, RoleName)
VALUES
  (1, 'Admin'),
  (2, 'Manager'),
  (3, 'Staff');

-- Insert sample users (using RoleID 1, 2, 3)
INSERT INTO Users (UserID, FirstName, LastName, Email, PhoneNumber, RoleID)
VALUES
  (1, 'John', 'Doe', 'johndoe@email.com', '555-1234', 1),
  (2, 'Jane', 'Smith', 'janesmith@email.com', '555-2345', 2),
  (3, 'Alice', 'Johnson', 'alicej@email.com', '555-3456', 3),
  (4, 'Bob', 'Brown', 'bobbrown@email.com', '555-4567', 3),
  (5, 'Charlie', 'Davis', 'charliedavis@email.com', '555-5678', 2),
  (6, 'Eve', 'Wilson', 'evewilson@email.com', '555-6789', 3),
  (7, 'Frank', 'Moore', 'frankmoore@email.com', '555-7890', 1),
  (8, 'Grace', 'Taylor', 'gracetaylor@email.com', '555-8901', 3),
  (9, 'Hank', 'Anderson', 'hankanderson@email.com', '555-9012', 3),
  (10, 'Ivy', 'Thomas', 'ivythomas@email.com', '555-0123', 3);

-- Insert sample menu items
INSERT INTO MenuItems (ItemID, ItemName, Category, Price, Description)
VALUES
  (1, 'Burger', 'Main Course', 8.99, 'Juicy beef burger with lettuce, tomato, and cheese'),
  (2, 'Pizza', 'Main Course', 12.99, 'Cheese pizza with a crispy crust'),
  (3, 'Pasta', 'Main Course', 10.99, 'Penne pasta with marinara sauce'),
  (4, 'Caesar Salad', 'Appetizer', 5.99, 'Crispy romaine lettuce with Caesar dressing'),
  (5, 'Soup', 'Appetizer', 4.99, 'Tomato soup with a touch of basil'),
  (6, 'Steak', 'Main Course', 18.99, 'Grilled to perfection with sides of mashed potatoes'),
  (7, 'Fries', 'Side', 2.99, 'Crispy golden fries'),
  (8, 'Ice Cream', 'Dessert', 3.99, 'Vanilla ice cream with chocolate syrup'),
  (9, 'Coffee', 'Beverage', 2.49, 'Hot brewed coffee'),
  (10, 'Lemonade', 'Beverage', 2.99, 'Freshly squeezed lemonade');

-- Insert sample tables
INSERT INTO Tables (TableID, TableNumber, Status, Capacity)
VALUES
  (1, 'T1', 'Available', 4),
  (2, 'T2', 'Occupied', 2),
  (3, 'T3', 'Available', 6),
  (4, 'T4', 'Occupied', 4),
  (5, 'T5', 'Available', 8),
  (6, 'T6', 'Occupied', 4),
  (7, 'T7', 'Available', 2),
  (8, 'T8', 'Occupied', 6),
  (9, 'T9', 'Available', 2),
  (10, 'T10', 'Occupied', 4);

-- Insert sample customers
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, PhoneNumber)
VALUES
  (1, 'Michael', 'Jordan', 'michaeljordan@email.com', '555-2222'),
  (2, 'LeBron', 'James', 'lebronjames@email.com', '555-3333'),
  (3, 'Kobe', 'Bryant', 'kobebryant@email.com', '555-4444'),
  (4, 'Stephen', 'Curry', 'stephencurry@email.com', '555-5555'),
  (5, 'Kevin', 'Durant', 'kevindurant@email.com', '555-6666'),
  (6, 'Giannis', 'Antetokounmpo', 'giannis@email.com', '555-7777'),
  (7, 'Luka', 'Doncic', 'lukadoncic@email.com', '555-8888'),
  (8, 'James', 'Harden', 'jamesharden@email.com', '555-9999'),
  (9, 'Damian', 'Lillard', 'damianlillard@email.com', '555-0000'),
  (10, 'Paul', 'George', 'paulgeorge@email.com', '555-1111');

-- Insert sample reservations
INSERT INTO Reservations (ReservationID, TableID, CustomerID, ReservationTime)
VALUES
  (1, 1, 1, '2025-04-21 12:00:00'),
  (2, 2, 2, '2025-04-21 13:00:00'),
  (3, 3, 3, '2025-04-21 14:00:00'),
  (4, 4, 4, '2025-04-21 15:00:00'),
  (5, 5, 5, '2025-04-21 16:00:00'),
  (6, 6, 6, '2025-04-21 17:00:00'),
  (7, 7, 7, '2025-04-21 18:00:00'),
  (8, 8, 8, '2025-04-21 19:00:00'),
  (9, 9, 9, '2025-04-21 20:00:00'),
  (10, 10, 10, '2025-04-21 21:00:00');

-- Insert sample staff
INSERT INTO Staff (StaffID, UserID, RoleID, Position, HireDate)
VALUES
  (1, 1, 1, 'Manager', '2025-04-01'),
  (2, 2, 2, 'Waiter', '2025-04-02'),
  (3, 3, 3, 'Chef', '2025-04-03'),
  (4, 4, 1, 'Cashier', '2025-04-04'),
  (5, 5, 2, 'Host', '2025-04-05'),
  (6, 6, 3, 'Server', '2025-04-06'),
  (7, 7, 1, 'Bartender', '2025-04-07'),
  (8, 8, 2, 'Manager', '2025-04-08'),
  (9, 9, 3, 'Dishwasher', '2025-04-09'),
  (10, 10, 1, 'Security', '2025-04-10');

-- Insert sample Orders
INSERT INTO Orders (OrderID, UserID, TableID, OrderDate)
VALUES
  (1, 1,  5, '2025-03-10 09:25:00'),
  (2, 3,  2, '2025-03-12 14:50:00'),
  (3, 2,  7, '2025-03-15 19:05:00'),
  (4, 4,  1, '2025-03-18 11:30:00'),
  (5, 1, 10, '2025-03-20 17:45:00'),
  (6, 3,  4, '2025-03-22 12:15:00'),
  (7, 2,  9, '2025-03-25 20:30:00'),
  (8, 4,  3, '2025-04-01 16:05:00'),
  (9, 1,  6, '2025-04-05 13:55:00'),
  (10,3,  8, '2025-04-10 18:25:00');

-- Insert sample OrderDetails
INSERT INTO OrderDetails (DetailID, OrderID, ItemID, Quantity)
VALUES
  (1,  1, 1, 1),
  (2,  1, 4, 2),
  (3,  2, 2, 1),
  (4,  2, 5, 3),
  (5,  3, 3, 2),
  (6,  3, 6, 1),
  (7,  4, 7, 1),
  (8,  5, 8, 1),
  (9,  6, 9, 2),
  (10, 7,10, 1);

  -- Insert sample bills
INSERT INTO Bills (BillID, OrderID, Total, BillDate, PaymentType, CustomerID)
VALUES
  (1, 1, 34.50, '2025-04-21 12:30:00', 'Credit Card', 1),
  (2, 2, 45.00, '2025-04-21 13:30:00', 'Cash', 2),
  (3, 3, 22.75, '2025-04-21 14:30:00', 'Credit Card', 3),
  (4, 4, 28.50, '2025-04-21 15:30:00', 'Cash', 4),
  (5, 5, 50.00, '2025-04-21 16:30:00', 'Debit Card', 5),
  (6, 6, 38.00, '2025-04-21 17:30:00', 'Cash', 6),
  (7, 7, 42.25, '2025-04-21 18:30:00', 'Credit Card', 7),
  (8, 8, 39.00, '2025-04-21 19:30:00', 'Cash', 8),
  (9, 9, 29.99, '2025-04-21 20:30:00', 'Credit Card', 9),
  (10, 10, 31.50, '2025-04-21 21:30:00', 'Cash', 10);
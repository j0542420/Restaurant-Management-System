-- Using the Restaurant_Management_System DataBase
use Restaurant_Management_System;

-- Creating stored procedures for AddMenuItem
GO
Create Procedure AddMenuItem
@ItemName NVARCHAR(100),
@Category NVARCHAR(50),
@Price Decimal(10,2),
@Description TEXT
AS
BEGIN
	INSERT INTO MenuItems (ItemName, Category, Price, description)
	VALUES (@ItemName, @Category, @Price, @Description);
END

-- Creating stored procedures for EditMenuItem
GO
Create Procedure EditMenuItem
@ItemID int,
@ItemName NVARCHAR(100),
@Category NVARCHAR(50),
@Price Decimal(10,2),
@Description TEXT
AS
BEGIN
	UPDATE MenuItems
	SET ItemName = @ItemName,
		Category = @Category,
		Price = @Price,
		Description = @Description
	WHERE ItemID = @ItemID;
END

-- Creating stored procedures for DeleteMenuItem
GO
Create Procedure DeleteMenuItem
@ItemID int
AS
BEGIN
	DELETE FROM MenuItems
	WHERE ItemID = @ItemID;
END

-- Creating stored procedures for CreateOrder
GO
Create Procedure CreateOrder
@UserID int,
@TableID int,
@OrderDate DateTime
AS
BEGIN
	INSERT INTO Orders (UserID, TableID, OrderDate)
	VALUES (@UserID, @TableID, @OrderDate);
END

-- Creating stored procedures for UpdateOrder
GO
Create Procedure UpdateOrder
@OrderID int,
@TableID int,
@OrderDate DateTime
AS
BEGIN
	UPDATE Orders
	SET TableID = @TableID,
		OrderDate = @OrderDate
	WHERE OrderID = @OrderID;
END

-- Creating stored procedures for GenerateBill
GO
Create Procedure GenerateBill
@OrderID int,
@CustomerID int,
@PaymentType VARCHAR(50)
AS
BEGIN
	DECLARE @Total DECIMAL(10,2)

	SELECT @Total = SUM(M.Price * D.Quantity)
	FROM OrderDetails D
	INNER JOIN MenuItems M ON D.ItemID = M.ItemID
	WHERE D.OrderID = @OrderID

	INSERT INTO Bills (OrderID, Total,BillDate, PaymentType, CustomerID)
	VALUES(@OrderID, @Total,GETDATE(), @PaymentType, @CustomerID);
END

-- Creating stored procedures for UpdateEmployeeRole
GO
Create Procedure UpdateEmployeeRole
@UserID int,
@RoleID int
AS
BEGIN
	UPDATE Users
	SET RoleID = @RoleID
	WHERE UserID = @UserID;
END

-- creating a procedure to get history for a specific date or table
GO
Create Procedure GetOrderHistory
@OrderDate DATE,
@TableID int
AS
BEGIN
	SELECT 
		O.OrderID,
		O.UserID,
		O.TableID,
		O.OrderDate,
		U.FirstName + ' ' + U.LastName AS StaffName
	FROM Orders O
	INNER JOIN Users U ON O.UserID = U.UserID
	INNER JOIN Tables T ON O.TableID = T.TableID
	WHERE CAST(O.OrderDate AS DATE)= @OrderDate
		AND O.TableID = @TableID;
END

-- creating a procedure to Retrieve staff activity logs or assignments
GO
Create Procedure GetStaffActivity
@UserID int
AS
BEGIN
	SELECT 
		U.FirstName,
		U.LastName,
		O.OrderID,
		O.OrderDate,
		T.TableNumber
	FROM Users U
	INNER JOIN Orders O ON O.UserID = U.UserID
	INNER JOIN Tables T ON O.TableID = T.TableID
	WHERE U.UserID = @UserID;
END
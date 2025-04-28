-- Using the Restaurant_Management_System DataBase
use Restaurant_Management_System;

-- Creating 3 user Roles
CREATE ROLE db_Admin;
CREATE ROLE db_Manager;
CREATE ROLE db_Staff;

-- granting role - based access control to Admin
GRANT SELECT,INSERT,UPDATE,DELETE ON Users To db_Admin;
GRANT SELECT,INSERT,UPDATE,DELETE ON MenuItems To db_Admin;
GRANT SELECT,INSERT,UPDATE,DELETE ON Orders To db_Admin;
GRANT SELECT,INSERT,UPDATE,DELETE ON Bills To db_Admin;

-- granting role - based access control to Manager
GRANT SELECT, INSERT ON Orders TO db_Manager;
GRANT SELECT, INSERT ON Reservations TO db_Manager;
GRANT SELECT, INSERT ON Bills TO db_Manager;

-- granting role - based access control to Staff
GRANT SELECT ON MenuItems TO db_Staff;
GRANT SELECT ON Tables TO db_Staff;
GRANT SELECT, INSERT ON Reservations TO db_Staff;

-- Granting Roles to Users
-- Admins
ALTER ROLE db_Admin ADD MEMBER JohnDoe;
ALTER ROLE db_Admin ADD MEMBER FrankMoore;

-- Managers
ALTER ROLE db_Manager ADD MEMBER JaneSmith;
ALTER ROLE db_Manager ADD MEMBER CharlieDavis;

-- Staff
ALTER ROLE db_Staff ADD MEMBER AliceJohnson;
ALTER ROLE db_Staff ADD MEMBER BobBrown;
ALTER ROLE db_Staff ADD MEMBER EveWilson;
ALTER ROLE db_Staff ADD MEMBER GraceTaylor;
ALTER ROLE db_Staff ADD MEMBER HankAnderson;
ALTER ROLE db_Staff ADD MEMBER IvyThomas;

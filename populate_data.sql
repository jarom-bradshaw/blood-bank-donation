
-- Insert sample data into Donors
INSERT INTO Donors (FirstName, LastName, DateOfBirth, BloodType, PhoneNumber, Email, Address, City, State, ZipCode, LastDonationDate) VALUES 
('John', 'Doe', '1990-01-01', 'O+', '123-456-7890', 'john.doe@example.com', '123 Main St', 'CityName', 'StateName', '12345', '2023-01-15');

-- Insert sample data into Donations
INSERT INTO Donations (DonorID, DonationDate, BloodType, VolumeInML) VALUES 
(1, '2023-01-15', 'O+', 500);

-- Insert sample data into BloodInventory
INSERT INTO BloodInventory (BloodType, VolumeInML, ExpirationDate) VALUES 
('O+', 500, '2023-02-15');

-- Insert sample data into Centers
INSERT INTO Centers (CenterName, Address, City, State, ZipCode, PhoneNumber, Email) VALUES 
('Downtown Blood Center', '456 Center St', 'CityName', 'StateName', '12345', '987-654-3210', 'contact@bloodcenter.org');

-- Insert sample data into Events
INSERT INTO Events (CenterID, EventName, EventDate) VALUES 
(1, 'Blood Donation Drive', '2023-02-20');

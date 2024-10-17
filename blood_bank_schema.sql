-- Create the Donors table
CREATE TABLE Donors (
    DonorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    BloodType CHAR(3) NOT NULL,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    LastDonationDate DATE
);

-- Create the Donations table
CREATE TABLE Donations (
    DonationID INT PRIMARY KEY AUTO_INCREMENT,
    DonorID INT,
    DonationDate DATE NOT NULL,
    BloodType CHAR(3) NOT NULL,
    VolumeInML INT NOT NULL,
    FOREIGN KEY (DonorID) REFERENCES Donors(DonorID)
);

-- Create the BloodInventory table
CREATE TABLE BloodInventory (
    InventoryID INT PRIMARY KEY AUTO_INCREMENT,
    BloodType CHAR(3) NOT NULL,
    VolumeInML INT NOT NULL,
    ExpirationDate DATE NOT NULL
);

-- Create the Centers table
CREATE TABLE Centers (
    CenterID INT PRIMARY KEY AUTO_INCREMENT,
    CenterName VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

-- Create the Events table
CREATE TABLE Events (
    EventID INT PRIMARY KEY AUTO_INCREMENT,
    CenterID INT,
    EventName VARCHAR(100),
    EventDate DATE,
    FOREIGN KEY (CenterID) REFERENCES Centers(CenterID)
);


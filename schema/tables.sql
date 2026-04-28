CREATE TABLE PolicyTypes (
    PolicyTypeID SERIAL PRIMARY KEY,
    PolicyTypeName VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    DateOfBirth DATE,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Policies (
    PolicyID SERIAL PRIMARY KEY,
    CustomerID INT NOT NULL,
    PolicyTypeID INT NOT NULL,
    PolicyNumber VARCHAR(50) NOT NULL UNIQUE,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    PremiumAmount DECIMAL(10,2) NOT NULL,
    Status VARCHAR(20) DEFAULT 'Active',

    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (PolicyTypeID) REFERENCES PolicyTypes(PolicyTypeID)
);


CREATE TABLE Claims (
    ClaimID SERIAL PRIMARY KEY,
    PolicyID INT NOT NULL,
    ClaimDate DATE NOT NULL,
    ClaimAmount DECIMAL(12,2) NOT NULL,
    ClaimStatus VARCHAR(20) DEFAULT 'Pending',
    ClaimDescription TEXT,

    FOREIGN KEY (PolicyID) REFERENCES Policies(PolicyID)
);

-- 按照构想, Claims 通过 PolicyID 连接到 Policies，再通过 Policies 的 CustomerID 找到 Customers。

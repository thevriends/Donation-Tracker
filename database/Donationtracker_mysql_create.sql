CREATE TABLE `Users` (
	`UserID` INT NOT NULL AUTO_INCREMENT,
	`Username` varchar(80) NOT NULL AUTO_INCREMENT UNIQUE,
	`Password` varchar(255) NOT NULL,
	`Lastlogin` TIMESTAMP NOT NULL,
	`Usertype` varchar(12) NOT NULL,
	`Active` BOOLEAN,
	`Church` INT NOT NULL,
	PRIMARY KEY (`UserID`)
);

CREATE TABLE `Church` (
	`ChurchID` INT NOT NULL AUTO_INCREMENT,
	`Name` varchar(255) NOT NULL UNIQUE,
	`Address` varchar(255) NOT NULL,
	`Creator` varchar(80),
	`Active` BOOLEAN,
	PRIMARY KEY (`ChurchID`)
);

CREATE TABLE `Donor` (
	`DonorID` INT NOT NULL AUTO_INCREMENT,
	`DonorNumber` varchar(255) NOT NULL,
	`Name` varchar(80) NOT NULL,
	`Address` varchar(120) NOT NULL,
	`Phone` varchar(12),
	`Email` varchar(50),
	`Church` INT NOT NULL,
	`Active` BOOLEAN,
	PRIMARY KEY (`DonorID`)
);

CREATE TABLE `Charity` (
	`CharityID` INT NOT NULL AUTO_INCREMENT,
	`Charitynumber` varchar(255) NOT NULL UNIQUE,
	`Charityname` varchar(255) NOT NULL,
	`Address` varchar(255) NOT NULL,
	`Phone` varchar(12) NOT NULL,
	`Email` varchar(50) NOT NULL,
	`Church` INT NOT NULL,
	`Active` BOOLEAN,
	PRIMARY KEY (`CharityID`)
);

CREATE TABLE `Category` (
	`CategoryID` INT NOT NULL AUTO_INCREMENT,
	`Charity` INT NOT NULL AUTO_INCREMENT,
	`Description` TEXT,
	PRIMARY KEY (`CategoryID`)
);

CREATE TABLE `Donation` (
	`DonationID` INT NOT NULL AUTO_INCREMENT,
	`Donator` INT NOT NULL,
	`Target` INT NOT NULL,
	`Value` INT NOT NULL,
	`Datedonated` TIMESTAMP NOT NULL,
	PRIMARY KEY (`DonationID`)
);

ALTER TABLE `Users` ADD CONSTRAINT `Users_fk0` FOREIGN KEY (`Church`) REFERENCES `Church`(`ChurchID`);

ALTER TABLE `Donor` ADD CONSTRAINT `Donor_fk0` FOREIGN KEY (`Church`) REFERENCES `Church`(`ChurchID`);

ALTER TABLE `Charity` ADD CONSTRAINT `Charity_fk0` FOREIGN KEY (`Church`) REFERENCES `Church`(`ChurchID`);

ALTER TABLE `Category` ADD CONSTRAINT `Category_fk0` FOREIGN KEY (`Charity`) REFERENCES `Charity`(`CharityID`);

ALTER TABLE `Donation` ADD CONSTRAINT `Donation_fk0` FOREIGN KEY (`Donator`) REFERENCES `Donor`(`DonorID`);

ALTER TABLE `Donation` ADD CONSTRAINT `Donation_fk1` FOREIGN KEY (`Target`) REFERENCES `Category`(`CategoryID`);


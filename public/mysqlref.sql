CREATE DATABASE InventoryMgmtRIT;
USE InventoryMgmtRIT;

CREATE TABLE `teacher` (
	`teacherId` INT NOT NULL,
	`teacherName` VARCHAR(100),
	`currentStatus` VARCHAR(100) DEFAULT 'working',
	PRIMARY KEY (`teacherId`)
);
CREATE TABLE `stockDetails` (
	`itemId` INT NOT NULL,
	`itemName` VARCHAR(100),
	`presentCount` INT DEFAULT NULL,
	PRIMARY KEY (`itemId`)
);
CREATE TABLE `resourceUtilisationLog` (
	`requestId` INT NOT NULL,
	`teacherId` INT,
	`itemId` INT,
	`dateOfIssue` DATE,
	`quantity` INT,
    FOREIGN KEY(teacherId) REFERENCES teacher(teacherId),
    FOREIGN KEY(itemId) REFERENCES stockDetails(itemId)
);
CREATE TABLE `sudoUsers` (
	`username` VARCHAR(30) UNIQUE,
	`password` VARCHAR(30)
);
INSERT into sudoUsers values('admin','1234');



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
    FOREIGN KEY(teacherId) REFERENCES teacher(teacherId),
    FOREIGN KEY(itemId) REFERENCES stockDetails(itemId)
);

insert into teacher values(10000, 'Sreerag', 'working');
insert into teacher values(10001, 'Mohanlal', 'retired');
insert into teacher values(10002, 'Dileep', 'working');
insert into teacher values(10003, 'Ikka', 'retired');

insert into stockDetails values(50000, 'Chalk', 4);
insert into stockDetails values(50001, 'Duster', 5);
insert into stockDetails values(50002, 'Pen', 6);
insert into stockDetails values(50003, 'Pencil', 14);

DROP DATABASE InventoryMgmtRIT;

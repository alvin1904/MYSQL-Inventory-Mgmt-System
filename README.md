# Inventory Management System

This is a simple GUI desktop application that can be used in institutions and office spaces to maintain and effectively
keep track of resource utilisation by the employees of the company.


This project was made as a part of the `KTU Database Management Systems Lab - (CSL333)` project.


Contributors:<br>
  `Alvin Varghese`<br>
  `Anson Anthrayose Thomas`<br>
  `Sreerag M`<br>
  `Vignesh R Pillai`<br>
  (RIT, Kottayam)<br>

## Installation

To run this project make sure you have the following tools installed and configured :

* [JDK 19](https://www.oracle.com/in/java/technologies/downloads/)  
* [Mysql](https://www.mysql.com/downloads/) 

1. Download the project zip file from 
```bash
https://github.com/alvin1904/MYSQL-Inventory-Mgmt-System
```
2. Extract the zip.

3. Setup database and tables
```sql
  mysql -u root -p 
  password # Password must be 'password'
```
```sql
  CREATE DATABASE InventoryMgmtRIT;
  USE InventoryMgmtRIT;
  source <path to the dump.sql file>; 
        # Provide the full path to the dump.sql. It is in the public dir.
```
This loads the database and tables used.

```bash
  cd dist/
  java -jar InventoryMngmt.jar 
```
This runs the jar file.

    
## Tech Stack

**Frontend:** Java (using NetBeans IDE)

**Backend:** MySQL Community Server


## Using the app
[InventorMgmtRIT.webm](https://user-images.githubusercontent.com/83529451/209429471-e8ef13f8-e6ad-4253-b092-fcdbfdc16c54.webm)


## Tools used

 - [MYSQL Community Server](https://dev.mysql.com/downloads/mysql/)
 - [Apache NetBeans](https://netbeans.apache.org/download/nb16/)
 - [JDK for Java 19](https://www.oracle.com/in/java/technologies/downloads/)
 - [Java Connector Driver](https://dev.mysql.com/downloads/connector/j/)


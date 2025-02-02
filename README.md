README
Installation of Tomcat Server version 10.1
ECLIPSE IDE
Required Mysql Connector JAR File
My sql Setup WorkBench or CLI
Configure Tomcat in eclipse or netBeans with Dynamic Webb Project
Place the JSP files in webapps
Place the css file
Create database unthinkabletaskdb
Create tables recipes
CREATE TABLE recipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    ingredients TEXT NOT NULL,
    dietary_restriction ENUM('Vegetarian', 'Non-Vegetarian') NOT NULL,
    difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL,
    cooking_time INT NOT NULL,
    calories INT NOT NULL,
    protein INT NOT NULL,
    fat INT NOT NULL,
    carbs INT NOT NULL,
    instructions TEXT NOT NULL
);
and table for feedback which stores user feedback with Autoincrement it need to be developed further.

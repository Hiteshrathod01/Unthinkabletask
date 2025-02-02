README <br/>
Installation of Tomcat Server version 10.1<br/>
ECLIPSE IDE<br/>
Required Mysql Connector JAR File<br/>
My sql Setup WorkBench or CLI<br/>
Configure Tomcat in eclipse or netBeans with Dynamic Webb Project<br/>
Place the JSP files in webapps<br/>
Place the css file<br/>
Create database unthinkabletaskdb<br/>
Create tables recipes<br/>
CREATE TABLE recipes ( <br/>
    id INT AUTO_INCREMENT PRIMARY KEY,<br/>
    name VARCHAR(255) NOT NULL,<br/>
    ingredients TEXT NOT NULL,<br/>
    dietary_restriction ENUM('Vegetarian', 'Non-Vegetarian') NOT NULL,<br/>
    difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL,<br/>
    cooking_time INT NOT NULL,<br/>
    calories INT NOT NULL,<br/>
    protein INT NOT NULL,<br/>
    fat INT NOT NULL,<br/>
    carbs INT NOT NULL,<br/>
    instructions TEXT NOT NULL<br/>
);<br/>
and table for feedback which stores user feedback with Autoincrement it need to be developed further.<br/>

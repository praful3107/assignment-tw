//Dockerfile.app
This Dockerfile assumes that the wiki application has the following files in the same directory:

* index.php: the main PHP script that defines the routes and logic of the mediawiki application.
* mysql database file that stores the wiki pages and their content

//Dockerfile.mydb

* This will create a container named mysql-wiki and expose the port 3306 to the host machine.
* It will also mount the init.sql file to the container and execute it when the database is initialized.

# fraternity_dbproject

# PHP Login & Registration System

A simple PHP-based user login and registration system using MySQL.  
Users can register, login, and logout securely with password hashing.

---

## Project Structure

fraternity_dbproject/
│
├── database/
│ └── fraternity_db.sql # SQL file to create and populate the database
│
├── includes/
│ └── db.php # Database connection script
│
├── homepage.php # Main page after login for users
├── admin_page.php Main page after login for admin
├── user_page.php # User inputs information
├── login_register.php # Login & register form and authentication
├── logout.php # Logs out user and destroys session


├── README.md # This file

## Setup Instructions
Import the Database
Open phpMyAdmin (usually at http://localhost/phpmyadmin).

Create a new database named:
fraternity_db

Select the new database, go to the Import tab.

Upload the file database/fraternity_db

Click Go to import the tables and schema.

XAMPP
place the project folder inside htdocs:
Example: C:\xampp\htdocs\login_register_project

Start Apache and MySQL servers.

Open your browser and go to:

http://localhost/login_register/
Register a new user account.

Then login at:
http://localhost/login_register/

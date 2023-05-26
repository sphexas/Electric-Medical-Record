# Electric-Medical-Record
In this project we are using PHP to create website, and SQL database to read and save the profile frome patients and doctors.

In the demo, we're using python to build a GUI program that asking patients about their information. Named Disease case entry system.
At Disease case entry system(DCES),The system will ask the patient to fill in the name, gender, age, and symptoms. Among them, select male or female for gender, and the symptoms text box provides a large text box for patients to fill in information. Finally fill it out and press the submit button

For the next step, we're going to create the database to set the program. At first, we trying to use python to connect the database. But we find out that the function is not simple to control and people don't know much about code cannot edit the program and profile. Finally, we change to using HTML, based on PHP to connect the database. On the one hand, it's more easy to build system; on the other hand, not only programmer, but also user can easily edit the system through to the web server.

So, for the futher support, we're going to use php to build system, and SQL, Apache to build the database. Then connect each other. After that, our system can easily to edit on web(localwebsite).

![online-health-care-system-in-php-with-full-source-code_0](https://github.com/sphexas/Electric-Medical-Record/assets/37029200/cefb166a-e8f6-4511-8a8e-7290ad500adc)


This Online Health Care is a system that is made up of PHP, CSS, JavaScript, and MYSQL for the database. The main purpose of this Online Health Care system is to help improve and optimize all the processes within the institution. This Online Health Care system has two sides, an admin and a user.

With today's advances in technology, it is also important for healthcare systems to automate all processes, which will help improve customer service and reduce wait times. For the processing of a large amount of data information, it is difficult to process and provide it within the necessary time if only relying on manpower. In the stab online system, users must register an account to use it. The system provides online appointment, query hospital address and doctor name. The user also has the ability to see on the Home page different doctors assigned in the hospital along with their professions.

Admin Side

Manage Multi-Language
Display All Users
Manage Doctors
Manage Request
Manage Appointments
Login and Logout
Doctors Side

Manage Profile
Manage Schedule
Manage Consulting Hour
Manage Appointments
View Notification
Manage Messages
Client-Side

Manage Profile
Suggest Doctors
Manage Appointments
Manage Consultation
Notification
Login and Logout

To set up the Online Health Care System in PHP with full source code
We need to install XAMPP to start the Apache, and MYSQL service.
Once we have those files and services. We need to link to PHPMyAdmin service on website. On the PHPMyAdmin we can see the what database we have. Then add the SQL database we have in the folder, based on the new database we create. With new name. Once our database is add successfully, we can see and edit our database.
Now we can login our website. Because we build on localhost service. we just need to open '[localhost/healthcare](http://localhost/healthcare/)', then we can use the EHR system!!!

For the Administrator account and user account
We create two sides, one is admin account. This account can view and edit all account this system have.
Accessing admin accounts
Username: admin@gmail.com
Password: admin

And in user account, we have Doctor account, and User account. Doctor account can view and edit their appointments. Doctors have permission to delete and edit appointments, and also have permission to edit entered cases.
Accessing Doctor Accounts:
Username: janobe@gmail.com
Password: janobe
Or Register

In the user account, In addition to the functions mentioned before, they can also view the contact list of the admin, so the user can send a message directly to them if they have any questions. 
Accessing Clients Accounts:
Username: jan@gmail.com
Password: janobe
Or Register

PS: The account they have in the system is the testing account. people can register their own account as well.
The full source codes are in the Healthcare folder. outside source code are Alpha demo.

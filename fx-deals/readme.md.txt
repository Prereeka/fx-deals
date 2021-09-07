FX Deals:
Bloomberg to analyze FX deals

Suppose you are part of a scrum team developing data warehouse for Bloomberg to analyze FX deals. One of customer stories is to accept deals details from and persist them into DB.

//Tools and Texhnologies:
Java, Maven, Spring MVC, Hibernate, MySQl are used to build this application.

//Steps to run the project: 
1. Download project from git hub.
2. Import project to Eclipse IDE.
3. Create MySQL Schema fx-deal and create tables named as deal and iso_currency_code as included in sql_scripts.sql file.
4. First insert all ISO currency codes into the iso_currency_code table as listed in sql_scripts.sql file.
5. Run the project.
6. After the project is run, open http://localhost:8080/CIS/ which will show home page from which you can save deal details successfully.
7. Run MySQL query on MySQL Workbench to check whether detail is stored in database or not.
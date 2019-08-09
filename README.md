# emr-project
FS1030 - Electronic Medical Record Project

## EMR Database Notes:
* 11 tables
* 12 views - views will be easier to query. We can write all the joins here so we do not need to code it in the middleware
* 20 Radiology images -  play with showing images
* 100 patients
* 4 care providers

## EMR Database still in progress:
* Implement users table
* Implement permissions table i.e. edit access

## Create and restore database:
1. Create Database by opening the terminal<br><br>
`mysqladmin -u root -p create emr`<br><br>
2. Restore the backup to the newly created database. Give the path where the dump exists<br><br>
`mysql -u root -p emr < ~/emr/db/emr_db.sql`

## Entity Relationship Diagram:
![](/db/emr_er_diagram.png)
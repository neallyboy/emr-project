# emr-project
FS1030 - Electronic Medical Record Project

## EMR Database Notes:
* 11 tables
* 12 views - views will be easier to query. We can write all the joins here so we do not need to code it in the middleware
* 20 Radiology images -  play with showing images
* 100 patients
* 4 care providers

## Create and restore database:
1. Create Database by opening the terminal<br><br>
`mysqladmin -u root -p create emr`<br><br>
2. Restore the backup to the newly created database. Give the path where the dump exists<br><br>
`mysql -u root -p emr < ~/emr/db/emr_db.sql`

## Default users
```
-- User 1
Username: Admin
Password: 1234

-- User 2
Username: fs1030
Password: 1234
```

## Entity Relationship Diagram:
![](/emr_db/emr_er_diagram.png)


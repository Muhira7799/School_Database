# SchoolDB Project - Database Administration

##  Description
SchoolDB is a database project for managing students, courses, and enrollments with constraints like age > 15, grade A-F.

##  Tools Used
- SQL Server
- SSMS

##  Screenshots

### Database & Tables
![Database Check](screenshots/01_database_check.png)
![Students Table](screenshots/02_students_table.png)

### Insert Data
![Insert Students](screenshots/05_insert_students.png)

### Queries
![All Students](screenshots/11_query_all_students.png)

##  Files
- `01_Create_Tables.sql` - Creating database and tables
- `02_Insert_Data.sql` - Inserting sample data
- `03_Update_Delete.sql` - Update and delete operations
- `04_Queries.sql` - All required queries

##  Constraints Implemented
- Primary Key on all tables
- Foreign Keys in Enrollments
- Check: age > 15, grade in (A-F)
- Unique & Not Null where required

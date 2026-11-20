# MS SQL Server – Student Management Database Extension

Practical university lab extending the `AdventureWorks2025` sample database in Microsoft SQL Server 2025 with normalized Student Management tables, foreign key relationships, and a combined reporting view.

## Database Schema

- **`dbo.Cities`** – City, region, and country lookup table
- **`dbo.Groups`** – Academic groups, study year, and faculty
- **`dbo.Statuses`** – Student enrollment status and active flag (`BIT`)
- **`dbo.Students`** – Core student records linked to `Groups`, `Cities`, and `Statuses` via foreign keys
- **`dbo.vw_StudentDetails`** – Joined view combining student details with group, city, and status information


## How to Run

1. Restore the `AdventureWorks2025` sample database in SQL Server Management Studio (SSMS).
2. Execute the scripts in `/sql` in numerical order:
   1. `sql/01_create_tables.sql`
   2. `sql/02_insert_data.sql`
   3. `sql/03_create_view.sql`

## Lab Report

Full step-by-step screenshots and documentation are available in [`docs/MSSQLSERVER_DATABASETASK.docx`](docs/MSSQLSERVER_DATABASETASK.docx).

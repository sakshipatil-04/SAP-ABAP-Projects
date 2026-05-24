
# Student Management System - SAP ABAP Mini Project

## Project Description

This project is developed using SAP ABAP in SAP GUI.

The Student Management System performs basic CRUD operations:

- Insert Student Record
- Search Student Record
- Update Student Record
- Delete Student Record
- Display Student Data using ALV Report

The project uses custom SAP database table:

`ZSTUDENTS_1`

---

# Technologies Used

- SAP ABAP
- SAP GUI
- Open SQL
- Internal Tables
- ALV Grid Display

---

# Database Table

## Table Name
`ZSTUDENTS_1`

## Fields Used

- Student ID
- Student Name
- Course
- Marks

---

# Project Files

| File Name | Description |
|-----------|-------------|
| zstudent_insert.abap | Insert student record |
| zstudent_search.abap | Search student record |
| zstudent_update.abap | Update existing record |
| zstudent_delete.abap | Delete student record |
| zstudent_alv.abap | Display student data using ALV |

---

# ALV Report

The ALV report displays all student records in grid format using:

```abap
REUSE_ALV_GRID_DISPLAY

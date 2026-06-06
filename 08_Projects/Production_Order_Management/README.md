# Production Order Management System (SAP ABAP)

## 📌 Project Overview

The **Production Order Management System** is an SAP ABAP project developed to manage and display production order data using custom DDIC objects, ALV reporting, and SAP Dictionary enhancements.

This project demonstrates end-to-end SAP ABAP development including Data Dictionary, reporting, search helps, and OO ALV.

---

## 🎯 Objective

To design and develop a production order management solution using SAP ABAP concepts such as:

* Transparent Tables
* Structures
* Search Helps
* Database Views
* ALV Reports
* Open SQL

---

# 🏗️ Project Structure

## 1. DDIC Design (01_DDIC_Design)

This section contains all database objects created in SAP Data Dictionary.

### Tables Created:

* ZXX_AUFK → Production Order Header
* ZXX_AFKO → Production Order BOM
* ZXX_AFPO → Production Order Item

### Features:

* Primary Key design
* Data validation using Domains & Data Elements
* Structured data storage

---

## 2. Include Structures

Include structures are used for reusable fields across multiple tables.

### Includes:

* ZSTR_AUFK_INC
* ZSTR_AFKO_INC
* ZSTR_AFPO_INC

### Purpose:

* Reusability
* Avoid redundancy
* Standardized field definitions

---

## 3. Append Structures

Append structures enhance existing tables without modifying original definitions.

### Includes:

* ZSTR_AUFK_APP
* ZSTR_AFKO_APP
* ZSTR_AFPO_APP

### Purpose:

* Add custom fields
* Extend SAP standard/custom tables safely

---

## 4. Database View

### View Name:

* ZV_PROD_ORDER

### Tables Joined:

* ZXX_AUFK
* ZXX_AFKO
* ZXX_AFPO

### Purpose:

* Combine multiple tables into a single view
* Simplify reporting logic
* Reduce complex joins in ABAP programs

---

## 5. Search Helps

Search helps are created to provide F4 help functionality.

### Search Helps Created:

* ZSH_AUFNR_ELE → Elementary Search Help (Order Number)
* ZSH_AUFNR_COLL → Collective Search Help
* ZSH_AUFNR_STLNR → BOM Search Help

### Purpose:

* Faster input selection
* Reduced manual errors
* Improved usability

---

## 6. ALV Report (02_ALV_Report)

### Type:

Object-Oriented ALV (CL_SALV_TABLE)

### Features:

* Selection Screen (Company Code, Plant, Material, Order Type)
* Default Date Range (Last 30 Days)
* Database Joins between tables
* Material Description from MAKT
* Calculated Fields:

  * GST (18%)
  * Discount (10%)
  * Gross Value

### Output Fields:

* Order Number
* Order Type
* Material
* Plant
* Quantity
* Unit
* Storage Location
* Batch
* GST
* Discount
* Gross Value

---

## ⚙️ Technical Flow

START-OF-SELECTION
→ Fetch Data from Tables
→ Apply Joins
→ Calculate Fields
→ Store in Internal Table
→ Display using CL_SALV_TABLE

---

## 📸 Screenshots

### DDIC Objects

* Tables Design Screenshot
* Field Definitions Screenshot

### Search Helps

* F4 Help Output Screens
* Collective Search Help Display

### Database View

* Join Structure Screenshot
* View Output Screenshot

### ALV Report

* Selection Screen
* ALV Output Screen

---

## 💡 Key Learnings

* SAP Data Dictionary (DDIC)
* Transparent Tables Design
* Include & Append Structures
* Search Helps (F4 Functionality)
* Database Views
* Open SQL Joins
* Object-Oriented ALV Reporting
* SAP ABAP Project Structure

---

## 👨‍💻 Technologies Used

* SAP ABAP
* DDIC
* ALV (CL_SALV_TABLE)
* Open SQL
* SAP GUI

---

## 🚀 Outcome

Successfully developed a complete Production Order Management System with:

✔ Strong DDIC design
✔ Reusable structures
✔ Search help functionality
✔ Database view integration
✔ Professional ALV reporting

---

## 📌 Author

SAP ABAP Fresher Project
Focused on real-time ABAP development practice and interview preparation.


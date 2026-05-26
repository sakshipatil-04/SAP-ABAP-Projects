
# Interactive ALV Report

## Description
This project demonstrates an Interactive ALV Report in SAP ABAP.

The main ALV report displays sales header data from VBAK table.  
When the user clicks on the Sales Document Number (VBELN), a second ALV report displays item details from VBAP table.

---

## SAP Concepts Used
- Interactive ALV
- Internal Tables
- Field Catalog
- Callback Program
- FORM Routine
- Open SQL
- REUSE_ALV_GRID_DISPLAY

---

## Tables Used
- VBAK
- VBAP

---

## Main ALV Fields
- VBELN
- ERDAT
- ERZET
- ERNAM
- AUDAT

---

## Item ALV Fields
- VBELN
- POSNR
- MATNR
- MATWA
- MATKL

---

## Features
- Interactive Drilldown Report
- Double Click Functionality
- Custom Field Catalog
- Dynamic Data Display
- Header to Item Navigation

---


## Program Name
ZLIBRARY_ALV_REPORT_INT

---

## Output
- Main ALV displays Sales Header data.
- Second ALV displays Item Details based on selected Sales Document.

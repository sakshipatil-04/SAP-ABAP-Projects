# Production Order Tables

## Overview

This section contains the custom transparent tables created for the Production Planning Order Management project.

The tables are designed to store Production Order Header, BOM, and Item level information.

---

## Tables Created

### ZXX_AUFK

Production Order Header Table.

Fields:

* Order Number
* Order Type
* Order Category
* Created Date
* Company Code
* Plant

Purpose:

Stores production order header information.

---

### ZXX_AFKO

Production Order BOM Table.

Fields:

* Order Number
* BOM Number
* Alternative BOM
* BOM Usage
* MRP Controller

Purpose:

Stores Bill of Material (BOM) related information for production orders.

---

### ZXX_AFPO

Production Order Item Table.

Fields:

* Order Number
* Material Number
* Sales Order
* Sales Order Item
* Planned Order
* Quantity
* Unit
* Plant
* Storage Location
* Batch

Purpose:

Stores material and item level information for production orders.

---

## Relationship

The tables are linked using:

* Order Number (ZAUFNR)

This key field maintains relationships between:

* ZXX_AUFK
* ZXX_AFKO
* ZXX_AFPO

---

## Screenshots

Refer to the uploaded screenshots for table design and field definitions.


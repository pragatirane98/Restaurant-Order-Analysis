# Restaurant-Order-Analysis
This project is a SQL-based analysis of restaurant menu and order data using PostgreSQL. The objective of the project is to understand menu pricing, item categories, and customer ordering patterns by exploring and analyzing the data.
## 🛠 Tools Used
- PostgreSQL
- pgAdmin
## 📂 Dataset Description
The project uses two tables:

### 1️⃣ menu_items
Contains details about dishes available on the restaurant menu.
- `menu_item_id`
- `item_name`
- `category`
- `price`

### 2️⃣ order_details
Contains details of customer orders.
- `order_id`
- `order_date`
- `item_id
## 🔍 Step-by-Step Work Done

### 1️⃣ Data Exploration
- Counted total records in both tables
- Checked how many menu items and order records are present
- Identified the date range of orders

---

### 2️⃣ Menu Analysis
- Found the total number of items on the menu
- Identified:
  - Most expensive menu item
  - Least expensive menu item
- Analyzed Italian dishes:
  - Number of Italian items
  - Most expensive Italian dish
  - Least expensive Italian dish
- Counted number of dishes per category
- Calculated average price per category

---

### 3️⃣ Order Analysis
- Counted total number of orders
- Counted total number of items ordered
- Identified:
  - Orders with the highest number of items
  - Orders with more than 12 items
- Found the date range during which orders were placed

---

### 4️⃣ Combining Menu and Order Data
- Joined `menu_items` and `order_details` tables using INNER JOIN
- Identified:
  - Most ordered menu item
  - Least ordered menu item
- Calculated total order value by summing item prices per order
- Found the top 5 highest-value orders
- Retrieved full details of the highest spending order

---

## 📊 Key Insights Generated
- Pricing distribution across menu categories
- Popular and unpopular menu items
- High-value customer orders
- Ordering behavior based on item counts and order value

## Thank you for checking out this project!!

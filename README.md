# E-Commerce Application

A simple **E-Commerce web application** built with **.NET Core Web API** (backend) and **Angular** (frontend).  
The app demonstrates basic product listing, filtering, search, and product details functionality.

---

## 1. Prerequisites

Before running the project, ensure you have:

- [.NET 9 SDK](https://dotnet.microsoft.com/download)
- [Node.js & npm](https://nodejs.org/) (LTS recommended)
- [Angular CLI](https://angular.io/guide/setup-local) installed globally
- [PostgreSQL](https://www.postgresql.org/download/) installed and running

---

## 2. Database Setup

1. Create the database:
   ```sql
   CREATE DATABASE ecommerce;
   ```
2. Run the provided ecommerce.sql script to create the Products table and insert sample data.

3. Update appsettings.json with your PostgreSQL credentials(default port 5432).
---

## 3. Backend Setup (.NET Core Web API)

1. Navigate to the backend project folder:
   ```bash
   cd Ecommerce
   ```
2. Restore dependencies:
   ```bash
   dotnet restore
   ```

3. Apply EF Core migrations (if needed):
   ```bash
   dotnet ef database update
   ```
4. Run the API:
   ```bash
   dotnet run
   ```
5. The API will be available at:
   ```
   https://localhost:5001/api/products
   ```

---

## 4. Frontend Setup (Angular)

1. Navigate to the frontend project folder:
   ```bash
   cd ecommerce-ui
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Start the Angular app:
   ```bash
   ng serve
   ```
4. Open the app in your browser:
   ```
   http://localhost:4200
   ```

---

## 5. Features

- **Product Listing**  
  Displays all products in a grid/list format.

- **Product Details**  
  Navigate to `/products/:id` to view detailed info.

- **Search & Filtering**  
  - Filter by category  
  - Search by name/description  
  - Filter by price range

- **Responsive UI**  
  Basic responsive design for desktop screens.

---


## 6. Project Structure

```
/Ecommerce    -> .NET Core Web API (C#)
/ecommerce-ui   -> Angular Application
/ecommerce.sql -> Database creation & sample data
README.md   -> Setup instructions
```

---


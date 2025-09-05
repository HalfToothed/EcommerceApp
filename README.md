# E-Commerce Application

A simple **E-Commerce web application** built with **.NET Core Web API** (backend) and **Angular** (frontend).  
The app demonstrates basic product listing, filtering, search, and product details functionality.

---

## 1. Prerequisites

Before running the project, ensure you have:

- [.NET 9 SDK](https://dotnet.microsoft.com/download)
- [Node.js & npm](https://nodejs.org/) (LTS recommended)
- [Angular CLI](https://angular.io/guide/setup-local) installed globally
- [SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)

---

## 2. Database Setup

1. Open **SQL Server Management Studio (SSMS)** or use `sqlcmd`.  
2. Run the script [`ecommerce.sql`](./ecommerce.sql).  
   - This will create the `Ecommerce` database, `Products` table, and insert **15 sample products**.

---

## 3. Backend Setup (.NET Core Web API)

1. Navigate to the backend project folder:
   ```bash
   cd backend
   ```
2. Restore dependencies:
   ```bash
   dotnet restore
   ```
3. Update the connection string in **`appsettings.json`** to match your SQL Server instance:
   ```json
   "ConnectionStrings": {
     "DefaultConnection": "Server=localhost;Database=Ecommerce;Trusted_Connection=True;TrustServerCertificate=True;"
   }
   ```
4. Apply EF Core migrations (if needed):
   ```bash
   dotnet ef database update
   ```
5. Run the API:
   ```bash
   dotnet run
   ```
6. The API will be available at:
   ```
   https://localhost:5001/api/products
   ```

---

## 4. Frontend Setup (Angular)

1. Navigate to the frontend project folder:
   ```bash
   cd frontend
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

## 6. Screenshots (Optional)

_Add screenshots of the product list and product detail pages here._

---

## 7. Project Structure

```
/backend    -> .NET Core Web API (C#)
/frontend   -> Angular Application
/ecommerce.sql -> Database creation & sample data
README.md   -> Setup instructions
```

---

## 8. Author

Developed by **[Your Name]** as part of an assignment/demo project.

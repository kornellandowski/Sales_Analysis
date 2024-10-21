# Sales Data Trend Analysis and Reporting

The project is designed to deliver a comprehensive sales report, allowing the Sales Director to analyze sales trends over time, discover patterns, and assess dependencies within the data. The workflow involved processing raw sales data, normalizing it into a star schema, creating measures for key metrics, and visualizing the insights through an interactive dashboard in Power BI.

### Project Steps:

1. **Data Ingestion:**
   The sales data was uploaded to Google Cloud and then imported into Google BigQuery. SQL was used to create normalized tables from the raw data, improving the structure by removing redundancy.

2. **Data Normalization:**
   The dataset was normalized into a star schema, with a central fact table containing core sales metrics and several dimension tables providing contextual data. The fact and dimension tables include:

   - **Fact Table:**
     - **factSales:** This contains sales transaction data, such as:
       - CustomerID
       - Date
       - ProductID
       - Unit Cost
       - Unit Price
       - Units Sold

   - **Dimension Tables:**
     - **DimCustomer:** Customer information (CustomerID, Email, First Name, Last Name, ZipCode).
     - **DimDate:** A generated table for the date range January 1, 2020 – December 31, 2022, with fields such as Day of Week, Month, Quarter, Week Number, and Year.
     - **DimGeography:** Geographical data (City, Country, District, Region, State, ZipCode).
     - **DimProduct:** Product details (Category, ProductID, Segment, Unit Cost, Unit Price).

3. **Data Modeling:**
   The data was organized into a star schema, linking the fact table (factSales) with its related dimension tables (DimCustomer, DimDate, DimGeography, DimProduct) to allow for effective querying. In Power BI, additional dimension tables and measures were created:

   - **DimDate in Power BI:** An additional DimDate was created directly within Power BI to further segment the data and support more granular time-based analysis. This enhances the time intelligence features within the dashboard.
   - **Measure Table:** A dedicated table was created in Power BI to store various calculated measures. These measures include key performance indicators (KPIs) like Total Sales, Average Unit Price, Profit Margins, and Growth Rates. This helps to centralize the calculations and keep them organized for better dashboard performance.

4. **Data Visualization in Power BI:**
   Power BI was connected to BigQuery to import the data model. The following key components were added to the interactive dashboard:

   - **Main Sales Page:** Focuses on high-level sales data, including sales volume, revenue, and year-over-year trends. This page includes slicers for filtering the data by date, product category, and region.
   - **Product Page:** Shows detailed product performance and relationships between product segments, categories, and sales outcomes.
   - **Drill-through (Customer Details Page):** Enables users to drill into specific customer or product details, providing granular insights into individual transactions.

   - **Interactive Filters (Slicers):** Slicers for date, region, and product category were added to allow users to filter data dynamically and uncover specific insights.
  
5. **Final Delivery:**
   The final Power BI dashboard contains multiple pages with different focuses—sales, products, and customer details. It is equipped with various slicers and KPIs that allow the Sales Director to interactively explore trends, measure sales growth, and identify key opportunities or areas for improvement.

### Conclusion:
The project transformed raw sales data into a well-structured and normalized star schema, which was integrated into Power BI for dynamic visualization. The additional DimDate table and Measure Table in Power BI allow for more sophisticated time-based analyses and calculation of key metrics. The final interactive dashboard gives the Sales Director actionable insights into sales performance trends over time and provides a detailed breakdown of product and customer data.


![image](https://github.com/user-attachments/assets/0019ceeb-6f2b-455c-8e3b-b1d1535d6ead)


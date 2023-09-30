# Power BI Sales Management Report

A comprehensive Power BI dashboard for sales management, utilizing data extracted from an MS SQL Server database. This dashboard is tailored to meet the requirements of a fictional sales manager, providing key performance indicators (KPIs) related to budget, sales, customer locations, sales performance over time, sales in different categories, and more. Additionally, various filters have been implemented to make it easy for salespersons to monitor performance relevant to them, as directed by the sales manager.

## Installation and Setup

To use this Power BI Sales Management Report, follow these steps:

1. **Prerequisites**:
   - Install [Power BI Desktop](https://powerbi.microsoft.com/en-us/desktop/).
   - Access to an MS SQL Server database with relevant data - [MS AdventureWorks](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms).

2. **Data Preparation**:
   - Extract three years of internet sales data from your SQL Server database.
   - Clean the data using SQL, applying necessary filters and transformations.
   - Export the cleaned data into CSV files.

3. **Import into Power BI**:
   - Open Power BI Desktop.
   - Use Power Query to import and further clean the CSV data.
   - Create relationships between the tables as needed for analysis.

## Data Modeling in Power BI

The project involves five main tables, which have been modeled in Power BI to facilitate insightful reporting:

1. **Sales Data**: Contains information about sales transactions.
2. **Customers**: Stores customer details, including locations.
3. **Product Categories**: Describes product categories.
4. **Time**: Contains date-related information for time-based analysis.
5. **Geographic Data**: Provides geographic details for analysis by city and region.

## Dashboard Features

The Power BI dashboard includes the following key features:

- **Budget vs. Actual Sales**: Monitor budget performance compared to actual sales.
- **Sales Over Time**: Track sales trends over the past three years.
- **Sales by Category**: Analyze sales in different product categories.
- **Sales by Location**: View sales performance across various cities.
- **Customizable Filters**: Salespersons can apply filters to focus on relevant data.

## How to Use the Dashboard

1. **Open the Dashboard**: Access the [Power BI Dashboard](https://app.powerbi.com/view?r=eyJrIjoiYmMzNDczNmUtYjNiOC00ZjEzLTlkNWYtZjIwNTNlOTE4ZjA5I).

2. **Apply Filters**: Use the filter options to refine the data based on your requirements. Filters include date range, category, and location.

3. **Explore KPIs**: Interact with the visualizations to gain insights into budget performance, sales trends, and more.


## Contact Information

For questions or feedback, feel free to reach out:
- My Linked In: [Frank Emmanuel](https://www.linkedin.com/in/frankolanari/)


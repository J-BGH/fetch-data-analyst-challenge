# Fetch Data Analysis Challenge

## Project Overview
Analysis of Fetch's receipt data to uncover insights about user behavior, brand performance, and category trends. This project examines receipt scanning patterns, identifies top-performing brands, analyzes category performance, and segments power users to provide actionable business recommendations.

## Key Questions Addressed
* Top 5 brands by receipts scanned among users 21 and over
* Top 5 brands by sales among users with accounts for 6+ months
* Percentage of sales in the Health & Wellness category
* Identification of Fetch's power users
* Leading brand in Dips & Salsa category
* Year-over-year growth analysis

## Tools & Technologies Used
* Python (Pandas, NumPy) for data manipulation and analysis
* Plotly for interactive data visualization
* SQL-equivalent queries implemented in Python
* Data cleaning and preparation techniques

## Repository Structure
* `analysis.ipynb`: Main analysis notebook with Python code and visualizations
* `visualizations/`: Interactive Plotly charts
* `sql/`: SQL implementations of the queries used
* `Email to Stakeholders.md`: Executive summary of findings
* `README.md`: Project documentation

## Key Findings

### User Behavior
Power users represent a small but significant segment of Fetch's user base. Analysis revealed:
* 305 power users (1.72% of total user base)
* Average of 3.7 receipts scanned per power user
* Average spend of $58.03 per power user
* Shop at 2.2 different retailers on average
* Highest concentration in NY state

### Brand Performance
Brand analysis across different user segments showed interesting patterns:
* **Top brands by receipts (Users 21+)**: DOVE (14), UNKNOWN (14), NERDS CANDY (14), COCA-COLA (13), SOUR PATCH KIDS (13)
* **Top brands by sales (6+ month accounts)**: UNKNOWN ($26,870.71), ANNIE'S HOMEGROWN GROCERY ($2,609.04), DOVE ($2,562.42), BAREFOOT ($2,500.33), ORIBE ($2,282.91)
* **Dips & Salsa category**: UNKNOWN leads with 31.3% market share, followed by TOSTITOS (5.2%) and FRITOS (4.1%)

### Category Insights
* Health & Wellness dominates with 57.89% of total sales volume
* Top categories by sales include Health & Wellness, Snacks, and Alcohol
* Transaction data analysis revealed seasonal patterns, with peak activity in July followed by decline in August-September

## Data Quality Challenges
Several data quality issues were identified and addressed:
* **Missing Values**: 
  - 3.7% of users had missing birth dates
  - 11.5% of transactions had missing barcodes
  - 26.8% of products had missing brand information
* **Data Integrity Issues**:
  - 94 transactions (0.2%) had negative scan delays
  - 171 duplicate transactions were identified and removed
  - FINAL_QUANTITY field contained mixed formats (numeric values and text like "zero")

These issues were handled through a comprehensive data cleaning process:
* Flagging missing birth dates while keeping records in the analysis
* Imputing missing sales values using median values for the same barcode
* Converting text values to numeric in FINAL_QUANTITY
* Fixing negative scan delays by swapping purchase and scan dates
* Filling missing brands with manufacturer names where available

## Business Recommendations
Based on the analysis, several opportunities were identified:

1. **Brand Partnerships**: Explore stronger partnerships with DOVE and UNKNOWN brands, which perform well across multiple metrics.

2. **Category Focus**: With nearly 58% of sales in Health & Wellness, expand offerings and create targeted promotions for this category.

3. **Data Quality Improvements**:
   - Implement better barcode recognition technology
   - Standardize quantity fields to numeric values
   - Develop automated checks for receipt dates

4. **User Retention Strategy**: Create specialized campaigns for power users, particularly in NY where we have the highest concentration.

5. **Seasonal Marketing**: Adjust marketing efforts to account for observed seasonal patterns in user activity.

## Next Steps
* Conduct deeper analysis on the Health & Wellness category to identify sub-categories driving growth
* Implement A/B testing for different user engagement strategies with power users
* Develop predictive models to forecast user scanning behavior
* Enhance data collection methods to address identified quality issues
* Explore demographic correlations with brand preferences to inform targeted marketing

# H&M Personalized Fashion Transaction
![HM](images/Hm.jpg)


## First part: Data Extracting

### First resources: Three csv files from Kaggle website 

![Tr](images/transaction_data.JPG)

The dataset is a about the purchase history of customers across time, along with supporting metadata.

Kaggle files:

-	articles.csv - detailed metadata for each article_id available for purchase
-	customers.csv - metadata for each customer_id in dataset
-	transactions_train.csv -  consisting of the purchases each customer for each date, as well as additional information. Duplicate rows correspond to multiple purchases of the same item. 

### second resources: Extracting data from H&M website by using a tricky api request
![WA](images/women_product_from_api.JPG)
-	women_articles.csv - include price, title and product name of all women products

![WA](images/men_product_from_api.JPG)
-	men_articles.csv - include price, title, product name of all men products

![WA](images/baby_product_from_api.JPG)
-	baby_articles.csv - include price, title, product name of all baby products

![WA](images/kid_product_from_api.JPG)
-	kid_articles.csv - include price, title, product name of all kid products

## second part : Data Transformation

-	Cleaning: Mapping NULL to 0 or "Male" to "M" and "Female" to "F," date format consistency, etc.
-	Deduplication: Identifying and removing duplicate records
-	Format revision: Character set conversion, unit of measurement conversion, date/time conversion, etc.
-	Key restructuring: Establishing key relationships across tables
-	Derivation Applying business rules to your data that derive new calculated values from existing data – for example, creating a revenue metric that subtracts taxes
-	Filtering: Selecting only certain rows and/or columns
-	Joining: Linking data from multiple sources – for example, adding ad spend data across multiple platforms, such as Google Adwords and Facebook Ads
-	Splitting: Splitting a single column into multiple columns
-	Data validation: Simple or complex data validation – for example, if the first three columns in a row are empty then reject the row from processing
-	Summarization: Values are summarized to obtain total figures which are calculated and stored at multiple levels as business metrics – for example, adding up all purchases a customer has made to build a customer lifetime value (CLV) metric
-	Aggregation: Data elements are aggregated from multiple data sources and databases
-	Integration: Give each unique data element one standard name with one standard definition. Data integration reconciles different data names and values for the same data element.

### cleaning and dataframe merging process
![HM](images/customer_df_before_cleaning.JPG)

-	articles.csv - droping some unnecessary columns
-	customers.csv - imputing and droping null values
-	transactions_train.csv - converting a column as a datatime column
-   women_articles.csv - converting price column as integer
-   men_articles.csv - converting price column as integer 
-	baby_articles.csv - converting price column as integer
-	kid_articles.csv - converting price column as integer


## Third part : Data Loading












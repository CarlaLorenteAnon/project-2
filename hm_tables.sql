DROP TABLE IF EXISTS "transactions_customer";
DROP TABLE IF EXISTS "transactions_article";
DROP TABLE IF EXISTS "transactions_kaggle_api";


-- table for transactions_customer
CREATE TABLE transactions_customer (
	t_dat VARCHAR,
	customer_id VARCHAR PRIMARY KEY,
    article_id VARCHAR,
    price DECIMAL,
    sales_channel_id INT,
    FN INT,
    ACTIVE INT,
    club_member_status VARCHAR,
    fashion_news_frequency VARCHAR,
    age INT,
    post_code INT
);

-- Table for transaction_article
CREATE TABLE transactions_article (
  t_dat VARCHAR,
  customer_id VARCHAR,
  article_id VARCHAR PRIMARY KEY,
  price DECIMAL,
  sales_channel_id INT,
  prod_name VARCHAR,
  product_type_name VARCHAR,
  product_group_name VARCHAR,
  graphical_appearance_name VARCHAR,
  colour_group_name VARCHAR,
  perceived_colour_value_name VARCHAR,
  perceived_colout_master_name VARCHAR,
  department_name VARCHAR,
  index_name VARCHAR,
  index_group_name VARCHAR,
  section_name VARCHAR,
  garment_group_name VARCHAR,
  FOREIGN KEY (customer_id) REFERENCES transactions_customer(customer_id)
);

-- Table for transactions_kaggle_api
CREATE TABLE transactions_kaggle_api (
	t_dat VARCHAR,
    customer_id VARCHAR,
    article_id VARCHAR,
    unit_price DECIMAL,
    sales_channel_id INT,
    title VARCHAR,
    us_price DECIMAL,
    sex_and_age_category VARCHAR,
    prod_name VARCHAR,
    product_type_name VARCHAR,
    product_group_name VARCHAR,
    graphical_appearance_name VARCHAR,
    colour_group_name VARCHAR,
    perceived_colour_value_name VARCHAR,
    perceived_colout_master_name VARCHAR,
    department_name VARCHAR,
    index_name VARCHAR,
    index_group_name VARCHAR,
    section_name VARCHAR,
    garment_group_name VARCHAR,
);

USE CATALOG pricing_analytics;
CREATE SCHEMA IF NOT EXISTS silver;
DROP TABLE IF EXISTS silver.daily_pricing_silver;
CREATE TABLE IF NOT EXISTS silver.daily_pricing_silver(
DATE_OF_PRICING date,
ROW_ID bigint,
STATE_NAME string,
MARKET_NAME string,
PRODUCTGROUP_NAME string,
PRODUCT_NAME string,
VARIETY string,
ORIGIN string,
ARRIVAL_IN_TONNES decimal(18,2),
MINIMUM_PRICE decimal(36,2),
MAXIMUM_PRICE decimal(36,2),
MODAL_PRICE decimal(36,2),
source_file_load_date timestamp,
lakehouse_inserted_date timestamp,
lakehouse_updated_date timestamp
)

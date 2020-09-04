# ETL-Project
# In our project we are exploring California fires and some of the causes/impacts that these fires have.

## Extraction

### Gather the data from the csv's provided by a kaggle data sources and zillows historical housing median prices per month.
### Data from the weather api was not accessable without paid subscription.

## Transform

### Drop unneeded columns and data from each dataframe tables.
### Renamed columns to match information and created unique id keys for countys and fire entrys
### Match County strings to then hash for primary keys
### Created primary table for countys
### to convert data from a cross-tabulated format we Melted county tables so datas were a single columns
### Fill in nan data with 0
### Pushed the dataframe tables to a postgres sql database

## Load

### Pull data from postgres servers using python connections
### Merge data into 2 data frames on the county ids
### we discovered that the fires in the list were not unique if they crossed more that one county.
### So we had to update the PostGresSQL with a new table of the Fires

# Theograph_SQL_PBI

## SQL Code
### CreateSampleDataset
This SQL file will create the table 'InputData'.

### InsertSampleDataset
This SQL file will insert the sample dataset into 'InputData' table. (If you have your own data then don't run this SQL file and just insert/import your data into 'InsertData' table.)

### TheoGraph_SQL
This SQL code takes the input data table ('InputData') and creates the TheoGraph table with new columns for ranks and eventDate required to plot the graph in PowerBI.

## Datasets

### Input data table

The aim is to keep the number of required data fields minimum. So, this app requires SQL table/view with following data fields:
- Client_ID
- Event_ID
- Start_Date
- End_Date
- Event_Type
- Event_Subtype
- Event_Desc

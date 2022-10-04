# CSP_554_Big_Data
Final Project

In this project I seek to address the problem of monitoring an isolated hydroponics system from anywhere in the world. 
This will be helpful in collecting and monitoring the essential parameters like Temperature, Humidity and Total Dissolved Solids (TDS).
It will be useful to send notifications to the intended users in real-time, if any of the parameters goes beyond the permissible limit.
The streaming data from the IOT device will be received by AWS DynamoDB. Then this data will be exported to AWS S3. 
Then AWS GLUE will be used to create a table on the S3 data using a crawler. Athena will be used to create a view with required format on the table created by AWS Glue. 
Finally, AWS QuickSight will be used to create visualization on the view created by Athena.
Alternative Approach will be to use AWS Kinesis instead of DynamoDB to store the streaming data into S3.

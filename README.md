# CSP_554_Big_Data
Final Project

ABSTRACT 
Hydroponics technique is a system in which plants grow without soil. A substrate like cocopeat, perlite or rock wool is used to support the plant and its roots. The plant roots are dipped in water containing nutrients for their growth. This solution tackles the problem of manually monitoring the essential parameters in a hydroponics system. This monitoring is facilitated by cloud provider Amazon Web Services (AWS). The most important parameters are Temperature, Humidity, Total Dissolved Solids (TDS) and Potential of Hydrogen (pH). This needs to be monitored on a consistent basis for proper growth and survival of the plants in the system. The farmer should be alerted on a real time if any of the parameters goes beyond the permissible limit. Moreover, the data generated from the system should be stored in a data warehouse for further analysis. Lambda architecture best suits the requirement of processing real time data along with storing it for future analysis.

Hydroponics System
![image](https://user-images.githubusercontent.com/42748797/193892862-751704fd-a9f3-40eb-990d-4da4cbe7339e.png)


Lambda Architecture (source: Wikipedia)
![image](https://user-images.githubusercontent.com/42748797/193893337-dc0481e4-df58-463d-8037-c85fcb13a931.png)


Introduction
In this project I seek to address the problem of monitoring an isolated hydroponics system from anywhere in the world. 
This will be helpful in collecting and monitoring the essential parameters like Temperature, Humidity and Total Dissolved Solids (TDS).
It will be useful to send notifications to the intended users in real-time, if any of the parameters goes beyond the permissible limit.
The streaming data from the IOT device will be received by AWS DynamoDB. Then this data will be exported to AWS S3. 
Then AWS GLUE will be used to create a table on the S3 data using a crawler. Athena will be used to create a view with required format on the table created by AWS Glue. 
Finally, AWS QuickSight will be used to create visualization on the view created by Athena.
Alternative Approach will be to use AWS Kinesis instead of DynamoDB to store the streaming data into S3.

Architecture Diagram
![image](https://user-images.githubusercontent.com/42748797/193893434-a8aff86e-7024-4197-985c-bf0a14478417.png)

Alternative Architecture Diagram
![image](https://user-images.githubusercontent.com/42748797/193893477-063c64e3-debe-4f4c-a48e-751d586bd65f.png)

References:

https://en.wikipedia.org/wiki/Lambda_architecture
https://aws.amazon.com/blogs/aws/new-export-amazon-dynamodb-table-data-to-data-lake-amazon-s3/
https://www.youtube.com/watch?v=UvWJjZKjQLc&t=597s
https://docs.aws.amazon.com/iot/latest/developerguide/iot-sns-rule.html
https://wiki.dfrobot.com/Gravity__Analog_TDS_Sensor___Meter_For_Arduino_SKU__SEN0244
https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataExport.html
https://www.youtube.com/watch?v=UvWJjZKjQLc&t=597s
https://www.youtube.com/watch?v=8AMagSTe0l8
https://www.youtube.com/watch?v=Cg4DNZcLh5A


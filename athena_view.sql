CREATE VIEW ATHENA_QUICKSIGHT AS
SELECT Item.ts.N as timstmp, Item.tds.S as tds, 
Item.temperature.S as temperature, 
Item.humidity.N as humidity
FROM "sampledb"."data" limit 10;

create database if not exists realtimebank;
CREATE TABLE if not exists realtimebank.customer_txns
(
`timestamp` string,
cif string,
txn_code STRING NOT NULL,
amount bigint,
PRIMARY KEY (`timestamp`,cif)
)
PARTITION BY HASH PARTITIONS 10
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');

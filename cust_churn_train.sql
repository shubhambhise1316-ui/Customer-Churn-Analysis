
create table cust_churn_train(
    CUS_ID SERIAL,
    CUST_AGE INTEGER,
    CUST_CLV BIGINT,
    CUST_ANN_SALARY BIGINT,
    CUST_FREQ INTEGER,
    NO_OF_ACCOUNTS INTEGER,
    CUST_STAT VARCHAR(10),
    Churn_Flag INTEGER,
    Has_Transactions  VARCHAR(10),
    Age_Band VARCHAR(20),
    Freq_Band VARCHAR(20)
);


drop table cust_churn_train;

select * from  cust_churn_train;

CREATE OR REPLACE VIEW vw_churn AS
SELECT *,
  CASE WHEN CUST_CLV IS NULL THEN 'No Data'
       WHEN CUST_CLV <= 750000   THEN 'Q1 Low'
       WHEN CUST_CLV <= 3651460  THEN 'Q2'
       WHEN CUST_CLV <= 11873164 THEN 'Q3'
       ELSE 'Q4 High' END AS CLV_Band,
  CASE WHEN NO_OF_ACCOUNTS IS NULL THEN 'Unknown'
       WHEN NO_OF_ACCOUNTS = 1 THEN '1 Account'
       WHEN NO_OF_ACCOUNTS = 2 THEN '2 Accounts'
       ELSE '3+ Accounts' END AS Accounts_Band
FROM cust_churn_train;


select * from  vw_churn;


Create table patient_claims_detail
(
Claim_ID varchar(200),
Brand varchar(2000),
Product_NDC varchar(2000),
Claim_Date varchar(200),
Copay_Amount varchar(200),
Billed_Amount varchar(200),
Paid_Amount varchar(200),
Pharmacy_Name varchar(2000),
Rep_ID varchar(200),
Territory varchar(2000),
Channel varchar(2000),
Coverage_Status varchar(200),
Prior_Auth varchar(200),
Plan_Type varchar(200),
Patient_Zip varchar(2000),
Duplicate_Claim varchar(200),
Submission_Source varchar(2000),
Notes varchar(2000)
)

select * from patient_claims_detail

select count(*) from patient_claims_detail

SELECT TOP 1 claim_date FROM patient_claims_detail
WHERE claim_date = (SELECT MAX(claim_date) FROM patient_claims_detail);

SELECT TOP 1 claim_date FROM patient_claims_detail
WHERE claim_date = (SELECT min(claim_date) FROM patient_claims_detail);


create table watermark_tbl
(
last_load varchar(200)
)
--set the last load date(previous date of last load)
insert into watermark_tbl
values ('1900-01-01')

select * from watermark_tbl

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'patient_claims_detail';

SELECT COUNT(*) 
FROM patient_claims_detail 
WHERE Claim_date >= '2000-01-01' AND Claim_date <= '2025-05-19'

SELECT COUNT(*) 
FROM patient_claims_detail WHERE Claim_date is null


UPDATE patient_claims_detail
SET Claim_date = '2000-02-02'
WHERE Claim_date is null

delete  watermark_tbl


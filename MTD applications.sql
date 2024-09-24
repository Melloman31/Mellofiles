select * from Bank_Loan_data


# Total Loan Applications

select count(id) as total_loan_applications from Bank_Loan_data

# Month-to-Date (MTD) Loan Applications

select count(id) as MTD_Loan_Application from Bank_Loan_data
where month(issue_date) = 12 and year(issue_date) = 2021


select count(id) as PMTD_Loan_Application from Bank_Loan_data
where month(issue_date) = 11 and year(issue_date) = 2021

# total Funded amount

select sum(loan_amount) as Total_Funded_amount from Bank_Loan_data

# total funded amount MTD

select sum(loan_amount) as Total_Funded_amount from Bank_Loan_data
where month(issue_date) = 12 and year(issue_date) = 2021 

# total amount recieved

select sum(total_payment) as Total_recieved_amount from Bank_Loan_data

# total amount recieved mtd

select sum(total_payment) as Total_recieved_amount from Bank_Loan_data
where month(issue_date) = 12 and year(issue_date) = 2021 

# M-o-M = MTD-PMTD/PMTD #

# calculating the average interest rate

select avg(int_rate) * 100  as Average_Interest_Rate from Bank_Loan_data

# calculating the average interest rate MTD

select avg(int_rate) * 100  as Average_Interest_Rate from Bank_Loan_data
where month(issue_date) = 12 and year(issue_date) = 2021 

# calculating the average Debt-to-interest rate

select avg(dti) * 100  as Average_Debt_to_Interest_Rate from Bank_Loan_data
where month(issue_date) = 12 and year(issue_date) = 2021 

# these are the key performing indicator 
as Total funded amount, average interest rate, average debt to interest rate, Total applications and total amount received. #




























# all months
SELECT 
    MONTH(issue_date) AS Month,
    AVG(application_count) AS Average_Loan_Applications
FROM (
    SELECT 
        MONTH(issue_date) AS Month, 
        COUNT(id) AS application_count
    FROM 
        Bank_Loan_data
    GROUP BY 
        MONTH(issue_date), YEAR(issue_date)
) AS MonthlyApplications
GROUP BY 
    Month
ORDER BY 
    Month;


SELECT * 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'Bank_Loan_data';


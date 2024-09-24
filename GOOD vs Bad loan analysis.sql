Select loan_status, count(loan_status) as count from Bank_Loan_data
group by loan_status

# Good Loan
select 
     (count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)*100)
     /
     count(id) as good_loan_percentage
from Bank_Loan_data


select count(id) as good_loan_applications from Bank_Loan_data
where loan_status = 'Fully Paid ' or loan_status = 'Current'


select sum(loan_amount) as Good_Loan_Funded_Amount
from Bank_Loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'


select sum(total_payment) as Good_Loan_Total_Received_Amount
from Bank_Loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'


# Bad Loan

select 
(count(case when loan_status = 'Charged off' then id end)*100)
/
count(id) as bad_loan_percentage
from Bank_Loan_data


select count(id) as bad_loan_applications from Bank_Loan_data
where loan_status = 'Charged off' 


select sum(loan_amount) as Bad_Loan_Funded_Amount from Bank_Loan_data
where loan_status = 'Charged off'

select sum(total_payment) as Bad_Loan_Total_Received_Amount
from Bank_Loan_data
where loan_status = 'Charged off'


# Loan status grid view

SELECT
        loan_status,
        COUNT(id) AS Total_Loan_applications,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        bank_loan_data
    GROUP BY
        loan_status


# MTD

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 and year(issue_date) = 2021 
group by loan_status



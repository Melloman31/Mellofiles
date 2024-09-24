select * from Bank_Loan_data

# by month
select 
      month(issue_date) as No_Month,
      Datename(month, issue_date) as Month_name,
	  count(id) as Total_Loan_Application,
	  sum(loan_amount) as Total_Funded_Amount,
	  sum(total_payment) as Total_Amount_received 
	  from Bank_Loan_data
group by month(issue_date),Datename(month, issue_date)
order by month(issue_date)


# by STATE

select 
      address_state as State,
	  count(id) as Total_Loan_Application,
	  sum(loan_amount) as Total_Funded_Amount,
	  sum(total_payment) as Total_Amount_received 
	  from Bank_Loan_data
group by address_state 
order by sum(loan_amount) desc


# by term

select 
      Term,
	  count(id) as Total_Loan_Application,
	  sum(loan_amount) as Total_Funded_Amount,
	  sum(total_payment) as Total_Amount_received 
	  from Bank_Loan_data
group by Term 
order by Term

#by employee_lenght

select 
      emp_length,
	  count(id) as Total_Loan_Application,
	  sum(loan_amount) as Total_Funded_Amount,
	  sum(total_payment) as Total_Amount_received 
	  from Bank_Loan_data
group by emp_length
order by count(id) desc

# loan Purpose

select 
      purpose,
	  count(id) as Total_Loan_Application,
	  sum(loan_amount) as Total_Funded_Amount,
	  sum(total_payment) as Total_Amount_received 
	  from Bank_Loan_data
group by purpose
order by count(id) desc

# by House ownership


select 
      home_ownership,
	  count(id) as Total_Loan_Application,
	  sum(loan_amount) as Total_Funded_Amount,
	  sum(total_payment) as Total_Amount_received 
	  from Bank_Loan_data
group by home_ownership
order by count(id) desc


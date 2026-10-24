-- QUE 1
select AccountID,AccountType,Balance from accounts;

-- QUE 2
select * from accounts 
where AccountType="Savings";

-- QUE 3
select * from accounts
where balance>25000;

-- QUE 4
select * from transactions 
where amount>=500 and amount<=20000;

select * from transactions 
where AccountID between 202 and 204;

-- QUE 5
select * from customer 
where CustomerID between 101 and 104;

select* from customer
where CustomerID in (101,102,103,104);

select * from customer
where CustomerID = 101 or CustomerID = 102 or CustomerID = 103 or CustomerID = 104;

-- QUE 6
select * from accounts
where AccountType = "Current";

-- QUE 7
select * from accounts 
where balance < 15000;

-- QUE 8
select * from transactions 
where Amount between 1000 and 10000;

-- que 9
select * from customer 
where CustomerID in (104,105);

-- 1. fetch loan record whose interest is greter than 9 and loan amount greater than 50000	
select * from loans
where InterestRate > 9 and LoanAmount > 50000;		

-- 2. fetch branch record where branch address is shivaji nagar pune	
select * from branches
where BranchAddress = "Shivaji Nagar, Pune";

-- 1.find accounts with balance between 500 to 5000
select * from accounts 
where balance between 500 and 5000;

-- 2.fetch the records where balance is greater than 25000 and account type is savings.
select * from accounts 
where balance > 25000
and AccountType = "Savings";

-- 1.Retrieve all records where  Interest Rate less than 8.50
select * from loans 
where InterestRate < 8.50;

-- 2.Display customers born after 1 January 1998
select * from customer
where DateOfBirth > "1998-01-01";

-- 1.Display branches whose Branch_id is between 2 and 4.
select * from branches
where BranchID between 2 and 4;

-- 2.Display only the branch name and branch phone number of all branches.
select BranchName, BranchPhone from branches;

-- 1. fetch customer records with limit 2 offset 1
select * from customer
limit 2 offset 1;

-- 1. Retrieve all Deposit Transaction_Type 
select * from transactions
where TransactionType = "Deposit";

-- 2. skip first 2 transaction and select next 3 transaction
select * from transactions
limit 2 offset 3;

-- display amount from transaction which amount is greater than 5000
select * from transactions 
where amount > 5000;

-- 2 find account which account type is saving
select * from accounts
where AccountType="Savings";

-- 1) Fetch TransactionDate between 11 ro 13
select * from transactions
where TransactionDate between "2025-05-11" and "2025-05-13";

-- 2) display branches in branchId 1 and 4
select * from branches
where BranchID in (1,4);

-- 1) fetch the customer records whose customer name is rahul otherwise sneha
select * from customer 
where FirstName = "Rahul" or FirstName= "Sneha";

-- 2)fetch the transactions record whose transactin ammount is greater than 3000 and transaction type is deposit 
select * from transactions 
where Amount >3000 and TransactionType = "Deposit";







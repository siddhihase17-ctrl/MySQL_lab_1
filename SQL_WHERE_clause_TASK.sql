-- 1. Show all Deposit transactions.
select * from t1
where TransactionType = "Deposit";

-- 2. Show TransactionID, CustomerName and Amount for transactions above 10000.
select TransactionID, CustomerName, Amount from t1
where Amount>10000;

-- 3. Show all transactions made in Pune.
select * from t1
where city like "P%";

select * from t1
where city regexp "Pune";

-- 4.  Show Deposits with an amount above 10000.
select* from t1
where TransactionType= "Deposit" and Amount>=10000;

-- 5.  Show Withdrawals made in Cash.
select* from t1
where TransactionType = "WithDrawal" and Mode="Cash";

-- 6. Show transactions from Mumbai or Delhi
select * from t1
where city in ("Mumbai","Delhi");

-- 7. Write the same query as Q6
select * from t1
where city in ("Mumbai","Delhi");

-- 8. Show transactions that were not made through UPI.
select * from t1
where mode not in ("UPI");

-- 9. Show transactions with an amount between 5000 and 10000.
select * from t1
where amount between 5000 and 10000;

-- 10. Show transactions from cities other than Pune, Mumbai and Delhi
select * from t1
where city not in ("Pune", "Mumbai", "Delhi");

-- 11.  Show transactions made in March 2026.
select * from t1
where TransactionDate in ("March 2026");

-- 12. Show customers whose name starts with A.
select * from  t1
where CustomerName like "a%";

-- 13.  Show customers whose name ends with a.
select * from  t1
where CustomerName like "%a";

-- 14. Show customers whose second letter is a.
select * from  t1
where CustomerName like "_a";

-- 15. Show customers whose name contains sh.
select * from  t1
where CustomerName like "%sh%";

-- 16.  Show customers whose name does not start with A.
select * from  t1
where CustomerName not like "A%";

-- 17.  Show transactions where Remarks is empty (NULL).
select * from  t1
where remarks is null;

-- 18. Use REGEXP to show customers whose name starts with A or P.
select * from t1
where CustomerName regexp "^A|^P";

-- 19. Use REGEXP to show customers whose name ends with a or i.
select * from t1
where CustomerName regexp "a$|i$";

-- 20. Show Deposits or Transfers above 5000 that were made through UPI or NEFT.
select * from t1
where TransactionType in ("deposit","Transfer") and amount >=5000 or mode in ("UPI","NEFT");






SELECT INCOME_DATE "Date", TOTAL_AMOUNT "Amount"
FROM INCOME_M
WHERE INCOME_DATE BETWEEN TO_DATE(:FROM_DATE, 'DD-MM-YYYY') AND TO_DATE(:TO_DATE, 'DD-MM-YYYY')
ORDER BY INCOME_DATE;

UPDATE transactions
SET SellingPrice = SellingPrice * 0.95
WHERE Price = SellingPrice
  AND CouponCode IS NOT NULL
  AND ReturnDate > PurchaseDate
  AND DATEDIFF(CURDATE(), BirthDate) > 18 * 365.25
  AND TransactionID NOT IN (SELECT TransactionID FROM transactions GROUP BY TransactionID HAVING COUNT(*) > 1);



  
SELECT Type,  SUM(Amount) AS TotalSpen
FROM Spend
GROUP BY Type, Amount;


SELECT Type,  Amount
FROM Spend
ORDER BY Amount DESC
LIMIT 5;

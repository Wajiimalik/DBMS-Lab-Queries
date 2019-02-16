IF((SELECT Quantity FROM Basket WHERE CustID = 2 AND ProductID = 2) IN ( 0 , NULL ) )
	BEGIN
		 INSERT INTO Basket 
		 VALUES
		 ( 
			2, 
			2, 
			2, 
			CASE 
                  WHEN ( (SELECT DiscountPrice FROM Product WHERE ProductID = 2) = 0   )
                     
					 THEN (SELECT Price FROM Product WHERE ProductID = 2)
                  
				  ELSE (SELECT DiscountPrice FROM Product WHERE ProductID = 2) 
             END
			
		  )
	END



	IF((SELECT Quantity FROM Basket WHERE CustID = 2 AND ProductID = 2) != 0)
	BEGIN
		UPDATE Basket 
		SET 
			CustID = 2,

		    ProductID = 2, 

			Quantity = (iSNULL((SELECT Quantity FROM Basket WHERE CustID = 2 AND ProductID = 2),0) + 1),



			T_Price =      CASE WHEN ( (SELECT DiscountPrice FROM Product WHERE ProductID = 2) = 0   )
                     
									THEN (SELECT Price FROM Product WHERE ProductID = 2)  * (iSNULL((SELECT Quantity FROM Basket WHERE CustID = 2 AND ProductID = 2),0) + 1)
                  




							ELSE 2
									
							--		 CASE WHEN ( (SELECT Quantity FROM Basket WHERE CustID = 2 AND ProductID = 2) % (SELECT DiscountOnQty FROM Product) = 0  )
											
							--				     THEN (SELECT (p.DiscountPrice * (b.Quantity/p.DiscountOnQty))  FROM Product p, Basket b WHERE b.ProductID = 2 AND b.CustID = 2 AND p.ProductID = 2)

							--	      ELSE ( SELECT ( ((b.Quantity % p.DiscountOnQty) * p.Price) + (((b.Quantity - (b.Quantity % p.DiscountOnQty))/p.DiscountOnQty) * p.DiscountPrice ) ) FROM Basket b, Product p  WHERE b.ProductID = 2 AND b.CustID = 2 AND p.ProductID = 2  )

							--	      END

						     END
		

	END

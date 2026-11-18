SELECT m.Denumire AS Metoda, COUNT(pl.ID_Plata) AS Numar_Plati, SUM(pl.Suma) AS Total_Incasat 
FROM PLATA pl
JOIN METODA_PLATA m ON pl.ID_Metoda = m.ID_Metoda
GROUP BY m.Denumire;
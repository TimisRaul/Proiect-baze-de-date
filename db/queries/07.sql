SELECT t.Denumire, SUM(p.Prima_Asigurare) AS Total_Prime 
FROM POLITA p
JOIN TIP_ASIGURARE t ON p.ID_Tip = t.ID_Tip
GROUP BY t.Denumire
HAVING SUM(p.Prima_Asigurare) > 1000;
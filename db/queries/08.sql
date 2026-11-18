SELECT Nr_Polita, Prima_Asigurare 
FROM POLITA 
WHERE Prima_Asigurare > (SELECT AVG(Prima_Asigurare) FROM POLITA);
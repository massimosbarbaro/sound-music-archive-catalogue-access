SELECT Starsi.[Cognome], Starsi.[Nome], Starsi.[IdS], Starsi.[DataN], Starsi.[davcna], Starsi.[Via], Starsi.[Cap], Starsi.[IdLN], Starsi.[IdLR], Starsi.[Ricevuta], Starsi.[Tel], Starsi.[Mail], Starsi.[cel], Starsi.[DataS]
FROM Starsi
WHERE (((Starsi.[Cognome]) In (SELECT [Cognome] FROM [Starsi] As Tmp GROUP BY [Cognome],[Nome] HAVING Count(*)>1  And [Nome] = [Starsi].[Nome])))
ORDER BY Starsi.[Cognome], Starsi.[Nome];

SELECT Starsi.IdP, [Ruolo] & " - " & [Cognome] & " " & [Nome] & ", " & [DataN] AS Genitore
FROM Ruolo INNER JOIN Starsi ON Ruolo.IdR = Starsi.IdR;

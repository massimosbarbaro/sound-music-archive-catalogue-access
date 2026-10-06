SELECT Scuola.AnnoS, Go.Sede, [Prof.Cognome] & " " & [Prof.Nome] AS NominativoProf, Materia.Stejemo, Scuola.Razred, Count([Go.Cognome] & " " & [Go.Nome]) AS NominativoUc, Scuola.Posk, Sola.Note
FROM (((([Go] LEFT JOIN Scuola ON Go.IdP = Scuola.IdP) LEFT JOIN Materia ON Scuola.IdM = Materia.IdM) LEFT JOIN Podruzica ON Scuola.IdD = Podruzica.IdD) LEFT JOIN Sola ON (Scuola.AnnoS = Sola.AnnoS) AND (Scuola.IdP = Sola.IdP)) LEFT JOIN Prof ON Scuola.IdPr = Prof.IdPr
GROUP BY Scuola.AnnoS, Go.Sede, [Prof.Cognome] & " " & [Prof.Nome], Materia.Stejemo, Scuola.Razred, Scuola.Posk, Sola.Note
HAVING (((Scuola.AnnoS) Like [Anno Materia]) AND ((Go.Sede)="go") AND ((Materia.Stejemo) Not Like "st*") AND ((Scuola.Posk)=0))
ORDER BY Materia.Stejemo;

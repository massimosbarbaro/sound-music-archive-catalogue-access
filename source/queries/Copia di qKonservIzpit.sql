SELECT Scuola.AnnoS, Go.Sede, Materia.Spricevalo, Materia.Stejemo, Konservatori.Luogo, Scuola.Spric, Scuola.Razred, Count(Materia.Stejemo) AS ConteggioDiStejemo
FROM Konservatori INNER JOIN (Materia INNER JOIN ([Go] INNER JOIN Scuola ON Go.IdP = Scuola.IdP) ON Materia.IdM = Scuola.IdM) ON Konservatori.IdK = Scuola.IdK
GROUP BY Scuola.AnnoS, Go.Sede, Materia.Spricevalo, Materia.Stejemo, Konservatori.Luogo, Scuola.Spric, Scuola.Razred
HAVING (((Scuola.AnnoS) Like [Inserire anno scolastico]) AND ((Go.Sede)="go") AND ((Scuola.Spric)=-1))
ORDER BY Scuola.AnnoS, Go.Sede;

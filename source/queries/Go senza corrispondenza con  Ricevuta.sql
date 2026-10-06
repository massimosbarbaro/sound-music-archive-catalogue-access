SELECT Go.Sede, Prof.Cognome, Prof.Nome, Materia.Materia, Go.Cognome, Go.Nome, Count(Go.IdP) AS ConteggioDiIdP, Go.mail, Go.tel, Go.cel
FROM (Prof INNER JOIN ([Go] INNER JOIN Scuola ON Go.IdP = Scuola.IdP) ON Prof.IdPr = Scuola.IdPr) INNER JOIN Materia ON Scuola.IdM = Materia.IdM
GROUP BY Go.IdP, Go.Sede, Prof.Cognome, Prof.Nome, Materia.Materia, Go.Cognome, Go.Nome, Go.mail, Go.tel, Go.cel, Scuola.AnnoS, Scuola.Posk
HAVING (((Scuola.AnnoS)="2015/2016") AND ((Scuola.Posk)=0)) OR (((Scuola.AnnoS)="2016/2017") AND ((Scuola.Posk)=0))
ORDER BY Prof.Cognome, Materia.Materia, Scuola.AnnoS;

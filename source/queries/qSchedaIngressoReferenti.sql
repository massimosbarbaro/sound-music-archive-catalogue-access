SELECT Go.IdP, RuoloReferenti.IdRf, RuoloReferenti.Ruolo, Referenti.Cognome, Referenti.Nome, Referenti.[Lavora presso], Referenti.Tel, Referenti.cel, Referenti.Mail
FROM RuoloReferenti INNER JOIN (Referenti INNER JOIN ([Go] INNER JOIN LReP ON Go.IdP = LReP.IdP) ON Referenti.IdRe = LReP.IdRe) ON RuoloReferenti.IdRf = LReP.IdRf
ORDER BY RuoloReferenti.IdRf;

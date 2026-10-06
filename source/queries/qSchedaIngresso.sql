SELECT Go.IdP, Go.Cognome, Go.Nome, Go.LuogoN, Go.DataN, SchedaIngresso.Affidante, SchedaIngresso.[Servizi minore], SchedaIngresso.[Servizi Genitori], SchedaIngresso.Decisioni
FROM [Go] INNER JOIN SchedaIngresso ON Go.IdP = SchedaIngresso.IdP;

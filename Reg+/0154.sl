(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/161) — gt=concat(contain(star(<any>)),contain(<num>))")
(set-info :description "lines with zero or more characters before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00218 0 (size (Pos w00218)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00527 0 (size (Pos w00527)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00167 0 (size (Pos w00167)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00444 0 (size (Pos w00444)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00448 0 (size (Pos w00448)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00982 0 (size (Pos w00982)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00937 0 (size (Pos w00937))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00701 0 (size (Pos w00701))))))

(check-synth)

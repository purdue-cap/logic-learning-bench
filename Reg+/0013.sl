(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/13) — gt=concat(<any>,contain(<let>))")
(set-info :description "lines with words that contain a character followed by a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00246 0 (size (Pos w00246)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00407 0 (size (Pos w00407)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00359 0 (size (Pos w00359)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00450 0 (size (Pos w00450)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00170 0 (size (Pos w00170)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00173 0 (size (Pos w00173)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00225 0 (size (Pos w00225)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00021 0 (size (Pos w00021))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00312 0 (size (Pos w00312))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)

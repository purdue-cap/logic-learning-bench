(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/163) — gt=concat(and(<let>,<low>),contain(<any>))")
(set-info :description "lines with a lower-case letter before character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00224 0 (size (Pos w00224)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00218 0 (size (Pos w00218)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00215 0 (size (Pos w00215)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00237 0 (size (Pos w00237)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01213 0 (size (Pos w01213)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00161 0 (size (Pos w00161))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00170 0 (size (Pos w00170))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00166 0 (size (Pos w00166))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)

(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/182) — gt=contain(or(concat(<any>,contain(<let>)),<m0>))")
(set-info :description "lines containing a character before a letter or '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00215 0 (size (Pos w00215)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00238 0 (size (Pos w00238)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00110 0 (size (Pos w00110)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00405 0 (size (Pos w00405)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00388 0 (size (Pos w00388)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00061 0 (size (Pos w00061))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00219 0 (size (Pos w00219))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394))))))

(check-synth)

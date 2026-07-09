(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/155) — gt=and(contain(<low>),not(<m0>))")
(set-info :description "lines containing lower-case letter and not string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01025 0 (size (Pos w01025)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00160 0 (size (Pos w00160)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00923 0 (size (Pos w00923)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01217 0 (size (Pos w01217)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01024 0 (size (Pos w01024)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00362 0 (size (Pos w00362)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00014 0 (size (Pos w00014))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00918 0 (size (Pos w00918))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)

(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/21) — gt=repeatatleast(or(<vow>,<let>),5)")
(set-info :description "lines with 5 or more vowels or letters")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00937 0 (size (Pos w00937)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01080 0 (size (Pos w01080)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00943 0 (size (Pos w00943)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01081 0 (size (Pos w01081)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00909 0 (size (Pos w00909)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00907 0 (size (Pos w00907)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01039 0 (size (Pos w01039)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230))))))

(check-synth)

(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/183) — gt=concat(<cap>,contain(or(or(<m0>,<num>),<m1>)))")
(set-info :description "lines with a capital letter either the string '!' , a number , or the string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00162 0 (size (Pos w00162)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00179 0 (size (Pos w00179)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00190 0 (size (Pos w00190)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00442 0 (size (Pos w00442)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00460 0 (size (Pos w00460)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01036 0 (size (Pos w01036)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00436 0 (size (Pos w00436)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00172 0 (size (Pos w00172))))))

(check-synth)

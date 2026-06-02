(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/103) — gt=startwith(repeatatleast(<low>,4))")
(set-info :description "lines with words starting with 4 or more lower-case letters")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00750 0 (size (Pos w00750)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00937 0 (size (Pos w00937)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00934 0 (size (Pos w00934)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01074 0 (size (Pos w01074)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01199 0 (size (Pos w01199)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01302 0 (size (Pos w01302)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01454 0 (size (Pos w01454)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00269 0 (size (Pos w00269))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00524 0 (size (Pos w00524))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00147 0 (size (Pos w00147))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00148 0 (size (Pos w00148))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00892 0 (size (Pos w00892))))))

(check-synth)

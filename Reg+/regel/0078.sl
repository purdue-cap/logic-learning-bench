(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/79) — gt=concat(<m0>,contain(<let>))")
(set-info :description "lines containing words wherein the string '!' precedes a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00080 0 (size (Pos w00080)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00319 0 (size (Pos w00319)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00635 0 (size (Pos w00635)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00987 0 (size (Pos w00987)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00359 0 (size (Pos w00359)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01514 0 (size (Pos w01514))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01127 0 (size (Pos w01127))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 0 (size (Pos w00382))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00067 0 (size (Pos w00067))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00576 0 (size (Pos w00576))))))

(check-synth)

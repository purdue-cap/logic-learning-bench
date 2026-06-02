(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/24) — gt=or(contain(<any>),concat(<m0>,contain(<m1>)))")
(set-info :description "lines with characters or the string '!' followed by the string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 0 (size (Pos w00073)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00223 0 (size (Pos w00223)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00528 0 (size (Pos w00528)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00393 0 (size (Pos w00393)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00449 0 (size (Pos w00449)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00910 0 (size (Pos w00910)))))

(check-synth)

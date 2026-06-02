(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/2) — gt=not(contain(concat(< >,< >)))")
(set-info :description "write regular expression in C# to validate that the input does not contain double spaces")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00596 0 (size (Pos w00596)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00688 0 (size (Pos w00688)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00620 0 (size (Pos w00620))))))

(check-synth)

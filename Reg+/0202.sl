(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/2) — gt=not(contain(concat(< >,< >)))")
(set-info :description "write regular expression in C# to validate that the input does not contain double spaces")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00596 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00688 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00620 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

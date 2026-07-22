(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/76) — gt=repeatatleast(or(or(<let>,<num>),or(<.>,or(concat(<%>,concat(<t>,concat(<7>,<%>))),concat(<%>,concat(<d>,concat(<4>,<%>)))))),1)")
(set-info :description "valid characters are alphanumeric and '.'(period). The patterns are '%d4%' and '%t7%'. So '%' is not valid by itself, but has to be part of these specific patterns.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00668 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00636 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00713 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00674 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00657 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00714 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/76) — gt=repeatatleast(or(or(<let>,<num>),or(<.>,or(concat(<%>,concat(<t>,concat(<7>,<%>))),concat(<%>,concat(<d>,concat(<4>,<%>)))))),1)")
(set-info :description "valid characters are alphanumeric and '.'(period). The patterns are '%d4%' and '%t7%'. So '%' is not valid by itself, but has to be part of these specific patterns.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00668 0 (size (Pos w00668)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00636 0 (size (Pos w00636)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00713 0 (size (Pos w00713)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00674 0 (size (Pos w00674))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00657 0 (size (Pos w00657))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00714 0 (size (Pos w00714))))))

(check-synth)

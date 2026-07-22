(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/77) — gt=repeatatleast(or(or(<let>,<num>),or(<~>,or(<!>,or(<@>,or(<#>,or(<$>,or(<->,<_>))))))),1)")
(set-info :description "The input box should accept alphanumeric with no space and it should also allow the user to use the characters like '~' '!' '@' '#' '$' '-' '_' any where in the string, except these characters non of the other characters should be allowed like ('%',  '&', '^' etc). It should not allow leading/trailing whitespace also.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00384 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00525 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00526 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00527 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/52) — gt=repeatatleast(or(<let>,or(<num>,or(<_>,or(< >,or(<->,or(<+>,or(</>,or(<\\>,or(<(>,<)>))))))))),1)")
(set-info :description "Allows only the following characters: Letters, numbers, spaces and any of the following characters '_' '-' '+' '(' ')' '/' '\\'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00246 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00323 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00394 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00701 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00392 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00393 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00322 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00530 head tail))))

(check-synth)

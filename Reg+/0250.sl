(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/52) — gt=repeatatleast(or(<let>,or(<num>,or(<_>,or(< >,or(<->,or(<+>,or(</>,or(<\\>,or(<(>,<)>))))))))),1)")
(set-info :description "Allows only the following characters: Letters, numbers, spaces and any of the following characters '_' '-' '+' '(' ')' '/' '\\'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00246 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00323 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00701 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00392 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00393 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00322 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00530 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

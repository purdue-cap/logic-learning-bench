(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/52) — gt=repeatatleast(or(<let>,or(<num>,or(<_>,or(< >,or(<->,or(<+>,or(</>,or(<\\>,or(<(>,<)>))))))))),1)")
(set-info :description "Allows only the following characters: Letters, numbers, spaces and any of the following characters '_' '-' '+' '(' ')' '/' '\\'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00246 0 (size (Pos w00246)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00323 0 (size (Pos w00323)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00701 0 (size (Pos w00701)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00392 0 (size (Pos w00392))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00393 0 (size (Pos w00393))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00322 0 (size (Pos w00322))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00530 0 (size (Pos w00530))))))

(check-synth)

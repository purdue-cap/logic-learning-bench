(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/7) — gt=endwith(concat(<cap>,contain(<vow>)))")
(set-info :description "lines ending with a capital letter preceding a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00314 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00863 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00862 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00700 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00908 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00617 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01326 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00313 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/7) — gt=endwith(concat(<cap>,contain(<vow>)))")
(set-info :description "lines ending with a capital letter preceding a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00314 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00863 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00862 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00700 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00908 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00617 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01326 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00313 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

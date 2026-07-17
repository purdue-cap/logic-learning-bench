(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/7) — gt=endwith(concat(<cap>,contain(<vow>)))")
(set-info :description "lines ending with a capital letter preceding a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00314 0 (size (Pos w00314)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00863 0 (size (Pos w00863)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00862 0 (size (Pos w00862)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00700 0 (size (Pos w00700)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00908 0 (size (Pos w00908)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00617 0 (size (Pos w00617)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01326 0 (size (Pos w01326)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00313 0 (size (Pos w00313))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)

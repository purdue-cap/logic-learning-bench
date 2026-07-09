(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/160) — gt=repeatatleast(concat(<any>,contain(<vow>)),1)")
(set-info :description "lines with character followed by vowel at least once")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00119 0 (size (Pos w00119)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00131 0 (size (Pos w00131)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00246 0 (size (Pos w00246)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00674 0 (size (Pos w00674)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01269 0 (size (Pos w01269)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00624 0 (size (Pos w00624)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00235 0 (size (Pos w00235))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00124 0 (size (Pos w00124))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00088 0 (size (Pos w00088))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)

(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/5) — gt=endwith(repeatatleast(<any>,3))")
(set-info :description "lines ending with 3 or more words with a character .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00675 0 (size (Pos w00675)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00530 0 (size (Pos w00530)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00565 0 (size (Pos w00565)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00660 0 (size (Pos w00660)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01008 0 (size (Pos w01008)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01165 0 (size (Pos w01165)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00606 0 (size (Pos w00606)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00100 0 (size (Pos w00100))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00063 0 (size (Pos w00063))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)

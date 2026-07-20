(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/5) — gt=endwith(repeatatleast(<any>,3))")
(set-info :description "lines ending with 3 or more words with a character .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00675 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00530 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00565 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00660 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01008 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01165 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00606 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00100 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00063 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

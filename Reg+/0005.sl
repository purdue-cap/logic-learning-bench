(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/5) — gt=endwith(repeatatleast(<any>,3))")
(set-info :description "lines ending with 3 or more words with a character .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00675 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00530 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00565 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00660 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01008 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01165 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00606 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00115 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00100 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00063 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

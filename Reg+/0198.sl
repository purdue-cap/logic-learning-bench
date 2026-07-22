(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/206) — gt=concat(repeatatleast(contain(<m0>),4),contain(<num>))")
(set-info :description "lines containing 4 or more of the string '!' before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00826 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01148 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00985 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01066 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01161 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01002 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01147 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00610 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

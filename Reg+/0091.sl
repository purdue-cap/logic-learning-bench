(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/94) — gt=startwith(or(<num>,<let>))")
(set-info :description "lines starting in words with a number or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01135 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00143 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00395 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00748 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00425 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00417 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00661 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00008 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00004 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00005 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

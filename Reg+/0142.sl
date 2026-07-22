(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/148) — gt=concat(<any>,contain(concat(<num>,contain(<vow>))))")
(set-info :description "lines with character before number followed by vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00936 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00784 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00669 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00889 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01313 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00997 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00509 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00133 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00508 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00232 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00790 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00014 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

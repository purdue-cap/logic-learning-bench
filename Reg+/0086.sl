(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/88) — gt=concat(<num>,contain(concat(<low>,contain(<let>))))")
(set-info :description "lines in which a number comes prior to a lower-case letter , and followed by a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00403 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00404 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00414 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00418 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01012 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00681 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00668 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00399 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00764 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00447 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00382 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01106 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

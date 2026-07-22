(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/97) — gt=contain(concat(<vow>,contain(<num>)))")
(set-info :description "lines that contain a vowel before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00220 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01354 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00303 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00287 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00276 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00808 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00931 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00300 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00015 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00593 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00594 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01471 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01489 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

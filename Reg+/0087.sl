(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/89) — gt=contain(concat(<vow>,contain(<num>)))")
(set-info :description "lines with a vowel before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00221 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00563 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00366 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00286 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00303 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00596 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00573 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01109 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01377 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01231 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00788 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01234 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01317 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

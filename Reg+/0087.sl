(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/89) — gt=contain(concat(<vow>,contain(<num>)))")
(set-info :description "lines with a vowel before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00221 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00563 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00366 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00286 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00303 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00596 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00573 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01109 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01377 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01231 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00788 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01234 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01317 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

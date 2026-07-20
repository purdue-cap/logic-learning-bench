(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/97) — gt=contain(concat(<vow>,contain(<num>)))")
(set-info :description "lines that contain a vowel before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00220 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01354 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00303 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00287 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00276 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00808 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00931 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00300 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00015 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00593 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00594 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01471 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01489 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

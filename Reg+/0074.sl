(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/75) — gt=concat(<vow>,contain(<any>))")
(set-info :description "lines containing a vowel followed by a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00230 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00216 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00266 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00264 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00943 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00502 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01220 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01321 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00957 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00814 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00056 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00283 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/75) — gt=concat(<vow>,contain(<any>))")
(set-info :description "lines containing a vowel followed by a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00216 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00266 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00264 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00943 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00502 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01220 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01321 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00957 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00382 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00814 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00056 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00283 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

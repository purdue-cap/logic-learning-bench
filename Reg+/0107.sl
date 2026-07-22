(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/112) — gt=concat(star(<any>),contain(<m0>))")
(set-info :description "lines in which a character appears no less than zero times before a '!' string occurs")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01144 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01092 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00655 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00884 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00823 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00769 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01319 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00419 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01409 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01408 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01505 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/112) — gt=concat(star(<any>),contain(<m0>))")
(set-info :description "lines in which a character appears no less than zero times before a '!' string occurs")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01144 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01092 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00065 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00655 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00884 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00823 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00769 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01319 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00419 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01409 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01408 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01505 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

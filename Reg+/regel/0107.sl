(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/112) — gt=concat(star(<any>),contain(<m0>))")
(set-info :description "lines in which a character appears no less than zero times before a '!' string occurs")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01144 0 (size (Pos w01144)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01092 0 (size (Pos w01092)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00655 0 (size (Pos w00655)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00884 0 (size (Pos w00884)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00823 0 (size (Pos w00823)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00769 0 (size (Pos w00769))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01319 0 (size (Pos w01319))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00419 0 (size (Pos w00419))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01409 0 (size (Pos w01409))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01408 0 (size (Pos w01408))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01505 0 (size (Pos w01505))))))

(check-synth)

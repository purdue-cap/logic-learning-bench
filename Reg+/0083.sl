(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/84) — gt=endwith(repeatatleast(<vow>,2))")
(set-info :description "items terminating withe a vowel at least twice .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01439 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01509 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00658 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01497 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00807 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00598 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00813 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01533 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00382 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00802 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01124 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00969 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

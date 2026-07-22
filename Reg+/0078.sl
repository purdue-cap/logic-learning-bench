(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/79) — gt=concat(<m0>,contain(<let>))")
(set-info :description "lines containing words wherein the string '!' precedes a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00080 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00319 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00635 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00987 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00359 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01514 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01127 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00382 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00067 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00576 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

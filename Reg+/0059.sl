(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/59) — gt=endwith(or(<m0>,<num>))")
(set-info :description "lines that end with '!' or have just have a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01211 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01346 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01390 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01341 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01270 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00555 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00679 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01099 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01339 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00022 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

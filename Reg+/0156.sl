(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/163) — gt=concat(and(<let>,<low>),contain(<any>))")
(set-info :description "lines with a lower-case letter before character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00224 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00218 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00237 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01213 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00161 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00170 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00166 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

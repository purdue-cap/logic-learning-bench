(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/163) — gt=concat(and(<let>,<low>),contain(<any>))")
(set-info :description "lines with a lower-case letter before character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00229 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00230 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00224 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00218 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00215 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00237 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01213 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00161 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00170 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00166 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

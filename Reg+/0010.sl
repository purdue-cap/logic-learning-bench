(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/10) — gt=contain(or(<low>,<any>))")
(set-info :description "lines with a lower case letter or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00009 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00506 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00500 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

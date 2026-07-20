(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/1) — gt=concat(<cap>,contain(or(or(<any>,<low>),<m0>)))")
(set-info :description "items with an upper case letter preceding either '!' , a small letter , or a character .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00162 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00172 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00164 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00176 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00187 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00177 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00202 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00017 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

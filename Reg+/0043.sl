(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/43) — gt=concat(<any>,contain(and(<let>,<low>)))")
(set-info :description "lines with a character before a letter and lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00146 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00119 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00158 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00097 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00095 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00093 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00214 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00145 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00281 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00278 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00205 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00077 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00037 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/38) — gt=concat(<low>,contain(contain(<let>)))")
(set-info :description "lines that have a letter and then a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00247 0 (size (Pos w00247)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00254 0 (size (Pos w00254)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00259 0 (size (Pos w00259)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00268 0 (size (Pos w00268)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00274 0 (size (Pos w00274)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00310 0 (size (Pos w00310)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00172 0 (size (Pos w00172))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00169 0 (size (Pos w00169))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00191 0 (size (Pos w00191))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00194 0 (size (Pos w00194))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00199 0 (size (Pos w00199))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00072 0 (size (Pos w00072))))))

(check-synth)

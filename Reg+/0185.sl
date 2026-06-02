(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/193) — gt=concat(startwith(<any>),contain(<let>))")
(set-info :description "items beginning with a character preceding a letter .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00119 0 (size (Pos w00119)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00246 0 (size (Pos w00246)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00247 0 (size (Pos w00247)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00548 0 (size (Pos w00548)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00352 0 (size (Pos w00352)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00844 0 (size (Pos w00844)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00218 0 (size (Pos w00218))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00238 0 (size (Pos w00238))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00251 0 (size (Pos w00251))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00114 0 (size (Pos w00114))))))

(check-synth)

(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/125) — gt=startwith(or(or(<any>,<cap>),<let>))")
(set-info :description "lines starting with words with a character or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00535 0 (size (Pos w00535)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00941 0 (size (Pos w00941)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00424 0 (size (Pos w00424)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00888 0 (size (Pos w00888)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00571 0 (size (Pos w00571)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00775 0 (size (Pos w00775)))))

(check-synth)

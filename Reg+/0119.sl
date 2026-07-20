(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/125) — gt=startwith(or(or(<any>,<cap>),<let>))")
(set-info :description "lines starting with words with a character or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00535 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00941 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00424 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00888 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00571 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00775 head tail)))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

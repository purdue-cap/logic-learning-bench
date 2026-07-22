(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/125) — gt=startwith(or(or(<any>,<cap>),<let>))")
(set-info :description "lines starting with words with a character or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00535 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00941 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00424 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00888 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00571 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00775 (RegLan.Sem r (RegLan.Asp head tail))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

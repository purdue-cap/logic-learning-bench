(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/16) — gt=not(or(or(<any>,<vow>),<cap>))")
(set-info :description "lines without a character , a vowel , or a capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00041 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00036 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

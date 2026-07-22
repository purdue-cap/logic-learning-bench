(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/6) — gt=not(or(or(<vow>,<any>),<let>))")
(set-info :description "lines that do not contain a character , a vowel , or a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00041 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00044 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00031 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00009 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

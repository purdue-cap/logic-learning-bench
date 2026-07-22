(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/168) — gt=concat(or(or(<vow>,<m0>),<low>),contain(<m1>))")
(set-info :description "lines which are having either a vowel , the string '!' , or a lower-case letter before the string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00223 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00265 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00168 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00991 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01212 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00546 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00547 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00181 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00116 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

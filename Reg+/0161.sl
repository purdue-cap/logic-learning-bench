(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/168) — gt=concat(or(or(<vow>,<m0>),<low>),contain(<m1>))")
(set-info :description "lines which are having either a vowel , the string '!' , or a lower-case letter before the string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00223 0 (size (Pos w00223)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00265 0 (size (Pos w00265)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00168 0 (size (Pos w00168)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00991 0 (size (Pos w00991)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01212 0 (size (Pos w01212)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00546 0 (size (Pos w00546)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00547 0 (size (Pos w00547)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00181 0 (size (Pos w00181))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00116 0 (size (Pos w00116))))))

(check-synth)

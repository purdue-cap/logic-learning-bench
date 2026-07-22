(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/159) — gt=concat(endwith(<m0>),contain(or(or(<m1>,<m2>),<num>)))")
(set-info :description "lines ending with string '!' before either string '@' , string '#' , or number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00073 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00066 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00069 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00492 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00536 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00554 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00821 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00004 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00433 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

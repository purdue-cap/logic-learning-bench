(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/170) — gt=contain(or(or(<vow>,<num>),<let>))")
(set-info :description "lines with a vowel , number , or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00041 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00328 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00153 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00021 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00218 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00009 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00144 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00820 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

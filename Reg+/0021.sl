(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/21) — gt=repeatatleast(or(<vow>,<let>),5)")
(set-info :description "lines with 5 or more vowels or letters")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00937 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01080 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00943 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01081 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00909 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00907 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01039 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

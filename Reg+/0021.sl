(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/21) — gt=repeatatleast(or(<vow>,<let>),5)")
(set-info :description "lines with 5 or more vowels or letters")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00937 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01080 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00943 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01081 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00909 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00907 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01039 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

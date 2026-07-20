(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/22) — gt=contain(or(or(<low>,<vow>),<num>))")
(set-info :description "lines that contain words with a lower-case letter , a vowel , or a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00039 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00041 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00048 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00054 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01282 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00021 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00007 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00006 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

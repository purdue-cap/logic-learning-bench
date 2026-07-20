(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/13) — gt=concat(<any>,contain(<let>))")
(set-info :description "lines with words that contain a character followed by a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00246 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00407 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00359 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00450 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00170 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00173 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00225 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00021 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00312 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

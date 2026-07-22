(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/13) — gt=concat(<any>,contain(<let>))")
(set-info :description "lines with words that contain a character followed by a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00246 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00407 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00359 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00450 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00170 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00173 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00225 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00021 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00312 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

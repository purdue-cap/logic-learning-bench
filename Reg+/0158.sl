(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/165) — gt=startwith(endwith(<m0>))")
(set-info :description "lines starting with words ending with the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00215 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00505 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00525 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01357 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00560 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01097 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01044 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00260 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00435 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00659 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)

(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/75) — gt=concat(<vow>,contain(<any>))")
(set-info :description "lines containing a vowel followed by a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00216 0 (size (Pos w00216)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00266 0 (size (Pos w00266)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00264 0 (size (Pos w00264)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00943 0 (size (Pos w00943)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00502 0 (size (Pos w00502)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01220 0 (size (Pos w01220)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01321 0 (size (Pos w01321))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00957 0 (size (Pos w00957))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 0 (size (Pos w00382))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00814 0 (size (Pos w00814))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00056 0 (size (Pos w00056))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00283 0 (size (Pos w00283))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)

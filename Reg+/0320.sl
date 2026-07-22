(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/124) — gt=and(contain(<num>),and(and(contain(<cap>),contain(<low>)),and(contain(<spec>),repeatrange(<any>,6,20))))")
(set-info :description "Let’s take a password as a combination of alphanumeric characters along with special characters, and check whether the password is valid or not with the help of few conditions. Conditions for a valid password are: Should have at least one number. Should have at least one uppercase and one lowercase character. Should have at least one special symbol. Should be between 6 to 20 characters long.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00442 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00387 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

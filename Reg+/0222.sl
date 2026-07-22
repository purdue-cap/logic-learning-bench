(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/22) — gt=and(repeatrange(<any>,3,20),and(startwith(<cap>),and(not(contain(concat(<cap>,<cap>))),and(not(contain(concat(not(<let>),< >))),and(not(contain(concat(< >,not(<cap>)))),and(not(contain(concat(not(<let>),<->))),and(not(contain(concat(<->,not(<low>)))),not(contain(concat(<cap>,not(or(<low>,or(<->,< >)))))))))))))")
(set-info :description "I'm trying to write a regular expression to check whether or not a proposed name is valid in a gaming platform. Rules: Name must contain at least 3 and no more than 20 letters. Name must start with a upper case letter. Name must never have two uppercase letters in a row. Spaces are allowed, but must be preceded by a letter and be followed by an uppercase letter. Hyphens are allowed, but must be preceded by a letter and be followed by a lowercase letter. All uppercase letters must be followed by a lowercase letter unless they are followed by a space or hyphen.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00141 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00577 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00580 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00687 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00152 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00578 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00579 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00572 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)

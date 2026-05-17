(require "../signatures/37.sl")
(provide so_37_P1 so_37_P2 so_37_P3 so_37_P4 so_37_P5 so_37_N1 so_37_N2 so_37_N3 so_37_N4)

(define-model so_37_P1
  (define-univ Pos ($0))
  (interp-fun is.any (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x3A (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
)

(define-model so_37_P2
  (define-univ Pos ($0 $1))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x3A (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
)

(define-model so_37_P3
  (define-univ Pos ($0 $1))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x3A (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
)

(define-model so_37_P4
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    ((_) false)
  )))
  (interp-fun is.lower (match (
    (($2) true)
    ((_) false)
  )))
  (interp-fun is.upper (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    (($0) true)
    (($2) true)
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    (($2) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    (($2) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    (($2) true)
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    (($1) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x3A (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
)

(define-model so_37_P5
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    ((_) false)
  )))
  (interp-fun is.lower (match (
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    (($0) true)
    (($1) true)
    (($2) true)
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x3A (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
)

(define-model so_37_N1
  (define-univ Pos ($0))
  (interp-fun is.any (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    ((_) false)
  )))
  (interp-fun is.word (match (
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x3A (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
)

(define-model so_37_N2
  (define-univ Pos ($0 $1))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    ((_) false)
  )))
  (interp-fun is.word (match (
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.x3A (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
)

(define-model so_37_N3
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    ((_) false)
  )))
  (interp-fun is.lower (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x3A (match (
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    (($2) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
)

(define-model so_37_N4
  (define-univ Pos ($0 $1 $2))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x3A (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    (($2) true)
    ((_) false)
  )))
)

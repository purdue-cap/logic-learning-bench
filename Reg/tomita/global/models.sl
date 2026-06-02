(require "./signatures.sl")
(provide w0 w1 w00 w01 w10 w11 w000 w001 w010 w011 w100 w101 w110 w111 w0000 w0001 w0010 w0011 w0100 w0101 w0110 w0111 w1000 w1001 w1010 w1011 w1100 w1101 w1110 w1111 w00000 w00001 w00010 w00011 w00100 w00101 w00110 w00111 w01000 w01001 w01010 w01011 w01100 w01101 w01110 w01111 w10000 w10001 w10010 w10011 w10100 w10101 w10110 w10111 w11000 w11001 w11010 w11011 w11100 w11101 w11110 w11111)

(define-model w0
  (define-univ Pos ($0))
  (interp-fun zero (match ((($0) true))))
  (interp-fun one (match ((($0) false)))))

(define-model w1
  (define-univ Pos ($0))
  (interp-fun zero (match ((($0) false))))
  (interp-fun one (match ((($0) true)))))

(define-model w00
  (define-univ Pos ($0 $1))
  (interp-fun zero (match ((($0) true) (($1) true))))
  (interp-fun one (match ((($0) false) (($1) false)))))

(define-model w01
  (define-univ Pos ($0 $1))
  (interp-fun zero (match ((($0) true) (($1) false))))
  (interp-fun one (match ((($0) false) (($1) true)))))

(define-model w10
  (define-univ Pos ($0 $1))
  (interp-fun zero (match ((($0) false) (($1) true))))
  (interp-fun one (match ((($0) true) (($1) false)))))

(define-model w11
  (define-univ Pos ($0 $1))
  (interp-fun zero (match ((($0) false) (($1) false))))
  (interp-fun one (match ((($0) true) (($1) true)))))

(define-model w000
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) true))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) false)))))

(define-model w001
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) false))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) true)))))

(define-model w010
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) true))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) false)))))

(define-model w011
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) false))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) true)))))

(define-model w100
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) true))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) false)))))

(define-model w101
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) false))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) true)))))

(define-model w110
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) true))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) false)))))

(define-model w111
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) false))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) true)))))

(define-model w0000
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) true) (($3) true))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) false) (($3) false)))))

(define-model w0001
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) true) (($3) false))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) false) (($3) true)))))

(define-model w0010
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) false) (($3) true))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) true) (($3) false)))))

(define-model w0011
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) false) (($3) false))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) true) (($3) true)))))

(define-model w0100
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) true) (($3) true))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) false) (($3) false)))))

(define-model w0101
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) true) (($3) false))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) false) (($3) true)))))

(define-model w0110
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) false) (($3) true))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) true) (($3) false)))))

(define-model w0111
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) false) (($3) false))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) true) (($3) true)))))

(define-model w1000
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) true) (($3) true))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) false) (($3) false)))))

(define-model w1001
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) true) (($3) false))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) false) (($3) true)))))

(define-model w1010
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) false) (($3) true))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) true) (($3) false)))))

(define-model w1011
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) false) (($3) false))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) true) (($3) true)))))

(define-model w1100
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) true) (($3) true))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) false) (($3) false)))))

(define-model w1101
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) true) (($3) false))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) false) (($3) true)))))

(define-model w1110
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) false) (($3) true))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) true) (($3) false)))))

(define-model w1111
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) false) (($3) false))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) true) (($3) true)))))

(define-model w00000
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) false) (($3) false) (($4) false)))))

(define-model w00001
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) false))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) false) (($3) false) (($4) true)))))

(define-model w00010
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) true) (($3) false) (($4) true))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) false) (($3) true) (($4) false)))))

(define-model w00011
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) true) (($3) false) (($4) false))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) false) (($3) true) (($4) true)))))

(define-model w00100
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) false) (($3) true) (($4) true))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) true) (($3) false) (($4) false)))))

(define-model w00101
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) false) (($3) true) (($4) false))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) true) (($3) false) (($4) true)))))

(define-model w00110
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) false) (($3) false) (($4) true))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) true) (($3) true) (($4) false)))))

(define-model w00111
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) false) (($3) false) (($4) false))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) true) (($3) true) (($4) true)))))

(define-model w01000
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) true) (($3) true) (($4) true))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) false) (($3) false) (($4) false)))))

(define-model w01001
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) true) (($3) true) (($4) false))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) false) (($3) false) (($4) true)))))

(define-model w01010
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) true) (($3) false) (($4) true))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) false) (($3) true) (($4) false)))))

(define-model w01011
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) true) (($3) false) (($4) false))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) false) (($3) true) (($4) true)))))

(define-model w01100
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) false) (($3) true) (($4) true))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) true) (($3) false) (($4) false)))))

(define-model w01101
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) false) (($3) true) (($4) false))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) true) (($3) false) (($4) true)))))

(define-model w01110
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) false) (($3) false) (($4) true))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) true) (($3) true) (($4) false)))))

(define-model w01111
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) false) (($2) false) (($3) false) (($4) false))))
  (interp-fun one (match ((($0) false) (($1) true) (($2) true) (($3) true) (($4) true)))))

(define-model w10000
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) true) (($3) true) (($4) true))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) false) (($3) false) (($4) false)))))

(define-model w10001
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) true) (($3) true) (($4) false))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) false) (($3) false) (($4) true)))))

(define-model w10010
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) true) (($3) false) (($4) true))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) false) (($3) true) (($4) false)))))

(define-model w10011
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) true) (($3) false) (($4) false))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) false) (($3) true) (($4) true)))))

(define-model w10100
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) false) (($3) true) (($4) true))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) true) (($3) false) (($4) false)))))

(define-model w10101
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) false) (($3) true) (($4) false))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) true) (($3) false) (($4) true)))))

(define-model w10110
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) false) (($3) false) (($4) true))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) true) (($3) true) (($4) false)))))

(define-model w10111
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) true) (($2) false) (($3) false) (($4) false))))
  (interp-fun one (match ((($0) true) (($1) false) (($2) true) (($3) true) (($4) true)))))

(define-model w11000
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) true) (($3) true) (($4) true))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) false) (($3) false) (($4) false)))))

(define-model w11001
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) true) (($3) true) (($4) false))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) false) (($3) false) (($4) true)))))

(define-model w11010
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) true) (($3) false) (($4) true))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) false) (($3) true) (($4) false)))))

(define-model w11011
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) true) (($3) false) (($4) false))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) false) (($3) true) (($4) true)))))

(define-model w11100
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) false) (($3) true) (($4) true))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) true) (($3) false) (($4) false)))))

(define-model w11101
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) false) (($3) true) (($4) false))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) true) (($3) false) (($4) true)))))

(define-model w11110
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) false) (($3) false) (($4) true))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) false)))))

(define-model w11111
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) false) (($2) false) (($3) false) (($4) false))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true)))))

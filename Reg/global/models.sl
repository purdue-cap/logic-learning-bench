(require "./signatures.sl")
(provide w0 w1 w? w_ w00 w01 w0? w0_ w10 w11 w1? w1_ w?? w_0 w__ w000 w001 w010 w011 w0?0 w0_0 w0_1 w0__ w100 w101 w110 w111 w1?0 w1?1 w1?? w?01 w?10 w??1 w??? w_00 w_01 w_11 w_1_ w__0 w__1 w___ w0000 w0001 w0010 w0011 w0100 w0101 w0110 w0111 w0??? w0_0_ w0__1 w1000 w1001 w100? w1010 w1011 w1100 w1101 w1110 w1111 w1??? w1___ w?0?? w?100 w??01 w??10 w??1? w???0 w???? w_101 w_?00 w_?10 w_?11 w__00 w__01 w__0_ w__11 w___0 w____ w00000 w00001 w00010 w00011 w00100 w00101 w00110 w00111 w01000 w01001 w01010 w01011 w01100 w01101 w01110 w01111 w0_01_ w0_0_0 w0____ w10000 w10001 w10010 w10011 w10100 w10101 w10110 w10111 w11000 w11001 w11010 w11011 w11100 w11101 w11110 w11111 w1???? w?100? w??1?? w????1 w__0__ w___11 w000000 w000001 w000010 w000011 w000100 w000101 w000110 w000111 w001000 w001001 w001010 w001011 w001100 w001101 w001110 w001111 w010000 w010001 w010010 w010011 w010100 w010101 w010110 w010111 w011000 w011001 w011010 w011011 w011100 w011101 w011110 w011111 w0_0_0_ w100000 w100001 w100010 w100011 w100100 w100101 w100110 w100111 w101000 w101001 w101010 w101011 w101100 w101101 w101110 w101111 w110000 w110001 w110010 w110011 w110100 w110101 w110110 w110111 w111000 w111001 w111010 w111011 w111100 w111101 w111110 w111111 w?1???? w????1? w_0101_ w_0____ w______ w0000111 w0001111 w0011111 w0101010 w0110110 w1000100 w1001001 w1001011 w1111100 w1111110 w1111111 w??1???? w__0____ w__1_1_1 w00001111 w00011000 w00100100 w11010101 w11011010 w11011011 w__0101__ w000101001 w001100111 w010000100 w010101010 w100110011 w101010101 w1011001110 w00000111111 w00011001100 w00100110001 w011100011110 w00100100100100 w10010010001000 w100100110010010)

(define-model w0
  (define-univ Pos ($0))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match (((_) false)))))

(define-model w1
  (define-univ Pos ($0))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match (((_) true)))))

(define-model w?
  (define-univ Pos ($0))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w_
  (define-univ Pos ($0))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w00
  (define-univ Pos ($0 $1))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match (((_) false)))))

(define-model w01
  (define-univ Pos ($0 $1))
  (interp-fun zero (match ((($0) true) ((_) false))))
  (interp-fun one (match ((($1) true) ((_) false)))))

(define-model w0?
  (define-univ Pos ($0 $1))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match ((($1) true) ((_) false)))))

(define-model w0_
  (define-univ Pos ($0 $1))
  (interp-fun zero (match ((($0) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w10
  (define-univ Pos ($0 $1))
  (interp-fun zero (match ((($1) true) ((_) false))))
  (interp-fun one (match ((($0) true) ((_) false)))))

(define-model w11
  (define-univ Pos ($0 $1))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match (((_) true)))))

(define-model w1?
  (define-univ Pos ($0 $1))
  (interp-fun zero (match ((($1) true) ((_) false))))
  (interp-fun one (match (((_) true)))))

(define-model w1_
  (define-univ Pos ($0 $1))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match ((($0) true) ((_) false)))))

(define-model w??
  (define-univ Pos ($0 $1))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w_0
  (define-univ Pos ($0 $1))
  (interp-fun zero (match ((($1) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w__
  (define-univ Pos ($0 $1))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w000
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match (((_) false)))))

(define-model w001
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($2) false) ((_) true))))
  (interp-fun one (match ((($2) true) ((_) false)))))

(define-model w010
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($1) false) ((_) true))))
  (interp-fun one (match ((($1) true) ((_) false)))))

(define-model w011
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) true) ((_) false))))
  (interp-fun one (match ((($0) false) ((_) true)))))

(define-model w0?0
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match ((($1) true) ((_) false)))))

(define-model w0_0
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($1) false) ((_) true))))
  (interp-fun one (match (((_) false)))))

(define-model w0_1
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) true) ((_) false))))
  (interp-fun one (match ((($2) true) ((_) false)))))

(define-model w0__
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w100
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) false) ((_) true))))
  (interp-fun one (match ((($0) true) ((_) false)))))

(define-model w101
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($1) true) ((_) false))))
  (interp-fun one (match ((($1) false) ((_) true)))))

(define-model w110
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($2) true) ((_) false))))
  (interp-fun one (match ((($2) false) ((_) true)))))

(define-model w111
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match (((_) true)))))

(define-model w1?0
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) false) ((_) true))))
  (interp-fun one (match ((($2) false) ((_) true)))))

(define-model w1?1
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($1) true) ((_) false))))
  (interp-fun one (match (((_) true)))))

(define-model w1??
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) false) ((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w?01
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($2) false) ((_) true))))
  (interp-fun one (match ((($1) false) ((_) true)))))

(define-model w?10
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($1) false) ((_) true))))
  (interp-fun one (match ((($2) false) ((_) true)))))

(define-model w??1
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($2) false) ((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w???
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w_00
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($0) false) ((_) true))))
  (interp-fun one (match (((_) false)))))

(define-model w_01
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($1) true) ((_) false))))
  (interp-fun one (match ((($2) true) ((_) false)))))

(define-model w_11
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match ((($0) false) ((_) true)))))

(define-model w_1_
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match ((($1) true) ((_) false)))))

(define-model w__0
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match ((($2) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w__1
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match ((($2) true) ((_) false)))))

(define-model w___
  (define-univ Pos ($0 $1 $2))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w0000
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match (((_) false)))))

(define-model w0001
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($3) false) ((_) true))))
  (interp-fun one (match ((($3) true) ((_) false)))))

(define-model w0010
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($2) false) ((_) true))))
  (interp-fun one (match ((($2) true) ((_) false)))))

(define-model w0011
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun one (match ((($2) true) (($3) true) ((_) false)))))

(define-model w0100
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($1) false) ((_) true))))
  (interp-fun one (match ((($1) true) ((_) false)))))

(define-model w0101
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun one (match ((($1) true) (($3) true) ((_) false)))))

(define-model w0110
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($1) true) (($2) true) ((_) false)))))

(define-model w0111
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) ((_) false))))
  (interp-fun one (match ((($0) false) ((_) true)))))

(define-model w0???
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match ((($0) false) ((_) true)))))

(define-model w0_0_
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w0__1
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) true) ((_) false))))
  (interp-fun one (match ((($3) true) ((_) false)))))

(define-model w1000
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) false) ((_) true))))
  (interp-fun one (match ((($0) true) ((_) false)))))

(define-model w1001
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($3) true) ((_) false)))))

(define-model w100?
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($3) true) ((_) false)))))

(define-model w1010
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($2) true) ((_) false)))))

(define-model w1011
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($1) true) ((_) false))))
  (interp-fun one (match ((($1) false) ((_) true)))))

(define-model w1100
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($1) true) ((_) false)))))

(define-model w1101
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($2) true) ((_) false))))
  (interp-fun one (match ((($2) false) ((_) true)))))

(define-model w1110
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($3) true) ((_) false))))
  (interp-fun one (match ((($3) false) ((_) true)))))

(define-model w1111
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match (((_) true)))))

(define-model w1???
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) false) ((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w1___
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match ((($0) true) ((_) false)))))

(define-model w?0??
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match ((($1) false) ((_) true)))))

(define-model w?100
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($1) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($1) true) ((_) false)))))

(define-model w??01
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($3) false) ((_) true))))
  (interp-fun one (match ((($2) false) ((_) true)))))

(define-model w??10
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($2) false) ((_) true))))
  (interp-fun one (match ((($3) false) ((_) true)))))

(define-model w??1?
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($2) false) ((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w???0
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match ((($3) false) ((_) true)))))

(define-model w????
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w_101
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($2) true) ((_) false))))
  (interp-fun one (match ((($1) true) (($3) true) ((_) false)))))

(define-model w_?00
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($0) false) ((_) true))))
  (interp-fun one (match ((($1) true) ((_) false)))))

(define-model w_?10
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($1) true) (($2) true) ((_) false)))))

(define-model w_?11
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($1) true) ((_) false))))
  (interp-fun one (match ((($0) false) ((_) true)))))

(define-model w__00
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w__01
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($2) true) ((_) false))))
  (interp-fun one (match ((($3) true) ((_) false)))))

(define-model w__0_
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($2) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w__11
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match ((($2) true) (($3) true) ((_) false)))))

(define-model w___0
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match ((($3) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w____
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w00000
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match (((_) false)))))

(define-model w00001
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($4) false) ((_) true))))
  (interp-fun one (match ((($4) true) ((_) false)))))

(define-model w00010
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($3) false) ((_) true))))
  (interp-fun one (match ((($3) true) ((_) false)))))

(define-model w00011
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($3) false) (($4) false) ((_) true))))
  (interp-fun one (match ((($3) true) (($4) true) ((_) false)))))

(define-model w00100
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($2) false) ((_) true))))
  (interp-fun one (match ((($2) true) ((_) false)))))

(define-model w00101
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($2) false) (($4) false) ((_) true))))
  (interp-fun one (match ((($2) true) (($4) true) ((_) false)))))

(define-model w00110
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($2) false) (($3) false) ((_) true))))
  (interp-fun one (match ((($2) true) (($3) true) ((_) false)))))

(define-model w00111
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($1) false) ((_) true)))))

(define-model w01000
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($1) false) ((_) true))))
  (interp-fun one (match ((($1) true) ((_) false)))))

(define-model w01001
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($1) false) (($4) false) ((_) true))))
  (interp-fun one (match ((($1) true) (($4) true) ((_) false)))))

(define-model w01010
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($1) false) (($3) false) ((_) true))))
  (interp-fun one (match ((($1) true) (($3) true) ((_) false)))))

(define-model w01011
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($2) false) ((_) true)))))

(define-model w01100
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($1) false) (($2) false) ((_) true))))
  (interp-fun one (match ((($1) true) (($2) true) ((_) false)))))

(define-model w01101
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($3) false) ((_) true)))))

(define-model w01110
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($4) false) ((_) true)))))

(define-model w01111
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) ((_) false))))
  (interp-fun one (match ((($0) false) ((_) true)))))

(define-model w0_01_
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun one (match ((($3) true) ((_) false)))))

(define-model w0_0_0
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($1) false) (($3) false) ((_) true))))
  (interp-fun one (match (((_) false)))))

(define-model w0____
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w10000
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) ((_) true))))
  (interp-fun one (match ((($0) true) ((_) false)))))

(define-model w10001
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($4) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($4) true) ((_) false)))))

(define-model w10010
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($3) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($3) true) ((_) false)))))

(define-model w10011
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun one (match ((($1) false) (($2) false) ((_) true)))))

(define-model w10100
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($2) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($2) true) ((_) false)))))

(define-model w10101
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($1) false) (($3) false) ((_) true)))))

(define-model w10110
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($1) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($1) false) (($4) false) ((_) true)))))

(define-model w10111
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($1) true) ((_) false))))
  (interp-fun one (match ((($1) false) ((_) true)))))

(define-model w11000
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) (($1) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($1) true) ((_) false)))))

(define-model w11001
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($2) false) (($3) false) ((_) true)))))

(define-model w11010
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($2) false) (($4) false) ((_) true)))))

(define-model w11011
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($2) true) ((_) false))))
  (interp-fun one (match ((($2) false) ((_) true)))))

(define-model w11100
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($3) false) (($4) false) ((_) true)))))

(define-model w11101
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($3) true) ((_) false))))
  (interp-fun one (match ((($3) false) ((_) true)))))

(define-model w11110
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($4) true) ((_) false))))
  (interp-fun one (match ((($4) false) ((_) true)))))

(define-model w11111
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match (((_) true)))))

(define-model w1????
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($0) false) ((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w?100?
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($1) false) ((_) true))))
  (interp-fun one (match ((($2) false) (($3) false) ((_) true)))))

(define-model w??1??
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($2) false) ((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w????1
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($4) false) ((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w__0__
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match ((($2) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w___11
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match ((($3) true) (($4) true) ((_) false)))))

(define-model w000000
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match (((_) true))))
  (interp-fun one (match (((_) false)))))

(define-model w000001
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($5) false) ((_) true))))
  (interp-fun one (match ((($5) true) ((_) false)))))

(define-model w000010
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($4) false) ((_) true))))
  (interp-fun one (match ((($4) true) ((_) false)))))

(define-model w000011
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($4) false) (($5) false) ((_) true))))
  (interp-fun one (match ((($4) true) (($5) true) ((_) false)))))

(define-model w000100
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($3) false) ((_) true))))
  (interp-fun one (match ((($3) true) ((_) false)))))

(define-model w000101
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($3) false) (($5) false) ((_) true))))
  (interp-fun one (match ((($3) true) (($5) true) ((_) false)))))

(define-model w000110
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($3) false) (($4) false) ((_) true))))
  (interp-fun one (match ((($3) true) (($4) true) ((_) false)))))

(define-model w000111
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun one (match ((($3) true) (($4) true) (($5) true) ((_) false)))))

(define-model w001000
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($2) false) ((_) true))))
  (interp-fun one (match ((($2) true) ((_) false)))))

(define-model w001001
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($2) false) (($5) false) ((_) true))))
  (interp-fun one (match ((($2) true) (($5) true) ((_) false)))))

(define-model w001010
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($2) false) (($4) false) ((_) true))))
  (interp-fun one (match ((($2) true) (($4) true) ((_) false)))))

(define-model w001011
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($1) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($2) true) (($4) true) (($5) true) ((_) false)))))

(define-model w001100
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($2) false) (($3) false) ((_) true))))
  (interp-fun one (match ((($2) true) (($3) true) ((_) false)))))

(define-model w001101
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($1) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($2) true) (($3) true) (($5) true) ((_) false)))))

(define-model w001110
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($1) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($2) true) (($3) true) (($4) true) ((_) false)))))

(define-model w001111
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($1) false) ((_) true)))))

(define-model w010000
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) false) ((_) true))))
  (interp-fun one (match ((($1) true) ((_) false)))))

(define-model w010001
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) false) (($5) false) ((_) true))))
  (interp-fun one (match ((($1) true) (($5) true) ((_) false)))))

(define-model w010010
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) false) (($4) false) ((_) true))))
  (interp-fun one (match ((($1) true) (($4) true) ((_) false)))))

(define-model w010011
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($1) true) (($4) true) (($5) true) ((_) false)))))

(define-model w010100
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) false) (($3) false) ((_) true))))
  (interp-fun one (match ((($1) true) (($3) true) ((_) false)))))

(define-model w010101
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($1) true) (($3) true) (($5) true) ((_) false)))))

(define-model w010110
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($2) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($1) true) (($3) true) (($4) true) ((_) false)))))

(define-model w010111
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($2) false) ((_) true)))))

(define-model w011000
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) false) (($2) false) ((_) true))))
  (interp-fun one (match ((($1) true) (($2) true) ((_) false)))))

(define-model w011001
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($1) true) (($2) true) (($5) true) ((_) false)))))

(define-model w011010
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($1) true) (($2) true) (($4) true) ((_) false)))))

(define-model w011011
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($3) false) ((_) true)))))

(define-model w011100
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($1) true) (($2) true) (($3) true) ((_) false)))))

(define-model w011101
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($4) false) ((_) true)))))

(define-model w011110
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($5) false) ((_) true)))))

(define-model w011111
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) ((_) false))))
  (interp-fun one (match ((($0) false) ((_) true)))))

(define-model w0_0_0_
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w100000
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) false) ((_) true))))
  (interp-fun one (match ((($0) true) ((_) false)))))

(define-model w100001
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) false) (($5) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($5) true) ((_) false)))))

(define-model w100010
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) false) (($4) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($4) true) ((_) false)))))

(define-model w100011
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($4) true) (($5) true) ((_) false)))))

(define-model w100100
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) false) (($3) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($3) true) ((_) false)))))

(define-model w100101
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($3) true) (($5) true) ((_) false)))))

(define-model w100110
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) (($2) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($3) true) (($4) true) ((_) false)))))

(define-model w100111
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun one (match ((($1) false) (($2) false) ((_) true)))))

(define-model w101000
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) false) (($2) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($2) true) ((_) false)))))

(define-model w101001
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($2) true) (($5) true) ((_) false)))))

(define-model w101010
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($2) true) (($4) true) ((_) false)))))

(define-model w101011
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($1) false) (($3) false) ((_) true)))))

(define-model w101100
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($2) true) (($3) true) ((_) false)))))

(define-model w101101
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($1) false) (($4) false) ((_) true)))))

(define-model w101110
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($1) false) (($5) false) ((_) true)))))

(define-model w101111
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) ((_) false))))
  (interp-fun one (match ((($1) false) ((_) true)))))

(define-model w110000
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($0) false) (($1) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($1) true) ((_) false)))))

(define-model w110001
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($1) true) (($5) true) ((_) false)))))

(define-model w110010
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($1) true) (($4) true) ((_) false)))))

(define-model w110011
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($2) false) (($3) false) ((_) true)))))

(define-model w110100
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($1) true) (($3) true) ((_) false)))))

(define-model w110101
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($2) false) (($4) false) ((_) true)))))

(define-model w110110
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($2) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($2) false) (($5) false) ((_) true)))))

(define-model w110111
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($2) true) ((_) false))))
  (interp-fun one (match ((($2) false) ((_) true)))))

(define-model w111000
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($0) true) (($1) true) (($2) true) ((_) false)))))

(define-model w111001
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($3) false) (($4) false) ((_) true)))))

(define-model w111010
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($3) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($3) false) (($5) false) ((_) true)))))

(define-model w111011
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($3) true) ((_) false))))
  (interp-fun one (match ((($3) false) ((_) true)))))

(define-model w111100
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($4) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($4) false) (($5) false) ((_) true)))))

(define-model w111101
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($4) true) ((_) false))))
  (interp-fun one (match ((($4) false) ((_) true)))))

(define-model w111110
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($5) true) ((_) false))))
  (interp-fun one (match ((($5) false) ((_) true)))))

(define-model w111111
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match (((_) true)))))

(define-model w?1????
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) false) ((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w????1?
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($4) false) ((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w_0101_
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($2) true) (($4) true) ((_) false)))))

(define-model w_0____
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match ((($1) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w______
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w0000111
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match ((($4) false) (($5) false) (($6) false) ((_) true))))
  (interp-fun one (match ((($4) true) (($5) true) (($6) true) ((_) false)))))

(define-model w0001111
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) false) ((_) true)))))

(define-model w0011111
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($1) false) ((_) true)))))

(define-model w0101010
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match ((($1) false) (($3) false) (($5) false) ((_) true))))
  (interp-fun one (match ((($1) true) (($3) true) (($5) true) ((_) false)))))

(define-model w0110110
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match ((($0) true) (($3) true) (($6) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($3) false) (($6) false) ((_) true)))))

(define-model w1000100
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match ((($0) false) (($4) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($4) true) ((_) false)))))

(define-model w1001001
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match ((($0) false) (($3) false) (($6) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($3) true) (($6) true) ((_) false)))))

(define-model w1001011
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match ((($1) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($1) false) (($2) false) (($4) false) ((_) true)))))

(define-model w1111100
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match ((($5) true) (($6) true) ((_) false))))
  (interp-fun one (match ((($5) false) (($6) false) ((_) true)))))

(define-model w1111110
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match ((($6) true) ((_) false))))
  (interp-fun one (match ((($6) false) ((_) true)))))

(define-model w1111111
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match (((_) true)))))

(define-model w??1????
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match ((($2) false) ((_) true))))
  (interp-fun one (match (((_) true)))))

(define-model w__0____
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match ((($2) true) ((_) false))))
  (interp-fun one (match (((_) false)))))

(define-model w__1_1_1
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun zero (match (((_) false))))
  (interp-fun one (match ((($2) true) (($4) true) (($6) true) ((_) false)))))

(define-model w00001111
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun one (match ((($4) true) (($5) true) (($6) true) (($7) true) ((_) false)))))

(define-model w00011000
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun zero (match ((($3) false) (($4) false) ((_) true))))
  (interp-fun one (match ((($3) true) (($4) true) ((_) false)))))

(define-model w00100100
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun zero (match ((($2) false) (($5) false) ((_) true))))
  (interp-fun one (match ((($2) true) (($5) true) ((_) false)))))

(define-model w11010101
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun zero (match ((($2) true) (($4) true) (($6) true) ((_) false))))
  (interp-fun one (match ((($2) false) (($4) false) (($6) false) ((_) true)))))

(define-model w11011010
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun zero (match ((($2) true) (($5) true) (($7) true) ((_) false))))
  (interp-fun one (match ((($2) false) (($5) false) (($7) false) ((_) true)))))

(define-model w11011011
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun zero (match ((($2) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($2) false) (($5) false) ((_) true)))))

(define-model w__0101__
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun zero (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($3) true) (($5) true) ((_) false)))))

(define-model w000101001
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8))
  (interp-fun zero (match ((($3) false) (($5) false) (($8) false) ((_) true))))
  (interp-fun one (match ((($3) true) (($5) true) (($8) true) ((_) false)))))

(define-model w001100111
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8))
  (interp-fun zero (match ((($0) true) (($1) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($1) false) (($4) false) (($5) false) ((_) true)))))

(define-model w010000100
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8))
  (interp-fun zero (match ((($1) false) (($6) false) ((_) true))))
  (interp-fun one (match ((($1) true) (($6) true) ((_) false)))))

(define-model w010101010
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8))
  (interp-fun zero (match ((($1) false) (($3) false) (($5) false) (($7) false) ((_) true))))
  (interp-fun one (match ((($1) true) (($3) true) (($5) true) (($7) true) ((_) false)))))

(define-model w100110011
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8))
  (interp-fun zero (match ((($1) true) (($2) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun one (match ((($1) false) (($2) false) (($5) false) (($6) false) ((_) true)))))

(define-model w101010101
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8))
  (interp-fun zero (match ((($1) true) (($3) true) (($5) true) (($7) true) ((_) false))))
  (interp-fun one (match ((($1) false) (($3) false) (($5) false) (($7) false) ((_) true)))))

(define-model w1011001110
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8 $9))
  (interp-fun zero (match ((($1) true) (($4) true) (($5) true) (($9) true) ((_) false))))
  (interp-fun one (match ((($1) false) (($4) false) (($5) false) (($9) false) ((_) true)))))

(define-model w00000111111
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8 $9 $10))
  (interp-fun zero (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($1) false) (($2) false) (($3) false) (($4) false) ((_) true)))))

(define-model w00011001100
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8 $9 $10))
  (interp-fun zero (match ((($3) false) (($4) false) (($7) false) (($8) false) ((_) true))))
  (interp-fun one (match ((($3) true) (($4) true) (($7) true) (($8) true) ((_) false)))))

(define-model w00100110001
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8 $9 $10))
  (interp-fun zero (match ((($2) false) (($5) false) (($6) false) (($10) false) ((_) true))))
  (interp-fun one (match ((($2) true) (($5) true) (($6) true) (($10) true) ((_) false)))))

(define-model w011100011110
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11))
  (interp-fun zero (match ((($0) true) (($4) true) (($5) true) (($6) true) (($11) true) ((_) false))))
  (interp-fun one (match ((($0) false) (($4) false) (($5) false) (($6) false) (($11) false) ((_) true)))))

(define-model w00100100100100
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13))
  (interp-fun zero (match ((($2) false) (($5) false) (($8) false) (($11) false) ((_) true))))
  (interp-fun one (match ((($2) true) (($5) true) (($8) true) (($11) true) ((_) false)))))

(define-model w10010010001000
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13))
  (interp-fun zero (match ((($0) false) (($3) false) (($6) false) (($10) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($3) true) (($6) true) (($10) true) ((_) false)))))

(define-model w100100110010010
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14))
  (interp-fun zero (match ((($0) false) (($3) false) (($6) false) (($7) false) (($10) false) (($13) false) ((_) true))))
  (interp-fun one (match ((($0) true) (($3) true) (($6) true) (($7) true) (($10) true) (($13) true) ((_) false)))))

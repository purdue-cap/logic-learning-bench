;; String_0274: SemGuS value-vector encoding from 0274.sl
;; examples: 8, args: 1, constants: 1, L: 5
;; neg1=6, bot=7, char-pad=0

(declare-term-types
    ((Start 0) (Str 0) (SInt 0) (SBool 0))
    (
        (($eval Str))
        (
            (str.c0)
            (arg0)
            (str.++ Str Str)
            (str.replace Str Str Str)
            (str.at Str SInt)
            (str.int2str SInt)
            (str.ite SBool Str Str)
            (str.substr Str SInt SInt)
        )
        (
            (int.0)
            (int.1)
            (int.neg1)
            (int.+ SInt SInt)
            (int.- SInt SInt)
            (int.len Str)
            (int.to_int Str)
            (int.ite SBool SInt SInt)
            (int.indexof Str Str SInt)
        )
        (
            (bool.true)
            (bool.false)
            (bool.= SInt SInt)
            (bool.prefixof Str Str)
            (bool.suffixof Str Str)
            (bool.contains Str Str)
        )
    )
)

(define-funs-rec
    (
        (Start.Sem ((t Start) (arg0_len Int) (arg0_0 Int) (arg0_1 Int) (arg0_2 Int) (arg0_3 Int) (arg0_4 Int) (arg0_5 Int) (out_len Int) (out_0 Int) (out_1 Int) (out_2 Int) (out_3 Int) (out_4 Int) (out_5 Int) (result Bool)) Bool)
        (Str.Val ((t Str) (arg0_len Int) (arg0_0 Int) (arg0_1 Int) (arg0_2 Int) (arg0_3 Int) (arg0_4 Int) (arg0_5 Int) (R_len Int) (R_0 Int) (R_1 Int) (R_2 Int) (R_3 Int) (R_4 Int) (R_5 Int)) Bool)
        (SInt.Val ((t SInt) (arg0_len Int) (arg0_0 Int) (arg0_1 Int) (arg0_2 Int) (arg0_3 Int) (arg0_4 Int) (arg0_5 Int) (value Int)) Bool)
        (SBool.Sem ((t SBool) (arg0_len Int) (arg0_0 Int) (arg0_1 Int) (arg0_2 Int) (arg0_3 Int) (arg0_4 Int) (arg0_5 Int) (result Bool)) Bool)
    )
    (
        (! (match t (
            (($eval e)
                (exists
                    ((R_len Int) (R_0 Int) (R_1 Int) (R_2 Int) (R_3 Int) (R_4 Int) (R_5 Int))
                    (and (Str.Val e arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 R_len R_0 R_1 R_2 R_3 R_4 R_5) (= result (and (= R_len out_len) (= R_0 out_0) (= R_1 out_1) (= R_2 out_2) (= R_3 out_3) (= R_4 out_4) (= R_5 out_5))))
                )
            )
        )) :input (arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 out_len out_0 out_1 out_2 out_3 out_4 out_5) :output (result))
        (! (match t (
            (str.c0
                (and (= R_len 1) (= R_0 43) (= R_1 0) (= R_2 0) (= R_3 0) (= R_4 0) (= R_5 0))
            )
            (arg0
                (and (= R_len arg0_len) (= R_0 arg0_0) (= R_1 arg0_1) (= R_2 arg0_2) (= R_3 arg0_3) (= R_4 arg0_4) (= R_5 arg0_5))
            )
            ((str.++ x y)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (A_4 Int) (A_5 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int) (B_4 Int) (B_5 Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A_len A_0 A_1 A_2 A_3 A_4 A_5) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 B_len B_0 B_1 B_2 B_3 B_4 B_5) (and (= R_len (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ A_len B_len) 5)) (+ A_len B_len) 7)) (= R_0 (ite (= A_len 0) B_0 (ite (= A_len 1) A_0 (ite (= A_len 2) A_0 (ite (= A_len 3) A_0 (ite (= A_len 4) A_0 (ite (= A_len 5) A_0 0))))))) (= R_1 (ite (= A_len 0) B_1 (ite (= A_len 1) B_0 (ite (= A_len 2) A_1 (ite (= A_len 3) A_1 (ite (= A_len 4) A_1 (ite (= A_len 5) A_1 0))))))) (= R_2 (ite (= A_len 0) B_2 (ite (= A_len 1) B_1 (ite (= A_len 2) B_0 (ite (= A_len 3) A_2 (ite (= A_len 4) A_2 (ite (= A_len 5) A_2 0))))))) (= R_3 (ite (= A_len 0) B_3 (ite (= A_len 1) B_2 (ite (= A_len 2) B_1 (ite (= A_len 3) B_0 (ite (= A_len 4) A_3 (ite (= A_len 5) A_3 0))))))) (= R_4 (ite (= A_len 0) B_4 (ite (= A_len 1) B_3 (ite (= A_len 2) B_2 (ite (= A_len 3) B_1 (ite (= A_len 4) B_0 (ite (= A_len 5) A_4 0))))))) (= R_5 (ite (= A_len 0) B_5 (ite (= A_len 1) B_4 (ite (= A_len 2) B_3 (ite (= A_len 3) B_2 (ite (= A_len 4) B_1 (ite (= A_len 5) B_0 0)))))))))
                )
            )
            ((str.replace x y z)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (A_4 Int) (A_5 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int) (B_4 Int) (B_5 Int) (C_len Int) (C_0 Int) (C_1 Int) (C_2 Int) (C_3 Int) (C_4 Int) (C_5 Int) (P Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A_len A_0 A_1 A_2 A_3 A_4 A_5) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 B_len B_0 B_1 B_2 B_3 B_4 B_5) (Str.Val z arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 C_len C_0 C_1 C_2 C_3 C_4 C_5) (and (= P (ite (and (and (<= 0 0) (<= 0 5)) (<= 0 0) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 0 B_len) A_len) (ite (< 0 B_len) (= A_0 B_0) true) (ite (< 1 B_len) (= A_1 B_1) true) (ite (< 2 B_len) (= A_2 B_2) true) (ite (< 3 B_len) (= A_3 B_3) true) (ite (< 4 B_len) (= A_4 B_4) true) (ite (< 5 B_len) (= A_5 B_5) true))) 0 (ite (and (and (<= 0 0) (<= 0 5)) (<= 0 1) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 1 B_len) A_len) (ite (< 0 B_len) (= A_1 B_0) true) (ite (< 1 B_len) (= A_2 B_1) true) (ite (< 2 B_len) (= A_3 B_2) true) (ite (< 3 B_len) (= A_4 B_3) true) (ite (< 4 B_len) (= A_5 B_4) true))) 1 (ite (and (and (<= 0 0) (<= 0 5)) (<= 0 2) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 2 B_len) A_len) (ite (< 0 B_len) (= A_2 B_0) true) (ite (< 1 B_len) (= A_3 B_1) true) (ite (< 2 B_len) (= A_4 B_2) true) (ite (< 3 B_len) (= A_5 B_3) true))) 2 (ite (and (and (<= 0 0) (<= 0 5)) (<= 0 3) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 3 B_len) A_len) (ite (< 0 B_len) (= A_3 B_0) true) (ite (< 1 B_len) (= A_4 B_1) true) (ite (< 2 B_len) (= A_5 B_2) true))) 3 (ite (and (and (<= 0 0) (<= 0 5)) (<= 0 4) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 4 B_len) A_len) (ite (< 0 B_len) (= A_4 B_0) true) (ite (< 1 B_len) (= A_5 B_1) true))) 4 (ite (and (and (<= 0 0) (<= 0 5)) (<= 0 5) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 5 B_len) A_len) (ite (< 0 B_len) (= A_5 B_0) true))) 5 6))))))) (= R_len (ite (= P 6) A_len (ite (and (and (<= 0 P) (<= P 5)) (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (and (<= 0 C_len) (<= C_len 5)) (<= B_len A_len) (<= (+ (- A_len B_len) C_len) 5)) (+ (- A_len B_len) C_len) 7))) (= R_0 (ite (= P 6) A_0 (ite (and (and (<= 0 P) (<= P 5)) (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (and (<= 0 C_len) (<= C_len 5)) (<= B_len A_len) (<= (+ (- A_len B_len) C_len) 5)) (ite (= P 0) (ite (< 0 (+ 0 C_len)) C_0 (ite (< 0 (+ (- A_len B_len) C_len)) (ite (= (+ (- 0 C_len) B_len) 0) A_0 (ite (= (+ (- 0 C_len) B_len) 1) A_1 (ite (= (+ (- 0 C_len) B_len) 2) A_2 (ite (= (+ (- 0 C_len) B_len) 3) A_3 (ite (= (+ (- 0 C_len) B_len) 4) A_4 (ite (= (+ (- 0 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 1) A_0 (ite (= P 2) A_0 (ite (= P 3) A_0 (ite (= P 4) A_0 (ite (= P 5) A_0 0)))))) 0))) (= R_1 (ite (= P 6) A_1 (ite (and (and (<= 0 P) (<= P 5)) (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (and (<= 0 C_len) (<= C_len 5)) (<= B_len A_len) (<= (+ (- A_len B_len) C_len) 5)) (ite (= P 0) (ite (< 1 (+ 0 C_len)) C_1 (ite (< 1 (+ (- A_len B_len) C_len)) (ite (= (+ (- 1 C_len) B_len) 0) A_0 (ite (= (+ (- 1 C_len) B_len) 1) A_1 (ite (= (+ (- 1 C_len) B_len) 2) A_2 (ite (= (+ (- 1 C_len) B_len) 3) A_3 (ite (= (+ (- 1 C_len) B_len) 4) A_4 (ite (= (+ (- 1 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 1) (ite (< 1 (+ 1 C_len)) C_0 (ite (< 1 (+ (- A_len B_len) C_len)) (ite (= (+ (- 1 C_len) B_len) 0) A_0 (ite (= (+ (- 1 C_len) B_len) 1) A_1 (ite (= (+ (- 1 C_len) B_len) 2) A_2 (ite (= (+ (- 1 C_len) B_len) 3) A_3 (ite (= (+ (- 1 C_len) B_len) 4) A_4 (ite (= (+ (- 1 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 2) A_1 (ite (= P 3) A_1 (ite (= P 4) A_1 (ite (= P 5) A_1 0)))))) 0))) (= R_2 (ite (= P 6) A_2 (ite (and (and (<= 0 P) (<= P 5)) (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (and (<= 0 C_len) (<= C_len 5)) (<= B_len A_len) (<= (+ (- A_len B_len) C_len) 5)) (ite (= P 0) (ite (< 2 (+ 0 C_len)) C_2 (ite (< 2 (+ (- A_len B_len) C_len)) (ite (= (+ (- 2 C_len) B_len) 0) A_0 (ite (= (+ (- 2 C_len) B_len) 1) A_1 (ite (= (+ (- 2 C_len) B_len) 2) A_2 (ite (= (+ (- 2 C_len) B_len) 3) A_3 (ite (= (+ (- 2 C_len) B_len) 4) A_4 (ite (= (+ (- 2 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 1) (ite (< 2 (+ 1 C_len)) C_1 (ite (< 2 (+ (- A_len B_len) C_len)) (ite (= (+ (- 2 C_len) B_len) 0) A_0 (ite (= (+ (- 2 C_len) B_len) 1) A_1 (ite (= (+ (- 2 C_len) B_len) 2) A_2 (ite (= (+ (- 2 C_len) B_len) 3) A_3 (ite (= (+ (- 2 C_len) B_len) 4) A_4 (ite (= (+ (- 2 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 2) (ite (< 2 (+ 2 C_len)) C_0 (ite (< 2 (+ (- A_len B_len) C_len)) (ite (= (+ (- 2 C_len) B_len) 0) A_0 (ite (= (+ (- 2 C_len) B_len) 1) A_1 (ite (= (+ (- 2 C_len) B_len) 2) A_2 (ite (= (+ (- 2 C_len) B_len) 3) A_3 (ite (= (+ (- 2 C_len) B_len) 4) A_4 (ite (= (+ (- 2 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 3) A_2 (ite (= P 4) A_2 (ite (= P 5) A_2 0)))))) 0))) (= R_3 (ite (= P 6) A_3 (ite (and (and (<= 0 P) (<= P 5)) (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (and (<= 0 C_len) (<= C_len 5)) (<= B_len A_len) (<= (+ (- A_len B_len) C_len) 5)) (ite (= P 0) (ite (< 3 (+ 0 C_len)) C_3 (ite (< 3 (+ (- A_len B_len) C_len)) (ite (= (+ (- 3 C_len) B_len) 0) A_0 (ite (= (+ (- 3 C_len) B_len) 1) A_1 (ite (= (+ (- 3 C_len) B_len) 2) A_2 (ite (= (+ (- 3 C_len) B_len) 3) A_3 (ite (= (+ (- 3 C_len) B_len) 4) A_4 (ite (= (+ (- 3 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 1) (ite (< 3 (+ 1 C_len)) C_2 (ite (< 3 (+ (- A_len B_len) C_len)) (ite (= (+ (- 3 C_len) B_len) 0) A_0 (ite (= (+ (- 3 C_len) B_len) 1) A_1 (ite (= (+ (- 3 C_len) B_len) 2) A_2 (ite (= (+ (- 3 C_len) B_len) 3) A_3 (ite (= (+ (- 3 C_len) B_len) 4) A_4 (ite (= (+ (- 3 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 2) (ite (< 3 (+ 2 C_len)) C_1 (ite (< 3 (+ (- A_len B_len) C_len)) (ite (= (+ (- 3 C_len) B_len) 0) A_0 (ite (= (+ (- 3 C_len) B_len) 1) A_1 (ite (= (+ (- 3 C_len) B_len) 2) A_2 (ite (= (+ (- 3 C_len) B_len) 3) A_3 (ite (= (+ (- 3 C_len) B_len) 4) A_4 (ite (= (+ (- 3 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 3) (ite (< 3 (+ 3 C_len)) C_0 (ite (< 3 (+ (- A_len B_len) C_len)) (ite (= (+ (- 3 C_len) B_len) 0) A_0 (ite (= (+ (- 3 C_len) B_len) 1) A_1 (ite (= (+ (- 3 C_len) B_len) 2) A_2 (ite (= (+ (- 3 C_len) B_len) 3) A_3 (ite (= (+ (- 3 C_len) B_len) 4) A_4 (ite (= (+ (- 3 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 4) A_3 (ite (= P 5) A_3 0)))))) 0))) (= R_4 (ite (= P 6) A_4 (ite (and (and (<= 0 P) (<= P 5)) (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (and (<= 0 C_len) (<= C_len 5)) (<= B_len A_len) (<= (+ (- A_len B_len) C_len) 5)) (ite (= P 0) (ite (< 4 (+ 0 C_len)) C_4 (ite (< 4 (+ (- A_len B_len) C_len)) (ite (= (+ (- 4 C_len) B_len) 0) A_0 (ite (= (+ (- 4 C_len) B_len) 1) A_1 (ite (= (+ (- 4 C_len) B_len) 2) A_2 (ite (= (+ (- 4 C_len) B_len) 3) A_3 (ite (= (+ (- 4 C_len) B_len) 4) A_4 (ite (= (+ (- 4 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 1) (ite (< 4 (+ 1 C_len)) C_3 (ite (< 4 (+ (- A_len B_len) C_len)) (ite (= (+ (- 4 C_len) B_len) 0) A_0 (ite (= (+ (- 4 C_len) B_len) 1) A_1 (ite (= (+ (- 4 C_len) B_len) 2) A_2 (ite (= (+ (- 4 C_len) B_len) 3) A_3 (ite (= (+ (- 4 C_len) B_len) 4) A_4 (ite (= (+ (- 4 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 2) (ite (< 4 (+ 2 C_len)) C_2 (ite (< 4 (+ (- A_len B_len) C_len)) (ite (= (+ (- 4 C_len) B_len) 0) A_0 (ite (= (+ (- 4 C_len) B_len) 1) A_1 (ite (= (+ (- 4 C_len) B_len) 2) A_2 (ite (= (+ (- 4 C_len) B_len) 3) A_3 (ite (= (+ (- 4 C_len) B_len) 4) A_4 (ite (= (+ (- 4 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 3) (ite (< 4 (+ 3 C_len)) C_1 (ite (< 4 (+ (- A_len B_len) C_len)) (ite (= (+ (- 4 C_len) B_len) 0) A_0 (ite (= (+ (- 4 C_len) B_len) 1) A_1 (ite (= (+ (- 4 C_len) B_len) 2) A_2 (ite (= (+ (- 4 C_len) B_len) 3) A_3 (ite (= (+ (- 4 C_len) B_len) 4) A_4 (ite (= (+ (- 4 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 4) (ite (< 4 (+ 4 C_len)) C_0 (ite (< 4 (+ (- A_len B_len) C_len)) (ite (= (+ (- 4 C_len) B_len) 0) A_0 (ite (= (+ (- 4 C_len) B_len) 1) A_1 (ite (= (+ (- 4 C_len) B_len) 2) A_2 (ite (= (+ (- 4 C_len) B_len) 3) A_3 (ite (= (+ (- 4 C_len) B_len) 4) A_4 (ite (= (+ (- 4 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 5) A_4 0)))))) 0))) (= R_5 (ite (= P 6) A_5 (ite (and (and (<= 0 P) (<= P 5)) (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (and (<= 0 C_len) (<= C_len 5)) (<= B_len A_len) (<= (+ (- A_len B_len) C_len) 5)) (ite (= P 0) (ite (< 5 (+ 0 C_len)) C_5 (ite (< 5 (+ (- A_len B_len) C_len)) (ite (= (+ (- 5 C_len) B_len) 0) A_0 (ite (= (+ (- 5 C_len) B_len) 1) A_1 (ite (= (+ (- 5 C_len) B_len) 2) A_2 (ite (= (+ (- 5 C_len) B_len) 3) A_3 (ite (= (+ (- 5 C_len) B_len) 4) A_4 (ite (= (+ (- 5 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 1) (ite (< 5 (+ 1 C_len)) C_4 (ite (< 5 (+ (- A_len B_len) C_len)) (ite (= (+ (- 5 C_len) B_len) 0) A_0 (ite (= (+ (- 5 C_len) B_len) 1) A_1 (ite (= (+ (- 5 C_len) B_len) 2) A_2 (ite (= (+ (- 5 C_len) B_len) 3) A_3 (ite (= (+ (- 5 C_len) B_len) 4) A_4 (ite (= (+ (- 5 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 2) (ite (< 5 (+ 2 C_len)) C_3 (ite (< 5 (+ (- A_len B_len) C_len)) (ite (= (+ (- 5 C_len) B_len) 0) A_0 (ite (= (+ (- 5 C_len) B_len) 1) A_1 (ite (= (+ (- 5 C_len) B_len) 2) A_2 (ite (= (+ (- 5 C_len) B_len) 3) A_3 (ite (= (+ (- 5 C_len) B_len) 4) A_4 (ite (= (+ (- 5 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 3) (ite (< 5 (+ 3 C_len)) C_2 (ite (< 5 (+ (- A_len B_len) C_len)) (ite (= (+ (- 5 C_len) B_len) 0) A_0 (ite (= (+ (- 5 C_len) B_len) 1) A_1 (ite (= (+ (- 5 C_len) B_len) 2) A_2 (ite (= (+ (- 5 C_len) B_len) 3) A_3 (ite (= (+ (- 5 C_len) B_len) 4) A_4 (ite (= (+ (- 5 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 4) (ite (< 5 (+ 4 C_len)) C_1 (ite (< 5 (+ (- A_len B_len) C_len)) (ite (= (+ (- 5 C_len) B_len) 0) A_0 (ite (= (+ (- 5 C_len) B_len) 1) A_1 (ite (= (+ (- 5 C_len) B_len) 2) A_2 (ite (= (+ (- 5 C_len) B_len) 3) A_3 (ite (= (+ (- 5 C_len) B_len) 4) A_4 (ite (= (+ (- 5 C_len) B_len) 5) A_5 0)))))) 0)) (ite (= P 5) (ite (< 5 (+ 5 C_len)) C_0 (ite (< 5 (+ (- A_len B_len) C_len)) (ite (= (+ (- 5 C_len) B_len) 0) A_0 (ite (= (+ (- 5 C_len) B_len) 1) A_1 (ite (= (+ (- 5 C_len) B_len) 2) A_2 (ite (= (+ (- 5 C_len) B_len) 3) A_3 (ite (= (+ (- 5 C_len) B_len) 4) A_4 (ite (= (+ (- 5 C_len) B_len) 5) A_5 0)))))) 0)) 0)))))) 0)))))
                )
            )
            ((str.at x i)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (A_4 Int) (A_5 Int) (I Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A_len A_0 A_1 A_2 A_3 A_4 A_5) (SInt.Val i arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 I) (and (= R_len (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (< I A_len)) 1 0)) (= R_0 (ite (= I 0) A_0 (ite (= I 1) A_1 (ite (= I 2) A_2 (ite (= I 3) A_3 (ite (= I 4) A_4 (ite (= I 5) A_5 0))))))) (= R_1 0) (= R_2 0) (= R_3 0) (= R_4 0) (= R_5 0)))
                )
            )
            ((str.int2str i)
                (exists
                    ((I Int))
                    (and (SInt.Val i arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 I) (and (= R_len (ite (= I 0) 1 (ite (= I 1) 1 (ite (= I 2) 1 (ite (= I 3) 1 (ite (= I 4) 1 (ite (= I 5) 1 0))))))) (= R_0 (ite (= I 0) 48 (ite (= I 1) 49 (ite (= I 2) 50 (ite (= I 3) 51 (ite (= I 4) 52 (ite (= I 5) 53 0))))))) (= R_1 (ite (= I 0) 0 (ite (= I 1) 0 (ite (= I 2) 0 (ite (= I 3) 0 (ite (= I 4) 0 (ite (= I 5) 0 0))))))) (= R_2 (ite (= I 0) 0 (ite (= I 1) 0 (ite (= I 2) 0 (ite (= I 3) 0 (ite (= I 4) 0 (ite (= I 5) 0 0))))))) (= R_3 (ite (= I 0) 0 (ite (= I 1) 0 (ite (= I 2) 0 (ite (= I 3) 0 (ite (= I 4) 0 (ite (= I 5) 0 0))))))) (= R_4 (ite (= I 0) 0 (ite (= I 1) 0 (ite (= I 2) 0 (ite (= I 3) 0 (ite (= I 4) 0 (ite (= I 5) 0 0))))))) (= R_5 (ite (= I 0) 0 (ite (= I 1) 0 (ite (= I 2) 0 (ite (= I 3) 0 (ite (= I 4) 0 (ite (= I 5) 0 0)))))))))
                )
            )
            ((str.ite p x y)
                (exists
                    ((P Bool) (A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (A_4 Int) (A_5 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int) (B_4 Int) (B_5 Int))
                    (and (SBool.Sem p arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 P) (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A_len A_0 A_1 A_2 A_3 A_4 A_5) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 B_len B_0 B_1 B_2 B_3 B_4 B_5) (and (= R_len (ite P A_len B_len)) (= R_0 (ite P A_0 B_0)) (= R_1 (ite P A_1 B_1)) (= R_2 (ite P A_2 B_2)) (= R_3 (ite P A_3 B_3)) (= R_4 (ite P A_4 B_4)) (= R_5 (ite P A_5 B_5))))
                )
            )
            ((str.substr x i n)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (A_4 Int) (A_5 Int) (I Int) (N Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A_len A_0 A_1 A_2 A_3 A_4 A_5) (SInt.Val i arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 I) (SInt.Val n arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 N) (and (= R_len (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0)) (= R_0 (ite (and (= I 0) (< 0 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_0 (ite (and (= I 1) (< 0 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_1 (ite (and (= I 2) (< 0 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_2 (ite (and (= I 3) (< 0 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_3 (ite (and (= I 4) (< 0 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_4 (ite (and (= I 5) (< 0 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_5 0))))))) (= R_1 (ite (and (= I 0) (< 1 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_1 (ite (and (= I 1) (< 1 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_2 (ite (and (= I 2) (< 1 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_3 (ite (and (= I 3) (< 1 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_4 (ite (and (= I 4) (< 1 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_5 (ite (and (= I 5) (< 1 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 0))))))) (= R_2 (ite (and (= I 0) (< 2 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_2 (ite (and (= I 1) (< 2 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_3 (ite (and (= I 2) (< 2 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_4 (ite (and (= I 3) (< 2 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_5 (ite (and (= I 4) (< 2 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 5) (< 2 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 0))))))) (= R_3 (ite (and (= I 0) (< 3 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_3 (ite (and (= I 1) (< 3 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_4 (ite (and (= I 2) (< 3 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_5 (ite (and (= I 3) (< 3 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 4) (< 3 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 5) (< 3 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 0))))))) (= R_4 (ite (and (= I 0) (< 4 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_4 (ite (and (= I 1) (< 4 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_5 (ite (and (= I 2) (< 4 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 3) (< 4 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 4) (< 4 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 5) (< 4 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 0))))))) (= R_5 (ite (and (= I 0) (< 5 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_5 (ite (and (= I 1) (< 5 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 2) (< 5 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 3) (< 5 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 4) (< 5 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 5) (< 5 (ite (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 I) (<= I 5)) (and (<= 0 N) (<= N 5)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 0)))))))))
                )
            )
        )) :input (arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5) :output (R_len R_0 R_1 R_2 R_3 R_4 R_5))
        (! (match t (
            (int.0
                (= value 0)
            )
            (int.1
                (= value 1)
            )
            (int.neg1
                (= value 6)
            )
            ((int.+ x y)
                (exists
                    ((A Int) (B Int))
                    (and (SInt.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A) (SInt.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 B) (= value (ite (and (and (<= 0 A) (<= A 5)) (and (<= 0 B) (<= B 5)) (<= (+ A B) 5)) (+ A B) 7)))
                )
            )
            ((int.- x y)
                (exists
                    ((A Int) (B Int))
                    (and (SInt.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A) (SInt.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 B) (= value (ite (and (and (<= 0 A) (<= A 5)) (and (<= 0 B) (<= B 5)) (<= B A)) (- A B) 7)))
                )
            )
            ((int.len x)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (A_4 Int) (A_5 Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A_len A_0 A_1 A_2 A_3 A_4 A_5) (= value A_len))
                )
            )
            ((int.to_int x)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (A_4 Int) (A_5 Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A_len A_0 A_1 A_2 A_3 A_4 A_5) (= value (ite (and (= A_len 1) (= A_0 48)) 0 (ite (and (= A_len 1) (= A_0 49)) 1 (ite (and (= A_len 1) (= A_0 50)) 2 (ite (and (= A_len 1) (= A_0 51)) 3 (ite (and (= A_len 1) (= A_0 52)) 4 (ite (and (= A_len 1) (= A_0 53)) 5 6))))))))
                )
            )
            ((int.ite p x y)
                (exists
                    ((P Bool) (A Int) (B Int))
                    (and (SBool.Sem p arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 P) (SInt.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A) (SInt.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 B) (= value (ite P A B)))
                )
            )
            ((int.indexof x y k)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (A_4 Int) (A_5 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int) (B_4 Int) (B_5 Int) (K Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A_len A_0 A_1 A_2 A_3 A_4 A_5) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 B_len B_0 B_1 B_2 B_3 B_4 B_5) (SInt.Val k arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 K) (= value (ite (and (and (<= 0 K) (<= K 5)) (<= K 0) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 0 B_len) A_len) (ite (< 0 B_len) (= A_0 B_0) true) (ite (< 1 B_len) (= A_1 B_1) true) (ite (< 2 B_len) (= A_2 B_2) true) (ite (< 3 B_len) (= A_3 B_3) true) (ite (< 4 B_len) (= A_4 B_4) true) (ite (< 5 B_len) (= A_5 B_5) true))) 0 (ite (and (and (<= 0 K) (<= K 5)) (<= K 1) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 1 B_len) A_len) (ite (< 0 B_len) (= A_1 B_0) true) (ite (< 1 B_len) (= A_2 B_1) true) (ite (< 2 B_len) (= A_3 B_2) true) (ite (< 3 B_len) (= A_4 B_3) true) (ite (< 4 B_len) (= A_5 B_4) true))) 1 (ite (and (and (<= 0 K) (<= K 5)) (<= K 2) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 2 B_len) A_len) (ite (< 0 B_len) (= A_2 B_0) true) (ite (< 1 B_len) (= A_3 B_1) true) (ite (< 2 B_len) (= A_4 B_2) true) (ite (< 3 B_len) (= A_5 B_3) true))) 2 (ite (and (and (<= 0 K) (<= K 5)) (<= K 3) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 3 B_len) A_len) (ite (< 0 B_len) (= A_3 B_0) true) (ite (< 1 B_len) (= A_4 B_1) true) (ite (< 2 B_len) (= A_5 B_2) true))) 3 (ite (and (and (<= 0 K) (<= K 5)) (<= K 4) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 4 B_len) A_len) (ite (< 0 B_len) (= A_4 B_0) true) (ite (< 1 B_len) (= A_5 B_1) true))) 4 (ite (and (and (<= 0 K) (<= K 5)) (<= K 5) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 5 B_len) A_len) (ite (< 0 B_len) (= A_5 B_0) true))) 5 6))))))))
                )
            )
        )) :input (arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5) :output (value))
        (! (match t (
            (bool.true
                (= result true)
            )
            (bool.false
                (= result false)
            )
            ((bool.= x y)
                (exists
                    ((A Int) (B Int))
                    (and (SInt.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A) (SInt.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 B) (= result (= A B)))
                )
            )
            ((bool.prefixof x y)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (A_4 Int) (A_5 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int) (B_4 Int) (B_5 Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A_len A_0 A_1 A_2 A_3 A_4 A_5) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 B_len B_0 B_1 B_2 B_3 B_4 B_5) (= result (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= A_len B_len) (ite (< 0 A_len) (= A_0 B_0) true) (ite (< 1 A_len) (= A_1 B_1) true) (ite (< 2 A_len) (= A_2 B_2) true) (ite (< 3 A_len) (= A_3 B_3) true) (ite (< 4 A_len) (= A_4 B_4) true) (ite (< 5 A_len) (= A_5 B_5) true))))
                )
            )
            ((bool.suffixof x y)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (A_4 Int) (A_5 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int) (B_4 Int) (B_5 Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A_len A_0 A_1 A_2 A_3 A_4 A_5) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 B_len B_0 B_1 B_2 B_3 B_4 B_5) (= result (and (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= A_len B_len)) (ite (= (- B_len A_len) 0) (and (ite (< 0 A_len) (= A_0 B_0) true) (ite (< 1 A_len) (= A_1 B_1) true) (ite (< 2 A_len) (= A_2 B_2) true) (ite (< 3 A_len) (= A_3 B_3) true) (ite (< 4 A_len) (= A_4 B_4) true) (ite (< 5 A_len) (= A_5 B_5) true)) (ite (= (- B_len A_len) 1) (and (ite (< 0 A_len) (= A_0 B_1) true) (ite (< 1 A_len) (= A_1 B_2) true) (ite (< 2 A_len) (= A_2 B_3) true) (ite (< 3 A_len) (= A_3 B_4) true) (ite (< 4 A_len) (= A_4 B_5) true)) (ite (= (- B_len A_len) 2) (and (ite (< 0 A_len) (= A_0 B_2) true) (ite (< 1 A_len) (= A_1 B_3) true) (ite (< 2 A_len) (= A_2 B_4) true) (ite (< 3 A_len) (= A_3 B_5) true)) (ite (= (- B_len A_len) 3) (and (ite (< 0 A_len) (= A_0 B_3) true) (ite (< 1 A_len) (= A_1 B_4) true) (ite (< 2 A_len) (= A_2 B_5) true)) (ite (= (- B_len A_len) 4) (and (ite (< 0 A_len) (= A_0 B_4) true) (ite (< 1 A_len) (= A_1 B_5) true)) (ite (= (- B_len A_len) 5) (ite (< 0 A_len) (= A_0 B_5) true) false)))))))))
                )
            )
            ((bool.contains x y)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (A_4 Int) (A_5 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int) (B_4 Int) (B_5 Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 A_len A_0 A_1 A_2 A_3 A_4 A_5) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5 B_len B_0 B_1 B_2 B_3 B_4 B_5) (= result (or (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 0 B_len) A_len) (ite (< 0 B_len) (= A_0 B_0) true) (ite (< 1 B_len) (= A_1 B_1) true) (ite (< 2 B_len) (= A_2 B_2) true) (ite (< 3 B_len) (= A_3 B_3) true) (ite (< 4 B_len) (= A_4 B_4) true) (ite (< 5 B_len) (= A_5 B_5) true)) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 1 B_len) A_len) (ite (< 0 B_len) (= A_1 B_0) true) (ite (< 1 B_len) (= A_2 B_1) true) (ite (< 2 B_len) (= A_3 B_2) true) (ite (< 3 B_len) (= A_4 B_3) true) (ite (< 4 B_len) (= A_5 B_4) true)) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 2 B_len) A_len) (ite (< 0 B_len) (= A_2 B_0) true) (ite (< 1 B_len) (= A_3 B_1) true) (ite (< 2 B_len) (= A_4 B_2) true) (ite (< 3 B_len) (= A_5 B_3) true)) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 3 B_len) A_len) (ite (< 0 B_len) (= A_3 B_0) true) (ite (< 1 B_len) (= A_4 B_1) true) (ite (< 2 B_len) (= A_5 B_2) true)) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 4 B_len) A_len) (ite (< 0 B_len) (= A_4 B_0) true) (ite (< 1 B_len) (= A_5 B_1) true)) (and (and (<= 0 A_len) (<= A_len 5)) (and (<= 0 B_len) (<= B_len 5)) (<= (+ 5 B_len) A_len) (ite (< 0 B_len) (= A_5 B_0) true)))))
                )
            )
        )) :input (arg0_len arg0_0 arg0_1 arg0_2 arg0_3 arg0_4 arg0_5) :output (result))
    )
)

(synth-fun f () Start)

(constraint (Start.Sem f 3 43 57 49 0 0 0 5 43 48 48 57 49 0 true))
(constraint (Start.Sem f 4 43 54 49 55 0 0 5 43 48 54 49 55 0 true))
(constraint (Start.Sem f 5 43 51 53 50 51 0 5 43 51 53 50 51 0 true))
(constraint (Start.Sem f 2 43 49 0 0 0 0 5 43 48 48 48 49 0 true))
(constraint (Start.Sem f 4 43 54 50 54 0 0 5 43 48 54 50 54 0 true))
(constraint (Start.Sem f 4 43 49 50 53 0 0 5 43 48 49 50 53 0 true))
(constraint (Start.Sem f 3 43 52 51 0 0 0 5 43 48 48 52 51 0 true))
(constraint (Start.Sem f 2 43 57 0 0 0 0 5 43 48 48 48 57 0 true))
(check-synth)

;; String_0266: SemGuS value-vector encoding from 0266.sl
;; examples: 8, args: 1, constants: 0, L: 3
;; neg1=4, bot=5, char-pad=0

(declare-term-types
    ((Start 0) (Str 0) (SInt 0) (SBool 0))
    (
        (($eval Str))
        (
            
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
        (Start.Sem ((t Start) (arg0_len Int) (arg0_0 Int) (arg0_1 Int) (arg0_2 Int) (arg0_3 Int) (out_len Int) (out_0 Int) (out_1 Int) (out_2 Int) (out_3 Int) (result Bool)) Bool)
        (Str.Val ((t Str) (arg0_len Int) (arg0_0 Int) (arg0_1 Int) (arg0_2 Int) (arg0_3 Int) (R_len Int) (R_0 Int) (R_1 Int) (R_2 Int) (R_3 Int)) Bool)
        (SInt.Val ((t SInt) (arg0_len Int) (arg0_0 Int) (arg0_1 Int) (arg0_2 Int) (arg0_3 Int) (value Int)) Bool)
        (SBool.Sem ((t SBool) (arg0_len Int) (arg0_0 Int) (arg0_1 Int) (arg0_2 Int) (arg0_3 Int) (result Bool)) Bool)
    )
    (
        (! (match t (
            (($eval e)
                (exists
                    ((R_len Int) (R_0 Int) (R_1 Int) (R_2 Int) (R_3 Int))
                    (and (Str.Val e arg0_len arg0_0 arg0_1 arg0_2 arg0_3 R_len R_0 R_1 R_2 R_3) (= result (and (= R_len out_len) (= R_0 out_0) (= R_1 out_1) (= R_2 out_2) (= R_3 out_3))))
                )
            )
        )) :input (arg0_len arg0_0 arg0_1 arg0_2 arg0_3 out_len out_0 out_1 out_2 out_3) :output (result))
        (! (match t (
            (arg0
                (and (= R_len arg0_len) (= R_0 arg0_0) (= R_1 arg0_1) (= R_2 arg0_2) (= R_3 arg0_3))
            )
            ((str.++ x y)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A_len A_0 A_1 A_2 A_3) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 B_len B_0 B_1 B_2 B_3) (and (= R_len (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ A_len B_len) 3)) (+ A_len B_len) 5)) (= R_0 (ite (= A_len 0) B_0 (ite (= A_len 1) A_0 (ite (= A_len 2) A_0 (ite (= A_len 3) A_0 0))))) (= R_1 (ite (= A_len 0) B_1 (ite (= A_len 1) B_0 (ite (= A_len 2) A_1 (ite (= A_len 3) A_1 0))))) (= R_2 (ite (= A_len 0) B_2 (ite (= A_len 1) B_1 (ite (= A_len 2) B_0 (ite (= A_len 3) A_2 0))))) (= R_3 (ite (= A_len 0) B_3 (ite (= A_len 1) B_2 (ite (= A_len 2) B_1 (ite (= A_len 3) B_0 0)))))))
                )
            )
            ((str.replace x y z)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int) (C_len Int) (C_0 Int) (C_1 Int) (C_2 Int) (C_3 Int) (P Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A_len A_0 A_1 A_2 A_3) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 B_len B_0 B_1 B_2 B_3) (Str.Val z arg0_len arg0_0 arg0_1 arg0_2 arg0_3 C_len C_0 C_1 C_2 C_3) (and (= P (ite (and (and (<= 0 0) (<= 0 3)) (<= 0 0) (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ 0 B_len) A_len) (ite (< 0 B_len) (= A_0 B_0) true) (ite (< 1 B_len) (= A_1 B_1) true) (ite (< 2 B_len) (= A_2 B_2) true) (ite (< 3 B_len) (= A_3 B_3) true))) 0 (ite (and (and (<= 0 0) (<= 0 3)) (<= 0 1) (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ 1 B_len) A_len) (ite (< 0 B_len) (= A_1 B_0) true) (ite (< 1 B_len) (= A_2 B_1) true) (ite (< 2 B_len) (= A_3 B_2) true))) 1 (ite (and (and (<= 0 0) (<= 0 3)) (<= 0 2) (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ 2 B_len) A_len) (ite (< 0 B_len) (= A_2 B_0) true) (ite (< 1 B_len) (= A_3 B_1) true))) 2 (ite (and (and (<= 0 0) (<= 0 3)) (<= 0 3) (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ 3 B_len) A_len) (ite (< 0 B_len) (= A_3 B_0) true))) 3 4))))) (= R_len (ite (= P 4) A_len (ite (and (and (<= 0 P) (<= P 3)) (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (and (<= 0 C_len) (<= C_len 3)) (<= B_len A_len) (<= (+ (- A_len B_len) C_len) 3)) (+ (- A_len B_len) C_len) 5))) (= R_0 (ite (= P 4) A_0 (ite (and (and (<= 0 P) (<= P 3)) (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (and (<= 0 C_len) (<= C_len 3)) (<= B_len A_len) (<= (+ (- A_len B_len) C_len) 3)) (ite (= P 0) (ite (< 0 (+ 0 C_len)) C_0 (ite (< 0 (+ (- A_len B_len) C_len)) (ite (= (+ (- 0 C_len) B_len) 0) A_0 (ite (= (+ (- 0 C_len) B_len) 1) A_1 (ite (= (+ (- 0 C_len) B_len) 2) A_2 (ite (= (+ (- 0 C_len) B_len) 3) A_3 0)))) 0)) (ite (= P 1) A_0 (ite (= P 2) A_0 (ite (= P 3) A_0 0)))) 0))) (= R_1 (ite (= P 4) A_1 (ite (and (and (<= 0 P) (<= P 3)) (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (and (<= 0 C_len) (<= C_len 3)) (<= B_len A_len) (<= (+ (- A_len B_len) C_len) 3)) (ite (= P 0) (ite (< 1 (+ 0 C_len)) C_1 (ite (< 1 (+ (- A_len B_len) C_len)) (ite (= (+ (- 1 C_len) B_len) 0) A_0 (ite (= (+ (- 1 C_len) B_len) 1) A_1 (ite (= (+ (- 1 C_len) B_len) 2) A_2 (ite (= (+ (- 1 C_len) B_len) 3) A_3 0)))) 0)) (ite (= P 1) (ite (< 1 (+ 1 C_len)) C_0 (ite (< 1 (+ (- A_len B_len) C_len)) (ite (= (+ (- 1 C_len) B_len) 0) A_0 (ite (= (+ (- 1 C_len) B_len) 1) A_1 (ite (= (+ (- 1 C_len) B_len) 2) A_2 (ite (= (+ (- 1 C_len) B_len) 3) A_3 0)))) 0)) (ite (= P 2) A_1 (ite (= P 3) A_1 0)))) 0))) (= R_2 (ite (= P 4) A_2 (ite (and (and (<= 0 P) (<= P 3)) (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (and (<= 0 C_len) (<= C_len 3)) (<= B_len A_len) (<= (+ (- A_len B_len) C_len) 3)) (ite (= P 0) (ite (< 2 (+ 0 C_len)) C_2 (ite (< 2 (+ (- A_len B_len) C_len)) (ite (= (+ (- 2 C_len) B_len) 0) A_0 (ite (= (+ (- 2 C_len) B_len) 1) A_1 (ite (= (+ (- 2 C_len) B_len) 2) A_2 (ite (= (+ (- 2 C_len) B_len) 3) A_3 0)))) 0)) (ite (= P 1) (ite (< 2 (+ 1 C_len)) C_1 (ite (< 2 (+ (- A_len B_len) C_len)) (ite (= (+ (- 2 C_len) B_len) 0) A_0 (ite (= (+ (- 2 C_len) B_len) 1) A_1 (ite (= (+ (- 2 C_len) B_len) 2) A_2 (ite (= (+ (- 2 C_len) B_len) 3) A_3 0)))) 0)) (ite (= P 2) (ite (< 2 (+ 2 C_len)) C_0 (ite (< 2 (+ (- A_len B_len) C_len)) (ite (= (+ (- 2 C_len) B_len) 0) A_0 (ite (= (+ (- 2 C_len) B_len) 1) A_1 (ite (= (+ (- 2 C_len) B_len) 2) A_2 (ite (= (+ (- 2 C_len) B_len) 3) A_3 0)))) 0)) (ite (= P 3) A_2 0)))) 0))) (= R_3 (ite (= P 4) A_3 (ite (and (and (<= 0 P) (<= P 3)) (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (and (<= 0 C_len) (<= C_len 3)) (<= B_len A_len) (<= (+ (- A_len B_len) C_len) 3)) (ite (= P 0) (ite (< 3 (+ 0 C_len)) C_3 (ite (< 3 (+ (- A_len B_len) C_len)) (ite (= (+ (- 3 C_len) B_len) 0) A_0 (ite (= (+ (- 3 C_len) B_len) 1) A_1 (ite (= (+ (- 3 C_len) B_len) 2) A_2 (ite (= (+ (- 3 C_len) B_len) 3) A_3 0)))) 0)) (ite (= P 1) (ite (< 3 (+ 1 C_len)) C_2 (ite (< 3 (+ (- A_len B_len) C_len)) (ite (= (+ (- 3 C_len) B_len) 0) A_0 (ite (= (+ (- 3 C_len) B_len) 1) A_1 (ite (= (+ (- 3 C_len) B_len) 2) A_2 (ite (= (+ (- 3 C_len) B_len) 3) A_3 0)))) 0)) (ite (= P 2) (ite (< 3 (+ 2 C_len)) C_1 (ite (< 3 (+ (- A_len B_len) C_len)) (ite (= (+ (- 3 C_len) B_len) 0) A_0 (ite (= (+ (- 3 C_len) B_len) 1) A_1 (ite (= (+ (- 3 C_len) B_len) 2) A_2 (ite (= (+ (- 3 C_len) B_len) 3) A_3 0)))) 0)) (ite (= P 3) (ite (< 3 (+ 3 C_len)) C_0 (ite (< 3 (+ (- A_len B_len) C_len)) (ite (= (+ (- 3 C_len) B_len) 0) A_0 (ite (= (+ (- 3 C_len) B_len) 1) A_1 (ite (= (+ (- 3 C_len) B_len) 2) A_2 (ite (= (+ (- 3 C_len) B_len) 3) A_3 0)))) 0)) 0)))) 0)))))
                )
            )
            ((str.at x i)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (I Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A_len A_0 A_1 A_2 A_3) (SInt.Val i arg0_len arg0_0 arg0_1 arg0_2 arg0_3 I) (and (= R_len (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (< I A_len)) 1 0)) (= R_0 (ite (= I 0) A_0 (ite (= I 1) A_1 (ite (= I 2) A_2 (ite (= I 3) A_3 0))))) (= R_1 0) (= R_2 0) (= R_3 0)))
                )
            )
            ((str.int2str i)
                (exists
                    ((I Int))
                    (and (SInt.Val i arg0_len arg0_0 arg0_1 arg0_2 arg0_3 I) (and (= R_len (ite (= I 0) 1 (ite (= I 1) 1 (ite (= I 2) 1 (ite (= I 3) 1 0))))) (= R_0 (ite (= I 0) 48 (ite (= I 1) 49 (ite (= I 2) 50 (ite (= I 3) 51 0))))) (= R_1 (ite (= I 0) 0 (ite (= I 1) 0 (ite (= I 2) 0 (ite (= I 3) 0 0))))) (= R_2 (ite (= I 0) 0 (ite (= I 1) 0 (ite (= I 2) 0 (ite (= I 3) 0 0))))) (= R_3 (ite (= I 0) 0 (ite (= I 1) 0 (ite (= I 2) 0 (ite (= I 3) 0 0)))))))
                )
            )
            ((str.ite p x y)
                (exists
                    ((P Bool) (A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int))
                    (and (SBool.Sem p arg0_len arg0_0 arg0_1 arg0_2 arg0_3 P) (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A_len A_0 A_1 A_2 A_3) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 B_len B_0 B_1 B_2 B_3) (and (= R_len (ite P A_len B_len)) (= R_0 (ite P A_0 B_0)) (= R_1 (ite P A_1 B_1)) (= R_2 (ite P A_2 B_2)) (= R_3 (ite P A_3 B_3))))
                )
            )
            ((str.substr x i n)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (I Int) (N Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A_len A_0 A_1 A_2 A_3) (SInt.Val i arg0_len arg0_0 arg0_1 arg0_2 arg0_3 I) (SInt.Val n arg0_len arg0_0 arg0_1 arg0_2 arg0_3 N) (and (= R_len (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0)) (= R_0 (ite (and (= I 0) (< 0 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_0 (ite (and (= I 1) (< 0 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_1 (ite (and (= I 2) (< 0 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_2 (ite (and (= I 3) (< 0 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_3 0))))) (= R_1 (ite (and (= I 0) (< 1 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_1 (ite (and (= I 1) (< 1 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_2 (ite (and (= I 2) (< 1 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_3 (ite (and (= I 3) (< 1 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 0))))) (= R_2 (ite (and (= I 0) (< 2 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_2 (ite (and (= I 1) (< 2 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_3 (ite (and (= I 2) (< 2 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 3) (< 2 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 0))))) (= R_3 (ite (and (= I 0) (< 3 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) A_3 (ite (and (= I 1) (< 3 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 2) (< 3 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 (ite (and (= I 3) (< 3 (ite (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 I) (<= I 3)) (and (<= 0 N) (<= N 3)) (<= I A_len)) (ite (<= (+ I N) A_len) N (- A_len I)) 0))) 0 0)))))))
                )
            )
        )) :input (arg0_len arg0_0 arg0_1 arg0_2 arg0_3) :output (R_len R_0 R_1 R_2 R_3))
        (! (match t (
            (int.0
                (= value 0)
            )
            (int.1
                (= value 1)
            )
            (int.neg1
                (= value 4)
            )
            ((int.+ x y)
                (exists
                    ((A Int) (B Int))
                    (and (SInt.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A) (SInt.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 B) (= value (ite (and (and (<= 0 A) (<= A 3)) (and (<= 0 B) (<= B 3)) (<= (+ A B) 3)) (+ A B) 5)))
                )
            )
            ((int.- x y)
                (exists
                    ((A Int) (B Int))
                    (and (SInt.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A) (SInt.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 B) (= value (ite (and (and (<= 0 A) (<= A 3)) (and (<= 0 B) (<= B 3)) (<= B A)) (- A B) 5)))
                )
            )
            ((int.len x)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A_len A_0 A_1 A_2 A_3) (= value A_len))
                )
            )
            ((int.to_int x)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A_len A_0 A_1 A_2 A_3) (= value (ite (and (= A_len 1) (= A_0 48)) 0 (ite (and (= A_len 1) (= A_0 49)) 1 (ite (and (= A_len 1) (= A_0 50)) 2 (ite (and (= A_len 1) (= A_0 51)) 3 4))))))
                )
            )
            ((int.ite p x y)
                (exists
                    ((P Bool) (A Int) (B Int))
                    (and (SBool.Sem p arg0_len arg0_0 arg0_1 arg0_2 arg0_3 P) (SInt.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A) (SInt.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 B) (= value (ite P A B)))
                )
            )
            ((int.indexof x y k)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int) (K Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A_len A_0 A_1 A_2 A_3) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 B_len B_0 B_1 B_2 B_3) (SInt.Val k arg0_len arg0_0 arg0_1 arg0_2 arg0_3 K) (= value (ite (and (and (<= 0 K) (<= K 3)) (<= K 0) (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ 0 B_len) A_len) (ite (< 0 B_len) (= A_0 B_0) true) (ite (< 1 B_len) (= A_1 B_1) true) (ite (< 2 B_len) (= A_2 B_2) true) (ite (< 3 B_len) (= A_3 B_3) true))) 0 (ite (and (and (<= 0 K) (<= K 3)) (<= K 1) (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ 1 B_len) A_len) (ite (< 0 B_len) (= A_1 B_0) true) (ite (< 1 B_len) (= A_2 B_1) true) (ite (< 2 B_len) (= A_3 B_2) true))) 1 (ite (and (and (<= 0 K) (<= K 3)) (<= K 2) (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ 2 B_len) A_len) (ite (< 0 B_len) (= A_2 B_0) true) (ite (< 1 B_len) (= A_3 B_1) true))) 2 (ite (and (and (<= 0 K) (<= K 3)) (<= K 3) (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ 3 B_len) A_len) (ite (< 0 B_len) (= A_3 B_0) true))) 3 4))))))
                )
            )
        )) :input (arg0_len arg0_0 arg0_1 arg0_2 arg0_3) :output (value))
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
                    (and (SInt.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A) (SInt.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 B) (= result (= A B)))
                )
            )
            ((bool.prefixof x y)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A_len A_0 A_1 A_2 A_3) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 B_len B_0 B_1 B_2 B_3) (= result (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= A_len B_len) (ite (< 0 A_len) (= A_0 B_0) true) (ite (< 1 A_len) (= A_1 B_1) true) (ite (< 2 A_len) (= A_2 B_2) true) (ite (< 3 A_len) (= A_3 B_3) true))))
                )
            )
            ((bool.suffixof x y)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A_len A_0 A_1 A_2 A_3) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 B_len B_0 B_1 B_2 B_3) (= result (and (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= A_len B_len)) (ite (= (- B_len A_len) 0) (and (ite (< 0 A_len) (= A_0 B_0) true) (ite (< 1 A_len) (= A_1 B_1) true) (ite (< 2 A_len) (= A_2 B_2) true) (ite (< 3 A_len) (= A_3 B_3) true)) (ite (= (- B_len A_len) 1) (and (ite (< 0 A_len) (= A_0 B_1) true) (ite (< 1 A_len) (= A_1 B_2) true) (ite (< 2 A_len) (= A_2 B_3) true)) (ite (= (- B_len A_len) 2) (and (ite (< 0 A_len) (= A_0 B_2) true) (ite (< 1 A_len) (= A_1 B_3) true)) (ite (= (- B_len A_len) 3) (ite (< 0 A_len) (= A_0 B_3) true) false)))))))
                )
            )
            ((bool.contains x y)
                (exists
                    ((A_len Int) (A_0 Int) (A_1 Int) (A_2 Int) (A_3 Int) (B_len Int) (B_0 Int) (B_1 Int) (B_2 Int) (B_3 Int))
                    (and (Str.Val x arg0_len arg0_0 arg0_1 arg0_2 arg0_3 A_len A_0 A_1 A_2 A_3) (Str.Val y arg0_len arg0_0 arg0_1 arg0_2 arg0_3 B_len B_0 B_1 B_2 B_3) (= result (or (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ 0 B_len) A_len) (ite (< 0 B_len) (= A_0 B_0) true) (ite (< 1 B_len) (= A_1 B_1) true) (ite (< 2 B_len) (= A_2 B_2) true) (ite (< 3 B_len) (= A_3 B_3) true)) (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ 1 B_len) A_len) (ite (< 0 B_len) (= A_1 B_0) true) (ite (< 1 B_len) (= A_2 B_1) true) (ite (< 2 B_len) (= A_3 B_2) true)) (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ 2 B_len) A_len) (ite (< 0 B_len) (= A_2 B_0) true) (ite (< 1 B_len) (= A_3 B_1) true)) (and (and (<= 0 A_len) (<= A_len 3)) (and (<= 0 B_len) (<= B_len 3)) (<= (+ 3 B_len) A_len) (ite (< 0 B_len) (= A_3 B_0) true)))))
                )
            )
        )) :input (arg0_len arg0_0 arg0_1 arg0_2 arg0_3) :output (result))
    )
)

(synth-fun f () Start)

(constraint (Start.Sem f 3 50 51 52 0 3 50 51 53 0 true))
(constraint (Start.Sem f 3 50 51 50 0 3 50 51 48 0 true))
(constraint (Start.Sem f 3 50 51 56 0 3 50 52 48 0 true))
(constraint (Start.Sem f 2 54 53 0 0 2 54 53 0 0 true))
(constraint (Start.Sem f 3 49 50 52 0 3 49 50 53 0 true))
(constraint (Start.Sem f 3 54 48 53 0 3 54 48 53 0 true))
(constraint (Start.Sem f 3 56 52 50 0 3 56 52 48 0 true))
(constraint (Start.Sem f 3 57 54 52 0 3 57 54 53 0 true))
(check-synth)

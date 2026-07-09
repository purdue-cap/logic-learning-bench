;; Reg+_0126: lines with words with either vowel , lower-case letter , or character
;; source: REGEL (deepregex/132) — gt=or(or(<vow>,<low>),<any>)
;; examples: 14, constraints: 14, max_len: 3

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any) ($digit) ($lower) ($upper) ($alpha) ($alnum) ($word) ($space) ($hex) ($x1B) ($x21) ($x22) ($x23) ($x24) ($x25) ($x26) ($x27) ($x28) ($x29) ($x2A) ($x2C) ($x2D) ($x2E) ($x2F) ($x3A) ($x3B) ($x3C) ($x3E) ($x3F) ($x40) ($x5B) ($x5C) ($x5E) ($x5F) ($x60) ($x7B) ($x7E)
            ($question R)
            ($plus R)
            ($or R R)
            ($concat R R)
            ($inter R R)
            ($star R)
        )
    )
)

(define-funs-rec
    (
        (Start.Sem ((t Start) (len Int) (s_0 Int) (s_1 Int) (s_2 Int) (result Bool)) Bool)
        (R.Sem ((t R) (len Int) (s_0 Int) (s_1 Int) (s_2 Int) (X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_3_3 Bool)) Bool)
    )
    (
        (! (match t (
            (($eval t1)
                (or (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_3_3 Bool))
                    (and (= len 0) (R.Sem t1 len s_0 s_1 s_2 X_0_0 X_0_1 X_0_2 X_0_3 X_1_1 X_1_2 X_1_3 X_2_2 X_2_3 X_3_3) (= result X_0_0))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_3_3 Bool))
                    (and (= len 1) (R.Sem t1 len s_0 s_1 s_2 X_0_0 X_0_1 X_0_2 X_0_3 X_1_1 X_1_2 X_1_3 X_2_2 X_2_3 X_3_3) (= result X_0_1))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_3_3 Bool))
                    (and (= len 2) (R.Sem t1 len s_0 s_1 s_2 X_0_0 X_0_1 X_0_2 X_0_3 X_1_1 X_1_2 X_1_3 X_2_2 X_2_3 X_3_3) (= result X_0_2))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_3_3 Bool))
                    (and (= len 3) (R.Sem t1 len s_0 s_1 s_2 X_0_0 X_0_1 X_0_2 X_0_3 X_1_1 X_1_2 X_1_3 X_2_2 X_2_3 X_3_3) (= result X_0_3))
                ))
            )
        )) :input (len s_0 s_1 s_2) :output (result))
        (! (match t (
            ($any
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) true)) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) true)) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) true)) (= X_3_3 false))
            )
            ($digit
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (and (<= 48 s_0) (<= s_0 57)))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (and (<= 48 s_1) (<= s_1 57)))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (and (<= 48 s_2) (<= s_2 57)))) (= X_3_3 false))
            )
            ($lower
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (and (<= 97 s_0) (<= s_0 122)))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (and (<= 97 s_1) (<= s_1 122)))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (and (<= 97 s_2) (<= s_2 122)))) (= X_3_3 false))
            )
            ($upper
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (and (<= 65 s_0) (<= s_0 90)))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (and (<= 65 s_1) (<= s_1 90)))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (and (<= 65 s_2) (<= s_2 90)))) (= X_3_3 false))
            )
            ($alpha
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (and (<= 65 s_0) (<= s_0 90)) (and (<= 97 s_0) (<= s_0 122))))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (or (and (<= 65 s_1) (<= s_1 90)) (and (<= 97 s_1) (<= s_1 122))))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (or (and (<= 65 s_2) (<= s_2 90)) (and (<= 97 s_2) (<= s_2 122))))) (= X_3_3 false))
            )
            ($alnum
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (or (and (<= 65 s_0) (<= s_0 90)) (and (<= 97 s_0) (<= s_0 122))) (and (<= 48 s_0) (<= s_0 57))))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (or (or (and (<= 65 s_1) (<= s_1 90)) (and (<= 97 s_1) (<= s_1 122))) (and (<= 48 s_1) (<= s_1 57))))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (or (or (and (<= 65 s_2) (<= s_2 90)) (and (<= 97 s_2) (<= s_2 122))) (and (<= 48 s_2) (<= s_2 57))))) (= X_3_3 false))
            )
            ($word
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (or (or (and (<= 65 s_0) (<= s_0 90)) (and (<= 97 s_0) (<= s_0 122))) (and (<= 48 s_0) (<= s_0 57))) (= s_0 95)))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (or (or (or (and (<= 65 s_1) (<= s_1 90)) (and (<= 97 s_1) (<= s_1 122))) (and (<= 48 s_1) (<= s_1 57))) (= s_1 95)))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (or (or (or (and (<= 65 s_2) (<= s_2 90)) (and (<= 97 s_2) (<= s_2 122))) (and (<= 48 s_2) (<= s_2 57))) (= s_2 95)))) (= X_3_3 false))
            )
            ($space
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (= s_0 32) (= s_0 9) (= s_0 10)))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (or (= s_1 32) (= s_1 9) (= s_1 10)))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (or (= s_2 32) (= s_2 9) (= s_2 10)))) (= X_3_3 false))
            )
            ($hex
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (and (<= 48 s_0) (<= s_0 57)) (and (<= 97 s_0) (<= s_0 102)) (and (<= 65 s_0) (<= s_0 70))))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (or (and (<= 48 s_1) (<= s_1 57)) (and (<= 97 s_1) (<= s_1 102)) (and (<= 65 s_1) (<= s_1 70))))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (or (and (<= 48 s_2) (<= s_2 57)) (and (<= 97 s_2) (<= s_2 102)) (and (<= 65 s_2) (<= s_2 70))))) (= X_3_3 false))
            )
            ($x1B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 27))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 27))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 27))) (= X_3_3 false))
            )
            ($x21
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 33))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 33))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 33))) (= X_3_3 false))
            )
            ($x22
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 34))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 34))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 34))) (= X_3_3 false))
            )
            ($x23
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 35))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 35))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 35))) (= X_3_3 false))
            )
            ($x24
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 36))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 36))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 36))) (= X_3_3 false))
            )
            ($x25
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 37))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 37))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 37))) (= X_3_3 false))
            )
            ($x26
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 38))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 38))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 38))) (= X_3_3 false))
            )
            ($x27
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 39))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 39))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 39))) (= X_3_3 false))
            )
            ($x28
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 40))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 40))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 40))) (= X_3_3 false))
            )
            ($x29
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 41))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 41))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 41))) (= X_3_3 false))
            )
            ($x2A
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 42))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 42))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 42))) (= X_3_3 false))
            )
            ($x2C
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 44))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 44))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 44))) (= X_3_3 false))
            )
            ($x2D
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 45))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 45))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 45))) (= X_3_3 false))
            )
            ($x2E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 46))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 46))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 46))) (= X_3_3 false))
            )
            ($x2F
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 47))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 47))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 47))) (= X_3_3 false))
            )
            ($x3A
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 58))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 58))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 58))) (= X_3_3 false))
            )
            ($x3B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 59))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 59))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 59))) (= X_3_3 false))
            )
            ($x3C
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 60))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 60))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 60))) (= X_3_3 false))
            )
            ($x3E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 62))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 62))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 62))) (= X_3_3 false))
            )
            ($x3F
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 63))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 63))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 63))) (= X_3_3 false))
            )
            ($x40
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 64))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 64))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 64))) (= X_3_3 false))
            )
            ($x5B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 91))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 91))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 91))) (= X_3_3 false))
            )
            ($x5C
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 92))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 92))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 92))) (= X_3_3 false))
            )
            ($x5E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 94))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 94))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 94))) (= X_3_3 false))
            )
            ($x5F
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 95))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 95))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 95))) (= X_3_3 false))
            )
            ($x60
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 96))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 96))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 96))) (= X_3_3 false))
            )
            ($x7B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 123))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 123))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 123))) (= X_3_3 false))
            )
            ($x7E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 126))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 126))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 126))) (= X_3_3 false))
            )
            (($or t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_3_3 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_3_3 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 A_0_0 A_0_1 A_0_2 A_0_3 A_1_1 A_1_2 A_1_3 A_2_2 A_2_3 A_3_3) (R.Sem t2 len s_0 s_1 s_2 B_0_0 B_0_1 B_0_2 B_0_3 B_1_1 B_1_2 B_1_3 B_2_2 B_2_3 B_3_3) (and (= X_0_0 (or A_0_0 B_0_0)) (= X_0_1 (or A_0_1 B_0_1)) (= X_0_2 (or A_0_2 B_0_2)) (= X_0_3 (or A_0_3 B_0_3)) (= X_1_1 (or A_1_1 B_1_1)) (= X_1_2 (or A_1_2 B_1_2)) (= X_1_3 (or A_1_3 B_1_3)) (= X_2_2 (or A_2_2 B_2_2)) (= X_2_3 (or A_2_3 B_2_3)) (= X_3_3 (or A_3_3 B_3_3))))
                )
            )
            (($concat t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_3_3 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_3_3 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 A_0_0 A_0_1 A_0_2 A_0_3 A_1_1 A_1_2 A_1_3 A_2_2 A_2_3 A_3_3) (R.Sem t2 len s_0 s_1 s_2 B_0_0 B_0_1 B_0_2 B_0_3 B_1_1 B_1_2 B_1_3 B_2_2 B_2_3 B_3_3) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (or (and A_0_0 B_0_1) (and A_0_1 B_1_1))) (= X_0_2 (or (and A_0_0 B_0_2) (and A_0_1 B_1_2) (and A_0_2 B_2_2))) (= X_0_3 (or (and A_0_0 B_0_3) (and A_0_1 B_1_3) (and A_0_2 B_2_3) (and A_0_3 B_3_3))) (= X_1_1 (and A_1_1 B_1_1)) (= X_1_2 (or (and A_1_1 B_1_2) (and A_1_2 B_2_2))) (= X_1_3 (or (and A_1_1 B_1_3) (and A_1_2 B_2_3) (and A_1_3 B_3_3))) (= X_2_2 (and A_2_2 B_2_2)) (= X_2_3 (or (and A_2_2 B_2_3) (and A_2_3 B_3_3))) (= X_3_3 (and A_3_3 B_3_3))))
                )
            )
            (($inter t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_3_3 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_3_3 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 A_0_0 A_0_1 A_0_2 A_0_3 A_1_1 A_1_2 A_1_3 A_2_2 A_2_3 A_3_3) (R.Sem t2 len s_0 s_1 s_2 B_0_0 B_0_1 B_0_2 B_0_3 B_1_1 B_1_2 B_1_3 B_2_2 B_2_3 B_3_3) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (and A_0_1 B_0_1)) (= X_0_2 (and A_0_2 B_0_2)) (= X_0_3 (and A_0_3 B_0_3)) (= X_1_1 (and A_1_1 B_1_1)) (= X_1_2 (and A_1_2 B_1_2)) (= X_1_3 (and A_1_3 B_1_3)) (= X_2_2 (and A_2_2 B_2_2)) (= X_2_3 (and A_2_3 B_2_3)) (= X_3_3 (and A_3_3 B_3_3))))
                )
            )
            (($question t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_3_3 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 A_0_0 A_0_1 A_0_2 A_0_3 A_1_1 A_1_2 A_1_3 A_2_2 A_2_3 A_3_3) (and (= X_0_0 true) (= X_0_1 A_0_1) (= X_0_2 A_0_2) (= X_0_3 A_0_3) (= X_1_1 true) (= X_1_2 A_1_2) (= X_1_3 A_1_3) (= X_2_2 true) (= X_2_3 A_2_3) (= X_3_3 true)))
                )
            )
            (($plus t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_3_3 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_0_2 Bool) (S_0_3 Bool) (S_1_1 Bool) (S_1_2 Bool) (S_1_3 Bool) (S_2_2 Bool) (S_2_3 Bool) (S_3_3 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 A_0_0 A_0_1 A_0_2 A_0_3 A_1_1 A_1_2 A_1_3 A_2_2 A_2_3 A_3_3) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= S_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= S_1_1 true) (= S_1_2 (and A_1_2 S_2_2)) (= S_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= S_2_2 true) (= S_2_3 (and A_2_3 S_3_3)) (= S_3_3 true)) (and (= X_0_0 false) (= X_0_1 (and A_0_1 S_1_1)) (= X_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= X_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= X_1_1 false) (= X_1_2 (and A_1_2 S_2_2)) (= X_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= X_2_2 false) (= X_2_3 (and A_2_3 S_3_3)) (= X_3_3 false)))
                )
            )
            (($star t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_3_3 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_0_2 Bool) (S_0_3 Bool) (S_1_1 Bool) (S_1_2 Bool) (S_1_3 Bool) (S_2_2 Bool) (S_2_3 Bool) (S_3_3 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 A_0_0 A_0_1 A_0_2 A_0_3 A_1_1 A_1_2 A_1_3 A_2_2 A_2_3 A_3_3) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= S_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= S_1_1 true) (= S_1_2 (and A_1_2 S_2_2)) (= S_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= S_2_2 true) (= S_2_3 (and A_2_3 S_3_3)) (= S_3_3 true)) (and (= X_0_0 S_0_0) (= X_0_1 S_0_1) (= X_0_2 S_0_2) (= X_0_3 S_0_3) (= X_1_1 S_1_1) (= X_1_2 S_1_2) (= X_1_3 S_1_3) (= X_2_2 S_2_2) (= X_2_3 S_2_3) (= X_3_3 S_3_3)))
                )
            )
        )) :input (len s_0 s_1 s_2) :output (X_0_0 X_0_1 X_0_2 X_0_3 X_1_1 X_1_2 X_1_3 X_2_2 X_2_3 X_3_3))
    )
)

(synth-fun match_regex() Start)

(constraint (Start.Sem match_regex 1 97 0 0 true))
(constraint (Start.Sem match_regex 1 65 0 0 true))
(constraint (Start.Sem match_regex 1 49 0 0 true))
(constraint (Start.Sem match_regex 1 64 0 0 true))
(constraint (Start.Sem match_regex 1 101 0 0 true))
(constraint (Start.Sem match_regex 1 73 0 0 true))
(constraint (Start.Sem match_regex 1 48 0 0 true))
(constraint (Start.Sem match_regex 2 97 97 0 false))
(constraint (Start.Sem match_regex 2 65 101 0 false))
(constraint (Start.Sem match_regex 3 33 97 115 false))
(constraint (Start.Sem match_regex 2 114 51 0 false))
(constraint (Start.Sem match_regex 3 76 107 100 false))
(constraint (Start.Sem match_regex 3 115 51 100 false))
(constraint (Start.Sem match_regex 0 0 0 0 false))
(check-synth)

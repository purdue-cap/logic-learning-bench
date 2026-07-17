;; Reg+_0305: Here are the conditions for my regular expression: must start with ''09''. total length is 9.
;; source: REGEL (stackoverflow/109) — gt=or(startwith(concat(<a>,<a>)),endwith(concat(<b>,<b>)))
;; examples: 6, constraints: 6, max_len: 4

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any) ($digit) ($lower) ($upper) ($alpha) ($alnum) ($word) ($space) ($hex) ($x20) ($x21) ($x23) ($x25) ($x2C) ($x2D) ($x2E) ($x30) ($x31) ($x32) ($x33) ($x34) ($x35) ($x36) ($x37) ($x38) ($x39) ($x40) ($x41) ($x42) ($x45) ($x48) ($x4C) ($x4F) ($x5A) ($x61) ($x62) ($x63) ($x64) ($x65) ($x67) ($x68) ($x69) ($x6E) ($x6F) ($x74) ($x79) ($x39B)
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
        (Start.Sem ((t Start) (len Int) (s_0 Int) (s_1 Int) (s_2 Int) (s_3 Int) (result Bool)) Bool)
        (R.Sem ((t R) (len Int) (s_0 Int) (s_1 Int) (s_2 Int) (s_3 Int) (X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool)) Bool)
    )
    (
        (! (match t (
            (($eval t1)
                (or (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 0) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_0))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 1) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_1))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 2) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_2))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 3) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_3))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 4) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_4))
                ))
            )
        )) :input (len s_0 s_1 s_2 s_3) :output (result))
        (! (match t (
            ($any
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) true)) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) true)) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) true)) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) true)) (= X_4_4 false))
            )
            ($digit
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (and (<= 48 s_0) (<= s_0 57)))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (and (<= 48 s_1) (<= s_1 57)))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (and (<= 48 s_2) (<= s_2 57)))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (and (<= 48 s_3) (<= s_3 57)))) (= X_4_4 false))
            )
            ($lower
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (and (<= 97 s_0) (<= s_0 122)))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (and (<= 97 s_1) (<= s_1 122)))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (and (<= 97 s_2) (<= s_2 122)))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (and (<= 97 s_3) (<= s_3 122)))) (= X_4_4 false))
            )
            ($upper
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (and (<= 65 s_0) (<= s_0 90)))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (and (<= 65 s_1) (<= s_1 90)))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (and (<= 65 s_2) (<= s_2 90)))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (and (<= 65 s_3) (<= s_3 90)))) (= X_4_4 false))
            )
            ($alpha
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (and (<= 65 s_0) (<= s_0 90)) (and (<= 97 s_0) (<= s_0 122))))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (or (and (<= 65 s_1) (<= s_1 90)) (and (<= 97 s_1) (<= s_1 122))))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (or (and (<= 65 s_2) (<= s_2 90)) (and (<= 97 s_2) (<= s_2 122))))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (or (and (<= 65 s_3) (<= s_3 90)) (and (<= 97 s_3) (<= s_3 122))))) (= X_4_4 false))
            )
            ($alnum
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (or (and (<= 65 s_0) (<= s_0 90)) (and (<= 97 s_0) (<= s_0 122))) (and (<= 48 s_0) (<= s_0 57))))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (or (or (and (<= 65 s_1) (<= s_1 90)) (and (<= 97 s_1) (<= s_1 122))) (and (<= 48 s_1) (<= s_1 57))))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (or (or (and (<= 65 s_2) (<= s_2 90)) (and (<= 97 s_2) (<= s_2 122))) (and (<= 48 s_2) (<= s_2 57))))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (or (or (and (<= 65 s_3) (<= s_3 90)) (and (<= 97 s_3) (<= s_3 122))) (and (<= 48 s_3) (<= s_3 57))))) (= X_4_4 false))
            )
            ($word
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (or (or (and (<= 65 s_0) (<= s_0 90)) (and (<= 97 s_0) (<= s_0 122))) (and (<= 48 s_0) (<= s_0 57))) (= s_0 95)))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (or (or (or (and (<= 65 s_1) (<= s_1 90)) (and (<= 97 s_1) (<= s_1 122))) (and (<= 48 s_1) (<= s_1 57))) (= s_1 95)))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (or (or (or (and (<= 65 s_2) (<= s_2 90)) (and (<= 97 s_2) (<= s_2 122))) (and (<= 48 s_2) (<= s_2 57))) (= s_2 95)))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (or (or (or (and (<= 65 s_3) (<= s_3 90)) (and (<= 97 s_3) (<= s_3 122))) (and (<= 48 s_3) (<= s_3 57))) (= s_3 95)))) (= X_4_4 false))
            )
            ($space
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (= s_0 32) (= s_0 9) (= s_0 10)))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (or (= s_1 32) (= s_1 9) (= s_1 10)))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (or (= s_2 32) (= s_2 9) (= s_2 10)))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (or (= s_3 32) (= s_3 9) (= s_3 10)))) (= X_4_4 false))
            )
            ($hex
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (and (<= 48 s_0) (<= s_0 57)) (and (<= 97 s_0) (<= s_0 102)) (and (<= 65 s_0) (<= s_0 70))))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (or (and (<= 48 s_1) (<= s_1 57)) (and (<= 97 s_1) (<= s_1 102)) (and (<= 65 s_1) (<= s_1 70))))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (or (and (<= 48 s_2) (<= s_2 57)) (and (<= 97 s_2) (<= s_2 102)) (and (<= 65 s_2) (<= s_2 70))))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (or (and (<= 48 s_3) (<= s_3 57)) (and (<= 97 s_3) (<= s_3 102)) (and (<= 65 s_3) (<= s_3 70))))) (= X_4_4 false))
            )
            ($x20
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 32))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 32))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 32))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 32))) (= X_4_4 false))
            )
            ($x21
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 33))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 33))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 33))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 33))) (= X_4_4 false))
            )
            ($x23
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 35))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 35))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 35))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 35))) (= X_4_4 false))
            )
            ($x25
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 37))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 37))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 37))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 37))) (= X_4_4 false))
            )
            ($x2C
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 44))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 44))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 44))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 44))) (= X_4_4 false))
            )
            ($x2D
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 45))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 45))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 45))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 45))) (= X_4_4 false))
            )
            ($x2E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 46))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 46))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 46))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 46))) (= X_4_4 false))
            )
            ($x30
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 48))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 48))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 48))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 48))) (= X_4_4 false))
            )
            ($x31
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 49))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 49))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 49))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 49))) (= X_4_4 false))
            )
            ($x32
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 50))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 50))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 50))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 50))) (= X_4_4 false))
            )
            ($x33
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 51))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 51))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 51))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 51))) (= X_4_4 false))
            )
            ($x34
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 52))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 52))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 52))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 52))) (= X_4_4 false))
            )
            ($x35
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 53))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 53))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 53))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 53))) (= X_4_4 false))
            )
            ($x36
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 54))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 54))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 54))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 54))) (= X_4_4 false))
            )
            ($x37
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 55))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 55))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 55))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 55))) (= X_4_4 false))
            )
            ($x38
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 56))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 56))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 56))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 56))) (= X_4_4 false))
            )
            ($x39
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 57))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 57))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 57))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 57))) (= X_4_4 false))
            )
            ($x40
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 64))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 64))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 64))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 64))) (= X_4_4 false))
            )
            ($x41
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 65))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 65))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 65))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 65))) (= X_4_4 false))
            )
            ($x42
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 66))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 66))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 66))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 66))) (= X_4_4 false))
            )
            ($x45
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 69))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 69))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 69))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 69))) (= X_4_4 false))
            )
            ($x48
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 72))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 72))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 72))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 72))) (= X_4_4 false))
            )
            ($x4C
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 76))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 76))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 76))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 76))) (= X_4_4 false))
            )
            ($x4F
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 79))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 79))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 79))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 79))) (= X_4_4 false))
            )
            ($x5A
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 90))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 90))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 90))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 90))) (= X_4_4 false))
            )
            ($x61
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 97))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 97))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 97))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 97))) (= X_4_4 false))
            )
            ($x62
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 98))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 98))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 98))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 98))) (= X_4_4 false))
            )
            ($x63
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 99))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 99))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 99))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 99))) (= X_4_4 false))
            )
            ($x64
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 100))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 100))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 100))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 100))) (= X_4_4 false))
            )
            ($x65
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 101))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 101))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 101))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 101))) (= X_4_4 false))
            )
            ($x67
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 103))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 103))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 103))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 103))) (= X_4_4 false))
            )
            ($x68
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 104))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 104))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 104))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 104))) (= X_4_4 false))
            )
            ($x69
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 105))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 105))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 105))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 105))) (= X_4_4 false))
            )
            ($x6E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 110))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 110))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 110))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 110))) (= X_4_4 false))
            )
            ($x6F
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 111))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 111))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 111))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 111))) (= X_4_4 false))
            )
            ($x74
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 116))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 116))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 116))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 116))) (= X_4_4 false))
            )
            ($x79
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 121))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 121))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 121))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 121))) (= X_4_4 false))
            )
            ($x39B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 923))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 923))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 923))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 923))) (= X_4_4 false))
            )
            (($or t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_0_4 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_1_4 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_2_4 Bool) (B_3_3 Bool) (B_3_4 Bool) (B_4_4 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4) (R.Sem t2 len s_0 s_1 s_2 s_3 B_0_0 B_0_1 B_0_2 B_0_3 B_0_4 B_1_1 B_1_2 B_1_3 B_1_4 B_2_2 B_2_3 B_2_4 B_3_3 B_3_4 B_4_4) (and (= X_0_0 (or A_0_0 B_0_0)) (= X_0_1 (or A_0_1 B_0_1)) (= X_0_2 (or A_0_2 B_0_2)) (= X_0_3 (or A_0_3 B_0_3)) (= X_0_4 (or A_0_4 B_0_4)) (= X_1_1 (or A_1_1 B_1_1)) (= X_1_2 (or A_1_2 B_1_2)) (= X_1_3 (or A_1_3 B_1_3)) (= X_1_4 (or A_1_4 B_1_4)) (= X_2_2 (or A_2_2 B_2_2)) (= X_2_3 (or A_2_3 B_2_3)) (= X_2_4 (or A_2_4 B_2_4)) (= X_3_3 (or A_3_3 B_3_3)) (= X_3_4 (or A_3_4 B_3_4)) (= X_4_4 (or A_4_4 B_4_4))))
                )
            )
            (($concat t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_0_4 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_1_4 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_2_4 Bool) (B_3_3 Bool) (B_3_4 Bool) (B_4_4 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4) (R.Sem t2 len s_0 s_1 s_2 s_3 B_0_0 B_0_1 B_0_2 B_0_3 B_0_4 B_1_1 B_1_2 B_1_3 B_1_4 B_2_2 B_2_3 B_2_4 B_3_3 B_3_4 B_4_4) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (or (and A_0_0 B_0_1) (and A_0_1 B_1_1))) (= X_0_2 (or (and A_0_0 B_0_2) (and A_0_1 B_1_2) (and A_0_2 B_2_2))) (= X_0_3 (or (and A_0_0 B_0_3) (and A_0_1 B_1_3) (and A_0_2 B_2_3) (and A_0_3 B_3_3))) (= X_0_4 (or (and A_0_0 B_0_4) (and A_0_1 B_1_4) (and A_0_2 B_2_4) (and A_0_3 B_3_4) (and A_0_4 B_4_4))) (= X_1_1 (and A_1_1 B_1_1)) (= X_1_2 (or (and A_1_1 B_1_2) (and A_1_2 B_2_2))) (= X_1_3 (or (and A_1_1 B_1_3) (and A_1_2 B_2_3) (and A_1_3 B_3_3))) (= X_1_4 (or (and A_1_1 B_1_4) (and A_1_2 B_2_4) (and A_1_3 B_3_4) (and A_1_4 B_4_4))) (= X_2_2 (and A_2_2 B_2_2)) (= X_2_3 (or (and A_2_2 B_2_3) (and A_2_3 B_3_3))) (= X_2_4 (or (and A_2_2 B_2_4) (and A_2_3 B_3_4) (and A_2_4 B_4_4))) (= X_3_3 (and A_3_3 B_3_3)) (= X_3_4 (or (and A_3_3 B_3_4) (and A_3_4 B_4_4))) (= X_4_4 (and A_4_4 B_4_4))))
                )
            )
            (($inter t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_0_4 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_1_4 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_2_4 Bool) (B_3_3 Bool) (B_3_4 Bool) (B_4_4 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4) (R.Sem t2 len s_0 s_1 s_2 s_3 B_0_0 B_0_1 B_0_2 B_0_3 B_0_4 B_1_1 B_1_2 B_1_3 B_1_4 B_2_2 B_2_3 B_2_4 B_3_3 B_3_4 B_4_4) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (and A_0_1 B_0_1)) (= X_0_2 (and A_0_2 B_0_2)) (= X_0_3 (and A_0_3 B_0_3)) (= X_0_4 (and A_0_4 B_0_4)) (= X_1_1 (and A_1_1 B_1_1)) (= X_1_2 (and A_1_2 B_1_2)) (= X_1_3 (and A_1_3 B_1_3)) (= X_1_4 (and A_1_4 B_1_4)) (= X_2_2 (and A_2_2 B_2_2)) (= X_2_3 (and A_2_3 B_2_3)) (= X_2_4 (and A_2_4 B_2_4)) (= X_3_3 (and A_3_3 B_3_3)) (= X_3_4 (and A_3_4 B_3_4)) (= X_4_4 (and A_4_4 B_4_4))))
                )
            )
            (($question t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4) (and (= X_0_0 true) (= X_0_1 A_0_1) (= X_0_2 A_0_2) (= X_0_3 A_0_3) (= X_0_4 A_0_4) (= X_1_1 true) (= X_1_2 A_1_2) (= X_1_3 A_1_3) (= X_1_4 A_1_4) (= X_2_2 true) (= X_2_3 A_2_3) (= X_2_4 A_2_4) (= X_3_3 true) (= X_3_4 A_3_4) (= X_4_4 true)))
                )
            )
            (($plus t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_0_2 Bool) (S_0_3 Bool) (S_0_4 Bool) (S_1_1 Bool) (S_1_2 Bool) (S_1_3 Bool) (S_1_4 Bool) (S_2_2 Bool) (S_2_3 Bool) (S_2_4 Bool) (S_3_3 Bool) (S_3_4 Bool) (S_4_4 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= S_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= S_0_4 (or (and A_0_1 S_1_4) (and A_0_2 S_2_4) (and A_0_3 S_3_4) (and A_0_4 S_4_4))) (= S_1_1 true) (= S_1_2 (and A_1_2 S_2_2)) (= S_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= S_1_4 (or (and A_1_2 S_2_4) (and A_1_3 S_3_4) (and A_1_4 S_4_4))) (= S_2_2 true) (= S_2_3 (and A_2_3 S_3_3)) (= S_2_4 (or (and A_2_3 S_3_4) (and A_2_4 S_4_4))) (= S_3_3 true) (= S_3_4 (and A_3_4 S_4_4)) (= S_4_4 true)) (and (= X_0_0 false) (= X_0_1 (and A_0_1 S_1_1)) (= X_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= X_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= X_0_4 (or (and A_0_1 S_1_4) (and A_0_2 S_2_4) (and A_0_3 S_3_4) (and A_0_4 S_4_4))) (= X_1_1 false) (= X_1_2 (and A_1_2 S_2_2)) (= X_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= X_1_4 (or (and A_1_2 S_2_4) (and A_1_3 S_3_4) (and A_1_4 S_4_4))) (= X_2_2 false) (= X_2_3 (and A_2_3 S_3_3)) (= X_2_4 (or (and A_2_3 S_3_4) (and A_2_4 S_4_4))) (= X_3_3 false) (= X_3_4 (and A_3_4 S_4_4)) (= X_4_4 false)))
                )
            )
            (($star t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_0_2 Bool) (S_0_3 Bool) (S_0_4 Bool) (S_1_1 Bool) (S_1_2 Bool) (S_1_3 Bool) (S_1_4 Bool) (S_2_2 Bool) (S_2_3 Bool) (S_2_4 Bool) (S_3_3 Bool) (S_3_4 Bool) (S_4_4 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= S_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= S_0_4 (or (and A_0_1 S_1_4) (and A_0_2 S_2_4) (and A_0_3 S_3_4) (and A_0_4 S_4_4))) (= S_1_1 true) (= S_1_2 (and A_1_2 S_2_2)) (= S_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= S_1_4 (or (and A_1_2 S_2_4) (and A_1_3 S_3_4) (and A_1_4 S_4_4))) (= S_2_2 true) (= S_2_3 (and A_2_3 S_3_3)) (= S_2_4 (or (and A_2_3 S_3_4) (and A_2_4 S_4_4))) (= S_3_3 true) (= S_3_4 (and A_3_4 S_4_4)) (= S_4_4 true)) (and (= X_0_0 S_0_0) (= X_0_1 S_0_1) (= X_0_2 S_0_2) (= X_0_3 S_0_3) (= X_0_4 S_0_4) (= X_1_1 S_1_1) (= X_1_2 S_1_2) (= X_1_3 S_1_3) (= X_1_4 S_1_4) (= X_2_2 S_2_2) (= X_2_3 S_2_3) (= X_2_4 S_2_4) (= X_3_3 S_3_3) (= X_3_4 S_3_4) (= X_4_4 S_4_4)))
                )
            )
        )) :input (len s_0 s_1 s_2 s_3) :output (X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4))
    )
)

(synth-fun match_regex() Start)

(constraint (Start.Sem match_regex 3 97 97 98 0 true))
(constraint (Start.Sem match_regex 3 97 98 98 0 true))
(constraint (Start.Sem match_regex 4 97 97 98 97 true))
(constraint (Start.Sem match_regex 1 923 0 0 0 false))
(constraint (Start.Sem match_regex 2 97 98 0 0 false))
(constraint (Start.Sem match_regex 4 97 98 97 97 false))
(check-synth)

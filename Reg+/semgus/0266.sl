;; Reg+_0266: I need a regular expression to validate single digit within range of [1-5] followed by alphabet [A-C] and followed by optional alphabet [X-Z]
;; source: REGEL (stackoverflow/70) — gt=concat(or(<1>,or(<2>,or(<3>,or(<4>,<5>)))),concat(or(<A>,or(<B>,<C>)),optional(or(<X>,or(<Y>,<Z>)))))
;; examples: 3, constraints: 3, max_len: 3

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
            ($x20
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 32))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 32))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 32))) (= X_3_3 false))
            )
            ($x21
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 33))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 33))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 33))) (= X_3_3 false))
            )
            ($x23
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 35))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 35))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 35))) (= X_3_3 false))
            )
            ($x25
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 37))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 37))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 37))) (= X_3_3 false))
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
            ($x30
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 48))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 48))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 48))) (= X_3_3 false))
            )
            ($x31
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 49))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 49))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 49))) (= X_3_3 false))
            )
            ($x32
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 50))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 50))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 50))) (= X_3_3 false))
            )
            ($x33
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 51))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 51))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 51))) (= X_3_3 false))
            )
            ($x34
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 52))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 52))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 52))) (= X_3_3 false))
            )
            ($x35
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 53))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 53))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 53))) (= X_3_3 false))
            )
            ($x36
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 54))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 54))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 54))) (= X_3_3 false))
            )
            ($x37
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 55))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 55))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 55))) (= X_3_3 false))
            )
            ($x38
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 56))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 56))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 56))) (= X_3_3 false))
            )
            ($x39
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 57))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 57))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 57))) (= X_3_3 false))
            )
            ($x40
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 64))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 64))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 64))) (= X_3_3 false))
            )
            ($x41
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 65))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 65))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 65))) (= X_3_3 false))
            )
            ($x42
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 66))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 66))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 66))) (= X_3_3 false))
            )
            ($x45
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 69))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 69))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 69))) (= X_3_3 false))
            )
            ($x48
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 72))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 72))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 72))) (= X_3_3 false))
            )
            ($x4C
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 76))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 76))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 76))) (= X_3_3 false))
            )
            ($x4F
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 79))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 79))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 79))) (= X_3_3 false))
            )
            ($x5A
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 90))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 90))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 90))) (= X_3_3 false))
            )
            ($x61
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 97))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 97))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 97))) (= X_3_3 false))
            )
            ($x62
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 98))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 98))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 98))) (= X_3_3 false))
            )
            ($x63
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 99))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 99))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 99))) (= X_3_3 false))
            )
            ($x64
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 100))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 100))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 100))) (= X_3_3 false))
            )
            ($x65
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 101))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 101))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 101))) (= X_3_3 false))
            )
            ($x67
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 103))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 103))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 103))) (= X_3_3 false))
            )
            ($x68
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 104))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 104))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 104))) (= X_3_3 false))
            )
            ($x69
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 105))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 105))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 105))) (= X_3_3 false))
            )
            ($x6E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 110))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 110))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 110))) (= X_3_3 false))
            )
            ($x6F
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 111))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 111))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 111))) (= X_3_3 false))
            )
            ($x74
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 116))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 116))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 116))) (= X_3_3 false))
            )
            ($x79
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 121))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 121))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 121))) (= X_3_3 false))
            )
            ($x39B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 923))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 923))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 923))) (= X_3_3 false))
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

(constraint (Start.Sem match_regex 2 49 65 0 true))
(constraint (Start.Sem match_regex 3 50 66 90 true))
(constraint (Start.Sem match_regex 2 55 66 0 false))
(check-synth)

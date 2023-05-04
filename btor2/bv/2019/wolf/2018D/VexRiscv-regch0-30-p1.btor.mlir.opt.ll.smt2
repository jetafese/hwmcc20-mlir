;; Produced with Z3_solver_to_string()
(declare-fun sea.sp0_0 () (_ BitVec 64))
(declare-fun main@%_652_0 () (_ BitVec 8))
(declare-fun main@%_633_0 () (_ BitVec 8))
(declare-fun main@%_614_0 () (_ BitVec 8))
(declare-fun main@%_595_0 () (_ BitVec 8))
(declare-fun main@%_576_0 () (_ BitVec 8))
(declare-fun main@%_557_0 () (_ BitVec 8))
(declare-fun main@%_538_0 () (_ BitVec 8))
(declare-fun main@%_519_0 () (_ BitVec 8))
(declare-fun main@%_500_0 () (_ BitVec 8))
(declare-fun main@%_481_0 () (_ BitVec 8))
(declare-fun main@%_462_0 () (_ BitVec 8))
(declare-fun main@%_443_0 () (_ BitVec 8))
(declare-fun main@%_424_0 () (_ BitVec 8))
(declare-fun main@%_405_0 () (_ BitVec 8))
(declare-fun main@%_386_0 () (_ BitVec 8))
(declare-fun main@%_367_0 () (_ BitVec 8))
(declare-fun main@%_348_0 () (_ BitVec 8))
(declare-fun main@%_329_0 () (_ BitVec 8))
(declare-fun main@%_310_0 () (_ BitVec 8))
(declare-fun main@%_291_0 () (_ BitVec 8))
(declare-fun main@%_272_0 () (_ BitVec 8))
(declare-fun main@%_254_0 () (_ BitVec 8))
(assert (= #b000 ((_ extract 2 0) sea.sp0_0)))
(assert (bvule sea.sp0_0 #x00000000c0000000))
(assert (bvuge sea.sp0_0 #x00000000bf700000))
(assert (and true
     (= ((_ extract 0 0) main@%_254_0) #b1)
     true
     true
     (xor (= ((_ extract 0 0) main@%_272_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_291_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_310_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_329_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_348_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_367_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_386_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_405_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_424_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_443_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_462_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_481_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_500_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_519_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_538_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_557_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_576_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_595_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_614_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_633_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_652_0) #b1) true)
     true
     true
     false))

(check-sat)

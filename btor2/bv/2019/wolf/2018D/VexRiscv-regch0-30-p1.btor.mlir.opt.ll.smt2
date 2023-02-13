(declare-fun main@%_367_0 () (_ BitVec 8))
(declare-fun main@%_355_0 () (_ BitVec 8))
(declare-fun main@%_343_0 () (_ BitVec 8))
(declare-fun main@%_331_0 () (_ BitVec 8))
(declare-fun main@%_319_0 () (_ BitVec 8))
(declare-fun main@%_307_0 () (_ BitVec 8))
(declare-fun main@%_295_0 () (_ BitVec 8))
(declare-fun main@%_283_0 () (_ BitVec 8))
(declare-fun main@%_271_0 () (_ BitVec 8))
(declare-fun sea.sp0_0 () (_ BitVec 64))
(declare-fun main@%_128_0 () (_ BitVec 8))
(declare-fun main@%_139_0 () (_ BitVec 8))
(declare-fun main@%_151_0 () (_ BitVec 8))
(declare-fun main@%_163_0 () (_ BitVec 8))
(declare-fun main@%_175_0 () (_ BitVec 8))
(declare-fun main@%_187_0 () (_ BitVec 8))
(declare-fun main@%_199_0 () (_ BitVec 8))
(declare-fun main@%_211_0 () (_ BitVec 8))
(declare-fun main@%_223_0 () (_ BitVec 8))
(declare-fun main@%_235_0 () (_ BitVec 8))
(declare-fun main@%_247_0 () (_ BitVec 8))
(declare-fun main@%_259_0 () (_ BitVec 8))

(assert (and (= #b000 ((_ extract 2 0) sea.sp0_0))
     (bvule sea.sp0_0 #x00000000c0000000)
     (bvuge sea.sp0_0 #x00000000bf700000)
     true
     (= ((_ extract 0 0) main@%_128_0) #b1)
     true
     true
     (xor (= ((_ extract 0 0) main@%_139_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_151_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_163_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_175_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_187_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_199_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_211_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_223_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_235_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_247_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_259_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_271_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_283_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_295_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_307_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_319_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_331_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_343_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_355_0) #b1) true)
     true
     true
     (xor (= ((_ extract 0 0) main@%_367_0) #b1) true)
     true
     true
     false))
(check-sat)

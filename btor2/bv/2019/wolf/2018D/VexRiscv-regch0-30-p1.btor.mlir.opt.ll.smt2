(declare-fun main@%_347_0 () Bool)
(declare-fun main@%_336_0 () Bool)
(declare-fun main@%_325_0 () Bool)
(declare-fun main@%_314_0 () Bool)
(declare-fun main@%_303_0 () Bool)
(declare-fun main@%_292_0 () Bool)
(declare-fun main@%_281_0 () Bool)
(declare-fun main@%_270_0 () Bool)
(declare-fun main@%_259_0 () Bool)
(declare-fun main@%_193_0 () Bool)
(declare-fun main@%_128_0 () Bool)
(declare-fun main@%_138_0 () Bool)
(declare-fun main@%_149_0 () Bool)
(declare-fun sea.sp0_0 () (_ BitVec 64))
(declare-fun main@%_160_0 () Bool)
(declare-fun main@%_171_0 () Bool)
(declare-fun main@%_182_0 () Bool)
(declare-fun main@%_204_0 () Bool)
(declare-fun main@%_215_0 () Bool)
(declare-fun main@%_226_0 () Bool)
(declare-fun main@%_237_0 () Bool)
(declare-fun main@%_248_0 () Bool)

(assert (and (= #b000 ((_ extract 2 0) sea.sp0_0))
     (bvule sea.sp0_0 #x00000000c0000000)
     (bvuge sea.sp0_0 #x00000000bf700000)
     true
     main@%_128_0
     true
     true
     (xor main@%_138_0 true)
     true
     true
     (xor main@%_149_0 true)
     true
     true
     (xor main@%_160_0 true)
     true
     true
     (xor main@%_171_0 true)
     true
     true
     (xor main@%_182_0 true)
     true
     true
     (xor main@%_193_0 true)
     true
     true
     (xor main@%_204_0 true)
     true
     true
     (xor main@%_215_0 true)
     true
     true
     (xor main@%_226_0 true)
     true
     true
     (xor main@%_237_0 true)
     true
     true
     (xor main@%_248_0 true)
     true
     true
     (xor main@%_259_0 true)
     true
     true
     (xor main@%_270_0 true)
     true
     true
     (xor main@%_281_0 true)
     true
     true
     (xor main@%_292_0 true)
     true
     true
     (xor main@%_303_0 true)
     true
     true
     (xor main@%_314_0 true)
     true
     true
     (xor main@%_325_0 true)
     true
     true
     (xor main@%_336_0 true)
     true
     true
     (xor main@%_347_0 true)
     true
     true
     false))
(check-sat)

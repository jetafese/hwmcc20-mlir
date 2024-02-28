module {
  func @main() {
    %0 = btor.nd_state 0 : !btor.bv<10>
    %1 = btor.nd_array : !btor.array<<10>, <32>>
    %2 = btor.constant 0 : ui10 !btor.bv<10>
    br ^bb1(%0, %1, %2 : !btor.bv<10>, !btor.array<<10>, <32>>, !btor.bv<10>)
  ^bb1(%3: !btor.bv<10>, %4: !btor.array<<10>, <32>>, %5: !btor.bv<10>):  // 2 preds: ^bb0, ^bb1
    %6 = btor.constant 1 : ui10 !btor.bv<10>
    %7 = btor.add %5, %6 : !btor.bv<10>
    %8 = btor.constant 32 : ui10 !btor.bv<10>
    %9 = btor.cmp ule, %5, %8 : !btor.bv<10>
    %10 = btor.ite %9, %7, %5 : !btor.bv<10>
    %11 = btor.constant 0 : ui32 !btor.bv<32>
    %12 = btor.write %11, %4[%5] : !btor.array<<10>, <32>>
    %13 = btor.read %4[%3] : !btor.array<<10>, <32>>, !btor.bv<32>
    %14 = btor.cmp ne, %13, %11 : !btor.bv<32>
    %15 = btor.cmp ult, %3, %5 : !btor.bv<10>
    %16 = btor.and %15, %14 : !btor.bv<1>
    btor.assert_not(%16), 0 : ui64 !btor.bv<1>
    %17 = btor.nd_state 0 : !btor.bv<10>
    br ^bb1(%17, %12, %10 : !btor.bv<10>, !btor.array<<10>, <32>>, !btor.bv<10>)
  }
}

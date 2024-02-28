module {
  func @main() {
    %0 = btor.nd_array : !btor.array<<10>, <32>>
    %1 = btor.constant 0 : ui10 !btor.bv<10>
    %2 = btor.nd_array : !btor.array<<10>, <32>>
    %3 = btor.nd_state 4 : !btor.bv<10>
    br ^bb1(%0, %1, %2, %2, %3 : !btor.array<<10>, <32>>, !btor.bv<10>, !btor.array<<10>, <32>>, !btor.array<<10>, <32>>, !btor.bv<10>)
  ^bb1(%4: !btor.array<<10>, <32>>, %5: !btor.bv<10>, %6: !btor.array<<10>, <32>>, %7: !btor.array<<10>, <32>>, %8: !btor.bv<10>):  // 2 preds: ^bb0, ^bb1
    %9 = btor.constant 1 : ui1 !btor.bv<1>
    %10 = btor.uext %9 : <1> to <10>
    %11 = btor.add %5, %10 : !btor.bv<10>
    %12 = btor.constant 1022 : ui10 !btor.bv<10>
    %13 = btor.cmp ule, %5, %12 : !btor.bv<10>
    %14 = btor.ite %13, %11, %5 : !btor.bv<10>
    %15 = btor.constant 4294967295 : ui32 !btor.bv<32>
    %16 = btor.not %15 : !btor.bv<32>
    %17 = btor.read %4[%5] : !btor.array<<10>, <32>>, !btor.bv<32>
    %18 = btor.and %17, %16 : !btor.bv<32>
    %19 = btor.read %6[%5] : !btor.array<<10>, <32>>, !btor.bv<32>
    %20 = btor.and %19, %15 : !btor.bv<32>
    %21 = btor.or %20, %18 : !btor.bv<32>
    %22 = btor.write %21, %4[%5] : !btor.array<<10>, <32>>
    %23 = btor.redor %15 : !btor.bv<32>
    %24 = btor.ite %23, %22, %4 : !btor.array<<10>, <32>>
    %25 = btor.not %15 : !btor.bv<32>
    %26 = btor.read %6[%5] : !btor.array<<10>, <32>>, !btor.bv<32>
    %27 = btor.and %26, %25 : !btor.bv<32>
    %28 = btor.read %4[%5] : !btor.array<<10>, <32>>, !btor.bv<32>
    %29 = btor.and %28, %15 : !btor.bv<32>
    %30 = btor.or %29, %27 : !btor.bv<32>
    %31 = btor.write %30, %6[%5] : !btor.array<<10>, <32>>
    %32 = btor.redor %15 : !btor.bv<32>
    %33 = btor.ite %32, %31, %6 : !btor.array<<10>, <32>>
    %34 = btor.read %7[%8] : !btor.array<<10>, <32>>, !btor.bv<32>
    %35 = btor.read %4[%8] : !btor.array<<10>, <32>>, !btor.bv<32>
    %36 = btor.cmp ne, %35, %34 : !btor.bv<32>
    %37 = btor.cmp ult, %8, %5 : !btor.bv<10>
    %38 = btor.and %37, %36 : !btor.bv<1>
    btor.assert_not(%38), 0 : ui64 !btor.bv<1>
    %39 = btor.nd_state 4 : !btor.bv<10>
    br ^bb1(%24, %14, %33, %7, %39 : !btor.array<<10>, <32>>, !btor.bv<10>, !btor.array<<10>, <32>>, !btor.array<<10>, <32>>, !btor.bv<10>)
  }
}

module {
  func @main() {
    %0 = btor.nd_array : vector<1024xi32>
    %1 = btor.constant 0 : i10
    %2 = btor.nd_array : vector<1024xi32>
    %3 = btor.nd_state 4 : i10
    br ^bb1(%0, %1, %2, %2, %3 : vector<1024xi32>, i10, vector<1024xi32>, vector<1024xi32>, i10)
  ^bb1(%4: vector<1024xi32>, %5: i10, %6: vector<1024xi32>, %7: vector<1024xi32>, %8: i10):  // 2 preds: ^bb0, ^bb1
    %9 = btor.constant true
    %10 = btor.uext %9 : i1 to i10
    %11 = btor.add %5, %10 : i10
    %12 = btor.constant -2 : i10
    %13 = btor.cmp ule, %5, %12 : i10
    %14 = btor.ite %13, %11, %5 : i10
    %15 = btor.constant -1 : i32
    %16 = btor.not %15 : i32
    %17 = btor.read %4[%5] : vector<1024xi32>, i32
    %18 = btor.and %17, %16 : i32
    %19 = btor.read %6[%5] : vector<1024xi32>, i32
    %20 = btor.and %19, %15 : i32
    %21 = btor.or %20, %18 : i32
    %22 = btor.write %21, %4[%5] : vector<1024xi32>
    %23 = btor.redor %15 : i32
    %24 = btor.ite %23, %22, %4 : vector<1024xi32>
    %25 = btor.not %15 : i32
    %26 = btor.read %6[%5] : vector<1024xi32>, i32
    %27 = btor.and %26, %25 : i32
    %28 = btor.read %4[%5] : vector<1024xi32>, i32
    %29 = btor.and %28, %15 : i32
    %30 = btor.or %29, %27 : i32
    %31 = btor.write %30, %6[%5] : vector<1024xi32>
    %32 = btor.redor %15 : i32
    %33 = btor.ite %32, %31, %6 : vector<1024xi32>
    %34 = btor.read %7[%8] : vector<1024xi32>, i32
    %35 = btor.read %4[%8] : vector<1024xi32>, i32
    %36 = btor.cmp ne, %35, %34 : i32
    %37 = btor.cmp ult, %8, %5 : i10
    %38 = btor.and %37, %36 : i1
    btor.assert_not(%38)
    %39 = btor.nd_state 4 : i10
    br ^bb1(%24, %14, %33, %7, %39 : vector<1024xi32>, i10, vector<1024xi32>, vector<1024xi32>, i10)
  }
}

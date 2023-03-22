module {
  func @main() {
    %0 = btor.constant 0 : i10
    %1 = btor.nd_array : vector<1024xi32>
    %2 = btor.nd_state 4 : i10
    br ^bb1(%1, %0, %1, %1, %2 : vector<1024xi32>, i10, vector<1024xi32>, vector<1024xi32>, i10)
  ^bb1(%3: vector<1024xi32>, %4: i10, %5: vector<1024xi32>, %6: vector<1024xi32>, %7: i10):  // 2 preds: ^bb0, ^bb1
    %8 = btor.constant true
    %9 = btor.uext %8 : i1 to i10
    %10 = btor.add %4, %9 : i10
    %11 = btor.constant -2 : i10
    %12 = btor.cmp ule, %4, %11 : i10
    %13 = btor.ite %12, %10, %4 : i10
    %14 = btor.constant -1 : i32
    %15 = btor.not %14 : i32
    %16 = btor.read %3[%4] : vector<1024xi32>, i32
    %17 = btor.and %16, %15 : i32
    %18 = btor.read %5[%4] : vector<1024xi32>, i32
    %19 = btor.and %18, %14 : i32
    %20 = btor.or %19, %17 : i32
    %21 = btor.write %20, %3[%4] : vector<1024xi32>
    %22 = btor.redor %14 : i32
    %23 = btor.ite %22, %21, %3 : vector<1024xi32>
    %24 = btor.not %14 : i32
    %25 = btor.read %5[%4] : vector<1024xi32>, i32
    %26 = btor.and %25, %24 : i32
    %27 = btor.read %3[%4] : vector<1024xi32>, i32
    %28 = btor.and %27, %14 : i32
    %29 = btor.or %28, %26 : i32
    %30 = btor.write %29, %5[%4] : vector<1024xi32>
    %31 = btor.redor %14 : i32
    %32 = btor.ite %31, %30, %5 : vector<1024xi32>
    %33 = btor.read %6[%7] : vector<1024xi32>, i32
    %34 = btor.read %3[%7] : vector<1024xi32>, i32
    %35 = btor.cmp ne, %34, %33 : i32
    %36 = btor.cmp ult, %7, %4 : i10
    %37 = btor.and %36, %35 : i1
    btor.assert_not(%37)
    %38 = btor.nd_state 4 : i10
    br ^bb1(%23, %13, %32, %6, %38 : vector<1024xi32>, i10, vector<1024xi32>, vector<1024xi32>, i10)
  }
}

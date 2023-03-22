module {
  func @main() {
    %0 = btor.constant 0 : i10
    %1 = btor.nd_state 0 : i10
    %2 = btor.nd_array : vector<1024xi32>
    br ^bb1(%1, %2, %0 : i10, vector<1024xi32>, i10)
  ^bb1(%3: i10, %4: vector<1024xi32>, %5: i10):  // 2 preds: ^bb0, ^bb1
    %6 = btor.constant 1 : i10
    %7 = btor.add %5, %6 : i10
    %8 = btor.constant 32 : i10
    %9 = btor.cmp ule, %5, %8 : i10
    %10 = btor.ite %9, %7, %5 : i10
    %11 = btor.constant 0 : i32
    %12 = btor.write %11, %4[%5] : vector<1024xi32>
    %13 = btor.read %4[%3] : vector<1024xi32>, i32
    %14 = btor.cmp ne, %13, %11 : i32
    %15 = btor.cmp ult, %3, %5 : i10
    %16 = btor.and %15, %14 : i1
    btor.assert_not(%16)
    %17 = btor.nd_state 0 : i10
    br ^bb1(%17, %12, %10 : i10, vector<1024xi32>, i10)
  }
}

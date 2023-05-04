module {
  func @main() {
    %0 = btor.nd_state 0 : i4
    %1 = btor.constant 0 : i16
    %2 = btor.constant true
    br ^bb1(%0, %1, %2 : i4, i16, i1)
  ^bb1(%3: i4, %4: i16, %5: i1):  // 2 preds: ^bb0, ^bb1
    %6 = btor.constant 0 : i4
    %7 = btor.ite %5, %6, %3 : i4
    %8 = btor.constant true
    %9 = btor.uext %8 : i1 to i16
    %10 = btor.add %4, %9 : i16
    %11 = btor.constant false
    %12 = btor.input 3 : i1
    %13 = btor.input 1 : i16
    %14 = btor.input 0 : i16
    %15 = btor.add %14, %13 : i16
    %16 = btor.sub %14, %13 : i16
    %17 = btor.redor %3 : i4
    %18 = btor.not %17 : i1
    %19 = btor.ite %18, %15, %16 : i16
    %20 = btor.cmp eq, %19, %15 : i16
    %21 = btor.uext %11 : i1 to i16
    %22 = btor.cmp ugt, %4, %21 : i16
    %23 = btor.ite %22, %20, %12 : i1
    %24 = btor.not %23 : i1
    %25 = btor.ite %22, %8, %11 : i1
    %26 = btor.and %25, %24 : i1
    btor.assert_not(%26)
    br ^bb1(%7, %10, %11 : i4, i16, i1)
  }
}

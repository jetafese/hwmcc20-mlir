module {
  func @main() {
    %0 = btor.constant false
    %1 = btor.constant 0 : i3
    %2 = btor.constant 0 : i12
    br ^bb1(%0, %1, %1, %2 : i1, i3, i3, i12)
  ^bb1(%3: i1, %4: i3, %5: i3, %6: i12):  // 2 preds: ^bb0, ^bb1
    %7 = btor.constant true
    %8 = btor.constant 0 : i3
    %9 = btor.constant 0 : i4
    %10 = btor.nd_bv : i4
    %11 = btor.cmp eq, %10, %9 : i4
    %12 = btor.ite %11, %8, %5 : i3
    %13 = btor.constant 1 : i3
    %14 = btor.add %5, %13 : i3
    %15 = btor.constant -3 : i3
    %16 = btor.cmp ne, %5, %15 : i3
    %17 = btor.constant 5 : i4
    %18 = btor.cmp eq, %10, %17 : i4
    %19 = btor.constant 4 : i4
    %20 = btor.cmp eq, %10, %19 : i4
    %21 = btor.constant 1 : i4
    %22 = btor.cmp eq, %10, %21 : i4
    %23 = btor.nd_bv : i1
    %24 = btor.not %23 : i1
    %25 = btor.nd_bv : i1
    %26 = btor.and %25, %24 : i1
    %27 = btor.not %26 : i1
    %28 = btor.and %27, %22 : i1
    %29 = btor.or %28, %20 : i1
    %30 = btor.or %29, %18 : i1
    %31 = btor.and %30, %16 : i1
    %32 = btor.ite %31, %14, %12 : i3
    %33 = btor.sub %5, %13 : i3
    %34 = btor.cmp ne, %5, %8 : i3
    %35 = btor.constant -1 : i4
    %36 = btor.cmp eq, %10, %35 : i4
    %37 = btor.constant -8 : i4
    %38 = btor.cmp eq, %10, %37 : i4
    %39 = btor.or %38, %36 : i1
    %40 = btor.redor %6 : i12
    %41 = btor.not %40 : i1
    %42 = btor.and %41, %39 : i1
    %43 = btor.cmp eq, %10, %35 : i4
    %44 = btor.constant -3 : i4
    %45 = btor.cmp eq, %10, %44 : i4
    %46 = btor.constant -5 : i4
    %47 = btor.cmp eq, %10, %46 : i4
    %48 = btor.constant -6 : i4
    %49 = btor.cmp eq, %10, %48 : i4
    %50 = btor.or %49, %47 : i1
    %51 = btor.or %50, %45 : i1
    %52 = btor.or %51, %43 : i1
    %53 = btor.not %26 : i1
    %54 = btor.and %53, %52 : i1
    %55 = btor.or %54, %42 : i1
    %56 = btor.and %55, %34 : i1
    %57 = btor.ite %56, %33, %32 : i3
    %58 = btor.constant 1 : i12
    %59 = btor.sub %6, %58 : i12
    %60 = btor.nd_bv : i1
    %61 = btor.cmp eq, %10, %35 : i4
    %62 = btor.constant -7 : i4
    %63 = btor.cmp eq, %10, %62 : i4
    %64 = btor.cmp eq, %10, %37 : i4
    %65 = btor.or %64, %63 : i1
    %66 = btor.or %65, %61 : i1
    %67 = btor.and %40, %66 : i1
    %68 = btor.and %67, %60 : i1
    %69 = btor.ite %68, %59, %6 : i12
    %70 = btor.nd_bv : i12
    %71 = btor.not %60 : i1
    %72 = btor.cmp eq, %10, %19 : i4
    %73 = btor.not %26 : i1
    %74 = btor.and %73, %72 : i1
    %75 = btor.constant -4 : i4
    %76 = btor.cmp eq, %10, %75 : i4
    %77 = btor.or %76, %74 : i1
    %78 = btor.or %77, %71 : i1
    %79 = btor.ite %78, %70, %69 : i12
    %80 = btor.constant -1 : i3
    %81 = btor.cmp eq, %5, %80 : i3
    %82 = btor.constant -2 : i3
    %83 = btor.cmp ne, %4, %82 : i3
    %84 = btor.constant false
    %85 = btor.cmp eq, %3, %84 : i1
    %86 = btor.or %85, %83 : i1
    %87 = btor.or %86, %81 : i1
    %88 = btor.not %87 : i1
    %89 = btor.and %7, %88 : i1
    btor.assert_not(%89)
    br ^bb1(%7, %5, %57, %79 : i1, i3, i3, i12)
  }
}

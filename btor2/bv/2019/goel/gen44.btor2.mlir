module {
  func @main() {
    %0 = btor.constant false
    %1 = btor.nd_bv : i256
    %2 = btor.nd_bv : i256
    %3 = btor.nd_bv : i1
    %4 = btor.nd_bv : i1
    br ^bb1(%1, %2, %0, %3, %0, %0, %0, %4 : i256, i256, i1, i1, i1, i1, i1, i1)
  ^bb1(%5: i256, %6: i256, %7: i1, %8: i1, %9: i1, %10: i1, %11: i1, %12: i1):  // 2 preds: ^bb0, ^bb1
    %13 = btor.nd_bv : i13
    %14 = btor.constant 12 : i13
    %15 = btor.constant 12 : i13
    %16 = btor.slice %13, %14, %15 : i13, i1
    %17 = btor.constant 11 : i13
    %18 = btor.constant 11 : i13
    %19 = btor.slice %13, %17, %18 : i13, i1
    %20 = btor.or %19, %16 : i1
    %21 = btor.ite %20, %6, %5 : i256
    %22 = btor.constant 0 : i256
    %23 = btor.nd_bv : i1
    %24 = btor.ite %23, %22, %21 : i256
    %25 = btor.nd_bv : i1
    %26 = btor.ite %25, %24, %5 : i256
    %27 = btor.constant false
    %28 = btor.ite %27, %22, %26 : i256
    %29 = btor.nd_bv : i256
    %30 = btor.not %25 : i1
    %31 = btor.cmp eq, %23, %8 : i1
    %32 = btor.not %23 : i1
    %33 = btor.and %32, %31 : i1
    %34 = btor.and %11, %33 : i1
    %35 = btor.and %34, %10 : i1
    %36 = btor.constant 10 : i13
    %37 = btor.constant 10 : i13
    %38 = btor.slice %13, %36, %37 : i13, i1
    %39 = btor.or %38, %19 : i1
    %40 = btor.or %23, %39 : i1
    %41 = btor.not %40 : i1
    %42 = btor.or %41, %35 : i1
    %43 = btor.or %42, %30 : i1
    %44 = btor.ite %43, %6, %29 : i256
    %45 = btor.ite %27, %22, %44 : i256
    %46 = btor.ite %25, %42, %7 : i1
    %47 = btor.ite %27, %27, %46 : i1
    %48 = btor.ite %25, %23, %8 : i1
    %49 = btor.ite %27, %27, %48 : i1
    %50 = btor.or %23, %20 : i1
    %51 = btor.and %7, %33 : i1
    %52 = btor.and %51, %9 : i1
    %53 = btor.not %52 : i1
    %54 = btor.ite %53, %50, %9 : i1
    %55 = btor.ite %25, %54, %9 : i1
    %56 = btor.ite %27, %27, %55 : i1
    %57 = btor.not %35 : i1
    %58 = btor.ite %57, %40, %10 : i1
    %59 = btor.ite %25, %58, %10 : i1
    %60 = btor.ite %27, %27, %59 : i1
    %61 = btor.nd_bv : i1
    %62 = btor.not %61 : i1
    %63 = btor.constant -3 : i3
    %64 = btor.nd_bv : i3
    %65 = btor.cmp eq, %64, %63 : i3
    %66 = btor.and %12, %65 : i1
    %67 = btor.and %66, %62 : i1
    %68 = btor.nd_bv : i1
    %69 = btor.constant 9 : i13
    %70 = btor.constant 9 : i13
    %71 = btor.slice %13, %69, %70 : i13, i1
    %72 = btor.and %71, %68 : i1
    %73 = btor.constant 8 : i13
    %74 = btor.constant 8 : i13
    %75 = btor.slice %13, %73, %74 : i13, i1
    %76 = btor.or %23, %75 : i1
    %77 = btor.or %76, %72 : i1
    %78 = btor.or %77, %67 : i1
    %79 = btor.not %75 : i1
    %80 = btor.or %23, %79 : i1
    %81 = btor.or %80, %71 : i1
    %82 = btor.and %81, %78 : i1
    %83 = btor.not %82 : i1
    %84 = btor.ite %25, %83, %11 : i1
    %85 = btor.ite %27, %27, %84 : i1
    %86 = btor.nd_bv : i1
    %87 = btor.constant 1 : i3
    %88 = btor.nd_bv : i3
    %89 = btor.cmp eq, %88, %87 : i3
    %90 = btor.ite %89, %27, %27 : i1
    %91 = btor.constant 3 : i3
    %92 = btor.cmp eq, %88, %91 : i3
    %93 = btor.ite %92, %27, %27 : i1
    %94 = btor.constant 2 : i3
    %95 = btor.cmp eq, %88, %94 : i3
    %96 = btor.or %95, %92 : i1
    %97 = btor.ite %96, %93, %90 : i1
    %98 = btor.constant true
    %99 = btor.cmp eq, %88, %63 : i3
    %100 = btor.ite %99, %98, %27 : i1
    %101 = btor.constant -1 : i3
    %102 = btor.cmp eq, %88, %101 : i3
    %103 = btor.ite %102, %27, %27 : i1
    %104 = btor.constant -2 : i3
    %105 = btor.cmp eq, %88, %104 : i3
    %106 = btor.or %105, %102 : i1
    %107 = btor.ite %106, %103, %100 : i1
    %108 = btor.constant -4 : i3
    %109 = btor.cmp eq, %88, %108 : i3
    %110 = btor.concat %99, %109 : i1, i1, i2
    %111 = btor.concat %106, %110 : i1, i2, i3
    %112 = btor.redor %111 : i3
    %113 = btor.ite %112, %107, %97 : i1
    %114 = btor.cmp eq, %64, %87 : i3
    %115 = btor.ite %114, %27, %113 : i1
    %116 = btor.cmp eq, %64, %91 : i3
    %117 = btor.ite %116, %27, %27 : i1
    %118 = btor.cmp eq, %64, %94 : i3
    %119 = btor.or %118, %116 : i1
    %120 = btor.ite %119, %117, %115 : i1
    %121 = btor.cmp eq, %64, %63 : i3
    %122 = btor.ite %121, %27, %27 : i1
    %123 = btor.cmp eq, %64, %101 : i3
    %124 = btor.ite %123, %27, %27 : i1
    %125 = btor.cmp eq, %64, %104 : i3
    %126 = btor.or %125, %123 : i1
    %127 = btor.ite %126, %124, %122 : i1
    %128 = btor.cmp eq, %64, %108 : i3
    %129 = btor.concat %121, %128 : i1, i1, i2
    %130 = btor.concat %126, %129 : i1, i2, i3
    %131 = btor.redor %130 : i3
    %132 = btor.ite %131, %127, %120 : i1
    %133 = btor.or %23, %132 : i1
    %134 = btor.not %133 : i1
    %135 = btor.or %134, %30 : i1
    %136 = btor.ite %135, %12, %86 : i1
    %137 = btor.ite %27, %27, %136 : i1
    %138 = btor.nd_bv : i1
    %139 = btor.or %138, %53 : i1
    %140 = btor.and %20, %139 : i1
    %141 = btor.ite %140, %6, %5 : i256
    %142 = btor.ite %139, %22, %5 : i256
    %143 = btor.ite %23, %142, %141 : i256
    %144 = btor.ite %25, %143, %5 : i256
    %145 = btor.cmp eq, %26, %144 : i256
    %146 = btor.not %145 : i1
    %147 = btor.and %98, %146 : i1
    btor.assert_not(%147)
    br ^bb1(%28, %45, %47, %49, %56, %60, %85, %137 : i256, i256, i1, i1, i1, i1, i1, i1)
  }
}
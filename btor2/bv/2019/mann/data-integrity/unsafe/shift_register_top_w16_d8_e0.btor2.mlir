module {
  func @main() {
    %0 = btor.constant true
    %1 = btor.nd_bv : i16
    %2 = btor.nd_bv : i4
    %3 = btor.nd_bv : i1
    %4 = btor.nd_bv : i1
    %5 = btor.nd_bv : i4
    %6 = btor.nd_bv : i16
    %7 = btor.nd_bv : i16
    %8 = btor.nd_bv : i16
    %9 = btor.nd_bv : i16
    %10 = btor.nd_bv : i16
    %11 = btor.nd_bv : i16
    %12 = btor.nd_bv : i16
    %13 = btor.nd_bv : i16
    br ^bb1(%1, %2, %3, %4, %5, %6, %0, %7, %8, %9, %10, %11, %12, %13 : i16, i4, i1, i1, i4, i16, i1, i16, i16, i16, i16, i16, i16, i16)
  ^bb1(%14: i16, %15: i4, %16: i1, %17: i1, %18: i4, %19: i16, %20: i1, %21: i16, %22: i16, %23: i16, %24: i16, %25: i16, %26: i16, %27: i16):  // 2 preds: ^bb0, ^bb1
    %28 = btor.constant 0 : i16
    %29 = btor.nd_bv : i1
    %30 = btor.ite %29, %21, %28 : i16
    %31 = btor.nd_bv : i16
    %32 = btor.uext %29 : i1 to i32
    %33 = btor.uext %15 : i4 to i32
    %34 = btor.sub %33, %32 : i32
    %35 = btor.redor %34 : i32
    %36 = btor.not %35 : i1
    %37 = btor.nd_bv : i1
    %38 = btor.and %37, %36 : i1
    %39 = btor.ite %38, %31, %30 : i16
    %40 = btor.redor %15 : i4
    %41 = btor.not %40 : i1
    %42 = btor.and %37, %41 : i1
    %43 = btor.or %29, %42 : i1
    %44 = btor.ite %43, %39, %14 : i16
    %45 = btor.nd_bv : i1
    %46 = btor.ite %45, %28, %44 : i16
    %47 = btor.uext %29 : i1 to i4
    %48 = btor.uext %37 : i1 to i4
    %49 = btor.add %15, %48 : i4
    %50 = btor.sub %49, %47 : i4
    %51 = btor.constant 0 : i4
    %52 = btor.ite %45, %51, %50 : i4
    %53 = btor.nd_bv : i1
    %54 = btor.and %53, %37 : i1
    %55 = btor.or %16, %54 : i1
    %56 = btor.not %16 : i1
    %57 = btor.ite %56, %55, %16 : i1
    %58 = btor.constant false
    %59 = btor.ite %45, %58, %57 : i1
    %60 = btor.uext %29 : i1 to i4
    %61 = btor.not %16 : i1
    %62 = btor.and %37, %61 : i1
    %63 = btor.uext %62 : i1 to i4
    %64 = btor.add %18, %63 : i4
    %65 = btor.sub %64, %60 : i4
    %66 = btor.ite %45, %51, %65 : i4
    %67 = btor.redor %66 : i4
    %68 = btor.not %67 : i1
    %69 = btor.redor %18 : i4
    %70 = btor.not %17 : i1
    %71 = btor.and %16, %70 : i1
    %72 = btor.and %71, %69 : i1
    %73 = btor.and %72, %68 : i1
    %74 = btor.or %73, %17 : i1
    %75 = btor.constant true
    %76 = btor.ite %75, %74, %17 : i1
    %77 = btor.ite %45, %58, %76 : i1
    %78 = btor.or %37, %29 : i1
    %79 = btor.or %78, %45 : i1
    %80 = btor.or %79, %16 : i1
    %81 = btor.ite %80, %66, %18 : i4
    %82 = btor.ite %45, %51, %81 : i4
    %83 = btor.and %54, %56 : i1
    %84 = btor.ite %83, %31, %19 : i16
    %85 = btor.ite %45, %28, %84 : i16
    %86 = btor.ite %29, %22, %28 : i16
    %87 = btor.uext %75 : i1 to i32
    %88 = btor.cmp eq, %34, %87 : i32
    %89 = btor.and %37, %88 : i1
    %90 = btor.ite %89, %31, %86 : i16
    %91 = btor.uext %75 : i1 to i4
    %92 = btor.cmp eq, %15, %91 : i4
    %93 = btor.and %37, %92 : i1
    %94 = btor.or %29, %93 : i1
    %95 = btor.ite %94, %90, %21 : i16
    %96 = btor.ite %45, %28, %95 : i16
    %97 = btor.ite %29, %23, %28 : i16
    %98 = btor.constant -2 : i2
    %99 = btor.uext %98 : i2 to i32
    %100 = btor.cmp eq, %34, %99 : i32
    %101 = btor.and %37, %100 : i1
    %102 = btor.ite %101, %31, %97 : i16
    %103 = btor.uext %98 : i2 to i4
    %104 = btor.cmp eq, %15, %103 : i4
    %105 = btor.and %37, %104 : i1
    %106 = btor.or %29, %105 : i1
    %107 = btor.ite %106, %102, %22 : i16
    %108 = btor.ite %45, %28, %107 : i16
    %109 = btor.ite %29, %24, %28 : i16
    %110 = btor.constant -1 : i2
    %111 = btor.uext %110 : i2 to i32
    %112 = btor.cmp eq, %34, %111 : i32
    %113 = btor.and %37, %112 : i1
    %114 = btor.ite %113, %31, %109 : i16
    %115 = btor.uext %110 : i2 to i4
    %116 = btor.cmp eq, %15, %115 : i4
    %117 = btor.and %37, %116 : i1
    %118 = btor.or %29, %117 : i1
    %119 = btor.ite %118, %114, %23 : i16
    %120 = btor.ite %45, %28, %119 : i16
    %121 = btor.ite %29, %25, %28 : i16
    %122 = btor.constant -4 : i3
    %123 = btor.uext %122 : i3 to i32
    %124 = btor.cmp eq, %34, %123 : i32
    %125 = btor.and %37, %124 : i1
    %126 = btor.ite %125, %31, %121 : i16
    %127 = btor.uext %122 : i3 to i4
    %128 = btor.cmp eq, %15, %127 : i4
    %129 = btor.and %37, %128 : i1
    %130 = btor.or %29, %129 : i1
    %131 = btor.ite %130, %126, %24 : i16
    %132 = btor.ite %45, %28, %131 : i16
    %133 = btor.ite %29, %26, %28 : i16
    %134 = btor.constant -3 : i3
    %135 = btor.uext %134 : i3 to i32
    %136 = btor.cmp eq, %34, %135 : i32
    %137 = btor.and %37, %136 : i1
    %138 = btor.ite %137, %31, %133 : i16
    %139 = btor.uext %134 : i3 to i4
    %140 = btor.cmp eq, %15, %139 : i4
    %141 = btor.and %37, %140 : i1
    %142 = btor.or %29, %141 : i1
    %143 = btor.ite %142, %138, %25 : i16
    %144 = btor.ite %45, %28, %143 : i16
    %145 = btor.ite %29, %27, %28 : i16
    %146 = btor.constant -2 : i3
    %147 = btor.uext %146 : i3 to i32
    %148 = btor.cmp eq, %34, %147 : i32
    %149 = btor.and %37, %148 : i1
    %150 = btor.ite %149, %31, %145 : i16
    %151 = btor.uext %146 : i3 to i4
    %152 = btor.cmp eq, %15, %151 : i4
    %153 = btor.and %37, %152 : i1
    %154 = btor.or %29, %153 : i1
    %155 = btor.ite %154, %150, %26 : i16
    %156 = btor.ite %45, %28, %155 : i16
    %157 = btor.nd_bv : i16
    %158 = btor.constant -1 : i3
    %159 = btor.uext %158 : i3 to i4
    %160 = btor.cmp eq, %15, %159 : i4
    %161 = btor.and %37, %160 : i1
    %162 = btor.or %29, %161 : i1
    %163 = btor.ite %162, %157, %27 : i16
    %164 = btor.ite %45, %28, %163 : i16
    %165 = btor.not %75 : i1
    %166 = btor.not %29 : i1
    %167 = btor.not %41 : i1
    %168 = btor.or %167, %166 : i1
    %169 = btor.or %168, %165 : i1
    btor.constraint(%169)
    %170 = btor.not %75 : i1
    %171 = btor.not %37 : i1
    %172 = btor.constant -8 : i4
    %173 = btor.cmp uge, %15, %172 : i4
    %174 = btor.not %173 : i1
    %175 = btor.or %174, %171 : i1
    %176 = btor.or %175, %170 : i1
    btor.constraint(%176)
    %177 = btor.not %75 : i1
    %178 = btor.cmp eq, %45, %20 : i1
    %179 = btor.or %178, %177 : i1
    btor.constraint(%179)
    %180 = btor.not %75 : i1
    %181 = btor.not %37 : i1
    %182 = btor.not %173 : i1
    %183 = btor.or %182, %181 : i1
    %184 = btor.or %183, %180 : i1
    btor.constraint(%184)
    %185 = btor.not %75 : i1
    %186 = btor.not %29 : i1
    %187 = btor.not %41 : i1
    %188 = btor.or %187, %186 : i1
    %189 = btor.or %188, %185 : i1
    btor.constraint(%189)
    %190 = btor.cmp eq, %19, %14 : i16
    %191 = btor.not %73 : i1
    %192 = btor.or %191, %190 : i1
    %193 = btor.nd_bv : i1
    %194 = btor.ite %20, %193, %192 : i1
    %195 = btor.not %194 : i1
    %196 = btor.ite %20, %58, %75 : i1
    %197 = btor.and %196, %195 : i1
    btor.assert_not(%197)
    br ^bb1(%46, %52, %59, %77, %82, %85, %58, %96, %108, %120, %132, %144, %156, %164 : i16, i4, i1, i1, i4, i16, i1, i16, i16, i16, i16, i16, i16, i16)
  }
}

module {
  func @main() {
    %0 = btor.constant true
    %1 = btor.nd_bv : i128
    %2 = btor.nd_bv : i5
    %3 = btor.nd_bv : i1
    %4 = btor.nd_bv : i1
    %5 = btor.nd_bv : i5
    %6 = btor.nd_bv : i128
    %7 = btor.nd_bv : i128
    %8 = btor.nd_bv : i128
    %9 = btor.nd_bv : i128
    %10 = btor.nd_bv : i128
    %11 = btor.nd_bv : i128
    %12 = btor.nd_bv : i128
    %13 = btor.nd_bv : i128
    %14 = btor.nd_bv : i128
    %15 = btor.nd_bv : i128
    %16 = btor.nd_bv : i128
    %17 = btor.nd_bv : i128
    %18 = btor.nd_bv : i128
    %19 = btor.nd_bv : i128
    %20 = btor.nd_bv : i128
    %21 = btor.nd_bv : i128
    br ^bb1(%1, %2, %3, %4, %5, %6, %0, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21 : i128, i5, i1, i1, i5, i128, i1, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128)
  ^bb1(%22: i128, %23: i5, %24: i1, %25: i1, %26: i5, %27: i128, %28: i1, %29: i128, %30: i128, %31: i128, %32: i128, %33: i128, %34: i128, %35: i128, %36: i128, %37: i128, %38: i128, %39: i128, %40: i128, %41: i128, %42: i128, %43: i128):  // 2 preds: ^bb0, ^bb1
    %44 = btor.constant 0 : i128
    %45 = btor.nd_bv : i1
    %46 = btor.ite %45, %35, %44 : i128
    %47 = btor.nd_bv : i128
    %48 = btor.uext %45 : i1 to i32
    %49 = btor.uext %23 : i5 to i32
    %50 = btor.sub %49, %48 : i32
    %51 = btor.redor %50 : i32
    %52 = btor.not %51 : i1
    %53 = btor.nd_bv : i1
    %54 = btor.and %53, %52 : i1
    %55 = btor.ite %54, %47, %46 : i128
    %56 = btor.redor %23 : i5
    %57 = btor.not %56 : i1
    %58 = btor.and %53, %57 : i1
    %59 = btor.or %45, %58 : i1
    %60 = btor.ite %59, %55, %22 : i128
    %61 = btor.nd_bv : i1
    %62 = btor.ite %61, %44, %60 : i128
    %63 = btor.uext %45 : i1 to i5
    %64 = btor.uext %53 : i1 to i5
    %65 = btor.add %23, %64 : i5
    %66 = btor.sub %65, %63 : i5
    %67 = btor.constant 0 : i5
    %68 = btor.ite %61, %67, %66 : i5
    %69 = btor.nd_bv : i1
    %70 = btor.and %69, %53 : i1
    %71 = btor.or %24, %70 : i1
    %72 = btor.not %24 : i1
    %73 = btor.ite %72, %71, %24 : i1
    %74 = btor.constant false
    %75 = btor.ite %61, %74, %73 : i1
    %76 = btor.uext %45 : i1 to i5
    %77 = btor.not %24 : i1
    %78 = btor.and %53, %77 : i1
    %79 = btor.uext %78 : i1 to i5
    %80 = btor.add %26, %79 : i5
    %81 = btor.sub %80, %76 : i5
    %82 = btor.ite %61, %67, %81 : i5
    %83 = btor.redor %82 : i5
    %84 = btor.not %83 : i1
    %85 = btor.redor %26 : i5
    %86 = btor.not %25 : i1
    %87 = btor.and %24, %86 : i1
    %88 = btor.and %87, %85 : i1
    %89 = btor.and %88, %84 : i1
    %90 = btor.or %89, %25 : i1
    %91 = btor.constant true
    %92 = btor.ite %91, %90, %25 : i1
    %93 = btor.ite %61, %74, %92 : i1
    %94 = btor.or %53, %45 : i1
    %95 = btor.or %94, %61 : i1
    %96 = btor.or %95, %24 : i1
    %97 = btor.ite %96, %82, %26 : i5
    %98 = btor.ite %61, %67, %97 : i5
    %99 = btor.and %70, %72 : i1
    %100 = btor.ite %99, %47, %27 : i128
    %101 = btor.ite %61, %44, %100 : i128
    %102 = btor.ite %45, %30, %44 : i128
    %103 = btor.constant -6 : i4
    %104 = btor.uext %103 : i4 to i32
    %105 = btor.cmp eq, %50, %104 : i32
    %106 = btor.and %53, %105 : i1
    %107 = btor.ite %106, %47, %102 : i128
    %108 = btor.uext %103 : i4 to i5
    %109 = btor.cmp eq, %23, %108 : i5
    %110 = btor.and %53, %109 : i1
    %111 = btor.or %45, %110 : i1
    %112 = btor.ite %111, %107, %29 : i128
    %113 = btor.ite %61, %44, %112 : i128
    %114 = btor.ite %45, %31, %44 : i128
    %115 = btor.constant -5 : i4
    %116 = btor.uext %115 : i4 to i32
    %117 = btor.cmp eq, %50, %116 : i32
    %118 = btor.and %53, %117 : i1
    %119 = btor.ite %118, %47, %114 : i128
    %120 = btor.uext %115 : i4 to i5
    %121 = btor.cmp eq, %23, %120 : i5
    %122 = btor.and %53, %121 : i1
    %123 = btor.or %45, %122 : i1
    %124 = btor.ite %123, %119, %30 : i128
    %125 = btor.ite %61, %44, %124 : i128
    %126 = btor.ite %45, %32, %44 : i128
    %127 = btor.constant -4 : i4
    %128 = btor.uext %127 : i4 to i32
    %129 = btor.cmp eq, %50, %128 : i32
    %130 = btor.and %53, %129 : i1
    %131 = btor.ite %130, %47, %126 : i128
    %132 = btor.uext %127 : i4 to i5
    %133 = btor.cmp eq, %23, %132 : i5
    %134 = btor.and %53, %133 : i1
    %135 = btor.or %45, %134 : i1
    %136 = btor.ite %135, %131, %31 : i128
    %137 = btor.ite %61, %44, %136 : i128
    %138 = btor.ite %45, %33, %44 : i128
    %139 = btor.constant -3 : i4
    %140 = btor.uext %139 : i4 to i32
    %141 = btor.cmp eq, %50, %140 : i32
    %142 = btor.and %53, %141 : i1
    %143 = btor.ite %142, %47, %138 : i128
    %144 = btor.uext %139 : i4 to i5
    %145 = btor.cmp eq, %23, %144 : i5
    %146 = btor.and %53, %145 : i1
    %147 = btor.or %45, %146 : i1
    %148 = btor.ite %147, %143, %32 : i128
    %149 = btor.ite %61, %44, %148 : i128
    %150 = btor.ite %45, %34, %44 : i128
    %151 = btor.constant -2 : i4
    %152 = btor.uext %151 : i4 to i32
    %153 = btor.cmp eq, %50, %152 : i32
    %154 = btor.and %53, %153 : i1
    %155 = btor.ite %154, %47, %150 : i128
    %156 = btor.uext %151 : i4 to i5
    %157 = btor.cmp eq, %23, %156 : i5
    %158 = btor.and %53, %157 : i1
    %159 = btor.or %45, %158 : i1
    %160 = btor.ite %159, %155, %33 : i128
    %161 = btor.ite %61, %44, %160 : i128
    %162 = btor.nd_bv : i128
    %163 = btor.constant -1 : i4
    %164 = btor.uext %163 : i4 to i5
    %165 = btor.cmp eq, %23, %164 : i5
    %166 = btor.and %53, %165 : i1
    %167 = btor.or %45, %166 : i1
    %168 = btor.ite %167, %162, %34 : i128
    %169 = btor.ite %61, %44, %168 : i128
    %170 = btor.ite %45, %36, %44 : i128
    %171 = btor.uext %91 : i1 to i32
    %172 = btor.cmp eq, %50, %171 : i32
    %173 = btor.and %53, %172 : i1
    %174 = btor.ite %173, %47, %170 : i128
    %175 = btor.uext %91 : i1 to i5
    %176 = btor.cmp eq, %23, %175 : i5
    %177 = btor.and %53, %176 : i1
    %178 = btor.or %45, %177 : i1
    %179 = btor.ite %178, %174, %35 : i128
    %180 = btor.ite %61, %44, %179 : i128
    %181 = btor.ite %45, %37, %44 : i128
    %182 = btor.constant -2 : i2
    %183 = btor.uext %182 : i2 to i32
    %184 = btor.cmp eq, %50, %183 : i32
    %185 = btor.and %53, %184 : i1
    %186 = btor.ite %185, %47, %181 : i128
    %187 = btor.uext %182 : i2 to i5
    %188 = btor.cmp eq, %23, %187 : i5
    %189 = btor.and %53, %188 : i1
    %190 = btor.or %45, %189 : i1
    %191 = btor.ite %190, %186, %36 : i128
    %192 = btor.ite %61, %44, %191 : i128
    %193 = btor.ite %45, %38, %44 : i128
    %194 = btor.constant -1 : i2
    %195 = btor.uext %194 : i2 to i32
    %196 = btor.cmp eq, %50, %195 : i32
    %197 = btor.and %53, %196 : i1
    %198 = btor.ite %197, %47, %193 : i128
    %199 = btor.uext %194 : i2 to i5
    %200 = btor.cmp eq, %23, %199 : i5
    %201 = btor.and %53, %200 : i1
    %202 = btor.or %45, %201 : i1
    %203 = btor.ite %202, %198, %37 : i128
    %204 = btor.ite %61, %44, %203 : i128
    %205 = btor.ite %45, %39, %44 : i128
    %206 = btor.constant -4 : i3
    %207 = btor.uext %206 : i3 to i32
    %208 = btor.cmp eq, %50, %207 : i32
    %209 = btor.and %53, %208 : i1
    %210 = btor.ite %209, %47, %205 : i128
    %211 = btor.uext %206 : i3 to i5
    %212 = btor.cmp eq, %23, %211 : i5
    %213 = btor.and %53, %212 : i1
    %214 = btor.or %45, %213 : i1
    %215 = btor.ite %214, %210, %38 : i128
    %216 = btor.ite %61, %44, %215 : i128
    %217 = btor.ite %45, %40, %44 : i128
    %218 = btor.constant -3 : i3
    %219 = btor.uext %218 : i3 to i32
    %220 = btor.cmp eq, %50, %219 : i32
    %221 = btor.and %53, %220 : i1
    %222 = btor.ite %221, %47, %217 : i128
    %223 = btor.uext %218 : i3 to i5
    %224 = btor.cmp eq, %23, %223 : i5
    %225 = btor.and %53, %224 : i1
    %226 = btor.or %45, %225 : i1
    %227 = btor.ite %226, %222, %39 : i128
    %228 = btor.ite %61, %44, %227 : i128
    %229 = btor.ite %45, %41, %44 : i128
    %230 = btor.constant -2 : i3
    %231 = btor.uext %230 : i3 to i32
    %232 = btor.cmp eq, %50, %231 : i32
    %233 = btor.and %53, %232 : i1
    %234 = btor.ite %233, %47, %229 : i128
    %235 = btor.uext %230 : i3 to i5
    %236 = btor.cmp eq, %23, %235 : i5
    %237 = btor.and %53, %236 : i1
    %238 = btor.or %45, %237 : i1
    %239 = btor.ite %238, %234, %40 : i128
    %240 = btor.ite %61, %44, %239 : i128
    %241 = btor.ite %45, %42, %44 : i128
    %242 = btor.constant -1 : i3
    %243 = btor.uext %242 : i3 to i32
    %244 = btor.cmp eq, %50, %243 : i32
    %245 = btor.and %53, %244 : i1
    %246 = btor.ite %245, %47, %241 : i128
    %247 = btor.uext %242 : i3 to i5
    %248 = btor.cmp eq, %23, %247 : i5
    %249 = btor.and %53, %248 : i1
    %250 = btor.or %45, %249 : i1
    %251 = btor.ite %250, %246, %41 : i128
    %252 = btor.ite %61, %44, %251 : i128
    %253 = btor.ite %45, %43, %44 : i128
    %254 = btor.constant -8 : i4
    %255 = btor.uext %254 : i4 to i32
    %256 = btor.cmp eq, %50, %255 : i32
    %257 = btor.and %53, %256 : i1
    %258 = btor.ite %257, %47, %253 : i128
    %259 = btor.uext %254 : i4 to i5
    %260 = btor.cmp eq, %23, %259 : i5
    %261 = btor.and %53, %260 : i1
    %262 = btor.or %45, %261 : i1
    %263 = btor.ite %262, %258, %42 : i128
    %264 = btor.ite %61, %44, %263 : i128
    %265 = btor.ite %45, %29, %44 : i128
    %266 = btor.constant -7 : i4
    %267 = btor.uext %266 : i4 to i32
    %268 = btor.cmp eq, %50, %267 : i32
    %269 = btor.and %53, %268 : i1
    %270 = btor.ite %269, %47, %265 : i128
    %271 = btor.uext %266 : i4 to i5
    %272 = btor.cmp eq, %23, %271 : i5
    %273 = btor.and %53, %272 : i1
    %274 = btor.or %45, %273 : i1
    %275 = btor.ite %274, %270, %43 : i128
    %276 = btor.ite %61, %44, %275 : i128
    %277 = btor.not %91 : i1
    %278 = btor.not %45 : i1
    %279 = btor.not %57 : i1
    %280 = btor.or %279, %278 : i1
    %281 = btor.or %280, %277 : i1
    btor.constraint(%281)
    %282 = btor.not %91 : i1
    %283 = btor.not %53 : i1
    %284 = btor.constant -16 : i5
    %285 = btor.cmp uge, %23, %284 : i5
    %286 = btor.not %285 : i1
    %287 = btor.or %286, %283 : i1
    %288 = btor.or %287, %282 : i1
    btor.constraint(%288)
    %289 = btor.not %91 : i1
    %290 = btor.cmp eq, %61, %28 : i1
    %291 = btor.or %290, %289 : i1
    btor.constraint(%291)
    %292 = btor.not %91 : i1
    %293 = btor.not %53 : i1
    %294 = btor.not %285 : i1
    %295 = btor.or %294, %293 : i1
    %296 = btor.or %295, %292 : i1
    btor.constraint(%296)
    %297 = btor.not %91 : i1
    %298 = btor.not %45 : i1
    %299 = btor.not %57 : i1
    %300 = btor.or %299, %298 : i1
    %301 = btor.or %300, %297 : i1
    btor.constraint(%301)
    %302 = btor.cmp eq, %27, %22 : i128
    %303 = btor.not %89 : i1
    %304 = btor.or %303, %302 : i1
    %305 = btor.nd_bv : i1
    %306 = btor.ite %28, %305, %304 : i1
    %307 = btor.not %306 : i1
    %308 = btor.ite %28, %74, %91 : i1
    %309 = btor.and %308, %307 : i1
    btor.assert_not(%309)
    br ^bb1(%62, %68, %75, %93, %98, %101, %74, %113, %125, %137, %149, %161, %169, %180, %192, %204, %216, %228, %240, %252, %264, %276 : i128, i5, i1, i1, i5, i128, i1, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128)
  }
}

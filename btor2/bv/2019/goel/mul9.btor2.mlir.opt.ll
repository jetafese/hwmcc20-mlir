; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @__VERIFIER_error()

declare i8 @nd_bv8_in6()

declare i8 @nd_bv8_in4()

declare i8 @nd_bv8_in3()

declare i8 @nd_bv8_in5()

declare i32 @nd_bv32_in1()

declare void @btor2mlir_print_input_num(i64, i64, i64)

declare i32 @nd_bv32_in2()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %178, %0
  %2 = phi i64 [ %75, %178 ], [ 0, %0 ]
  %3 = phi i1 [ %28, %178 ], [ false, %0 ]
  %4 = phi i64 [ %84, %178 ], [ 0, %0 ]
  %5 = phi i1 [ %30, %178 ], [ false, %0 ]
  %6 = phi i32 [ %38, %178 ], [ 0, %0 ]
  %7 = phi i1 [ %87, %178 ], [ false, %0 ]
  %8 = phi i32 [ %96, %178 ], [ 0, %0 ]
  %9 = phi i1 [ %87, %178 ], [ false, %0 ]
  %10 = phi i32 [ %35, %178 ], [ 0, %0 ]
  %11 = phi i1 [ %99, %178 ], [ false, %0 ]
  %12 = phi i32 [ %101, %178 ], [ 0, %0 ]
  %13 = phi i1 [ %99, %178 ], [ false, %0 ]
  %14 = phi i1 [ %103, %178 ], [ false, %0 ]
  %15 = phi i1 [ %108, %178 ], [ false, %0 ]
  %16 = phi i1 [ %137, %178 ], [ false, %0 ]
  %17 = phi i1 [ %142, %178 ], [ false, %0 ]
  %18 = phi i1 [ %147, %178 ], [ false, %0 ]
  %19 = phi i1 [ %149, %178 ], [ false, %0 ]
  %20 = phi i1 [ %151, %178 ], [ false, %0 ]
  %21 = phi i1 [ %153, %178 ], [ false, %0 ]
  %22 = phi i1 [ %155, %178 ], [ false, %0 ]
  %23 = phi i1 [ %157, %178 ], [ false, %0 ]
  %24 = phi i1 [ %159, %178 ], [ false, %0 ]
  %25 = phi i1 [ %161, %178 ], [ false, %0 ]
  %26 = phi i1 [ %163, %178 ], [ false, %0 ]
  %27 = phi i1 [ %90, %178 ], [ false, %0 ]
  %28 = phi i1 [ %93, %178 ], [ false, %0 ]
  %29 = phi i1 [ %90, %178 ], [ false, %0 ]
  %30 = phi i1 [ %93, %178 ], [ false, %0 ]
  %31 = zext i32 %10 to i64, !dbg !9
  %32 = zext i32 %6 to i64, !dbg !10
  %33 = mul i64 %32, %31, !dbg !11
  %34 = add i64 %33, 1, !dbg !12
  %35 = call i32 @nd_bv32_in2(), !dbg !13
  %36 = zext i32 %35 to i64, !dbg !14
  call void @btor2mlir_print_input_num(i64 2, i64 %36, i64 32), !dbg !15
  %37 = icmp eq i32 %35, 12245771, !dbg !16
  %38 = call i32 @nd_bv32_in1(), !dbg !17
  %39 = zext i32 %38 to i64, !dbg !18
  call void @btor2mlir_print_input_num(i64 1, i64 %39, i64 32), !dbg !19
  %40 = icmp eq i32 %38, -559038737, !dbg !20
  %41 = xor i1 false, %14, !dbg !21
  %42 = select i1 %41, i1 %14, i1 false, !dbg !22
  %43 = xor i1 false, %15, !dbg !23
  %44 = select i1 %43, i1 %15, i1 %42, !dbg !24
  %45 = xor i1 true, %19, !dbg !25
  %46 = select i1 %45, i1 %19, i1 %44, !dbg !26
  %47 = xor i1 false, %20, !dbg !27
  %48 = select i1 %47, i1 %20, i1 %46, !dbg !28
  %49 = xor i1 false, %21, !dbg !29
  %50 = select i1 %49, i1 %21, i1 %48, !dbg !30
  %51 = xor i1 true, %22, !dbg !31
  %52 = select i1 %51, i1 %22, i1 %50, !dbg !32
  %53 = xor i1 true, %23, !dbg !33
  %54 = select i1 %53, i1 %23, i1 %52, !dbg !34
  %55 = xor i1 false, %24, !dbg !35
  %56 = select i1 %55, i1 %24, i1 %54, !dbg !36
  %57 = xor i1 false, %25, !dbg !37
  %58 = select i1 %57, i1 %25, i1 %56, !dbg !38
  %59 = xor i1 false, %26, !dbg !39
  %60 = select i1 %59, i1 %26, i1 %58, !dbg !40
  %61 = xor i1 false, %16, !dbg !41
  %62 = select i1 %61, i1 %16, i1 %60, !dbg !42
  %63 = xor i1 false, %17, !dbg !43
  %64 = select i1 %63, i1 %17, i1 %62, !dbg !44
  %65 = xor i1 false, %18, !dbg !45
  %66 = select i1 %65, i1 %18, i1 %64, !dbg !46
  %67 = icmp eq i1 %66, true, !dbg !47
  %68 = and i1 %67, %40, !dbg !48
  %69 = and i1 %68, %37, !dbg !49
  %70 = select i1 %69, i64 %34, i64 %33, !dbg !50
  %71 = lshr i64 %70, 2, !dbg !51
  %72 = trunc i64 %71 to i60, !dbg !52
  %73 = zext i60 %72 to i64, !dbg !53
  %74 = or i64 0, %73, !dbg !54
  %75 = select i1 %27, i64 %74, i64 0, !dbg !55
  %76 = zext i32 %12 to i64, !dbg !56
  %77 = zext i32 %8 to i64, !dbg !57
  %78 = mul i64 %77, %76, !dbg !58
  %79 = lshr i64 %78, 2, !dbg !59
  %80 = trunc i64 %79 to i60, !dbg !60
  %81 = zext i60 %80 to i64, !dbg !61
  %82 = or i64 0, %81, !dbg !62
  %83 = select i1 %29, i64 %82, i64 0, !dbg !63
  %84 = select i1 %30, i64 %83, i64 %4, !dbg !64
  %85 = call i8 @nd_bv8_in5(), !dbg !65
  %86 = zext i8 %85 to i64, !dbg !66
  call void @btor2mlir_print_input_num(i64 5, i64 %86, i64 1), !dbg !67
  %87 = trunc i8 %85 to i1, !dbg !68
  %88 = call i8 @nd_bv8_in3(), !dbg !69
  %89 = zext i8 %88 to i64, !dbg !70
  call void @btor2mlir_print_input_num(i64 3, i64 %89, i64 1), !dbg !71
  %90 = trunc i8 %88 to i1, !dbg !72
  %91 = call i8 @nd_bv8_in4(), !dbg !73
  %92 = zext i8 %91 to i64, !dbg !74
  call void @btor2mlir_print_input_num(i64 4, i64 %92, i64 1), !dbg !75
  %93 = trunc i8 %91 to i1, !dbg !76
  %94 = and i1 %93, %90, !dbg !77
  %95 = or i1 %87, %94, !dbg !78
  %96 = select i1 %95, i32 %38, i32 %8, !dbg !79
  %97 = call i8 @nd_bv8_in6(), !dbg !80
  %98 = zext i8 %97 to i64, !dbg !81
  call void @btor2mlir_print_input_num(i64 6, i64 %98, i64 1), !dbg !82
  %99 = trunc i8 %97 to i1, !dbg !83
  %100 = or i1 %99, %94, !dbg !84
  %101 = select i1 %100, i32 %35, i32 %12, !dbg !85
  %102 = icmp ne i1 %14, true, !dbg !86
  %103 = icmp ne i1 %102, false, !dbg !87
  %104 = and i1 %14, true, !dbg !88
  %105 = or i1 %14, true, !dbg !89
  %106 = select i1 false, i1 %105, i1 %104, !dbg !90
  %107 = icmp ne i1 %15, false, !dbg !91
  %108 = icmp ne i1 %107, %106, !dbg !92
  %109 = and i1 %26, false, !dbg !93
  %110 = or i1 %26, false, !dbg !94
  %111 = and i1 %25, false, !dbg !95
  %112 = or i1 %25, false, !dbg !96
  %113 = and i1 %24, false, !dbg !97
  %114 = or i1 %24, false, !dbg !98
  %115 = and i1 %23, false, !dbg !99
  %116 = or i1 %23, false, !dbg !100
  %117 = and i1 %22, false, !dbg !101
  %118 = or i1 %22, false, !dbg !102
  %119 = and i1 %21, false, !dbg !103
  %120 = or i1 %21, false, !dbg !104
  %121 = and i1 %20, false, !dbg !105
  %122 = or i1 %20, false, !dbg !106
  %123 = and i1 %19, false, !dbg !107
  %124 = or i1 %19, false, !dbg !108
  %125 = and i1 %15, false, !dbg !109
  %126 = or i1 %15, false, !dbg !110
  %127 = select i1 %106, i1 %126, i1 %125, !dbg !111
  %128 = select i1 %127, i1 %124, i1 %123, !dbg !112
  %129 = select i1 %128, i1 %122, i1 %121, !dbg !113
  %130 = select i1 %129, i1 %120, i1 %119, !dbg !114
  %131 = select i1 %130, i1 %118, i1 %117, !dbg !115
  %132 = select i1 %131, i1 %116, i1 %115, !dbg !116
  %133 = select i1 %132, i1 %114, i1 %113, !dbg !117
  %134 = select i1 %133, i1 %112, i1 %111, !dbg !118
  %135 = select i1 %134, i1 %110, i1 %109, !dbg !119
  %136 = icmp ne i1 %16, false, !dbg !120
  %137 = icmp ne i1 %136, %135, !dbg !121
  %138 = and i1 %16, false, !dbg !122
  %139 = or i1 %16, false, !dbg !123
  %140 = select i1 %135, i1 %139, i1 %138, !dbg !124
  %141 = icmp ne i1 %17, false, !dbg !125
  %142 = icmp ne i1 %141, %140, !dbg !126
  %143 = and i1 %17, false, !dbg !127
  %144 = or i1 %17, false, !dbg !128
  %145 = select i1 %140, i1 %144, i1 %143, !dbg !129
  %146 = icmp ne i1 %18, false, !dbg !130
  %147 = icmp ne i1 %146, %145, !dbg !131
  %148 = icmp ne i1 %19, false, !dbg !132
  %149 = icmp ne i1 %148, %127, !dbg !133
  %150 = icmp ne i1 %20, false, !dbg !134
  %151 = icmp ne i1 %150, %128, !dbg !135
  %152 = icmp ne i1 %21, false, !dbg !136
  %153 = icmp ne i1 %152, %129, !dbg !137
  %154 = icmp ne i1 %22, false, !dbg !138
  %155 = icmp ne i1 %154, %130, !dbg !139
  %156 = icmp ne i1 %23, false, !dbg !140
  %157 = icmp ne i1 %156, %131, !dbg !141
  %158 = icmp ne i1 %24, false, !dbg !142
  %159 = icmp ne i1 %158, %132, !dbg !143
  %160 = icmp ne i1 %25, false, !dbg !144
  %161 = icmp ne i1 %160, %133, !dbg !145
  %162 = icmp ne i1 %26, false, !dbg !146
  %163 = icmp ne i1 %162, %134, !dbg !147
  %164 = select i1 %13, i32 %12, i32 0, !dbg !148
  %165 = select i1 %11, i32 %10, i32 0, !dbg !149
  %166 = icmp eq i32 %165, %164, !dbg !150
  %167 = select i1 %9, i32 %8, i32 0, !dbg !151
  %168 = select i1 %7, i32 %6, i32 0, !dbg !152
  %169 = icmp eq i32 %168, %167, !dbg !153
  %170 = select i1 %5, i64 %4, i64 0, !dbg !154
  %171 = select i1 %3, i64 %2, i64 0, !dbg !155
  %172 = icmp eq i64 %171, %170, !dbg !156
  %173 = and i1 %172, %169, !dbg !157
  %174 = and i1 %173, %166, !dbg !158
  %175 = xor i1 %174, true, !dbg !159
  %176 = and i1 true, %175, !dbg !160
  %177 = xor i1 %176, true, !dbg !161
  br i1 %177, label %178, label %179, !dbg !162

178:                                              ; preds = %1
  br label %1, !dbg !163

179:                                              ; preds = %1
  call void @__VERIFIER_error(), !dbg !164
  unreachable, !dbg !165
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2/bv/2019/goel/mul9.btor2.mlir.opt", directory: "/home/jetafese/hwmc20-mlir")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 14, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 17, column: 11, scope: !8)
!10 = !DILocation(line: 18, column: 11, scope: !8)
!11 = !DILocation(line: 19, column: 11, scope: !8)
!12 = !DILocation(line: 22, column: 11, scope: !8)
!13 = !DILocation(line: 24, column: 11, scope: !8)
!14 = !DILocation(line: 28, column: 11, scope: !8)
!15 = !DILocation(line: 29, column: 5, scope: !8)
!16 = !DILocation(line: 31, column: 11, scope: !8)
!17 = !DILocation(line: 33, column: 11, scope: !8)
!18 = !DILocation(line: 37, column: 11, scope: !8)
!19 = !DILocation(line: 38, column: 5, scope: !8)
!20 = !DILocation(line: 40, column: 11, scope: !8)
!21 = !DILocation(line: 43, column: 11, scope: !8)
!22 = !DILocation(line: 44, column: 11, scope: !8)
!23 = !DILocation(line: 45, column: 11, scope: !8)
!24 = !DILocation(line: 46, column: 11, scope: !8)
!25 = !DILocation(line: 47, column: 11, scope: !8)
!26 = !DILocation(line: 48, column: 11, scope: !8)
!27 = !DILocation(line: 49, column: 11, scope: !8)
!28 = !DILocation(line: 50, column: 11, scope: !8)
!29 = !DILocation(line: 51, column: 11, scope: !8)
!30 = !DILocation(line: 52, column: 11, scope: !8)
!31 = !DILocation(line: 53, column: 11, scope: !8)
!32 = !DILocation(line: 54, column: 11, scope: !8)
!33 = !DILocation(line: 55, column: 11, scope: !8)
!34 = !DILocation(line: 56, column: 11, scope: !8)
!35 = !DILocation(line: 57, column: 11, scope: !8)
!36 = !DILocation(line: 58, column: 11, scope: !8)
!37 = !DILocation(line: 59, column: 11, scope: !8)
!38 = !DILocation(line: 60, column: 11, scope: !8)
!39 = !DILocation(line: 61, column: 11, scope: !8)
!40 = !DILocation(line: 62, column: 11, scope: !8)
!41 = !DILocation(line: 63, column: 11, scope: !8)
!42 = !DILocation(line: 64, column: 11, scope: !8)
!43 = !DILocation(line: 65, column: 11, scope: !8)
!44 = !DILocation(line: 66, column: 11, scope: !8)
!45 = !DILocation(line: 67, column: 11, scope: !8)
!46 = !DILocation(line: 68, column: 11, scope: !8)
!47 = !DILocation(line: 69, column: 11, scope: !8)
!48 = !DILocation(line: 70, column: 11, scope: !8)
!49 = !DILocation(line: 71, column: 11, scope: !8)
!50 = !DILocation(line: 72, column: 11, scope: !8)
!51 = !DILocation(line: 74, column: 11, scope: !8)
!52 = !DILocation(line: 75, column: 11, scope: !8)
!53 = !DILocation(line: 80, column: 11, scope: !8)
!54 = !DILocation(line: 81, column: 11, scope: !8)
!55 = !DILocation(line: 82, column: 11, scope: !8)
!56 = !DILocation(line: 83, column: 11, scope: !8)
!57 = !DILocation(line: 84, column: 11, scope: !8)
!58 = !DILocation(line: 85, column: 11, scope: !8)
!59 = !DILocation(line: 87, column: 12, scope: !8)
!60 = !DILocation(line: 88, column: 12, scope: !8)
!61 = !DILocation(line: 92, column: 12, scope: !8)
!62 = !DILocation(line: 93, column: 12, scope: !8)
!63 = !DILocation(line: 94, column: 12, scope: !8)
!64 = !DILocation(line: 95, column: 12, scope: !8)
!65 = !DILocation(line: 96, column: 12, scope: !8)
!66 = !DILocation(line: 100, column: 12, scope: !8)
!67 = !DILocation(line: 101, column: 5, scope: !8)
!68 = !DILocation(line: 102, column: 12, scope: !8)
!69 = !DILocation(line: 103, column: 12, scope: !8)
!70 = !DILocation(line: 107, column: 12, scope: !8)
!71 = !DILocation(line: 108, column: 5, scope: !8)
!72 = !DILocation(line: 109, column: 12, scope: !8)
!73 = !DILocation(line: 110, column: 12, scope: !8)
!74 = !DILocation(line: 114, column: 12, scope: !8)
!75 = !DILocation(line: 115, column: 5, scope: !8)
!76 = !DILocation(line: 116, column: 12, scope: !8)
!77 = !DILocation(line: 117, column: 12, scope: !8)
!78 = !DILocation(line: 118, column: 12, scope: !8)
!79 = !DILocation(line: 119, column: 12, scope: !8)
!80 = !DILocation(line: 120, column: 12, scope: !8)
!81 = !DILocation(line: 124, column: 12, scope: !8)
!82 = !DILocation(line: 125, column: 5, scope: !8)
!83 = !DILocation(line: 126, column: 12, scope: !8)
!84 = !DILocation(line: 127, column: 12, scope: !8)
!85 = !DILocation(line: 128, column: 12, scope: !8)
!86 = !DILocation(line: 129, column: 12, scope: !8)
!87 = !DILocation(line: 130, column: 12, scope: !8)
!88 = !DILocation(line: 131, column: 12, scope: !8)
!89 = !DILocation(line: 132, column: 12, scope: !8)
!90 = !DILocation(line: 133, column: 12, scope: !8)
!91 = !DILocation(line: 134, column: 12, scope: !8)
!92 = !DILocation(line: 135, column: 12, scope: !8)
!93 = !DILocation(line: 136, column: 12, scope: !8)
!94 = !DILocation(line: 137, column: 12, scope: !8)
!95 = !DILocation(line: 138, column: 12, scope: !8)
!96 = !DILocation(line: 139, column: 12, scope: !8)
!97 = !DILocation(line: 140, column: 12, scope: !8)
!98 = !DILocation(line: 141, column: 12, scope: !8)
!99 = !DILocation(line: 142, column: 12, scope: !8)
!100 = !DILocation(line: 143, column: 12, scope: !8)
!101 = !DILocation(line: 144, column: 12, scope: !8)
!102 = !DILocation(line: 145, column: 12, scope: !8)
!103 = !DILocation(line: 146, column: 12, scope: !8)
!104 = !DILocation(line: 147, column: 12, scope: !8)
!105 = !DILocation(line: 148, column: 12, scope: !8)
!106 = !DILocation(line: 149, column: 12, scope: !8)
!107 = !DILocation(line: 150, column: 12, scope: !8)
!108 = !DILocation(line: 151, column: 12, scope: !8)
!109 = !DILocation(line: 152, column: 12, scope: !8)
!110 = !DILocation(line: 153, column: 12, scope: !8)
!111 = !DILocation(line: 154, column: 12, scope: !8)
!112 = !DILocation(line: 155, column: 12, scope: !8)
!113 = !DILocation(line: 156, column: 12, scope: !8)
!114 = !DILocation(line: 157, column: 12, scope: !8)
!115 = !DILocation(line: 158, column: 12, scope: !8)
!116 = !DILocation(line: 159, column: 12, scope: !8)
!117 = !DILocation(line: 160, column: 12, scope: !8)
!118 = !DILocation(line: 161, column: 12, scope: !8)
!119 = !DILocation(line: 162, column: 12, scope: !8)
!120 = !DILocation(line: 163, column: 12, scope: !8)
!121 = !DILocation(line: 164, column: 12, scope: !8)
!122 = !DILocation(line: 165, column: 12, scope: !8)
!123 = !DILocation(line: 166, column: 12, scope: !8)
!124 = !DILocation(line: 167, column: 12, scope: !8)
!125 = !DILocation(line: 168, column: 12, scope: !8)
!126 = !DILocation(line: 169, column: 12, scope: !8)
!127 = !DILocation(line: 170, column: 12, scope: !8)
!128 = !DILocation(line: 171, column: 12, scope: !8)
!129 = !DILocation(line: 172, column: 12, scope: !8)
!130 = !DILocation(line: 173, column: 12, scope: !8)
!131 = !DILocation(line: 174, column: 12, scope: !8)
!132 = !DILocation(line: 175, column: 12, scope: !8)
!133 = !DILocation(line: 176, column: 12, scope: !8)
!134 = !DILocation(line: 177, column: 12, scope: !8)
!135 = !DILocation(line: 178, column: 12, scope: !8)
!136 = !DILocation(line: 179, column: 12, scope: !8)
!137 = !DILocation(line: 180, column: 12, scope: !8)
!138 = !DILocation(line: 181, column: 12, scope: !8)
!139 = !DILocation(line: 182, column: 12, scope: !8)
!140 = !DILocation(line: 183, column: 12, scope: !8)
!141 = !DILocation(line: 184, column: 12, scope: !8)
!142 = !DILocation(line: 185, column: 12, scope: !8)
!143 = !DILocation(line: 186, column: 12, scope: !8)
!144 = !DILocation(line: 187, column: 12, scope: !8)
!145 = !DILocation(line: 188, column: 12, scope: !8)
!146 = !DILocation(line: 189, column: 12, scope: !8)
!147 = !DILocation(line: 190, column: 12, scope: !8)
!148 = !DILocation(line: 192, column: 12, scope: !8)
!149 = !DILocation(line: 193, column: 12, scope: !8)
!150 = !DILocation(line: 194, column: 12, scope: !8)
!151 = !DILocation(line: 195, column: 12, scope: !8)
!152 = !DILocation(line: 196, column: 12, scope: !8)
!153 = !DILocation(line: 197, column: 12, scope: !8)
!154 = !DILocation(line: 198, column: 12, scope: !8)
!155 = !DILocation(line: 199, column: 12, scope: !8)
!156 = !DILocation(line: 200, column: 12, scope: !8)
!157 = !DILocation(line: 201, column: 12, scope: !8)
!158 = !DILocation(line: 202, column: 12, scope: !8)
!159 = !DILocation(line: 204, column: 12, scope: !8)
!160 = !DILocation(line: 205, column: 12, scope: !8)
!161 = !DILocation(line: 207, column: 12, scope: !8)
!162 = !DILocation(line: 208, column: 5, scope: !8)
!163 = !DILocation(line: 210, column: 5, scope: !8)
!164 = !DILocation(line: 212, column: 5, scope: !8)
!165 = !DILocation(line: 213, column: 5, scope: !8)

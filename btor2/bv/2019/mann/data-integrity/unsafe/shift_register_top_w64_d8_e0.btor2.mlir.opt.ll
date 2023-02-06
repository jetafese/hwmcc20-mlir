; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @verifier.error()

declare void @verifier.assume(i1)

declare i1 @nd_bv1()

declare i4 @nd_bv4()

declare i64 @nd_bv64()

define void @main() !dbg !3 {
  %1 = call i64 @nd_bv64(), !dbg !7
  %2 = call i4 @nd_bv4(), !dbg !9
  %3 = call i1 @nd_bv1(), !dbg !10
  %4 = call i1 @nd_bv1(), !dbg !11
  %5 = call i4 @nd_bv4(), !dbg !12
  %6 = call i64 @nd_bv64(), !dbg !13
  %7 = call i64 @nd_bv64(), !dbg !14
  %8 = call i64 @nd_bv64(), !dbg !15
  %9 = call i64 @nd_bv64(), !dbg !16
  %10 = call i64 @nd_bv64(), !dbg !17
  %11 = call i64 @nd_bv64(), !dbg !18
  %12 = call i64 @nd_bv64(), !dbg !19
  %13 = call i64 @nd_bv64(), !dbg !20
  br label %14, !dbg !21

14:                                               ; preds = %175, %0
  %15 = phi i64 [ %48, %175 ], [ %1, %0 ]
  %16 = phi i4 [ %53, %175 ], [ %2, %0 ]
  %17 = phi i1 [ %59, %175 ], [ %3, %0 ]
  %18 = phi i1 [ %78, %175 ], [ %4, %0 ]
  %19 = phi i4 [ %83, %175 ], [ %5, %0 ]
  %20 = phi i64 [ %86, %175 ], [ %6, %0 ]
  %21 = phi i1 [ false, %175 ], [ true, %0 ]
  %22 = phi i64 [ %95, %175 ], [ %7, %0 ]
  %23 = phi i64 [ %104, %175 ], [ %8, %0 ]
  %24 = phi i64 [ %113, %175 ], [ %9, %0 ]
  %25 = phi i64 [ %122, %175 ], [ %10, %0 ]
  %26 = phi i64 [ %131, %175 ], [ %11, %0 ]
  %27 = phi i64 [ %140, %175 ], [ %12, %0 ]
  %28 = phi i64 [ %146, %175 ], [ %13, %0 ]
  %29 = call i1 @nd_bv1(), !dbg !22
  %30 = select i1 %29, i64 %22, i64 0, !dbg !23
  %31 = call i64 @nd_bv64(), !dbg !24
  %32 = zext i1 %29 to i32, !dbg !25
  %33 = zext i4 %16 to i32, !dbg !26
  %34 = sub i32 %33, %32, !dbg !27
  %35 = bitcast i32 %34 to <32 x i1>, !dbg !28
  %36 = call i1 @llvm.vector.reduce.or.v32i1(<32 x i1> %35), !dbg !29
  %37 = xor i1 %36, true, !dbg !30
  %38 = call i1 @nd_bv1(), !dbg !31
  %39 = and i1 %38, %37, !dbg !32
  %40 = select i1 %39, i64 %31, i64 %30, !dbg !33
  %41 = bitcast i4 %16 to <4 x i1>, !dbg !34
  %42 = call i1 @llvm.vector.reduce.or.v4i1(<4 x i1> %41), !dbg !35
  %43 = xor i1 %42, true, !dbg !36
  %44 = and i1 %38, %43, !dbg !37
  %45 = or i1 %29, %44, !dbg !38
  %46 = select i1 %45, i64 %40, i64 %15, !dbg !39
  %47 = call i1 @nd_bv1(), !dbg !40
  %48 = select i1 %47, i64 0, i64 %46, !dbg !41
  %49 = zext i1 %29 to i4, !dbg !42
  %50 = zext i1 %38 to i4, !dbg !43
  %51 = add i4 %16, %50, !dbg !44
  %52 = sub i4 %51, %49, !dbg !45
  %53 = select i1 %47, i4 0, i4 %52, !dbg !46
  %54 = call i1 @nd_bv1(), !dbg !47
  %55 = and i1 %54, %38, !dbg !48
  %56 = or i1 %17, %55, !dbg !49
  %57 = xor i1 %17, true, !dbg !50
  %58 = select i1 %57, i1 %56, i1 %17, !dbg !51
  %59 = select i1 %47, i1 false, i1 %58, !dbg !52
  %60 = zext i1 %29 to i4, !dbg !53
  %61 = xor i1 %17, true, !dbg !54
  %62 = and i1 %38, %61, !dbg !55
  %63 = zext i1 %62 to i4, !dbg !56
  %64 = add i4 %19, %63, !dbg !57
  %65 = sub i4 %64, %60, !dbg !58
  %66 = select i1 %47, i4 0, i4 %65, !dbg !59
  %67 = bitcast i4 %66 to <4 x i1>, !dbg !60
  %68 = call i1 @llvm.vector.reduce.or.v4i1(<4 x i1> %67), !dbg !61
  %69 = xor i1 %68, true, !dbg !62
  %70 = bitcast i4 %19 to <4 x i1>, !dbg !63
  %71 = call i1 @llvm.vector.reduce.or.v4i1(<4 x i1> %70), !dbg !64
  %72 = xor i1 %18, true, !dbg !65
  %73 = and i1 %17, %72, !dbg !66
  %74 = and i1 %73, %71, !dbg !67
  %75 = and i1 %74, %69, !dbg !68
  %76 = or i1 %75, %18, !dbg !69
  %77 = select i1 true, i1 %76, i1 %18, !dbg !70
  %78 = select i1 %47, i1 false, i1 %77, !dbg !71
  %79 = or i1 %38, %29, !dbg !72
  %80 = or i1 %79, %47, !dbg !73
  %81 = or i1 %80, %17, !dbg !74
  %82 = select i1 %81, i4 %66, i4 %19, !dbg !75
  %83 = select i1 %47, i4 0, i4 %82, !dbg !76
  %84 = and i1 %55, %57, !dbg !77
  %85 = select i1 %84, i64 %31, i64 %20, !dbg !78
  %86 = select i1 %47, i64 0, i64 %85, !dbg !79
  %87 = select i1 %29, i64 %23, i64 0, !dbg !80
  %88 = icmp eq i32 %34, 1, !dbg !81
  %89 = and i1 %38, %88, !dbg !82
  %90 = select i1 %89, i64 %31, i64 %87, !dbg !83
  %91 = icmp eq i4 %16, 1, !dbg !84
  %92 = and i1 %38, %91, !dbg !85
  %93 = or i1 %29, %92, !dbg !86
  %94 = select i1 %93, i64 %90, i64 %22, !dbg !87
  %95 = select i1 %47, i64 0, i64 %94, !dbg !88
  %96 = select i1 %29, i64 %24, i64 0, !dbg !89
  %97 = icmp eq i32 %34, 2, !dbg !90
  %98 = and i1 %38, %97, !dbg !91
  %99 = select i1 %98, i64 %31, i64 %96, !dbg !92
  %100 = icmp eq i4 %16, 2, !dbg !93
  %101 = and i1 %38, %100, !dbg !94
  %102 = or i1 %29, %101, !dbg !95
  %103 = select i1 %102, i64 %99, i64 %23, !dbg !96
  %104 = select i1 %47, i64 0, i64 %103, !dbg !97
  %105 = select i1 %29, i64 %25, i64 0, !dbg !98
  %106 = icmp eq i32 %34, 3, !dbg !99
  %107 = and i1 %38, %106, !dbg !100
  %108 = select i1 %107, i64 %31, i64 %105, !dbg !101
  %109 = icmp eq i4 %16, 3, !dbg !102
  %110 = and i1 %38, %109, !dbg !103
  %111 = or i1 %29, %110, !dbg !104
  %112 = select i1 %111, i64 %108, i64 %24, !dbg !105
  %113 = select i1 %47, i64 0, i64 %112, !dbg !106
  %114 = select i1 %29, i64 %26, i64 0, !dbg !107
  %115 = icmp eq i32 %34, 4, !dbg !108
  %116 = and i1 %38, %115, !dbg !109
  %117 = select i1 %116, i64 %31, i64 %114, !dbg !110
  %118 = icmp eq i4 %16, 4, !dbg !111
  %119 = and i1 %38, %118, !dbg !112
  %120 = or i1 %29, %119, !dbg !113
  %121 = select i1 %120, i64 %117, i64 %25, !dbg !114
  %122 = select i1 %47, i64 0, i64 %121, !dbg !115
  %123 = select i1 %29, i64 %27, i64 0, !dbg !116
  %124 = icmp eq i32 %34, 5, !dbg !117
  %125 = and i1 %38, %124, !dbg !118
  %126 = select i1 %125, i64 %31, i64 %123, !dbg !119
  %127 = icmp eq i4 %16, 5, !dbg !120
  %128 = and i1 %38, %127, !dbg !121
  %129 = or i1 %29, %128, !dbg !122
  %130 = select i1 %129, i64 %126, i64 %26, !dbg !123
  %131 = select i1 %47, i64 0, i64 %130, !dbg !124
  %132 = select i1 %29, i64 %28, i64 0, !dbg !125
  %133 = icmp eq i32 %34, 6, !dbg !126
  %134 = and i1 %38, %133, !dbg !127
  %135 = select i1 %134, i64 %31, i64 %132, !dbg !128
  %136 = icmp eq i4 %16, 6, !dbg !129
  %137 = and i1 %38, %136, !dbg !130
  %138 = or i1 %29, %137, !dbg !131
  %139 = select i1 %138, i64 %135, i64 %27, !dbg !132
  %140 = select i1 %47, i64 0, i64 %139, !dbg !133
  %141 = call i64 @nd_bv64(), !dbg !134
  %142 = icmp eq i4 %16, 7, !dbg !135
  %143 = and i1 %38, %142, !dbg !136
  %144 = or i1 %29, %143, !dbg !137
  %145 = select i1 %144, i64 %141, i64 %28, !dbg !138
  %146 = select i1 %47, i64 0, i64 %145, !dbg !139
  %147 = xor i1 %29, true, !dbg !140
  %148 = xor i1 %43, true, !dbg !141
  %149 = or i1 %148, %147, !dbg !142
  %150 = or i1 %149, false, !dbg !143
  call void @verifier.assume(i1 %150), !dbg !144
  %151 = xor i1 %38, true, !dbg !145
  %152 = icmp uge i4 %16, -8, !dbg !146
  %153 = xor i1 %152, true, !dbg !147
  %154 = or i1 %153, %151, !dbg !148
  %155 = or i1 %154, false, !dbg !149
  call void @verifier.assume(i1 %155), !dbg !150
  %156 = icmp eq i1 %47, %21, !dbg !151
  %157 = or i1 %156, false, !dbg !152
  call void @verifier.assume(i1 %157), !dbg !153
  %158 = xor i1 %38, true, !dbg !154
  %159 = xor i1 %152, true, !dbg !155
  %160 = or i1 %159, %158, !dbg !156
  %161 = or i1 %160, false, !dbg !157
  call void @verifier.assume(i1 %161), !dbg !158
  %162 = xor i1 %29, true, !dbg !159
  %163 = xor i1 %43, true, !dbg !160
  %164 = or i1 %163, %162, !dbg !161
  %165 = or i1 %164, false, !dbg !162
  call void @verifier.assume(i1 %165), !dbg !163
  %166 = icmp eq i64 %20, %15, !dbg !164
  %167 = xor i1 %75, true, !dbg !165
  %168 = or i1 %167, %166, !dbg !166
  %169 = call i1 @nd_bv1(), !dbg !167
  %170 = select i1 %21, i1 %169, i1 %168, !dbg !168
  %171 = xor i1 %170, true, !dbg !169
  %172 = select i1 %21, i1 false, i1 true, !dbg !170
  %173 = and i1 %172, %171, !dbg !171
  %174 = xor i1 %173, true, !dbg !172
  br i1 %174, label %175, label %176, !dbg !173

175:                                              ; preds = %14
  br label %14, !dbg !174

176:                                              ; preds = %14
  call void @verifier.error(), !dbg !175
  unreachable, !dbg !176
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.vector.reduce.or.v32i1(<32 x i1>) #0

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.vector.reduce.or.v4i1(<4 x i1>) #0

attributes #0 = { nofree nosync nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2mlir-1/hwmcc20/btor2/bv/2019/mann/data-integrity/unsafe/shift_register_top_w64_d8_e0.btor2.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 9, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 10, column: 10, scope: !8)
!10 = !DILocation(line: 11, column: 10, scope: !8)
!11 = !DILocation(line: 12, column: 10, scope: !8)
!12 = !DILocation(line: 13, column: 10, scope: !8)
!13 = !DILocation(line: 14, column: 10, scope: !8)
!14 = !DILocation(line: 15, column: 10, scope: !8)
!15 = !DILocation(line: 16, column: 10, scope: !8)
!16 = !DILocation(line: 17, column: 10, scope: !8)
!17 = !DILocation(line: 18, column: 11, scope: !8)
!18 = !DILocation(line: 19, column: 11, scope: !8)
!19 = !DILocation(line: 20, column: 11, scope: !8)
!20 = !DILocation(line: 21, column: 11, scope: !8)
!21 = !DILocation(line: 22, column: 5, scope: !8)
!22 = !DILocation(line: 25, column: 11, scope: !8)
!23 = !DILocation(line: 26, column: 11, scope: !8)
!24 = !DILocation(line: 27, column: 11, scope: !8)
!25 = !DILocation(line: 28, column: 11, scope: !8)
!26 = !DILocation(line: 29, column: 11, scope: !8)
!27 = !DILocation(line: 30, column: 11, scope: !8)
!28 = !DILocation(line: 31, column: 11, scope: !8)
!29 = !DILocation(line: 32, column: 11, scope: !8)
!30 = !DILocation(line: 34, column: 11, scope: !8)
!31 = !DILocation(line: 35, column: 11, scope: !8)
!32 = !DILocation(line: 36, column: 11, scope: !8)
!33 = !DILocation(line: 37, column: 11, scope: !8)
!34 = !DILocation(line: 38, column: 11, scope: !8)
!35 = !DILocation(line: 39, column: 11, scope: !8)
!36 = !DILocation(line: 41, column: 11, scope: !8)
!37 = !DILocation(line: 42, column: 11, scope: !8)
!38 = !DILocation(line: 43, column: 11, scope: !8)
!39 = !DILocation(line: 44, column: 11, scope: !8)
!40 = !DILocation(line: 45, column: 11, scope: !8)
!41 = !DILocation(line: 46, column: 11, scope: !8)
!42 = !DILocation(line: 47, column: 11, scope: !8)
!43 = !DILocation(line: 48, column: 11, scope: !8)
!44 = !DILocation(line: 49, column: 11, scope: !8)
!45 = !DILocation(line: 50, column: 11, scope: !8)
!46 = !DILocation(line: 52, column: 11, scope: !8)
!47 = !DILocation(line: 53, column: 11, scope: !8)
!48 = !DILocation(line: 54, column: 11, scope: !8)
!49 = !DILocation(line: 55, column: 11, scope: !8)
!50 = !DILocation(line: 57, column: 11, scope: !8)
!51 = !DILocation(line: 58, column: 11, scope: !8)
!52 = !DILocation(line: 60, column: 11, scope: !8)
!53 = !DILocation(line: 61, column: 11, scope: !8)
!54 = !DILocation(line: 63, column: 11, scope: !8)
!55 = !DILocation(line: 64, column: 11, scope: !8)
!56 = !DILocation(line: 65, column: 11, scope: !8)
!57 = !DILocation(line: 66, column: 11, scope: !8)
!58 = !DILocation(line: 67, column: 11, scope: !8)
!59 = !DILocation(line: 68, column: 11, scope: !8)
!60 = !DILocation(line: 69, column: 11, scope: !8)
!61 = !DILocation(line: 70, column: 11, scope: !8)
!62 = !DILocation(line: 72, column: 11, scope: !8)
!63 = !DILocation(line: 73, column: 11, scope: !8)
!64 = !DILocation(line: 74, column: 11, scope: !8)
!65 = !DILocation(line: 76, column: 11, scope: !8)
!66 = !DILocation(line: 77, column: 11, scope: !8)
!67 = !DILocation(line: 78, column: 11, scope: !8)
!68 = !DILocation(line: 79, column: 11, scope: !8)
!69 = !DILocation(line: 80, column: 11, scope: !8)
!70 = !DILocation(line: 82, column: 11, scope: !8)
!71 = !DILocation(line: 83, column: 11, scope: !8)
!72 = !DILocation(line: 84, column: 11, scope: !8)
!73 = !DILocation(line: 85, column: 11, scope: !8)
!74 = !DILocation(line: 86, column: 11, scope: !8)
!75 = !DILocation(line: 87, column: 11, scope: !8)
!76 = !DILocation(line: 88, column: 11, scope: !8)
!77 = !DILocation(line: 89, column: 11, scope: !8)
!78 = !DILocation(line: 90, column: 11, scope: !8)
!79 = !DILocation(line: 91, column: 11, scope: !8)
!80 = !DILocation(line: 92, column: 11, scope: !8)
!81 = !DILocation(line: 94, column: 11, scope: !8)
!82 = !DILocation(line: 95, column: 11, scope: !8)
!83 = !DILocation(line: 96, column: 12, scope: !8)
!84 = !DILocation(line: 98, column: 12, scope: !8)
!85 = !DILocation(line: 99, column: 12, scope: !8)
!86 = !DILocation(line: 100, column: 12, scope: !8)
!87 = !DILocation(line: 101, column: 12, scope: !8)
!88 = !DILocation(line: 102, column: 12, scope: !8)
!89 = !DILocation(line: 103, column: 12, scope: !8)
!90 = !DILocation(line: 106, column: 12, scope: !8)
!91 = !DILocation(line: 107, column: 12, scope: !8)
!92 = !DILocation(line: 108, column: 12, scope: !8)
!93 = !DILocation(line: 110, column: 12, scope: !8)
!94 = !DILocation(line: 111, column: 12, scope: !8)
!95 = !DILocation(line: 112, column: 12, scope: !8)
!96 = !DILocation(line: 113, column: 12, scope: !8)
!97 = !DILocation(line: 114, column: 12, scope: !8)
!98 = !DILocation(line: 115, column: 12, scope: !8)
!99 = !DILocation(line: 118, column: 12, scope: !8)
!100 = !DILocation(line: 119, column: 12, scope: !8)
!101 = !DILocation(line: 120, column: 12, scope: !8)
!102 = !DILocation(line: 122, column: 12, scope: !8)
!103 = !DILocation(line: 123, column: 12, scope: !8)
!104 = !DILocation(line: 124, column: 12, scope: !8)
!105 = !DILocation(line: 125, column: 12, scope: !8)
!106 = !DILocation(line: 126, column: 12, scope: !8)
!107 = !DILocation(line: 127, column: 12, scope: !8)
!108 = !DILocation(line: 130, column: 12, scope: !8)
!109 = !DILocation(line: 131, column: 12, scope: !8)
!110 = !DILocation(line: 132, column: 12, scope: !8)
!111 = !DILocation(line: 134, column: 12, scope: !8)
!112 = !DILocation(line: 135, column: 12, scope: !8)
!113 = !DILocation(line: 136, column: 12, scope: !8)
!114 = !DILocation(line: 137, column: 12, scope: !8)
!115 = !DILocation(line: 138, column: 12, scope: !8)
!116 = !DILocation(line: 139, column: 12, scope: !8)
!117 = !DILocation(line: 142, column: 12, scope: !8)
!118 = !DILocation(line: 143, column: 12, scope: !8)
!119 = !DILocation(line: 144, column: 12, scope: !8)
!120 = !DILocation(line: 146, column: 12, scope: !8)
!121 = !DILocation(line: 147, column: 12, scope: !8)
!122 = !DILocation(line: 148, column: 12, scope: !8)
!123 = !DILocation(line: 149, column: 12, scope: !8)
!124 = !DILocation(line: 150, column: 12, scope: !8)
!125 = !DILocation(line: 151, column: 12, scope: !8)
!126 = !DILocation(line: 154, column: 12, scope: !8)
!127 = !DILocation(line: 155, column: 12, scope: !8)
!128 = !DILocation(line: 156, column: 12, scope: !8)
!129 = !DILocation(line: 158, column: 12, scope: !8)
!130 = !DILocation(line: 159, column: 12, scope: !8)
!131 = !DILocation(line: 160, column: 12, scope: !8)
!132 = !DILocation(line: 161, column: 12, scope: !8)
!133 = !DILocation(line: 162, column: 12, scope: !8)
!134 = !DILocation(line: 163, column: 12, scope: !8)
!135 = !DILocation(line: 166, column: 12, scope: !8)
!136 = !DILocation(line: 167, column: 12, scope: !8)
!137 = !DILocation(line: 168, column: 12, scope: !8)
!138 = !DILocation(line: 169, column: 12, scope: !8)
!139 = !DILocation(line: 170, column: 12, scope: !8)
!140 = !DILocation(line: 174, column: 12, scope: !8)
!141 = !DILocation(line: 176, column: 12, scope: !8)
!142 = !DILocation(line: 177, column: 12, scope: !8)
!143 = !DILocation(line: 178, column: 12, scope: !8)
!144 = !DILocation(line: 179, column: 5, scope: !8)
!145 = !DILocation(line: 183, column: 12, scope: !8)
!146 = !DILocation(line: 185, column: 12, scope: !8)
!147 = !DILocation(line: 187, column: 12, scope: !8)
!148 = !DILocation(line: 188, column: 12, scope: !8)
!149 = !DILocation(line: 189, column: 12, scope: !8)
!150 = !DILocation(line: 190, column: 5, scope: !8)
!151 = !DILocation(line: 193, column: 12, scope: !8)
!152 = !DILocation(line: 194, column: 12, scope: !8)
!153 = !DILocation(line: 195, column: 5, scope: !8)
!154 = !DILocation(line: 199, column: 12, scope: !8)
!155 = !DILocation(line: 201, column: 12, scope: !8)
!156 = !DILocation(line: 202, column: 12, scope: !8)
!157 = !DILocation(line: 203, column: 12, scope: !8)
!158 = !DILocation(line: 204, column: 5, scope: !8)
!159 = !DILocation(line: 208, column: 12, scope: !8)
!160 = !DILocation(line: 210, column: 12, scope: !8)
!161 = !DILocation(line: 211, column: 12, scope: !8)
!162 = !DILocation(line: 212, column: 12, scope: !8)
!163 = !DILocation(line: 213, column: 5, scope: !8)
!164 = !DILocation(line: 214, column: 12, scope: !8)
!165 = !DILocation(line: 216, column: 12, scope: !8)
!166 = !DILocation(line: 217, column: 12, scope: !8)
!167 = !DILocation(line: 218, column: 12, scope: !8)
!168 = !DILocation(line: 219, column: 12, scope: !8)
!169 = !DILocation(line: 221, column: 12, scope: !8)
!170 = !DILocation(line: 222, column: 12, scope: !8)
!171 = !DILocation(line: 223, column: 12, scope: !8)
!172 = !DILocation(line: 225, column: 12, scope: !8)
!173 = !DILocation(line: 226, column: 5, scope: !8)
!174 = !DILocation(line: 228, column: 5, scope: !8)
!175 = !DILocation(line: 230, column: 5, scope: !8)
!176 = !DILocation(line: 231, column: 5, scope: !8)

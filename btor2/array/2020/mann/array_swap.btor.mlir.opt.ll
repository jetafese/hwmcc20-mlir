; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @__VERIFIER_error()

declare <1024 x i32> @nd_array1024xbv32()

declare void @btor2mlir_print_state_num(i64, i64, i64)

declare i16 @nd_bv16_st4()

define void @main() !dbg !3 {
  %1 = call <1024 x i32> @nd_array1024xbv32(), !dbg !7
  %2 = call i16 @nd_bv16_st4(), !dbg !9
  %3 = trunc i16 %2 to i10, !dbg !10
  br label %4, !dbg !11

4:                                                ; preds = %35, %0
  %5 = phi <1024 x i32> [ %20, %35 ], [ %1, %0 ]
  %6 = phi i10 [ %12, %35 ], [ 0, %0 ]
  %7 = phi <1024 x i32> [ %28, %35 ], [ %1, %0 ]
  %8 = phi <1024 x i32> [ %8, %35 ], [ %1, %0 ]
  %9 = phi i10 [ %37, %35 ], [ %3, %0 ]
  %10 = add i10 %6, 1, !dbg !12
  %11 = icmp ule i10 %6, -2, !dbg !13
  %12 = select i1 %11, i10 %10, i10 %6, !dbg !14
  %13 = extractelement <1024 x i32> %5, i10 %6, !dbg !15
  %14 = and i32 %13, 0, !dbg !16
  %15 = extractelement <1024 x i32> %7, i10 %6, !dbg !17
  %16 = and i32 %15, -1, !dbg !18
  %17 = or i32 %16, %14, !dbg !19
  %18 = insertelement <1024 x i32> %5, i32 %17, i10 %6, !dbg !20
  %19 = call i1 @llvm.vector.reduce.or.v32i1(<32 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>), !dbg !21
  %20 = select i1 %19, <1024 x i32> %18, <1024 x i32> %5, !dbg !22
  %21 = extractelement <1024 x i32> %7, i10 %6, !dbg !23
  %22 = and i32 %21, 0, !dbg !24
  %23 = extractelement <1024 x i32> %5, i10 %6, !dbg !25
  %24 = and i32 %23, -1, !dbg !26
  %25 = or i32 %24, %22, !dbg !27
  %26 = insertelement <1024 x i32> %7, i32 %25, i10 %6, !dbg !28
  %27 = call i1 @llvm.vector.reduce.or.v32i1(<32 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>), !dbg !29
  %28 = select i1 %27, <1024 x i32> %26, <1024 x i32> %7, !dbg !30
  %29 = extractelement <1024 x i32> %8, i10 %9, !dbg !31
  %30 = extractelement <1024 x i32> %5, i10 %9, !dbg !32
  %31 = icmp ne i32 %30, %29, !dbg !33
  %32 = icmp ult i10 %9, %6, !dbg !34
  %33 = and i1 %32, %31, !dbg !35
  %34 = xor i1 %33, true, !dbg !36
  br i1 %34, label %35, label %38, !dbg !37

35:                                               ; preds = %4
  %36 = call i16 @nd_bv16_st4(), !dbg !38
  %37 = trunc i16 %36 to i10, !dbg !39
  br label %4, !dbg !40

38:                                               ; preds = %4
  call void @__VERIFIER_error(), !dbg !41
  unreachable, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.vector.reduce.or.v32i1(<32 x i1>) #0

attributes #0 = { nofree nosync nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "hwmc20-mlir/btor2/array/2020/mann/array_swap.btor.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 8, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 9, column: 10, scope: !8)
!10 = !DILocation(line: 10, column: 10, scope: !8)
!11 = !DILocation(line: 11, column: 5, scope: !8)
!12 = !DILocation(line: 15, column: 11, scope: !8)
!13 = !DILocation(line: 17, column: 11, scope: !8)
!14 = !DILocation(line: 18, column: 11, scope: !8)
!15 = !DILocation(line: 22, column: 11, scope: !8)
!16 = !DILocation(line: 23, column: 11, scope: !8)
!17 = !DILocation(line: 24, column: 11, scope: !8)
!18 = !DILocation(line: 25, column: 11, scope: !8)
!19 = !DILocation(line: 26, column: 11, scope: !8)
!20 = !DILocation(line: 27, column: 11, scope: !8)
!21 = !DILocation(line: 29, column: 11, scope: !8)
!22 = !DILocation(line: 30, column: 11, scope: !8)
!23 = !DILocation(line: 33, column: 11, scope: !8)
!24 = !DILocation(line: 34, column: 11, scope: !8)
!25 = !DILocation(line: 35, column: 11, scope: !8)
!26 = !DILocation(line: 36, column: 11, scope: !8)
!27 = !DILocation(line: 37, column: 11, scope: !8)
!28 = !DILocation(line: 38, column: 11, scope: !8)
!29 = !DILocation(line: 40, column: 11, scope: !8)
!30 = !DILocation(line: 41, column: 11, scope: !8)
!31 = !DILocation(line: 42, column: 11, scope: !8)
!32 = !DILocation(line: 43, column: 11, scope: !8)
!33 = !DILocation(line: 44, column: 11, scope: !8)
!34 = !DILocation(line: 45, column: 11, scope: !8)
!35 = !DILocation(line: 46, column: 11, scope: !8)
!36 = !DILocation(line: 48, column: 11, scope: !8)
!37 = !DILocation(line: 49, column: 5, scope: !8)
!38 = !DILocation(line: 51, column: 11, scope: !8)
!39 = !DILocation(line: 52, column: 11, scope: !8)
!40 = !DILocation(line: 53, column: 5, scope: !8)
!41 = !DILocation(line: 55, column: 5, scope: !8)
!42 = !DILocation(line: 56, column: 5, scope: !8)

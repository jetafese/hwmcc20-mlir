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
  %2 = call <1024 x i32> @nd_array1024xbv32(), !dbg !9
  %3 = call i16 @nd_bv16_st4(), !dbg !10
  %4 = zext i16 %3 to i64, !dbg !11
  call void @btor2mlir_print_state_num(i64 4, i64 %4, i64 10), !dbg !12
  %5 = trunc i16 %3 to i10, !dbg !13
  br label %6, !dbg !14

6:                                                ; preds = %37, %0
  %7 = phi <1024 x i32> [ %22, %37 ], [ %1, %0 ]
  %8 = phi i10 [ %14, %37 ], [ 0, %0 ]
  %9 = phi <1024 x i32> [ %30, %37 ], [ %2, %0 ]
  %10 = phi <1024 x i32> [ %10, %37 ], [ %2, %0 ]
  %11 = phi i10 [ %40, %37 ], [ %5, %0 ]
  %12 = add i10 %8, 1, !dbg !15
  %13 = icmp ule i10 %8, -2, !dbg !16
  %14 = select i1 %13, i10 %12, i10 %8, !dbg !17
  %15 = extractelement <1024 x i32> %7, i10 %8, !dbg !18
  %16 = and i32 %15, 0, !dbg !19
  %17 = extractelement <1024 x i32> %9, i10 %8, !dbg !20
  %18 = and i32 %17, -1, !dbg !21
  %19 = or i32 %18, %16, !dbg !22
  %20 = insertelement <1024 x i32> %7, i32 %19, i10 %8, !dbg !23
  %21 = call i1 @llvm.vector.reduce.or.v32i1(<32 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>), !dbg !24
  %22 = select i1 %21, <1024 x i32> %20, <1024 x i32> %7, !dbg !25
  %23 = extractelement <1024 x i32> %9, i10 %8, !dbg !26
  %24 = and i32 %23, 0, !dbg !27
  %25 = extractelement <1024 x i32> %7, i10 %8, !dbg !28
  %26 = and i32 %25, -1, !dbg !29
  %27 = or i32 %26, %24, !dbg !30
  %28 = insertelement <1024 x i32> %9, i32 %27, i10 %8, !dbg !31
  %29 = call i1 @llvm.vector.reduce.or.v32i1(<32 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>), !dbg !32
  %30 = select i1 %29, <1024 x i32> %28, <1024 x i32> %9, !dbg !33
  %31 = extractelement <1024 x i32> %10, i10 %11, !dbg !34
  %32 = extractelement <1024 x i32> %7, i10 %11, !dbg !35
  %33 = icmp ne i32 %32, %31, !dbg !36
  %34 = icmp ult i10 %11, %8, !dbg !37
  %35 = and i1 %34, %33, !dbg !38
  %36 = xor i1 %35, true, !dbg !39
  br i1 %36, label %37, label %41, !dbg !40

37:                                               ; preds = %6
  %38 = call i16 @nd_bv16_st4(), !dbg !41
  %39 = zext i16 %38 to i64, !dbg !42
  call void @btor2mlir_print_state_num(i64 4, i64 %39, i64 10), !dbg !43
  %40 = trunc i16 %38 to i10, !dbg !44
  br label %6, !dbg !45

41:                                               ; preds = %6
  call void @__VERIFIER_error(), !dbg !46
  unreachable, !dbg !47
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
!4 = !DIFile(filename: "btor2/array/2020/mann/array_swap.btor.mlir.opt", directory: "/home/jetafese/hwmc20-mlir")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 7, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 9, column: 10, scope: !8)
!10 = !DILocation(line: 10, column: 10, scope: !8)
!11 = !DILocation(line: 14, column: 10, scope: !8)
!12 = !DILocation(line: 15, column: 5, scope: !8)
!13 = !DILocation(line: 16, column: 10, scope: !8)
!14 = !DILocation(line: 17, column: 5, scope: !8)
!15 = !DILocation(line: 21, column: 11, scope: !8)
!16 = !DILocation(line: 23, column: 11, scope: !8)
!17 = !DILocation(line: 24, column: 11, scope: !8)
!18 = !DILocation(line: 28, column: 11, scope: !8)
!19 = !DILocation(line: 29, column: 11, scope: !8)
!20 = !DILocation(line: 30, column: 11, scope: !8)
!21 = !DILocation(line: 31, column: 11, scope: !8)
!22 = !DILocation(line: 32, column: 11, scope: !8)
!23 = !DILocation(line: 33, column: 11, scope: !8)
!24 = !DILocation(line: 35, column: 11, scope: !8)
!25 = !DILocation(line: 36, column: 11, scope: !8)
!26 = !DILocation(line: 39, column: 11, scope: !8)
!27 = !DILocation(line: 40, column: 11, scope: !8)
!28 = !DILocation(line: 41, column: 11, scope: !8)
!29 = !DILocation(line: 42, column: 11, scope: !8)
!30 = !DILocation(line: 43, column: 11, scope: !8)
!31 = !DILocation(line: 44, column: 11, scope: !8)
!32 = !DILocation(line: 46, column: 11, scope: !8)
!33 = !DILocation(line: 47, column: 11, scope: !8)
!34 = !DILocation(line: 48, column: 11, scope: !8)
!35 = !DILocation(line: 49, column: 11, scope: !8)
!36 = !DILocation(line: 50, column: 11, scope: !8)
!37 = !DILocation(line: 51, column: 11, scope: !8)
!38 = !DILocation(line: 52, column: 11, scope: !8)
!39 = !DILocation(line: 54, column: 11, scope: !8)
!40 = !DILocation(line: 55, column: 5, scope: !8)
!41 = !DILocation(line: 57, column: 11, scope: !8)
!42 = !DILocation(line: 61, column: 11, scope: !8)
!43 = !DILocation(line: 62, column: 5, scope: !8)
!44 = !DILocation(line: 63, column: 11, scope: !8)
!45 = !DILocation(line: 64, column: 5, scope: !8)
!46 = !DILocation(line: 66, column: 5, scope: !8)
!47 = !DILocation(line: 67, column: 5, scope: !8)

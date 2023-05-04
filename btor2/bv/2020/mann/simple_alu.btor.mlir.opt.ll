; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @__VERIFIER_error()

declare i16 @nd_bv16_in0()

declare i16 @nd_bv16_in1()

declare void @btor2mlir_print_input_num(i64, i64, i64)

declare i8 @nd_bv8_in3()

declare void @btor2mlir_print_state_num(i64, i64, i64)

declare i8 @nd_bv8_st0()

define void @main() !dbg !3 {
  %1 = call i8 @nd_bv8_st0(), !dbg !7
  %2 = zext i8 %1 to i64, !dbg !9
  call void @btor2mlir_print_state_num(i64 0, i64 %2, i64 4), !dbg !10
  %3 = trunc i8 %1 to i4, !dbg !11
  br label %4, !dbg !12

4:                                                ; preds = %30, %0
  %5 = phi i4 [ %8, %30 ], [ %3, %0 ]
  %6 = phi i16 [ %9, %30 ], [ 0, %0 ]
  %7 = phi i1 [ false, %30 ], [ true, %0 ]
  %8 = select i1 %7, i4 0, i4 %5, !dbg !13
  %9 = add i16 %6, 1, !dbg !14
  %10 = call i8 @nd_bv8_in3(), !dbg !15
  %11 = zext i8 %10 to i64, !dbg !16
  call void @btor2mlir_print_input_num(i64 3, i64 %11, i64 1), !dbg !17
  %12 = trunc i8 %10 to i1, !dbg !18
  %13 = call i16 @nd_bv16_in1(), !dbg !19
  %14 = zext i16 %13 to i64, !dbg !20
  call void @btor2mlir_print_input_num(i64 1, i64 %14, i64 16), !dbg !21
  %15 = call i16 @nd_bv16_in0(), !dbg !22
  %16 = zext i16 %15 to i64, !dbg !23
  call void @btor2mlir_print_input_num(i64 0, i64 %16, i64 16), !dbg !24
  %17 = add i16 %15, %13, !dbg !25
  %18 = sub i16 %15, %13, !dbg !26
  %19 = bitcast i4 %5 to <4 x i1>, !dbg !27
  %20 = call i1 @llvm.vector.reduce.or.v4i1(<4 x i1> %19), !dbg !28
  %21 = xor i1 %20, true, !dbg !29
  %22 = select i1 %21, i16 %17, i16 %18, !dbg !30
  %23 = icmp eq i16 %22, %17, !dbg !31
  %24 = icmp ugt i16 %6, 0, !dbg !32
  %25 = select i1 %24, i1 %23, i1 %12, !dbg !33
  %26 = xor i1 %25, true, !dbg !34
  %27 = select i1 %24, i1 true, i1 false, !dbg !35
  %28 = and i1 %27, %26, !dbg !36
  %29 = xor i1 %28, true, !dbg !37
  br i1 %29, label %30, label %31, !dbg !38

30:                                               ; preds = %4
  br label %4, !dbg !39

31:                                               ; preds = %4
  call void @__VERIFIER_error(), !dbg !40
  unreachable, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.vector.reduce.or.v4i1(<4 x i1>) #0

attributes #0 = { nofree nosync nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2/bv/2020/mann/simple_alu.btor.mlir.opt", directory: "/home/jetafese/hwmc20-mlir")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 10, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 14, column: 10, scope: !8)
!10 = !DILocation(line: 15, column: 5, scope: !8)
!11 = !DILocation(line: 16, column: 10, scope: !8)
!12 = !DILocation(line: 19, column: 5, scope: !8)
!13 = !DILocation(line: 22, column: 11, scope: !8)
!14 = !DILocation(line: 25, column: 11, scope: !8)
!15 = !DILocation(line: 27, column: 11, scope: !8)
!16 = !DILocation(line: 31, column: 11, scope: !8)
!17 = !DILocation(line: 32, column: 5, scope: !8)
!18 = !DILocation(line: 33, column: 11, scope: !8)
!19 = !DILocation(line: 34, column: 11, scope: !8)
!20 = !DILocation(line: 38, column: 11, scope: !8)
!21 = !DILocation(line: 39, column: 5, scope: !8)
!22 = !DILocation(line: 41, column: 11, scope: !8)
!23 = !DILocation(line: 45, column: 11, scope: !8)
!24 = !DILocation(line: 46, column: 5, scope: !8)
!25 = !DILocation(line: 48, column: 11, scope: !8)
!26 = !DILocation(line: 49, column: 11, scope: !8)
!27 = !DILocation(line: 50, column: 11, scope: !8)
!28 = !DILocation(line: 51, column: 11, scope: !8)
!29 = !DILocation(line: 53, column: 11, scope: !8)
!30 = !DILocation(line: 54, column: 11, scope: !8)
!31 = !DILocation(line: 55, column: 11, scope: !8)
!32 = !DILocation(line: 57, column: 11, scope: !8)
!33 = !DILocation(line: 58, column: 11, scope: !8)
!34 = !DILocation(line: 60, column: 11, scope: !8)
!35 = !DILocation(line: 61, column: 11, scope: !8)
!36 = !DILocation(line: 62, column: 11, scope: !8)
!37 = !DILocation(line: 64, column: 11, scope: !8)
!38 = !DILocation(line: 65, column: 5, scope: !8)
!39 = !DILocation(line: 67, column: 5, scope: !8)
!40 = !DILocation(line: 69, column: 5, scope: !8)
!41 = !DILocation(line: 70, column: 5, scope: !8)

; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @__VERIFIER_error()

declare i8 @nd_bv8_in2()

declare i64 @nd_bv64_in4()

declare i8 @nd_bv8_in1()

declare i64 @nd_bv64_in3()

declare void @btor2mlir_print_input_num(i64, i64, i64)

declare i8 @nd_bv8_in5()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %45, %0
  %2 = phi i128 [ %16, %45 ], [ 0, %0 ]
  %3 = phi i128 [ %22, %45 ], [ 0, %0 ]
  %4 = phi i64 [ %28, %45 ], [ 0, %0 ]
  %5 = phi i64 [ %34, %45 ], [ 0, %0 ]
  %6 = phi i1 [ %35, %45 ], [ true, %0 ]
  %7 = phi i1 [ %36, %45 ], [ true, %0 ]
  %8 = phi i64 [ %38, %45 ], [ 0, %0 ]
  %9 = phi i64 [ %40, %45 ], [ 0, %0 ]
  %10 = zext i64 %5 to i128, !dbg !9
  %11 = zext i64 %4 to i128, !dbg !10
  %12 = mul i128 %11, %10, !dbg !11
  %13 = call i8 @nd_bv8_in5(), !dbg !12
  %14 = zext i8 %13 to i64, !dbg !13
  call void @btor2mlir_print_input_num(i64 5, i64 %14, i64 1), !dbg !14
  %15 = trunc i8 %13 to i1, !dbg !15
  %16 = select i1 %15, i128 0, i128 %12, !dbg !16
  %17 = zext i64 %9 to i128, !dbg !17
  %18 = zext i64 %8 to i128, !dbg !18
  %19 = mul i128 %18, %17, !dbg !19
  %20 = or i1 %6, %7, !dbg !20
  %21 = select i1 %20, i128 %19, i128 %3, !dbg !21
  %22 = select i1 %15, i128 0, i128 %21, !dbg !22
  %23 = call i64 @nd_bv64_in3(), !dbg !23
  call void @btor2mlir_print_input_num(i64 3, i64 %23, i64 64), !dbg !24
  %24 = call i8 @nd_bv8_in1(), !dbg !25
  %25 = zext i8 %24 to i64, !dbg !26
  call void @btor2mlir_print_input_num(i64 1, i64 %25, i64 1), !dbg !27
  %26 = trunc i8 %24 to i1, !dbg !28
  %27 = select i1 %26, i64 %23, i64 %4, !dbg !29
  %28 = select i1 %15, i64 0, i64 %27, !dbg !30
  %29 = call i64 @nd_bv64_in4(), !dbg !31
  call void @btor2mlir_print_input_num(i64 4, i64 %29, i64 64), !dbg !32
  %30 = call i8 @nd_bv8_in2(), !dbg !33
  %31 = zext i8 %30 to i64, !dbg !34
  call void @btor2mlir_print_input_num(i64 2, i64 %31, i64 1), !dbg !35
  %32 = trunc i8 %30 to i1, !dbg !36
  %33 = select i1 %32, i64 %29, i64 %5, !dbg !37
  %34 = select i1 %15, i64 0, i64 %33, !dbg !38
  %35 = select i1 %15, i1 true, i1 %26, !dbg !39
  %36 = select i1 %15, i1 true, i1 %32, !dbg !40
  %37 = select i1 %26, i64 %23, i64 %8, !dbg !41
  %38 = select i1 %15, i64 0, i64 %37, !dbg !42
  %39 = select i1 %32, i64 %29, i64 %9, !dbg !43
  %40 = select i1 %15, i64 0, i64 %39, !dbg !44
  %41 = icmp eq i128 %2, %3, !dbg !45
  %42 = xor i1 %41, true, !dbg !46
  %43 = and i1 true, %42, !dbg !47
  %44 = xor i1 %43, true, !dbg !48
  br i1 %44, label %45, label %46, !dbg !49

45:                                               ; preds = %1
  br label %1, !dbg !50

46:                                               ; preds = %1
  call void @__VERIFIER_error(), !dbg !51
  unreachable, !dbg !52
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2/bv/2019/goel/mul2.btor2.mlir.opt", directory: "/home/jetafese/hwmc20-mlir")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 13, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 15, column: 11, scope: !8)
!10 = !DILocation(line: 16, column: 11, scope: !8)
!11 = !DILocation(line: 17, column: 11, scope: !8)
!12 = !DILocation(line: 19, column: 11, scope: !8)
!13 = !DILocation(line: 23, column: 11, scope: !8)
!14 = !DILocation(line: 24, column: 5, scope: !8)
!15 = !DILocation(line: 25, column: 11, scope: !8)
!16 = !DILocation(line: 26, column: 11, scope: !8)
!17 = !DILocation(line: 27, column: 11, scope: !8)
!18 = !DILocation(line: 28, column: 11, scope: !8)
!19 = !DILocation(line: 29, column: 11, scope: !8)
!20 = !DILocation(line: 30, column: 11, scope: !8)
!21 = !DILocation(line: 31, column: 11, scope: !8)
!22 = !DILocation(line: 32, column: 11, scope: !8)
!23 = !DILocation(line: 33, column: 11, scope: !8)
!24 = !DILocation(line: 38, column: 5, scope: !8)
!25 = !DILocation(line: 40, column: 11, scope: !8)
!26 = !DILocation(line: 44, column: 11, scope: !8)
!27 = !DILocation(line: 45, column: 5, scope: !8)
!28 = !DILocation(line: 46, column: 11, scope: !8)
!29 = !DILocation(line: 47, column: 11, scope: !8)
!30 = !DILocation(line: 49, column: 11, scope: !8)
!31 = !DILocation(line: 50, column: 11, scope: !8)
!32 = !DILocation(line: 55, column: 5, scope: !8)
!33 = !DILocation(line: 57, column: 11, scope: !8)
!34 = !DILocation(line: 61, column: 11, scope: !8)
!35 = !DILocation(line: 62, column: 5, scope: !8)
!36 = !DILocation(line: 63, column: 11, scope: !8)
!37 = !DILocation(line: 64, column: 11, scope: !8)
!38 = !DILocation(line: 65, column: 11, scope: !8)
!39 = !DILocation(line: 67, column: 11, scope: !8)
!40 = !DILocation(line: 68, column: 11, scope: !8)
!41 = !DILocation(line: 69, column: 11, scope: !8)
!42 = !DILocation(line: 70, column: 11, scope: !8)
!43 = !DILocation(line: 71, column: 11, scope: !8)
!44 = !DILocation(line: 72, column: 11, scope: !8)
!45 = !DILocation(line: 73, column: 11, scope: !8)
!46 = !DILocation(line: 75, column: 11, scope: !8)
!47 = !DILocation(line: 76, column: 11, scope: !8)
!48 = !DILocation(line: 78, column: 11, scope: !8)
!49 = !DILocation(line: 79, column: 5, scope: !8)
!50 = !DILocation(line: 81, column: 5, scope: !8)
!51 = !DILocation(line: 83, column: 5, scope: !8)
!52 = !DILocation(line: 84, column: 5, scope: !8)

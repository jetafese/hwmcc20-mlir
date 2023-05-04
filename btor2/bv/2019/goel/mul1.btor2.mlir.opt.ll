; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @__VERIFIER_error()

declare i8 @nd_bv8_in2()

declare i32 @nd_bv32_in4()

declare i8 @nd_bv8_in1()

declare i32 @nd_bv32_in3()

declare void @btor2mlir_print_input_num(i64, i64, i64)

declare i8 @nd_bv8_in5()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %47, %0
  %2 = phi i64 [ %16, %47 ], [ 0, %0 ]
  %3 = phi i64 [ %22, %47 ], [ 0, %0 ]
  %4 = phi i32 [ %29, %47 ], [ 0, %0 ]
  %5 = phi i32 [ %36, %47 ], [ 0, %0 ]
  %6 = phi i1 [ %37, %47 ], [ true, %0 ]
  %7 = phi i1 [ %38, %47 ], [ true, %0 ]
  %8 = phi i32 [ %40, %47 ], [ 0, %0 ]
  %9 = phi i32 [ %42, %47 ], [ 0, %0 ]
  %10 = zext i32 %5 to i64, !dbg !9
  %11 = zext i32 %4 to i64, !dbg !10
  %12 = mul i64 %11, %10, !dbg !11
  %13 = call i8 @nd_bv8_in5(), !dbg !12
  %14 = zext i8 %13 to i64, !dbg !13
  call void @btor2mlir_print_input_num(i64 5, i64 %14, i64 1), !dbg !14
  %15 = trunc i8 %13 to i1, !dbg !15
  %16 = select i1 %15, i64 0, i64 %12, !dbg !16
  %17 = zext i32 %9 to i64, !dbg !17
  %18 = zext i32 %8 to i64, !dbg !18
  %19 = mul i64 %18, %17, !dbg !19
  %20 = or i1 %6, %7, !dbg !20
  %21 = select i1 %20, i64 %19, i64 %3, !dbg !21
  %22 = select i1 %15, i64 0, i64 %21, !dbg !22
  %23 = call i32 @nd_bv32_in3(), !dbg !23
  %24 = zext i32 %23 to i64, !dbg !24
  call void @btor2mlir_print_input_num(i64 3, i64 %24, i64 32), !dbg !25
  %25 = call i8 @nd_bv8_in1(), !dbg !26
  %26 = zext i8 %25 to i64, !dbg !27
  call void @btor2mlir_print_input_num(i64 1, i64 %26, i64 1), !dbg !28
  %27 = trunc i8 %25 to i1, !dbg !29
  %28 = select i1 %27, i32 %23, i32 %4, !dbg !30
  %29 = select i1 %15, i32 0, i32 %28, !dbg !31
  %30 = call i32 @nd_bv32_in4(), !dbg !32
  %31 = zext i32 %30 to i64, !dbg !33
  call void @btor2mlir_print_input_num(i64 4, i64 %31, i64 32), !dbg !34
  %32 = call i8 @nd_bv8_in2(), !dbg !35
  %33 = zext i8 %32 to i64, !dbg !36
  call void @btor2mlir_print_input_num(i64 2, i64 %33, i64 1), !dbg !37
  %34 = trunc i8 %32 to i1, !dbg !38
  %35 = select i1 %34, i32 %30, i32 %5, !dbg !39
  %36 = select i1 %15, i32 0, i32 %35, !dbg !40
  %37 = select i1 %15, i1 true, i1 %27, !dbg !41
  %38 = select i1 %15, i1 true, i1 %34, !dbg !42
  %39 = select i1 %27, i32 %23, i32 %8, !dbg !43
  %40 = select i1 %15, i32 0, i32 %39, !dbg !44
  %41 = select i1 %34, i32 %30, i32 %9, !dbg !45
  %42 = select i1 %15, i32 0, i32 %41, !dbg !46
  %43 = icmp eq i64 %2, %3, !dbg !47
  %44 = xor i1 %43, true, !dbg !48
  %45 = and i1 true, %44, !dbg !49
  %46 = xor i1 %45, true, !dbg !50
  br i1 %46, label %47, label %48, !dbg !51

47:                                               ; preds = %1
  br label %1, !dbg !52

48:                                               ; preds = %1
  call void @__VERIFIER_error(), !dbg !53
  unreachable, !dbg !54
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2/bv/2019/goel/mul1.btor2.mlir.opt", directory: "/home/jetafese/hwmc20-mlir")
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
!24 = !DILocation(line: 37, column: 11, scope: !8)
!25 = !DILocation(line: 38, column: 5, scope: !8)
!26 = !DILocation(line: 40, column: 11, scope: !8)
!27 = !DILocation(line: 44, column: 11, scope: !8)
!28 = !DILocation(line: 45, column: 5, scope: !8)
!29 = !DILocation(line: 46, column: 11, scope: !8)
!30 = !DILocation(line: 47, column: 11, scope: !8)
!31 = !DILocation(line: 49, column: 11, scope: !8)
!32 = !DILocation(line: 50, column: 11, scope: !8)
!33 = !DILocation(line: 54, column: 11, scope: !8)
!34 = !DILocation(line: 55, column: 5, scope: !8)
!35 = !DILocation(line: 57, column: 11, scope: !8)
!36 = !DILocation(line: 61, column: 11, scope: !8)
!37 = !DILocation(line: 62, column: 5, scope: !8)
!38 = !DILocation(line: 63, column: 11, scope: !8)
!39 = !DILocation(line: 64, column: 11, scope: !8)
!40 = !DILocation(line: 65, column: 11, scope: !8)
!41 = !DILocation(line: 67, column: 11, scope: !8)
!42 = !DILocation(line: 68, column: 11, scope: !8)
!43 = !DILocation(line: 69, column: 11, scope: !8)
!44 = !DILocation(line: 70, column: 11, scope: !8)
!45 = !DILocation(line: 71, column: 11, scope: !8)
!46 = !DILocation(line: 72, column: 11, scope: !8)
!47 = !DILocation(line: 73, column: 11, scope: !8)
!48 = !DILocation(line: 75, column: 11, scope: !8)
!49 = !DILocation(line: 76, column: 11, scope: !8)
!50 = !DILocation(line: 78, column: 11, scope: !8)
!51 = !DILocation(line: 79, column: 5, scope: !8)
!52 = !DILocation(line: 81, column: 5, scope: !8)
!53 = !DILocation(line: 83, column: 5, scope: !8)
!54 = !DILocation(line: 84, column: 5, scope: !8)

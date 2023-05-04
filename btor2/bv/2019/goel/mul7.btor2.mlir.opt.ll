; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @__VERIFIER_error()

declare i16 @nd_bv16_in5()

declare i8 @nd_bv8_in2()

declare i8 @nd_bv8_in1()

declare i128 @nd_bv128_in3()

declare void @btor2mlir_print_input_num(i64, i64, i64)

declare i128 @nd_bv128_in4()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %59, %0
  %2 = phi i1 [ true, %59 ], [ false, %0 ]
  %3 = phi i256 [ %16, %59 ], [ 0, %0 ]
  %4 = phi i256 [ %32, %59 ], [ 0, %0 ]
  %5 = phi i128 [ %37, %59 ], [ 0, %0 ]
  %6 = phi i128 [ %42, %59 ], [ 0, %0 ]
  %7 = phi i10 [ %46, %59 ], [ 0, %0 ]
  %8 = phi i1 [ %47, %59 ], [ true, %0 ]
  %9 = phi i1 [ %48, %59 ], [ true, %0 ]
  %10 = phi i128 [ %50, %59 ], [ 0, %0 ]
  %11 = phi i128 [ %52, %59 ], [ 0, %0 ]
  %12 = zext i128 %6 to i256, !dbg !9
  %13 = zext i128 %5 to i256, !dbg !10
  %14 = mul i256 %13, %12, !dbg !11
  %15 = xor i1 %2, true, !dbg !12
  %16 = select i1 %15, i256 0, i256 %14, !dbg !13
  %17 = zext i128 %11 to i256, !dbg !14
  %18 = zext i128 %10 to i256, !dbg !15
  %19 = mul i256 %18, %17, !dbg !16
  %20 = add i256 %19, 1, !dbg !17
  %21 = call i128 @nd_bv128_in4(), !dbg !18
  %22 = icmp eq i128 %21, 12245771, !dbg !19
  %23 = call i128 @nd_bv128_in3(), !dbg !20
  %24 = icmp eq i128 %23, -559038737, !dbg !21
  %25 = zext i10 %7 to i32, !dbg !22
  %26 = icmp ugt i32 %25, 1000, !dbg !23
  %27 = and i1 %26, %24, !dbg !24
  %28 = and i1 %27, %22, !dbg !25
  %29 = select i1 %28, i256 %20, i256 %19, !dbg !26
  %30 = or i1 %8, %9, !dbg !27
  %31 = select i1 %30, i256 %29, i256 %4, !dbg !28
  %32 = select i1 %15, i256 0, i256 %31, !dbg !29
  %33 = call i8 @nd_bv8_in1(), !dbg !30
  %34 = zext i8 %33 to i64, !dbg !31
  call void @btor2mlir_print_input_num(i64 1, i64 %34, i64 1), !dbg !32
  %35 = trunc i8 %33 to i1, !dbg !33
  %36 = select i1 %35, i128 %23, i128 %5, !dbg !34
  %37 = select i1 %15, i128 0, i128 %36, !dbg !35
  %38 = call i8 @nd_bv8_in2(), !dbg !36
  %39 = zext i8 %38 to i64, !dbg !37
  call void @btor2mlir_print_input_num(i64 2, i64 %39, i64 1), !dbg !38
  %40 = trunc i8 %38 to i1, !dbg !39
  %41 = select i1 %40, i128 %21, i128 %6, !dbg !40
  %42 = select i1 %15, i128 0, i128 %41, !dbg !41
  %43 = call i16 @nd_bv16_in5(), !dbg !42
  %44 = zext i16 %43 to i64, !dbg !43
  call void @btor2mlir_print_input_num(i64 5, i64 %44, i64 10), !dbg !44
  %45 = trunc i16 %43 to i10, !dbg !45
  %46 = select i1 %15, i10 %45, i10 %7, !dbg !46
  %47 = select i1 %15, i1 true, i1 %35, !dbg !47
  %48 = select i1 %15, i1 true, i1 %40, !dbg !48
  %49 = select i1 %35, i128 %23, i128 %10, !dbg !49
  %50 = select i1 %15, i128 0, i128 %49, !dbg !50
  %51 = select i1 %40, i128 %21, i128 %11, !dbg !51
  %52 = select i1 %15, i128 0, i128 %51, !dbg !52
  %53 = icmp eq i256 %3, %4, !dbg !53
  %54 = xor i1 %2, true, !dbg !54
  %55 = or i1 %54, %53, !dbg !55
  %56 = xor i1 %55, true, !dbg !56
  %57 = and i1 true, %56, !dbg !57
  %58 = xor i1 %57, true, !dbg !58
  br i1 %58, label %59, label %60, !dbg !59

59:                                               ; preds = %1
  br label %1, !dbg !60

60:                                               ; preds = %1
  call void @__VERIFIER_error(), !dbg !61
  unreachable, !dbg !62
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2/bv/2019/goel/mul7.btor2.mlir.opt", directory: "/home/jetafese/hwmc20-mlir")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 15, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 18, column: 11, scope: !8)
!10 = !DILocation(line: 19, column: 11, scope: !8)
!11 = !DILocation(line: 20, column: 11, scope: !8)
!12 = !DILocation(line: 23, column: 11, scope: !8)
!13 = !DILocation(line: 24, column: 11, scope: !8)
!14 = !DILocation(line: 25, column: 11, scope: !8)
!15 = !DILocation(line: 26, column: 11, scope: !8)
!16 = !DILocation(line: 27, column: 11, scope: !8)
!17 = !DILocation(line: 30, column: 11, scope: !8)
!18 = !DILocation(line: 32, column: 11, scope: !8)
!19 = !DILocation(line: 34, column: 11, scope: !8)
!20 = !DILocation(line: 36, column: 11, scope: !8)
!21 = !DILocation(line: 38, column: 11, scope: !8)
!22 = !DILocation(line: 40, column: 11, scope: !8)
!23 = !DILocation(line: 41, column: 11, scope: !8)
!24 = !DILocation(line: 42, column: 11, scope: !8)
!25 = !DILocation(line: 43, column: 11, scope: !8)
!26 = !DILocation(line: 44, column: 11, scope: !8)
!27 = !DILocation(line: 45, column: 11, scope: !8)
!28 = !DILocation(line: 46, column: 11, scope: !8)
!29 = !DILocation(line: 47, column: 11, scope: !8)
!30 = !DILocation(line: 48, column: 11, scope: !8)
!31 = !DILocation(line: 52, column: 11, scope: !8)
!32 = !DILocation(line: 53, column: 5, scope: !8)
!33 = !DILocation(line: 54, column: 11, scope: !8)
!34 = !DILocation(line: 55, column: 11, scope: !8)
!35 = !DILocation(line: 57, column: 11, scope: !8)
!36 = !DILocation(line: 58, column: 11, scope: !8)
!37 = !DILocation(line: 62, column: 11, scope: !8)
!38 = !DILocation(line: 63, column: 5, scope: !8)
!39 = !DILocation(line: 64, column: 11, scope: !8)
!40 = !DILocation(line: 65, column: 11, scope: !8)
!41 = !DILocation(line: 66, column: 11, scope: !8)
!42 = !DILocation(line: 67, column: 11, scope: !8)
!43 = !DILocation(line: 71, column: 11, scope: !8)
!44 = !DILocation(line: 72, column: 5, scope: !8)
!45 = !DILocation(line: 73, column: 11, scope: !8)
!46 = !DILocation(line: 74, column: 11, scope: !8)
!47 = !DILocation(line: 75, column: 11, scope: !8)
!48 = !DILocation(line: 76, column: 11, scope: !8)
!49 = !DILocation(line: 77, column: 11, scope: !8)
!50 = !DILocation(line: 78, column: 11, scope: !8)
!51 = !DILocation(line: 79, column: 11, scope: !8)
!52 = !DILocation(line: 80, column: 11, scope: !8)
!53 = !DILocation(line: 81, column: 11, scope: !8)
!54 = !DILocation(line: 83, column: 11, scope: !8)
!55 = !DILocation(line: 84, column: 11, scope: !8)
!56 = !DILocation(line: 86, column: 11, scope: !8)
!57 = !DILocation(line: 87, column: 11, scope: !8)
!58 = !DILocation(line: 89, column: 11, scope: !8)
!59 = !DILocation(line: 90, column: 5, scope: !8)
!60 = !DILocation(line: 92, column: 5, scope: !8)
!61 = !DILocation(line: 94, column: 5, scope: !8)
!62 = !DILocation(line: 95, column: 5, scope: !8)

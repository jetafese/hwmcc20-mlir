; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @verifier.error()

declare i10 @nd_bv10()

declare i1 @nd_bv1()

declare i128 @nd_bv128()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %53, %0
  %2 = phi i1 [ true, %53 ], [ false, %0 ]
  %3 = phi i256 [ %16, %53 ], [ 0, %0 ]
  %4 = phi i256 [ %32, %53 ], [ 0, %0 ]
  %5 = phi i128 [ %35, %53 ], [ 0, %0 ]
  %6 = phi i128 [ %38, %53 ], [ 0, %0 ]
  %7 = phi i10 [ %40, %53 ], [ 0, %0 ]
  %8 = phi i1 [ %41, %53 ], [ true, %0 ]
  %9 = phi i1 [ %42, %53 ], [ true, %0 ]
  %10 = phi i128 [ %44, %53 ], [ 0, %0 ]
  %11 = phi i128 [ %46, %53 ], [ 0, %0 ]
  %12 = zext i128 %6 to i256, !dbg !9
  %13 = zext i128 %5 to i256, !dbg !10
  %14 = mul i256 %13, %12, !dbg !11
  %15 = xor i1 %2, true, !dbg !12
  %16 = select i1 %15, i256 0, i256 %14, !dbg !13
  %17 = zext i128 %11 to i256, !dbg !14
  %18 = zext i128 %10 to i256, !dbg !15
  %19 = mul i256 %18, %17, !dbg !16
  %20 = add i256 %19, 1, !dbg !17
  %21 = call i128 @nd_bv128(), !dbg !18
  %22 = icmp eq i128 %21, 12245771, !dbg !19
  %23 = call i128 @nd_bv128(), !dbg !20
  %24 = icmp eq i128 %23, -559038737, !dbg !21
  %25 = zext i10 %7 to i32, !dbg !22
  %26 = icmp ugt i32 %25, 1000, !dbg !23
  %27 = and i1 %26, %24, !dbg !24
  %28 = and i1 %27, %22, !dbg !25
  %29 = select i1 %28, i256 %20, i256 %19, !dbg !26
  %30 = or i1 %8, %9, !dbg !27
  %31 = select i1 %30, i256 %29, i256 %4, !dbg !28
  %32 = select i1 %15, i256 0, i256 %31, !dbg !29
  %33 = call i1 @nd_bv1(), !dbg !30
  %34 = select i1 %33, i128 %23, i128 %5, !dbg !31
  %35 = select i1 %15, i128 0, i128 %34, !dbg !32
  %36 = call i1 @nd_bv1(), !dbg !33
  %37 = select i1 %36, i128 %21, i128 %6, !dbg !34
  %38 = select i1 %15, i128 0, i128 %37, !dbg !35
  %39 = call i10 @nd_bv10(), !dbg !36
  %40 = select i1 %15, i10 %39, i10 %7, !dbg !37
  %41 = select i1 %15, i1 true, i1 %33, !dbg !38
  %42 = select i1 %15, i1 true, i1 %36, !dbg !39
  %43 = select i1 %33, i128 %23, i128 %10, !dbg !40
  %44 = select i1 %15, i128 0, i128 %43, !dbg !41
  %45 = select i1 %36, i128 %21, i128 %11, !dbg !42
  %46 = select i1 %15, i128 0, i128 %45, !dbg !43
  %47 = icmp eq i256 %3, %4, !dbg !44
  %48 = xor i1 %2, true, !dbg !45
  %49 = or i1 %48, %47, !dbg !46
  %50 = xor i1 %49, true, !dbg !47
  %51 = and i1 true, %50, !dbg !48
  %52 = xor i1 %51, true, !dbg !49
  br i1 %52, label %53, label %54, !dbg !50

53:                                               ; preds = %1
  br label %1, !dbg !51

54:                                               ; preds = %1
  call void @verifier.error(), !dbg !52
  unreachable, !dbg !53
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2mlir-1/hwmcc20/btor2/bv/2019/goel/mul7.btor2.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 12, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 15, column: 11, scope: !8)
!10 = !DILocation(line: 16, column: 11, scope: !8)
!11 = !DILocation(line: 17, column: 11, scope: !8)
!12 = !DILocation(line: 20, column: 11, scope: !8)
!13 = !DILocation(line: 21, column: 11, scope: !8)
!14 = !DILocation(line: 22, column: 11, scope: !8)
!15 = !DILocation(line: 23, column: 11, scope: !8)
!16 = !DILocation(line: 24, column: 11, scope: !8)
!17 = !DILocation(line: 27, column: 11, scope: !8)
!18 = !DILocation(line: 29, column: 11, scope: !8)
!19 = !DILocation(line: 30, column: 11, scope: !8)
!20 = !DILocation(line: 32, column: 11, scope: !8)
!21 = !DILocation(line: 33, column: 11, scope: !8)
!22 = !DILocation(line: 35, column: 11, scope: !8)
!23 = !DILocation(line: 36, column: 11, scope: !8)
!24 = !DILocation(line: 37, column: 11, scope: !8)
!25 = !DILocation(line: 38, column: 11, scope: !8)
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
!39 = !DILocation(line: 53, column: 11, scope: !8)
!40 = !DILocation(line: 54, column: 11, scope: !8)
!41 = !DILocation(line: 55, column: 11, scope: !8)
!42 = !DILocation(line: 56, column: 11, scope: !8)
!43 = !DILocation(line: 57, column: 11, scope: !8)
!44 = !DILocation(line: 58, column: 11, scope: !8)
!45 = !DILocation(line: 60, column: 11, scope: !8)
!46 = !DILocation(line: 61, column: 11, scope: !8)
!47 = !DILocation(line: 63, column: 11, scope: !8)
!48 = !DILocation(line: 64, column: 11, scope: !8)
!49 = !DILocation(line: 66, column: 11, scope: !8)
!50 = !DILocation(line: 67, column: 5, scope: !8)
!51 = !DILocation(line: 69, column: 5, scope: !8)
!52 = !DILocation(line: 71, column: 5, scope: !8)
!53 = !DILocation(line: 72, column: 5, scope: !8)

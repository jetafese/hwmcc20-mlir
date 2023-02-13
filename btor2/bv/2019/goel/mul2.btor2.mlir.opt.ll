; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @verifier.error()

declare i64 @nd_bv64()

declare i8 @nd_bv8()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %42, %0
  %2 = phi i128 [ %15, %42 ], [ 0, %0 ]
  %3 = phi i128 [ %21, %42 ], [ 0, %0 ]
  %4 = phi i64 [ %26, %42 ], [ 0, %0 ]
  %5 = phi i64 [ %31, %42 ], [ 0, %0 ]
  %6 = phi i1 [ %32, %42 ], [ true, %0 ]
  %7 = phi i1 [ %33, %42 ], [ true, %0 ]
  %8 = phi i64 [ %35, %42 ], [ 0, %0 ]
  %9 = phi i64 [ %37, %42 ], [ 0, %0 ]
  %10 = zext i64 %5 to i128, !dbg !9
  %11 = zext i64 %4 to i128, !dbg !10
  %12 = mul i128 %11, %10, !dbg !11
  %13 = call i8 @nd_bv8(), !dbg !12
  %14 = trunc i8 %13 to i1, !dbg !13
  %15 = select i1 %14, i128 0, i128 %12, !dbg !14
  %16 = zext i64 %9 to i128, !dbg !15
  %17 = zext i64 %8 to i128, !dbg !16
  %18 = mul i128 %17, %16, !dbg !17
  %19 = or i1 %6, %7, !dbg !18
  %20 = select i1 %19, i128 %18, i128 %3, !dbg !19
  %21 = select i1 %14, i128 0, i128 %20, !dbg !20
  %22 = call i64 @nd_bv64(), !dbg !21
  %23 = call i8 @nd_bv8(), !dbg !22
  %24 = trunc i8 %23 to i1, !dbg !23
  %25 = select i1 %24, i64 %22, i64 %4, !dbg !24
  %26 = select i1 %14, i64 0, i64 %25, !dbg !25
  %27 = call i64 @nd_bv64(), !dbg !26
  %28 = call i8 @nd_bv8(), !dbg !27
  %29 = trunc i8 %28 to i1, !dbg !28
  %30 = select i1 %29, i64 %27, i64 %5, !dbg !29
  %31 = select i1 %14, i64 0, i64 %30, !dbg !30
  %32 = select i1 %14, i1 true, i1 %24, !dbg !31
  %33 = select i1 %14, i1 true, i1 %29, !dbg !32
  %34 = select i1 %24, i64 %22, i64 %8, !dbg !33
  %35 = select i1 %14, i64 0, i64 %34, !dbg !34
  %36 = select i1 %29, i64 %27, i64 %9, !dbg !35
  %37 = select i1 %14, i64 0, i64 %36, !dbg !36
  %38 = icmp eq i128 %2, %3, !dbg !37
  %39 = xor i1 %38, true, !dbg !38
  %40 = and i1 true, %39, !dbg !39
  %41 = xor i1 %40, true, !dbg !40
  br i1 %41, label %42, label %43, !dbg !41

42:                                               ; preds = %1
  br label %1, !dbg !42

43:                                               ; preds = %1
  call void @verifier.error(), !dbg !43
  unreachable, !dbg !44
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "hwmc20-mlir/btor2/bv/2019/goel/mul2.btor2.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 9, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 11, column: 11, scope: !8)
!10 = !DILocation(line: 12, column: 11, scope: !8)
!11 = !DILocation(line: 13, column: 11, scope: !8)
!12 = !DILocation(line: 15, column: 11, scope: !8)
!13 = !DILocation(line: 16, column: 11, scope: !8)
!14 = !DILocation(line: 17, column: 11, scope: !8)
!15 = !DILocation(line: 18, column: 11, scope: !8)
!16 = !DILocation(line: 19, column: 11, scope: !8)
!17 = !DILocation(line: 20, column: 11, scope: !8)
!18 = !DILocation(line: 21, column: 11, scope: !8)
!19 = !DILocation(line: 22, column: 11, scope: !8)
!20 = !DILocation(line: 23, column: 11, scope: !8)
!21 = !DILocation(line: 24, column: 11, scope: !8)
!22 = !DILocation(line: 25, column: 11, scope: !8)
!23 = !DILocation(line: 26, column: 11, scope: !8)
!24 = !DILocation(line: 27, column: 11, scope: !8)
!25 = !DILocation(line: 29, column: 11, scope: !8)
!26 = !DILocation(line: 30, column: 11, scope: !8)
!27 = !DILocation(line: 31, column: 11, scope: !8)
!28 = !DILocation(line: 32, column: 11, scope: !8)
!29 = !DILocation(line: 33, column: 11, scope: !8)
!30 = !DILocation(line: 34, column: 11, scope: !8)
!31 = !DILocation(line: 36, column: 11, scope: !8)
!32 = !DILocation(line: 37, column: 11, scope: !8)
!33 = !DILocation(line: 38, column: 11, scope: !8)
!34 = !DILocation(line: 39, column: 11, scope: !8)
!35 = !DILocation(line: 40, column: 11, scope: !8)
!36 = !DILocation(line: 41, column: 11, scope: !8)
!37 = !DILocation(line: 42, column: 11, scope: !8)
!38 = !DILocation(line: 44, column: 11, scope: !8)
!39 = !DILocation(line: 45, column: 11, scope: !8)
!40 = !DILocation(line: 47, column: 11, scope: !8)
!41 = !DILocation(line: 48, column: 5, scope: !8)
!42 = !DILocation(line: 50, column: 5, scope: !8)
!43 = !DILocation(line: 52, column: 5, scope: !8)
!44 = !DILocation(line: 53, column: 5, scope: !8)

; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @__VERIFIER_error()

declare i16 @nd_bv16()

declare i8 @nd_bv8()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %77, %0
  %2 = phi i1 [ true, %77 ], [ false, %0 ]
  %3 = phi i3 [ %4, %77 ], [ 0, %0 ]
  %4 = phi i3 [ %47, %77 ], [ 0, %0 ]
  %5 = phi i12 [ %68, %77 ], [ 0, %0 ]
  %6 = call i8 @nd_bv8(), !dbg !9
  %7 = trunc i8 %6 to i4, !dbg !10
  %8 = icmp eq i4 %7, 0, !dbg !11
  %9 = select i1 %8, i3 0, i3 %4, !dbg !12
  %10 = add i3 %4, 1, !dbg !13
  %11 = icmp ne i3 %4, -3, !dbg !14
  %12 = icmp eq i4 %7, 5, !dbg !15
  %13 = icmp eq i4 %7, 4, !dbg !16
  %14 = icmp eq i4 %7, 1, !dbg !17
  %15 = call i8 @nd_bv8(), !dbg !18
  %16 = trunc i8 %15 to i1, !dbg !19
  %17 = xor i1 %16, true, !dbg !20
  %18 = call i8 @nd_bv8(), !dbg !21
  %19 = trunc i8 %18 to i1, !dbg !22
  %20 = and i1 %19, %17, !dbg !23
  %21 = xor i1 %20, true, !dbg !24
  %22 = and i1 %21, %14, !dbg !25
  %23 = or i1 %22, %13, !dbg !26
  %24 = or i1 %23, %12, !dbg !27
  %25 = and i1 %24, %11, !dbg !28
  %26 = select i1 %25, i3 %10, i3 %9, !dbg !29
  %27 = sub i3 %4, 1, !dbg !30
  %28 = icmp ne i3 %4, 0, !dbg !31
  %29 = icmp eq i4 %7, -1, !dbg !32
  %30 = icmp eq i4 %7, -8, !dbg !33
  %31 = or i1 %30, %29, !dbg !34
  %32 = bitcast i12 %5 to <12 x i1>, !dbg !35
  %33 = call i1 @llvm.vector.reduce.or.v12i1(<12 x i1> %32), !dbg !36
  %34 = xor i1 %33, true, !dbg !37
  %35 = and i1 %34, %31, !dbg !38
  %36 = icmp eq i4 %7, -1, !dbg !39
  %37 = icmp eq i4 %7, -3, !dbg !40
  %38 = icmp eq i4 %7, -5, !dbg !41
  %39 = icmp eq i4 %7, -6, !dbg !42
  %40 = or i1 %39, %38, !dbg !43
  %41 = or i1 %40, %37, !dbg !44
  %42 = or i1 %41, %36, !dbg !45
  %43 = xor i1 %20, true, !dbg !46
  %44 = and i1 %43, %42, !dbg !47
  %45 = or i1 %44, %35, !dbg !48
  %46 = and i1 %45, %28, !dbg !49
  %47 = select i1 %46, i3 %27, i3 %26, !dbg !50
  %48 = sub i12 %5, 1, !dbg !51
  %49 = call i8 @nd_bv8(), !dbg !52
  %50 = trunc i8 %49 to i1, !dbg !53
  %51 = icmp eq i4 %7, -1, !dbg !54
  %52 = icmp eq i4 %7, -7, !dbg !55
  %53 = icmp eq i4 %7, -8, !dbg !56
  %54 = or i1 %53, %52, !dbg !57
  %55 = or i1 %54, %51, !dbg !58
  %56 = and i1 %33, %55, !dbg !59
  %57 = and i1 %56, %50, !dbg !60
  %58 = select i1 %57, i12 %48, i12 %5, !dbg !61
  %59 = call i16 @nd_bv16(), !dbg !62
  %60 = trunc i16 %59 to i12, !dbg !63
  %61 = xor i1 %50, true, !dbg !64
  %62 = icmp eq i4 %7, 4, !dbg !65
  %63 = xor i1 %20, true, !dbg !66
  %64 = and i1 %63, %62, !dbg !67
  %65 = icmp eq i4 %7, -4, !dbg !68
  %66 = or i1 %65, %64, !dbg !69
  %67 = or i1 %66, %61, !dbg !70
  %68 = select i1 %67, i12 %60, i12 %58, !dbg !71
  %69 = icmp eq i3 %4, -1, !dbg !72
  %70 = icmp ne i3 %3, -2, !dbg !73
  %71 = icmp eq i1 %2, false, !dbg !74
  %72 = or i1 %71, %70, !dbg !75
  %73 = or i1 %72, %69, !dbg !76
  %74 = xor i1 %73, true, !dbg !77
  %75 = and i1 true, %74, !dbg !78
  %76 = xor i1 %75, true, !dbg !79
  br i1 %76, label %77, label %78, !dbg !80

77:                                               ; preds = %1
  br label %1, !dbg !81

78:                                               ; preds = %1
  call void @__VERIFIER_error(), !dbg !82
  unreachable, !dbg !83
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.vector.reduce.or.v12i1(<12 x i1>) #0

attributes #0 = { nofree nosync nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "hwmc20-mlir/btor2/bv/2019/goel/vis_arrays_am2910_p2.btor2.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 9, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 14, column: 11, scope: !8)
!10 = !DILocation(line: 15, column: 11, scope: !8)
!11 = !DILocation(line: 16, column: 11, scope: !8)
!12 = !DILocation(line: 17, column: 11, scope: !8)
!13 = !DILocation(line: 19, column: 11, scope: !8)
!14 = !DILocation(line: 21, column: 11, scope: !8)
!15 = !DILocation(line: 23, column: 11, scope: !8)
!16 = !DILocation(line: 25, column: 11, scope: !8)
!17 = !DILocation(line: 27, column: 11, scope: !8)
!18 = !DILocation(line: 28, column: 11, scope: !8)
!19 = !DILocation(line: 29, column: 11, scope: !8)
!20 = !DILocation(line: 31, column: 11, scope: !8)
!21 = !DILocation(line: 32, column: 11, scope: !8)
!22 = !DILocation(line: 33, column: 11, scope: !8)
!23 = !DILocation(line: 34, column: 11, scope: !8)
!24 = !DILocation(line: 36, column: 11, scope: !8)
!25 = !DILocation(line: 37, column: 11, scope: !8)
!26 = !DILocation(line: 38, column: 11, scope: !8)
!27 = !DILocation(line: 39, column: 11, scope: !8)
!28 = !DILocation(line: 40, column: 11, scope: !8)
!29 = !DILocation(line: 41, column: 11, scope: !8)
!30 = !DILocation(line: 42, column: 11, scope: !8)
!31 = !DILocation(line: 43, column: 11, scope: !8)
!32 = !DILocation(line: 45, column: 11, scope: !8)
!33 = !DILocation(line: 47, column: 11, scope: !8)
!34 = !DILocation(line: 48, column: 11, scope: !8)
!35 = !DILocation(line: 49, column: 11, scope: !8)
!36 = !DILocation(line: 50, column: 11, scope: !8)
!37 = !DILocation(line: 52, column: 11, scope: !8)
!38 = !DILocation(line: 53, column: 11, scope: !8)
!39 = !DILocation(line: 54, column: 11, scope: !8)
!40 = !DILocation(line: 56, column: 11, scope: !8)
!41 = !DILocation(line: 58, column: 11, scope: !8)
!42 = !DILocation(line: 60, column: 11, scope: !8)
!43 = !DILocation(line: 61, column: 11, scope: !8)
!44 = !DILocation(line: 62, column: 11, scope: !8)
!45 = !DILocation(line: 63, column: 11, scope: !8)
!46 = !DILocation(line: 65, column: 11, scope: !8)
!47 = !DILocation(line: 66, column: 11, scope: !8)
!48 = !DILocation(line: 67, column: 11, scope: !8)
!49 = !DILocation(line: 68, column: 11, scope: !8)
!50 = !DILocation(line: 69, column: 11, scope: !8)
!51 = !DILocation(line: 71, column: 11, scope: !8)
!52 = !DILocation(line: 72, column: 11, scope: !8)
!53 = !DILocation(line: 73, column: 11, scope: !8)
!54 = !DILocation(line: 74, column: 11, scope: !8)
!55 = !DILocation(line: 76, column: 11, scope: !8)
!56 = !DILocation(line: 77, column: 11, scope: !8)
!57 = !DILocation(line: 78, column: 11, scope: !8)
!58 = !DILocation(line: 79, column: 11, scope: !8)
!59 = !DILocation(line: 80, column: 11, scope: !8)
!60 = !DILocation(line: 81, column: 11, scope: !8)
!61 = !DILocation(line: 82, column: 11, scope: !8)
!62 = !DILocation(line: 83, column: 11, scope: !8)
!63 = !DILocation(line: 84, column: 11, scope: !8)
!64 = !DILocation(line: 86, column: 11, scope: !8)
!65 = !DILocation(line: 87, column: 11, scope: !8)
!66 = !DILocation(line: 89, column: 11, scope: !8)
!67 = !DILocation(line: 90, column: 11, scope: !8)
!68 = !DILocation(line: 92, column: 11, scope: !8)
!69 = !DILocation(line: 93, column: 11, scope: !8)
!70 = !DILocation(line: 94, column: 11, scope: !8)
!71 = !DILocation(line: 95, column: 11, scope: !8)
!72 = !DILocation(line: 97, column: 11, scope: !8)
!73 = !DILocation(line: 99, column: 11, scope: !8)
!74 = !DILocation(line: 101, column: 11, scope: !8)
!75 = !DILocation(line: 102, column: 11, scope: !8)
!76 = !DILocation(line: 103, column: 11, scope: !8)
!77 = !DILocation(line: 105, column: 12, scope: !8)
!78 = !DILocation(line: 106, column: 12, scope: !8)
!79 = !DILocation(line: 108, column: 12, scope: !8)
!80 = !DILocation(line: 109, column: 5, scope: !8)
!81 = !DILocation(line: 111, column: 5, scope: !8)
!82 = !DILocation(line: 113, column: 5, scope: !8)
!83 = !DILocation(line: 114, column: 5, scope: !8)

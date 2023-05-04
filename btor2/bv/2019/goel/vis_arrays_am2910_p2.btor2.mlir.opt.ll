; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @__VERIFIER_error()

declare i16 @nd_bv16_in3()

declare i8 @nd_bv8_in6()

declare i8 @nd_bv8_in1()

declare i8 @nd_bv8_in0()

declare void @btor2mlir_print_input_num(i64, i64, i64)

declare i8 @nd_bv8_in4()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %82, %0
  %2 = phi i1 [ true, %82 ], [ false, %0 ]
  %3 = phi i3 [ %4, %82 ], [ 0, %0 ]
  %4 = phi i3 [ %50, %82 ], [ 0, %0 ]
  %5 = phi i12 [ %73, %82 ], [ 0, %0 ]
  %6 = call i8 @nd_bv8_in4(), !dbg !9
  %7 = zext i8 %6 to i64, !dbg !10
  call void @btor2mlir_print_input_num(i64 4, i64 %7, i64 4), !dbg !11
  %8 = trunc i8 %6 to i4, !dbg !12
  %9 = icmp eq i4 %8, 0, !dbg !13
  %10 = select i1 %9, i3 0, i3 %4, !dbg !14
  %11 = add i3 %4, 1, !dbg !15
  %12 = icmp ne i3 %4, -3, !dbg !16
  %13 = icmp eq i4 %8, 5, !dbg !17
  %14 = icmp eq i4 %8, 4, !dbg !18
  %15 = icmp eq i4 %8, 1, !dbg !19
  %16 = call i8 @nd_bv8_in0(), !dbg !20
  %17 = zext i8 %16 to i64, !dbg !21
  call void @btor2mlir_print_input_num(i64 0, i64 %17, i64 1), !dbg !22
  %18 = trunc i8 %16 to i1, !dbg !23
  %19 = xor i1 %18, true, !dbg !24
  %20 = call i8 @nd_bv8_in1(), !dbg !25
  %21 = zext i8 %20 to i64, !dbg !26
  call void @btor2mlir_print_input_num(i64 1, i64 %21, i64 1), !dbg !27
  %22 = trunc i8 %20 to i1, !dbg !28
  %23 = and i1 %22, %19, !dbg !29
  %24 = xor i1 %23, true, !dbg !30
  %25 = and i1 %24, %15, !dbg !31
  %26 = or i1 %25, %14, !dbg !32
  %27 = or i1 %26, %13, !dbg !33
  %28 = and i1 %27, %12, !dbg !34
  %29 = select i1 %28, i3 %11, i3 %10, !dbg !35
  %30 = sub i3 %4, 1, !dbg !36
  %31 = icmp ne i3 %4, 0, !dbg !37
  %32 = icmp eq i4 %8, -1, !dbg !38
  %33 = icmp eq i4 %8, -8, !dbg !39
  %34 = or i1 %33, %32, !dbg !40
  %35 = bitcast i12 %5 to <12 x i1>, !dbg !41
  %36 = call i1 @llvm.vector.reduce.or.v12i1(<12 x i1> %35), !dbg !42
  %37 = xor i1 %36, true, !dbg !43
  %38 = and i1 %37, %34, !dbg !44
  %39 = icmp eq i4 %8, -1, !dbg !45
  %40 = icmp eq i4 %8, -3, !dbg !46
  %41 = icmp eq i4 %8, -5, !dbg !47
  %42 = icmp eq i4 %8, -6, !dbg !48
  %43 = or i1 %42, %41, !dbg !49
  %44 = or i1 %43, %40, !dbg !50
  %45 = or i1 %44, %39, !dbg !51
  %46 = xor i1 %23, true, !dbg !52
  %47 = and i1 %46, %45, !dbg !53
  %48 = or i1 %47, %38, !dbg !54
  %49 = and i1 %48, %31, !dbg !55
  %50 = select i1 %49, i3 %30, i3 %29, !dbg !56
  %51 = sub i12 %5, 1, !dbg !57
  %52 = call i8 @nd_bv8_in6(), !dbg !58
  %53 = zext i8 %52 to i64, !dbg !59
  call void @btor2mlir_print_input_num(i64 6, i64 %53, i64 1), !dbg !60
  %54 = trunc i8 %52 to i1, !dbg !61
  %55 = icmp eq i4 %8, -1, !dbg !62
  %56 = icmp eq i4 %8, -7, !dbg !63
  %57 = icmp eq i4 %8, -8, !dbg !64
  %58 = or i1 %57, %56, !dbg !65
  %59 = or i1 %58, %55, !dbg !66
  %60 = and i1 %36, %59, !dbg !67
  %61 = and i1 %60, %54, !dbg !68
  %62 = select i1 %61, i12 %51, i12 %5, !dbg !69
  %63 = call i16 @nd_bv16_in3(), !dbg !70
  %64 = zext i16 %63 to i64, !dbg !71
  call void @btor2mlir_print_input_num(i64 3, i64 %64, i64 12), !dbg !72
  %65 = trunc i16 %63 to i12, !dbg !73
  %66 = xor i1 %54, true, !dbg !74
  %67 = icmp eq i4 %8, 4, !dbg !75
  %68 = xor i1 %23, true, !dbg !76
  %69 = and i1 %68, %67, !dbg !77
  %70 = icmp eq i4 %8, -4, !dbg !78
  %71 = or i1 %70, %69, !dbg !79
  %72 = or i1 %71, %66, !dbg !80
  %73 = select i1 %72, i12 %65, i12 %62, !dbg !81
  %74 = icmp eq i3 %4, -1, !dbg !82
  %75 = icmp ne i3 %3, -2, !dbg !83
  %76 = icmp eq i1 %2, false, !dbg !84
  %77 = or i1 %76, %75, !dbg !85
  %78 = or i1 %77, %74, !dbg !86
  %79 = xor i1 %78, true, !dbg !87
  %80 = and i1 true, %79, !dbg !88
  %81 = xor i1 %80, true, !dbg !89
  br i1 %81, label %82, label %83, !dbg !90

82:                                               ; preds = %1
  br label %1, !dbg !91

83:                                               ; preds = %1
  call void @__VERIFIER_error(), !dbg !92
  unreachable, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.vector.reduce.or.v12i1(<12 x i1>) #0

attributes #0 = { nofree nosync nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2/bv/2019/goel/vis_arrays_am2910_p2.btor2.mlir.opt", directory: "/home/jetafese/hwmc20-mlir")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 13, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 18, column: 11, scope: !8)
!10 = !DILocation(line: 22, column: 11, scope: !8)
!11 = !DILocation(line: 23, column: 5, scope: !8)
!12 = !DILocation(line: 24, column: 11, scope: !8)
!13 = !DILocation(line: 25, column: 11, scope: !8)
!14 = !DILocation(line: 26, column: 11, scope: !8)
!15 = !DILocation(line: 28, column: 11, scope: !8)
!16 = !DILocation(line: 30, column: 11, scope: !8)
!17 = !DILocation(line: 32, column: 11, scope: !8)
!18 = !DILocation(line: 34, column: 11, scope: !8)
!19 = !DILocation(line: 36, column: 11, scope: !8)
!20 = !DILocation(line: 37, column: 11, scope: !8)
!21 = !DILocation(line: 41, column: 11, scope: !8)
!22 = !DILocation(line: 42, column: 5, scope: !8)
!23 = !DILocation(line: 43, column: 11, scope: !8)
!24 = !DILocation(line: 45, column: 11, scope: !8)
!25 = !DILocation(line: 46, column: 11, scope: !8)
!26 = !DILocation(line: 50, column: 11, scope: !8)
!27 = !DILocation(line: 51, column: 5, scope: !8)
!28 = !DILocation(line: 52, column: 11, scope: !8)
!29 = !DILocation(line: 53, column: 11, scope: !8)
!30 = !DILocation(line: 55, column: 11, scope: !8)
!31 = !DILocation(line: 56, column: 11, scope: !8)
!32 = !DILocation(line: 57, column: 11, scope: !8)
!33 = !DILocation(line: 58, column: 11, scope: !8)
!34 = !DILocation(line: 59, column: 11, scope: !8)
!35 = !DILocation(line: 60, column: 11, scope: !8)
!36 = !DILocation(line: 61, column: 11, scope: !8)
!37 = !DILocation(line: 62, column: 11, scope: !8)
!38 = !DILocation(line: 64, column: 11, scope: !8)
!39 = !DILocation(line: 66, column: 11, scope: !8)
!40 = !DILocation(line: 67, column: 11, scope: !8)
!41 = !DILocation(line: 68, column: 11, scope: !8)
!42 = !DILocation(line: 69, column: 11, scope: !8)
!43 = !DILocation(line: 71, column: 11, scope: !8)
!44 = !DILocation(line: 72, column: 11, scope: !8)
!45 = !DILocation(line: 73, column: 11, scope: !8)
!46 = !DILocation(line: 75, column: 11, scope: !8)
!47 = !DILocation(line: 77, column: 11, scope: !8)
!48 = !DILocation(line: 79, column: 11, scope: !8)
!49 = !DILocation(line: 80, column: 11, scope: !8)
!50 = !DILocation(line: 81, column: 11, scope: !8)
!51 = !DILocation(line: 82, column: 11, scope: !8)
!52 = !DILocation(line: 84, column: 11, scope: !8)
!53 = !DILocation(line: 85, column: 11, scope: !8)
!54 = !DILocation(line: 86, column: 11, scope: !8)
!55 = !DILocation(line: 87, column: 11, scope: !8)
!56 = !DILocation(line: 88, column: 11, scope: !8)
!57 = !DILocation(line: 90, column: 11, scope: !8)
!58 = !DILocation(line: 91, column: 11, scope: !8)
!59 = !DILocation(line: 95, column: 11, scope: !8)
!60 = !DILocation(line: 96, column: 5, scope: !8)
!61 = !DILocation(line: 97, column: 11, scope: !8)
!62 = !DILocation(line: 98, column: 11, scope: !8)
!63 = !DILocation(line: 100, column: 11, scope: !8)
!64 = !DILocation(line: 101, column: 11, scope: !8)
!65 = !DILocation(line: 102, column: 11, scope: !8)
!66 = !DILocation(line: 103, column: 11, scope: !8)
!67 = !DILocation(line: 104, column: 11, scope: !8)
!68 = !DILocation(line: 105, column: 11, scope: !8)
!69 = !DILocation(line: 106, column: 11, scope: !8)
!70 = !DILocation(line: 107, column: 11, scope: !8)
!71 = !DILocation(line: 111, column: 11, scope: !8)
!72 = !DILocation(line: 112, column: 5, scope: !8)
!73 = !DILocation(line: 113, column: 12, scope: !8)
!74 = !DILocation(line: 115, column: 12, scope: !8)
!75 = !DILocation(line: 116, column: 12, scope: !8)
!76 = !DILocation(line: 118, column: 12, scope: !8)
!77 = !DILocation(line: 119, column: 12, scope: !8)
!78 = !DILocation(line: 121, column: 12, scope: !8)
!79 = !DILocation(line: 122, column: 12, scope: !8)
!80 = !DILocation(line: 123, column: 12, scope: !8)
!81 = !DILocation(line: 124, column: 12, scope: !8)
!82 = !DILocation(line: 126, column: 12, scope: !8)
!83 = !DILocation(line: 128, column: 12, scope: !8)
!84 = !DILocation(line: 130, column: 12, scope: !8)
!85 = !DILocation(line: 131, column: 12, scope: !8)
!86 = !DILocation(line: 132, column: 12, scope: !8)
!87 = !DILocation(line: 134, column: 12, scope: !8)
!88 = !DILocation(line: 135, column: 12, scope: !8)
!89 = !DILocation(line: 137, column: 12, scope: !8)
!90 = !DILocation(line: 138, column: 5, scope: !8)
!91 = !DILocation(line: 140, column: 5, scope: !8)
!92 = !DILocation(line: 142, column: 5, scope: !8)
!93 = !DILocation(line: 143, column: 5, scope: !8)

; ModuleID = '../benchmarks/fine_grained/exebench/kernel296.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel296.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@METADATA_BASE = dso_local local_unnamed_addr global i64 0, align 8
@LEVEL_BYTES = dso_local local_unnamed_addr global i64 0, align 8
@LEVEL_SIZE = dso_local local_unnamed_addr global i64 0, align 8
@PAGE_MASK = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local i64 @level_bmap(i64 noundef %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  switch i64 %0, label %24 [
    i64 3, label %4
    i64 2, label %6
    i64 1, label %14
  ]

4:                                                ; preds = %3
  %5 = load i64, ptr @METADATA_BASE, align 8, !tbaa !5
  br label %24

6:                                                ; preds = %3
  %7 = load i64, ptr @METADATA_BASE, align 8, !tbaa !5
  %8 = load i64, ptr @LEVEL_BYTES, align 8, !tbaa !5
  %9 = add i64 %8, %7
  %10 = lshr i64 %1, 36
  %11 = and i64 %10, 4095
  %12 = mul i64 %8, %11
  %13 = add i64 %9, %12
  br label %24

14:                                               ; preds = %3
  %15 = load i64, ptr @METADATA_BASE, align 8, !tbaa !5
  %16 = load i64, ptr @LEVEL_BYTES, align 8, !tbaa !5
  %17 = load i64, ptr @LEVEL_SIZE, align 8, !tbaa !5
  %18 = lshr i64 %1, 24
  %19 = and i64 %18, 16777215
  %20 = add i64 %17, %19
  %21 = mul i64 %20, %16
  %22 = add i64 %16, %15
  %23 = add i64 %22, %21
  br label %24

24:                                               ; preds = %3, %14, %6, %4
  %25 = phi i64 [ %23, %14 ], [ %13, %6 ], [ %5, %4 ], [ -1, %3 ]
  %26 = icmp eq ptr %2, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = mul i64 %0, 12
  %29 = lshr i64 %1, %28
  %30 = load i64, ptr @PAGE_MASK, align 8, !tbaa !5
  %31 = and i64 %30, %29
  store i64 %31, ptr %2, align 8, !tbaa !5
  br label %32

32:                                               ; preds = %27, %24
  ret i64 %25
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}

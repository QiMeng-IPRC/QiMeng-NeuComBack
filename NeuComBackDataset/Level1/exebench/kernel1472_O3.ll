; ModuleID = '../benchmarks/fine_grained/exebench/kernel1472.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1472.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @foo(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 1
  br i1 %2, label %3, label %17

3:                                                ; preds = %1
  %4 = shl nuw i32 %0, 1
  %5 = add nsw i32 %0, -2
  %6 = zext i32 %5 to i33
  %7 = add nsw i32 %0, -3
  %8 = zext i32 %7 to i33
  %9 = mul i33 %6, %8
  %10 = lshr i33 %9, 1
  %11 = trunc i33 %10 to i32
  %12 = add i32 %4, %11
  switch i32 %12, label %17 [
    i32 4, label %19
    i32 5, label %13
    i32 6, label %14
    i32 7, label %15
    i32 8, label %16
  ]

13:                                               ; preds = %3
  br label %19

14:                                               ; preds = %3
  br label %19

15:                                               ; preds = %3
  br label %19

16:                                               ; preds = %3
  br label %19

17:                                               ; preds = %1, %3
  %18 = phi i32 [ %0, %3 ], [ 1, %1 ]
  br label %19

19:                                               ; preds = %3, %17, %16, %15, %14, %13
  %20 = phi i32 [ %18, %17 ], [ %0, %16 ], [ %0, %15 ], [ %0, %14 ], [ %0, %13 ], [ %0, %3 ]
  %21 = phi i32 [ 0, %17 ], [ 4, %16 ], [ 5, %15 ], [ 0, %14 ], [ 1, %13 ], [ 2, %3 ]
  %22 = mul nsw i32 %21, %20
  %23 = load i32, ptr @i, align 4, !tbaa !5
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr @i, align 4, !tbaa !5
  ret i32 %22
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}

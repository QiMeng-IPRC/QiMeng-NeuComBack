; ModuleID = '../benchmarks/fine_grained/exebench/kernel469.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel469.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seed = dso_local local_unnamed_addr global i64 0, align 8
@rtab = dso_local local_unnamed_addr global ptr null, align 8
@last = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @srandom0(i64 noundef %0) local_unnamed_addr #0 {
  %2 = sdiv i64 %0, 127773
  %3 = mul nsw i64 %2, -127773
  %4 = add i64 %3, %0
  %5 = mul nsw i64 %4, 16807
  %6 = mul nsw i64 %2, -2836
  %7 = add i64 %5, %6
  %8 = load ptr, ptr @rtab, align 8
  br label %9

9:                                                ; preds = %1, %25
  %10 = phi i64 [ %7, %1 ], [ %26, %25 ]
  %11 = phi i64 [ 39, %1 ], [ %27, %25 ]
  %12 = sdiv i64 %10, 127773
  %13 = mul nsw i64 %12, -127773
  %14 = add i64 %13, %10
  %15 = mul nsw i64 %14, 16807
  %16 = mul nsw i64 %12, -2836
  %17 = add i64 %15, %16
  %18 = icmp slt i64 %17, 0
  %19 = add nsw i64 %17, 2147483647
  %20 = select i1 %18, i64 %19, i64 %17
  store i64 %20, ptr @seed, align 8, !tbaa !5
  %21 = icmp ult i64 %11, 32
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = getelementptr inbounds i64, ptr %8, i64 %11
  store i64 %20, ptr %23, align 8, !tbaa !5
  %24 = load i64, ptr @seed, align 8, !tbaa !5
  br label %25

25:                                               ; preds = %9, %22
  %26 = phi i64 [ %20, %9 ], [ %24, %22 ]
  %27 = add nsw i64 %11, -1
  %28 = icmp eq i64 %11, 0
  br i1 %28, label %29, label %9, !llvm.loop !9

29:                                               ; preds = %25
  store i64 %26, ptr @last, align 8, !tbaa !5
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}

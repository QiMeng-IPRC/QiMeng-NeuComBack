; ModuleID = '../benchmarks/fine_grained/exebench/kernel314.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel314.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local i64 @fmt_ulonglong(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 9
  br i1 %3, label %4, label %10

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %7, %4 ], [ %1, %2 ]
  %6 = phi i64 [ %8, %4 ], [ 1, %2 ]
  %7 = udiv i32 %5, 10
  %8 = add i64 %6, 1
  %9 = icmp ugt i32 %5, 99
  br i1 %9, label %4, label %10, !llvm.loop !5

10:                                               ; preds = %4, %2
  %11 = phi i64 [ 1, %2 ], [ %8, %4 ]
  %12 = icmp eq ptr %0, null
  %13 = icmp eq i64 %11, 0
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %47, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr %0, i64 %11
  %17 = and i64 %11, 1
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = srem i32 %1, 10
  %21 = trunc i32 %20 to i8
  %22 = add nsw i8 %21, 48
  %23 = getelementptr inbounds i8, ptr %16, i64 -1
  store i8 %22, ptr %23, align 1, !tbaa !7
  %24 = sdiv i32 %1, 10
  %25 = add i64 %11, -1
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i64 [ %11, %15 ], [ %25, %19 ]
  %28 = phi i32 [ %1, %15 ], [ %24, %19 ]
  %29 = phi ptr [ %16, %15 ], [ %23, %19 ]
  %30 = icmp eq i64 %11, 1
  br i1 %30, label %47, label %31

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %45, %31 ], [ %27, %26 ]
  %33 = phi i32 [ %44, %31 ], [ %28, %26 ]
  %34 = phi ptr [ %43, %31 ], [ %29, %26 ]
  %35 = srem i32 %33, 10
  %36 = trunc i32 %35 to i8
  %37 = add nsw i8 %36, 48
  %38 = getelementptr inbounds i8, ptr %34, i64 -1
  store i8 %37, ptr %38, align 1, !tbaa !7
  %39 = sdiv i32 %33, 10
  %40 = srem i32 %39, 10
  %41 = trunc i32 %40 to i8
  %42 = add nsw i8 %41, 48
  %43 = getelementptr inbounds i8, ptr %34, i64 -2
  store i8 %42, ptr %43, align 1, !tbaa !7
  %44 = sdiv i32 %33, 100
  %45 = add i64 %32, -2
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %31, !llvm.loop !10

47:                                               ; preds = %26, %31, %10
  ret i64 %11
}

attributes #0 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !6}

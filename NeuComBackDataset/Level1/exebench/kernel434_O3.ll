; ModuleID = '../benchmarks/fine_grained/exebench/kernel434.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel434.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @getnum(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %46, label %6

6:                                                ; preds = %4, %11
  %7 = phi ptr [ %12, %11 ], [ %0, %4 ]
  %8 = phi i64 [ %13, %11 ], [ %1, %4 ]
  %9 = load i8, ptr %7, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 32
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = add i64 %8, -1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %46, label %6, !llvm.loop !8

15:                                               ; preds = %6
  %16 = zext i32 %2 to i64
  br label %17

17:                                               ; preds = %15, %27
  %18 = phi i64 [ 0, %15 ], [ %32, %27 ]
  %19 = phi ptr [ %7, %15 ], [ %29, %27 ]
  %20 = phi i64 [ %8, %15 ], [ %33, %27 ]
  %21 = load i8, ptr %19, align 1, !tbaa !5
  %22 = icmp sgt i8 %21, 47
  %23 = sext i8 %21 to i32
  %24 = add nsw i32 %23, -48
  %25 = icmp slt i32 %24, %2
  %26 = select i1 %22, i1 %25, i1 false
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = mul i64 %18, %16
  %29 = getelementptr inbounds i8, ptr %19, i64 1
  %30 = zext i8 %21 to i64
  %31 = add i64 %28, -48
  %32 = add i64 %31, %30
  %33 = add i64 %20, -1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %46, label %17, !llvm.loop !10

35:                                               ; preds = %17, %40
  %36 = phi ptr [ %41, %40 ], [ %19, %17 ]
  %37 = phi i64 [ %42, %40 ], [ %20, %17 ]
  %38 = load i8, ptr %36, align 1, !tbaa !5
  %39 = icmp eq i8 %38, 32
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %36, i64 1
  %42 = add i64 %37, -1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %46, label %35, !llvm.loop !11

44:                                               ; preds = %35
  %45 = trunc i64 %37 to i32
  store i32 %45, ptr %3, align 4, !tbaa !12
  br label %46

46:                                               ; preds = %11, %27, %40, %4, %44
  %47 = phi i64 [ %18, %44 ], [ 0, %4 ], [ %18, %40 ], [ %32, %27 ], [ 0, %11 ]
  ret i64 %47
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}

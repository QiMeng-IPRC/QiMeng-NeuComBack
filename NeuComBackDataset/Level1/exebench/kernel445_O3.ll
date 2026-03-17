; ModuleID = '../benchmarks/fine_grained/exebench/kernel445.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel445.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @ExtractHex(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %1, %2 ], [ %7, %3 ]
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 32
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  br i1 %6, label %3, label %8, !llvm.loop !8

8:                                                ; preds = %3, %21
  %9 = phi i8 [ %27, %21 ], [ %5, %3 ]
  %10 = phi i32 [ %25, %21 ], [ 0, %3 ]
  %11 = phi ptr [ %26, %21 ], [ %4, %3 ]
  %12 = sext i8 %9 to i32
  %13 = add i8 %9, -48
  %14 = icmp ult i8 %13, 10
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = add i8 %9, -65
  %17 = icmp ult i8 %16, 6
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = add i8 %9, -97
  %20 = icmp ult i8 %19, 6
  br i1 %20, label %21, label %28

21:                                               ; preds = %18, %15, %8
  %22 = phi i32 [ -48, %8 ], [ -55, %15 ], [ -87, %18 ]
  %23 = add nsw i32 %22, %12
  %24 = shl i32 %10, 4
  %25 = add nuw nsw i32 %23, %24
  %26 = getelementptr inbounds i8, ptr %11, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !5
  br label %8

28:                                               ; preds = %18
  store i32 %10, ptr %0, align 4, !tbaa !10
  ret ptr %11
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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}

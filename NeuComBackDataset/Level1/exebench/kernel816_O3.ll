; ModuleID = '../benchmarks/fine_grained/exebench/kernel816.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel816.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@num_parts = dso_local local_unnamed_addr global i32 0, align 4
@p_info = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @inc_logical(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @num_parts, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  %5 = load ptr, ptr @p_info, align 8, !tbaa !9
  %6 = sext i32 %0 to i64
  br label %7

7:                                                ; preds = %4, %20
  %8 = phi i32 [ %2, %4 ], [ %21, %20 ]
  %9 = phi i64 [ %6, %4 ], [ %22, %20 ]
  %10 = getelementptr inbounds %struct.TYPE_2__, ptr %5, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !11
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.TYPE_2__, ptr %5, i64 %9, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !14
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = add nuw nsw i32 %15, 1
  store i32 %18, ptr %14, align 8, !tbaa !14
  %19 = load i32, ptr @num_parts, align 4, !tbaa !5
  br label %20

20:                                               ; preds = %7, %13, %17
  %21 = phi i32 [ %8, %7 ], [ %8, %13 ], [ %19, %17 ]
  %22 = add nsw i64 %9, 1
  %23 = sext i32 %21 to i64
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %7, label %25, !llvm.loop !15

25:                                               ; preds = %20, %1
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"TYPE_2__", !13, i64 0, !6, i64 8}
!13 = !{!"long", !7, i64 0}
!14 = !{!12, !6, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}

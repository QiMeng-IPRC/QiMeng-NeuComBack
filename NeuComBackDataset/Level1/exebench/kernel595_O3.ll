; ModuleID = '../benchmarks/fine_grained/exebench/kernel595.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel595.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@qe_num_of_snum = dso_local local_unnamed_addr global i32 0, align 4
@snums = dso_local local_unnamed_addr global ptr null, align 8
@QE_SNUM_STATE_FREE = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @qe_put_snum(i64 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @qe_num_of_snum, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  %5 = load ptr, ptr @snums, align 8, !tbaa !9
  %6 = zext i32 %2 to i64
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %6
  br i1 %9, label %18, label %10, !llvm.loop !11

10:                                               ; preds = %4, %7
  %11 = phi i64 [ 0, %4 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.TYPE_2__, ptr %5, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !13
  %14 = icmp eq i64 %13, %0
  br i1 %14, label %15, label %7

15:                                               ; preds = %10
  %16 = load i32, ptr @QE_SNUM_STATE_FREE, align 4, !tbaa !5
  %17 = getelementptr inbounds %struct.TYPE_2__, ptr %5, i64 %11, i32 1
  store i32 %16, ptr %17, align 8, !tbaa !16
  br label %18

18:                                               ; preds = %7, %1, %15
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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !15, i64 0}
!14 = !{!"TYPE_2__", !15, i64 0, !6, i64 8}
!15 = !{!"long", !7, i64 0}
!16 = !{!14, !6, i64 8}

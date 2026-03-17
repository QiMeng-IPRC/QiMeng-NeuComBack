; ModuleID = '../benchmarks/fine_grained/exebench/kernel1321.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1321.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { i32 }

@rCnt = dso_local local_unnamed_addr global i32 0, align 4
@bArray = dso_local local_unnamed_addr global ptr null, align 8
@SUCCESS = dso_local local_unnamed_addr global i32 0, align 4
@REC_NOT_FOUND_ERR = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @searchRec(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @rCnt, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = load ptr, ptr @bArray, align 8, !tbaa !9
  %7 = zext i32 %3 to i64
  br label %11

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %7
  br i1 %10, label %17, label %11, !llvm.loop !11

11:                                               ; preds = %5, %8
  %12 = phi i64 [ 0, %5 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.record, ptr %6, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = icmp eq i32 %14, %0
  br i1 %15, label %16, label %8

16:                                               ; preds = %11
  store i32 %0, ptr %1, align 4, !tbaa !5
  br label %17

17:                                               ; preds = %8, %2, %16
  %18 = phi ptr [ @SUCCESS, %16 ], [ @REC_NOT_FOUND_ERR, %2 ], [ @REC_NOT_FOUND_ERR, %8 ]
  %19 = load i32, ptr %18, align 4, !tbaa !5
  ret i32 %19
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel1520.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1520.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { ptr, i64 }

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_lines(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i64 0, ptr %2, align 8, !tbaa !5
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi i64 [ 0, %1 ], [ %11, %10 ]
  %6 = phi ptr [ %3, %1 ], [ %12, %10 ]
  %7 = load i8, ptr %6, align 1, !tbaa !12
  switch i8 %7, label %10 [
    i8 0, label %13
    i8 10, label %8
  ]

8:                                                ; preds = %4
  %9 = add nsw i64 %5, 1
  store i64 %9, ptr %2, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i64 [ %5, %4 ], [ %9, %8 ]
  %12 = getelementptr inbounds i8, ptr %6, i64 1
  br label %4, !llvm.loop !13

13:                                               ; preds = %4
  %14 = add nsw i64 %5, 1
  store i64 %14, ptr %2, align 8, !tbaa !5
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !10, i64 8}
!6 = !{!"TYPE_3__", !7, i64 0, !10, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!8, !8, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}

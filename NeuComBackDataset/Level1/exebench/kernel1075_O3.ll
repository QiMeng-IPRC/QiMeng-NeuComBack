; ModuleID = '../benchmarks/fine_grained/exebench/kernel1075.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1075.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hyplen = dso_local local_unnamed_addr global i32 0, align 4
@hypchar = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @Wordlen(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  store i32 0, ptr @hyplen, align 4, !tbaa !5
  %2 = load i32, ptr @hypchar, align 4
  br label %3

3:                                                ; preds = %16, %1
  %4 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %5 = phi ptr [ %0, %1 ], [ %19, %16 ]
  %6 = phi i32 [ 0, %1 ], [ %18, %16 ]
  %7 = load i32, ptr %5, align 4, !tbaa !5
  switch i32 %7, label %8 [
    i32 0, label %20
    i32 32, label %20
    i32 9, label %20
  ]

8:                                                ; preds = %3
  %9 = icmp eq i32 %7, %2
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = add nsw i32 %6, 1
  store i32 %13, ptr @hyplen, align 4, !tbaa !5
  br label %16

14:                                               ; preds = %8
  %15 = add nsw i32 %6, 1
  br label %16

16:                                               ; preds = %10, %12, %14
  %17 = phi i32 [ %13, %12 ], [ %4, %10 ], [ %4, %14 ]
  %18 = phi i32 [ %6, %12 ], [ %6, %10 ], [ %15, %14 ]
  %19 = getelementptr inbounds i32, ptr %5, i64 1
  br label %3, !llvm.loop !9

20:                                               ; preds = %3, %3, %3
  ret i32 %6
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}

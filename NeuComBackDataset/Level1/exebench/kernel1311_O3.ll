; ModuleID = '../benchmarks/fine_grained/exebench/kernel1311.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1311.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolParser = type { ptr, ptr, ptr, i32, i32 }

@PT_EOL = dso_local local_unnamed_addr global i32 0, align 4
@PICOL_OK = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @picolParseEol(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.picolParser, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  store ptr %3, ptr %0, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.picolParser, ptr %0, i64 0, i32 4
  br label %5

5:                                                ; preds = %8, %1
  %6 = phi ptr [ %9, %8 ], [ %3, %1 ]
  %7 = load i8, ptr %6, align 1, !tbaa !12
  switch i8 %7, label %12 [
    i8 32, label %8
    i8 9, label %8
    i8 10, label %8
    i8 13, label %8
    i8 59, label %8
  ]

8:                                                ; preds = %5, %5, %5, %5, %5
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %9, ptr %2, align 8, !tbaa !5
  %10 = load i32, ptr %4, align 4, !tbaa !13
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %4, align 4, !tbaa !13
  br label %5, !llvm.loop !14

12:                                               ; preds = %5
  %13 = getelementptr inbounds i8, ptr %6, i64 -1
  %14 = getelementptr inbounds %struct.picolParser, ptr %0, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !16
  %15 = load i32, ptr @PT_EOL, align 4, !tbaa !17
  %16 = getelementptr inbounds %struct.picolParser, ptr %0, i64 0, i32 3
  store i32 %15, ptr %16, align 8, !tbaa !18
  %17 = load i32, ptr @PICOL_OK, align 4, !tbaa !17
  ret i32 %17
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 8}
!6 = !{!"picolParser", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!6, !10, i64 28}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!6, !7, i64 16}
!17 = !{!10, !10, i64 0}
!18 = !{!6, !10, i64 24}

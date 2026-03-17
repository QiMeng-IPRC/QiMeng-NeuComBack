; ModuleID = '../benchmarks/fine_grained/exebench/kernel98.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel98.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SNORT_FILE_START = dso_local local_unnamed_addr global i64 0, align 8
@SNORT_FILE_FULL = dso_local local_unnamed_addr global i64 0, align 8
@SNORT_FILE_END = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @finalFilePosition(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8, !tbaa !5
  %3 = load i64, ptr @SNORT_FILE_START, align 8, !tbaa !5
  %4 = icmp eq i64 %2, %3
  %5 = load i64, ptr @SNORT_FILE_FULL, align 8, !tbaa !5
  br i1 %4, label %10, label %6

6:                                                ; preds = %1
  %7 = icmp eq i64 %2, %5
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = load i64, ptr @SNORT_FILE_END, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %1, %8
  %11 = phi i64 [ %9, %8 ], [ %5, %1 ]
  store i64 %11, ptr %0, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

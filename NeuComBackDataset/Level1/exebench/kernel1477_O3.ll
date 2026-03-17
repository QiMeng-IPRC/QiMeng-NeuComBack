; ModuleID = '../benchmarks/fine_grained/exebench/kernel1477.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1477.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trace_top = dso_local local_unnamed_addr global i32 0, align 4
@trace_base = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @Zoltan_remove_back_trace() local_unnamed_addr #0 {
  %1 = load i32, ptr @trace_top, align 4, !tbaa !5
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @trace_base, align 4, !tbaa !5
  %5 = icmp eq i32 %1, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store i32 -1, ptr @trace_base, align 4, !tbaa !5
  br label %11

7:                                                ; preds = %3
  %8 = add nsw i32 %1, -1
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, i32 29, i32 %8
  br label %11

11:                                               ; preds = %6, %7
  %12 = phi i32 [ %10, %7 ], [ -1, %6 ]
  store i32 %12, ptr @trace_top, align 4
  br label %13

13:                                               ; preds = %11, %0
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

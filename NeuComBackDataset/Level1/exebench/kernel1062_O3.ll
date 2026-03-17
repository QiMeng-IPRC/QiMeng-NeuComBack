; ModuleID = '../benchmarks/fine_grained/exebench/kernel1062.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1062.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_SUCCESS = dso_local local_unnamed_addr global i32 0, align 4
@gcdi_status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @gcdi2(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %7, %2
  %5 = phi i32 [ %1, %2 ], [ %9, %7 ]
  %6 = load i32, ptr @STATUS_SUCCESS, align 4, !tbaa !5
  store i32 %6, ptr @gcdi_status, align 4, !tbaa !5
  ret i32 %5

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %9, %7 ], [ %1, %2 ]
  %9 = phi i32 [ %10, %7 ], [ %0, %2 ]
  %10 = srem i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %4, label %7
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

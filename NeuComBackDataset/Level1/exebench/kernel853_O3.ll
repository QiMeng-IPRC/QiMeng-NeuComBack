; ModuleID = '../benchmarks/fine_grained/exebench/kernel853.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel853.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pi = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@twopi = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @makeAnglePosNeg(float noundef %0) local_unnamed_addr #0 {
  %2 = load float, ptr @pi, align 4, !tbaa !5
  %3 = fcmp olt float %2, %0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load i64, ptr @twopi, align 8, !tbaa !9
  %6 = sitofp i64 %5 to float
  br label %14

7:                                                ; preds = %14, %1
  %8 = phi float [ %0, %1 ], [ %16, %14 ]
  %9 = fneg float %2
  %10 = fcmp olt float %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i64, ptr @twopi, align 8, !tbaa !9
  %13 = sitofp i64 %12 to float
  br label %18

14:                                               ; preds = %4, %14
  %15 = phi float [ %0, %4 ], [ %16, %14 ]
  %16 = fsub float %15, %6
  %17 = fcmp ogt float %16, %2
  br i1 %17, label %14, label %7, !llvm.loop !11

18:                                               ; preds = %11, %18
  %19 = phi float [ %8, %11 ], [ %20, %18 ]
  %20 = fadd float %19, %13
  %21 = fcmp olt float %20, %9
  br i1 %21, label %18, label %22, !llvm.loop !13

22:                                               ; preds = %18, %7
  %23 = phi float [ %8, %7 ], [ %20, %18 ]
  ret float %23
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}

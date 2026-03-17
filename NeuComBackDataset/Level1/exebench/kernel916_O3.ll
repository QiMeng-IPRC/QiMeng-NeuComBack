; ModuleID = '../benchmarks/fine_grained/exebench/kernel916.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel916.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @h_nint(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load float, ptr %0, align 4, !tbaa !5
  %3 = fcmp ult float %2, 0.000000e+00
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = fadd float %2, 5.000000e-01
  %6 = fptosi float %5 to i32
  br label %11

7:                                                ; preds = %1
  %8 = fsub float 5.000000e-01, %2
  %9 = fptosi float %8 to i32
  %10 = sub nsw i32 0, %9
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i32 [ %6, %4 ], [ %10, %7 ]
  ret i32 %12
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

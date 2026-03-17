; ModuleID = '../benchmarks/fine_grained/exebench/kernel1454.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1454.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interceptionfun(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, double noundef %2, double %3, double %4, double noundef %5) local_unnamed_addr #0 {
  %7 = fcmp ogt double %2, %3
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = load double, ptr %0, align 8, !tbaa !5
  %10 = fmul double %4, %5
  %11 = fdiv double %10, 7.500000e-01
  %12 = fmul double %11, %9
  store double %12, ptr %1, align 8, !tbaa !5
  %13 = load double, ptr %0, align 8, !tbaa !5
  %14 = fsub double %13, %12
  store double %14, ptr %0, align 8, !tbaa !5
  br label %16

15:                                               ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %15, %8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel1470.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1470.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t1 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@t2 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@t3 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@t4 = dso_local local_unnamed_addr global double 0.000000e+00, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @t(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds double, ptr %0, i64 -1
  %4 = load double, ptr %3, align 8, !tbaa !5
  store double %4, ptr @t1, align 8, !tbaa !5
  %5 = load double, ptr %0, align 8, !tbaa !5
  store double %5, ptr @t2, align 8, !tbaa !5
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !5
  store double %7, ptr @t3, align 8, !tbaa !5
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !5
  store double %9, ptr @t4, align 8, !tbaa !5
  %10 = getelementptr inbounds double, ptr %1, i64 -1
  store double %4, ptr %10, align 8, !tbaa !5
  %11 = load double, ptr @t2, align 8, !tbaa !5
  store double %11, ptr %1, align 8, !tbaa !5
  %12 = load double, ptr @t3, align 8, !tbaa !5
  %13 = getelementptr inbounds double, ptr %1, i64 1
  store double %12, ptr %13, align 8, !tbaa !5
  %14 = load double, ptr @t4, align 8, !tbaa !5
  %15 = getelementptr inbounds double, ptr %1, i64 2
  store double %14, ptr %15, align 8, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

; ModuleID = '../benchmarks/fine_grained/exebench/kernel821.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel821.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { double, double, double }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @update_stats(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = load double, ptr %0, align 8, !tbaa !5
  %4 = fadd double %3, 1.000000e+00
  store double %4, ptr %0, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.stats, ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !10
  %7 = fsub double %1, %6
  %8 = fdiv double %7, %4
  %9 = fadd double %6, %8
  store double %9, ptr %5, align 8, !tbaa !10
  %10 = fsub double %1, %9
  %11 = getelementptr inbounds %struct.stats, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = tail call double @llvm.fmuladd.f64(double %7, double %10, double %12)
  store double %13, ptr %11, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"stats", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel313.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel313.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.henon_info = type { double, double }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @henon_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load double, ptr %0, align 8, !tbaa !5
  %5 = load double, ptr %1, align 8, !tbaa !10
  %6 = fmul double %5, %5
  %7 = fneg double %4
  %8 = tail call double @llvm.fmuladd.f64(double %7, double %6, double 1.000000e+00)
  %9 = getelementptr inbounds double, ptr %1, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !10
  %11 = fadd double %10, %8
  store double %11, ptr %2, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.henon_info, ptr %0, i64 0, i32 1
  %13 = load double, ptr %12, align 8, !tbaa !11
  %14 = load double, ptr %1, align 8, !tbaa !10
  %15 = fmul double %13, %14
  %16 = getelementptr inbounds double, ptr %2, i64 1
  store double %15, ptr %16, align 8, !tbaa !10
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
!6 = !{!"henon_info", !7, i64 0, !7, i64 8}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 8}

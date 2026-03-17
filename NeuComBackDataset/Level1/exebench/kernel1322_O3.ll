; ModuleID = '../benchmarks/fine_grained/exebench/kernel1322.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1322.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double, double }
%struct.TYPE_5__ = type { double, double }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @enesim_line_direction_from(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  store double %3, ptr %0, align 8, !tbaa !5
  %5 = fneg double %2
  %6 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  store double %5, ptr %6, align 8, !tbaa !10
  %7 = load double, ptr %1, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !13
  %10 = fneg double %9
  %11 = fmul double %10, %3
  %12 = tail call double @llvm.fmuladd.f64(double %2, double %7, double %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 2
  store double %12, ptr %13, align 8, !tbaa !14
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
!6 = !{!"TYPE_6__", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !7, i64 0}
!12 = !{!"TYPE_5__", !7, i64 0, !7, i64 8}
!13 = !{!12, !7, i64 8}
!14 = !{!6, !7, i64 16}

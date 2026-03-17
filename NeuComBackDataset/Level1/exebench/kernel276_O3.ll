; ModuleID = '../benchmarks/fine_grained/exebench/kernel276.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel276.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @duration_elapsed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load float, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_2__, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !12
  %5 = sitofp i64 %4 to float
  %6 = fpext float %5 to double
  %7 = fdiv double %6, 1.000000e+06
  %8 = fpext float %2 to double
  %9 = fadd double %7, %8
  %10 = fptrunc double %9 to float
  ret float %10
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !8, i64 0}
!6 = !{!"duration", !7, i64 0}
!7 = !{!"TYPE_2__", !8, i64 0, !11, i64 8}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!6, !11, i64 8}

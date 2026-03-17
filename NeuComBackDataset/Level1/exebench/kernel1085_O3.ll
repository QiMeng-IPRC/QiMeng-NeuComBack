; ModuleID = '../benchmarks/fine_grained/exebench/kernel1085.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1085.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, double }

@libgpio_pwm = dso_local local_unnamed_addr global ptr null, align 8
@libgpio_pwm_mem = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @pwmSetDuty(i32 noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = fdiv double %1, 1.000000e+02
  %4 = load ptr, ptr @libgpio_pwm, align 8, !tbaa !5
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.TYPE_2__, ptr %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, ptr %4, i64 %5, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = fmul double %3, %8
  %10 = fptosi double %9 to i32
  %11 = load ptr, ptr @libgpio_pwm_mem, align 8, !tbaa !5
  %12 = load i32, ptr %6, align 8, !tbaa !13
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  store i32 %10, ptr %14, align 4, !tbaa !14
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 8}
!10 = !{!"TYPE_2__", !11, i64 0, !12, i64 8}
!11 = !{!"int", !7, i64 0}
!12 = !{!"double", !7, i64 0}
!13 = !{!10, !11, i64 0}
!14 = !{!11, !11, i64 0}

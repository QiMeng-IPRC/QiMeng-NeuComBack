; ModuleID = '../benchmarks/fine_grained/exebench/kernel770.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel770.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, float, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @JBKFPSCounter_Update(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !5
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !5
  %6 = load double, ptr %0, align 8, !tbaa !12
  %7 = fadd double %6, %1
  store double %7, ptr %0, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !13
  %10 = fcmp ult double %7, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = sitofp i64 %5 to double
  %13 = fdiv double %12, %7
  %14 = fptrunc double %13 to float
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store float %14, ptr %15, align 8, !tbaa !14
  store i64 0, ptr %3, align 8, !tbaa !5
  store double 0.000000e+00, ptr %0, align 8, !tbaa !12
  br label %16

16:                                               ; preds = %11, %2
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
!5 = !{!6, !11, i64 24}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 24}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"float", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !7, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !10, i64 16}

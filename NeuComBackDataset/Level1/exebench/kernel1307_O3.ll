; ModuleID = '../benchmarks/fine_grained/exebench/kernel1307.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1307.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recfilter = type { double, double, i64, double, double, i64 }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local double @recfilter_apply_int(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.recfilter, ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8, !tbaa !5
  %5 = sitofp i32 %1 to double
  %6 = getelementptr inbounds %struct.recfilter, ptr %0, i64 0, i32 5
  %7 = load i64, ptr %6, align 8, !tbaa !11
  %8 = sitofp i64 %7 to double
  %9 = load double, ptr %0, align 8, !tbaa !12
  %10 = fmul double %9, %8
  %11 = tail call double @llvm.fmuladd.f64(double %4, double %5, double %10)
  store double %11, ptr %0, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.recfilter, ptr %0, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !13
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.recfilter, ptr %0, i64 0, i32 3
  %17 = load double, ptr %16, align 8, !tbaa !14
  %18 = fcmp ogt double %11, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store double %11, ptr %16, align 8, !tbaa !14
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.recfilter, ptr %0, i64 0, i32 4
  %22 = load double, ptr %21, align 8, !tbaa !15
  %23 = fcmp olt double %11, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store double %11, ptr %21, align 8, !tbaa !15
  br label %25

25:                                               ; preds = %20, %24, %2
  ret double %11
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
!5 = !{!6, !7, i64 8}
!6 = !{!"recfilter", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !10, i64 40}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !10, i64 40}
!12 = !{!6, !7, i64 0}
!13 = !{!6, !10, i64 16}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 32}

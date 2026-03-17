; ModuleID = '../benchmarks/fine_grained/exebench/kernel1082.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1082.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Lambert_a = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Lambert_f = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Lambert_Std_Parallel_1 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Lambert_Std_Parallel_2 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Lambert_Origin_Lat = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Lambert_Origin_Long = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Lambert_False_Easting = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Lambert_False_Northing = dso_local local_unnamed_addr global double 0.000000e+00, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @Get_Lambert_2_Parameters(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = load double, ptr @Lambert_a, align 8, !tbaa !5
  store double %9, ptr %0, align 8, !tbaa !5
  %10 = load double, ptr @Lambert_f, align 8, !tbaa !5
  store double %10, ptr %1, align 8, !tbaa !5
  %11 = load double, ptr @Lambert_Std_Parallel_1, align 8, !tbaa !5
  store double %11, ptr %4, align 8, !tbaa !5
  %12 = load double, ptr @Lambert_Std_Parallel_2, align 8, !tbaa !5
  store double %12, ptr %5, align 8, !tbaa !5
  %13 = load double, ptr @Lambert_Origin_Lat, align 8, !tbaa !5
  store double %13, ptr %2, align 8, !tbaa !5
  %14 = load double, ptr @Lambert_Origin_Long, align 8, !tbaa !5
  store double %14, ptr %3, align 8, !tbaa !5
  %15 = load double, ptr @Lambert_False_Easting, align 8, !tbaa !5
  store double %15, ptr %6, align 8, !tbaa !5
  %16 = load double, ptr @Lambert_False_Northing, align 8, !tbaa !5
  store double %16, ptr %7, align 8, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

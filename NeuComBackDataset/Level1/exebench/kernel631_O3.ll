; ModuleID = '../benchmarks/fine_grained/exebench/kernel631.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel631.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double, double, double, double, double }

@MyGraph = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @scale3d(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MyGraph, align 8, !tbaa !5
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = fsub double %0, %8
  %10 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !12
  %12 = fmul double %9, %11
  %13 = fptrunc double %12 to float
  store float %13, ptr %3, align 4, !tbaa !13
  %14 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !15
  %16 = fsub double %1, %15
  %17 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 0, i32 3
  %18 = load double, ptr %17, align 8, !tbaa !16
  %19 = fmul double %16, %18
  %20 = fptrunc double %19 to float
  store float %20, ptr %4, align 4, !tbaa !13
  %21 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 0, i32 4
  %22 = load double, ptr %21, align 8, !tbaa !17
  %23 = fsub double %2, %22
  %24 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 0, i32 5
  %25 = load double, ptr %24, align 8, !tbaa !18
  %26 = fmul double %23, %25
  %27 = fptrunc double %26 to float
  store float %27, ptr %5, align 4, !tbaa !13
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"TYPE_2__", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!11 = !{!"double", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!10, !11, i64 16}
!16 = !{!10, !11, i64 24}
!17 = !{!10, !11, i64 32}
!18 = !{!10, !11, i64 40}

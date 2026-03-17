; ModuleID = '../benchmarks/fine_grained/exebench/kernel1312.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1312.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { ptr, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { ptr }

@cl = dso_local local_unnamed_addr global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CL_ClampPitch() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @cl, i64 0, i32 1), align 8, !tbaa !5
  %2 = load double, ptr %1, align 8, !tbaa !13
  %3 = fmul double %2, 0x3F76800000000000
  %4 = fptrunc double %3 to float
  %5 = fcmp ogt float %4, 1.800000e+02
  %6 = fadd float %4, -3.600000e+02
  %7 = select i1 %5, float %6, float %4
  %8 = load ptr, ptr @cl, align 8, !tbaa !15
  %9 = load float, ptr %8, align 4, !tbaa !16
  %10 = fadd float %9, %7
  %11 = fcmp olt float %10, -3.600000e+02
  %12 = fadd float %9, 3.600000e+02
  %13 = fadd float %7, %12
  %14 = select i1 %11, float %13, float %10
  %15 = select i1 %11, float %12, float %9
  %16 = fcmp ogt float %14, 3.600000e+02
  %17 = fadd float %15, -3.600000e+02
  %18 = fadd float %7, %17
  %19 = select i1 %16, float %18, float %14
  %20 = or i1 %11, %16
  %21 = fcmp ogt float %19, 8.900000e+01
  %22 = fsub float 8.900000e+01, %7
  %23 = fadd float %7, %22
  %24 = select i1 %21, float %23, float %19
  %25 = or i1 %20, %21
  %26 = fcmp olt float %24, -8.900000e+01
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %0
  %29 = fsub float -8.900000e+01, %7
  %30 = select i1 %16, float %17, float %15
  %31 = select i1 %21, float %22, float %30
  %32 = select i1 %26, float %29, float %31
  store float %32, ptr %8, align 4, !tbaa !16
  br label %33

33:                                               ; preds = %0, %28
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
!5 = !{!6, !7, i64 8}
!6 = !{!"TYPE_8__", !7, i64 0, !10, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_7__", !11, i64 0}
!11 = !{!"TYPE_6__", !12, i64 0}
!12 = !{!"TYPE_5__", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!6, !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !8, i64 0}

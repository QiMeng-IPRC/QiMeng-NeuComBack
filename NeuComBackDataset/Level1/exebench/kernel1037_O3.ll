; ModuleID = '../benchmarks/fine_grained/exebench/kernel1037.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1037.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@const_float_dither_scale_ = dso_local local_unnamed_addr global float 0.000000e+00, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local float @PaUtil_GenerateFloatTriangularDither(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %3 = mul nsw i32 %2, 196314165
  %4 = add nsw i32 %3, 907633515
  store i32 %4, ptr %0, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !10
  %7 = mul nsw i32 %6, 196314165
  %8 = add nsw i32 %7, 907633515
  store i32 %8, ptr %5, align 4, !tbaa !10
  %9 = ashr i32 %4, 18
  %10 = ashr i32 %8, 18
  %11 = add nsw i32 %10, %9
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = sub nsw i32 %11, %13
  store i32 %11, ptr %12, align 4, !tbaa !11
  %15 = sitofp i32 %14 to float
  %16 = load float, ptr @const_float_dither_scale_, align 4, !tbaa !12
  %17 = fmul float %16, %15
  ret float %17
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !8, i64 0}

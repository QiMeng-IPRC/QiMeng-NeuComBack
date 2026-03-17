; ModuleID = '../benchmarks/fine_grained/exebench/kernel46.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel46.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, float }
%struct.TYPE_6__ = type { i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i32 } @blQuatTransform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_7__, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = getelementptr inbounds %struct.TYPE_7__, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = mul nsw i32 %9, %5
  %11 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !15
  %13 = mul nsw i32 %12, %7
  %14 = sub nsw i32 %10, %13
  %15 = load i32, ptr %1, align 4, !tbaa !16
  %16 = mul nsw i32 %15, %7
  %17 = mul nsw i32 %9, %3
  %18 = sub nsw i32 %16, %17
  %19 = mul nsw i32 %12, %3
  %20 = mul nsw i32 %15, %5
  %21 = sub nsw i32 %19, %20
  %22 = mul nsw i32 %21, %5
  %23 = mul nsw i32 %18, %7
  %24 = sub nsw i32 %22, %23
  %25 = mul nsw i32 %14, %7
  %26 = mul nsw i32 %21, %3
  %27 = sub nsw i32 %25, %26
  %28 = mul nsw i32 %18, %3
  %29 = mul nsw i32 %14, %5
  %30 = sub nsw i32 %28, %29
  %31 = getelementptr inbounds %struct.TYPE_7__, ptr %0, i64 0, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !17
  %33 = fmul float %32, 2.000000e+00
  %34 = sitofp i32 %14 to float
  %35 = fmul float %33, %34
  %36 = fptosi float %35 to i32
  %37 = sitofp i32 %18 to float
  %38 = fmul float %33, %37
  %39 = fptosi float %38 to i32
  %40 = sitofp i32 %21 to float
  %41 = fmul float %33, %40
  %42 = fptosi float %41 to i32
  %43 = sitofp i32 %24 to float
  %44 = fmul float %43, 2.000000e+00
  %45 = fptosi float %44 to i32
  %46 = sitofp i32 %27 to float
  %47 = fmul float %46, 2.000000e+00
  %48 = fptosi float %47 to i32
  %49 = sitofp i32 %30 to float
  %50 = fmul float %49, 2.000000e+00
  %51 = fptosi float %50 to i32
  %52 = add nsw i32 %15, %36
  %53 = add nsw i32 %52, %45
  %54 = add nsw i32 %12, %39
  %55 = add nsw i32 %54, %48
  %56 = add nsw i32 %9, %42
  %57 = add nsw i32 %56, %51
  %58 = zext i32 %55 to i64
  %59 = shl nuw i64 %58, 32
  %60 = zext i32 %53 to i64
  %61 = or i64 %59, %60
  %62 = insertvalue { i64, i32 } poison, i64 %61, 0
  %63 = insertvalue { i64, i32 } %62, i32 %57, 1
  ret { i64, i32 } %63
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_7__", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 12}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"float", !8, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !7, i64 8}
!13 = !{!14, !7, i64 8}
!14 = !{!"TYPE_6__", !7, i64 0, !7, i64 4, !7, i64 8}
!15 = !{!14, !7, i64 4}
!16 = !{!14, !7, i64 0}
!17 = !{!6, !10, i64 12}

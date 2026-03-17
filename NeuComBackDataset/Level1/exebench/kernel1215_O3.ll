; ModuleID = '../benchmarks/fine_grained/exebench/kernel1215.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1215.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @GetGLMatrixTrfm3D(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load float, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !10
  %6 = fmul float %3, %5
  store float %6, ptr %1, align 4, !tbaa !11
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !12
  %9 = load float, ptr %4, align 4, !tbaa !10
  %10 = fmul float %8, %9
  %11 = getelementptr inbounds float, ptr %1, i64 1
  store float %10, ptr %11, align 4, !tbaa !11
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !13
  %14 = load float, ptr %4, align 4, !tbaa !10
  %15 = fmul float %13, %14
  %16 = getelementptr inbounds float, ptr %1, i64 2
  store float %15, ptr %16, align 4, !tbaa !11
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  %18 = load float, ptr %17, align 4, !tbaa !14
  %19 = getelementptr inbounds float, ptr %1, i64 3
  store float %18, ptr %19, align 4, !tbaa !11
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 5
  %21 = load float, ptr %20, align 4, !tbaa !15
  %22 = load float, ptr %4, align 4, !tbaa !10
  %23 = fmul float %21, %22
  %24 = getelementptr inbounds float, ptr %1, i64 4
  store float %23, ptr %24, align 4, !tbaa !11
  %25 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 6
  %26 = load float, ptr %25, align 4, !tbaa !16
  %27 = load float, ptr %4, align 4, !tbaa !10
  %28 = fmul float %26, %27
  %29 = getelementptr inbounds float, ptr %1, i64 5
  store float %28, ptr %29, align 4, !tbaa !11
  %30 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 7
  %31 = load float, ptr %30, align 4, !tbaa !17
  %32 = load float, ptr %4, align 4, !tbaa !10
  %33 = fmul float %31, %32
  %34 = getelementptr inbounds float, ptr %1, i64 6
  store float %33, ptr %34, align 4, !tbaa !11
  %35 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 8
  %36 = load float, ptr %35, align 4, !tbaa !18
  %37 = getelementptr inbounds float, ptr %1, i64 7
  store float %36, ptr %37, align 4, !tbaa !11
  %38 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 9
  %39 = load float, ptr %38, align 4, !tbaa !19
  %40 = load float, ptr %4, align 4, !tbaa !10
  %41 = fmul float %39, %40
  %42 = getelementptr inbounds float, ptr %1, i64 8
  store float %41, ptr %42, align 4, !tbaa !11
  %43 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 10
  %44 = load float, ptr %43, align 4, !tbaa !20
  %45 = load float, ptr %4, align 4, !tbaa !10
  %46 = fmul float %44, %45
  %47 = getelementptr inbounds float, ptr %1, i64 9
  store float %46, ptr %47, align 4, !tbaa !11
  %48 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 11
  %49 = load float, ptr %48, align 4, !tbaa !21
  %50 = load float, ptr %4, align 4, !tbaa !10
  %51 = fmul float %49, %50
  %52 = getelementptr inbounds float, ptr %1, i64 10
  store float %51, ptr %52, align 4, !tbaa !11
  %53 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 12
  %54 = load float, ptr %53, align 4, !tbaa !22
  %55 = getelementptr inbounds float, ptr %1, i64 11
  store float %54, ptr %55, align 4, !tbaa !11
  %56 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 13
  %57 = load float, ptr %56, align 4, !tbaa !23
  %58 = getelementptr inbounds float, ptr %1, i64 12
  store float %57, ptr %58, align 4, !tbaa !11
  %59 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 14
  %60 = load float, ptr %59, align 4, !tbaa !24
  %61 = getelementptr inbounds float, ptr %1, i64 13
  store float %60, ptr %61, align 4, !tbaa !11
  %62 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 15
  %63 = load float, ptr %62, align 4, !tbaa !25
  %64 = getelementptr inbounds float, ptr %1, i64 14
  store float %63, ptr %64, align 4, !tbaa !11
  %65 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 16
  %66 = load float, ptr %65, align 4, !tbaa !26
  %67 = getelementptr inbounds float, ptr %1, i64 15
  store float %66, ptr %67, align 4, !tbaa !11
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!7, !7, i64 0}
!12 = !{!6, !7, i64 8}
!13 = !{!6, !7, i64 12}
!14 = !{!6, !7, i64 16}
!15 = !{!6, !7, i64 20}
!16 = !{!6, !7, i64 24}
!17 = !{!6, !7, i64 28}
!18 = !{!6, !7, i64 32}
!19 = !{!6, !7, i64 36}
!20 = !{!6, !7, i64 40}
!21 = !{!6, !7, i64 44}
!22 = !{!6, !7, i64 48}
!23 = !{!6, !7, i64 52}
!24 = !{!6, !7, i64 56}
!25 = !{!6, !7, i64 60}
!26 = !{!6, !7, i64 64}

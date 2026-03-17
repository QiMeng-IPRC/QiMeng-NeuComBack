; ModuleID = '../benchmarks/fine_grained/exebench/kernel312.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel312.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, i32, float, float, float, i32, float, float, float, float, float, float, i64 }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GenerateRotatedYPos(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !13
  %9 = mul nsw i32 %8, %2
  %10 = sitofp i32 %9 to float
  %11 = fadd float %6, %10
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !14
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  %16 = load float, ptr %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 5
  %18 = load float, ptr %17, align 4, !tbaa !16
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !17
  %21 = mul nsw i32 %20, %2
  %22 = sitofp i32 %21 to float
  %23 = fadd float %18, %22
  %24 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 7
  %25 = load float, ptr %24, align 4, !tbaa !18
  %26 = fsub float %23, %25
  %27 = fmul float %16, %26
  %28 = tail call float @llvm.fmuladd.f32(float %4, float %14, float %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 8
  %30 = load float, ptr %29, align 8, !tbaa !19
  %31 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 9
  %32 = load float, ptr %31, align 4, !tbaa !20
  %33 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 10
  %34 = load float, ptr %33, align 8, !tbaa !21
  %35 = fsub float %32, %34
  %36 = tail call float @llvm.fmuladd.f32(float %30, float %35, float %28)
  %37 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 11
  %38 = load float, ptr %37, align 4, !tbaa !22
  %39 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 12
  %40 = load float, ptr %39, align 8, !tbaa !23
  %41 = sitofp i32 %1 to float
  %42 = tail call float @llvm.fmuladd.f32(float %40, float %41, float %36)
  %43 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 13
  %44 = load i64, ptr %43, align 8, !tbaa !24
  %45 = sitofp i64 %44 to float
  %46 = tail call float @llvm.fmuladd.f32(float %38, float %42, float %45)
  %47 = fptosi float %46 to i32
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !10, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !10, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !11, i64 56}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !7, i64 4}
!13 = !{!6, !10, i64 8}
!14 = !{!6, !7, i64 12}
!15 = !{!6, !7, i64 16}
!16 = !{!6, !7, i64 20}
!17 = !{!6, !10, i64 24}
!18 = !{!6, !7, i64 28}
!19 = !{!6, !7, i64 32}
!20 = !{!6, !7, i64 36}
!21 = !{!6, !7, i64 40}
!22 = !{!6, !7, i64 44}
!23 = !{!6, !7, i64 48}
!24 = !{!6, !11, i64 56}

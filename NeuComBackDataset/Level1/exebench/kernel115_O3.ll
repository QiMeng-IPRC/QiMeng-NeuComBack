; ModuleID = '../benchmarks/fine_grained/exebench/kernel115.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel115.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @quaternionMultiply(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4, !tbaa !5
  %5 = load i32, ptr %2, align 4, !tbaa !5
  %6 = mul nsw i32 %5, %4
  %7 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !10
  %9 = getelementptr inbounds %struct.TYPE_6__, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !10
  %11 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = getelementptr inbounds %struct.TYPE_6__, ptr %2, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !11
  %15 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !12
  %17 = getelementptr inbounds %struct.TYPE_6__, ptr %2, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %19 = mul i32 %10, %8
  %20 = mul i32 %14, %12
  %21 = mul i32 %18, %16
  %22 = add i32 %20, %19
  %23 = add i32 %22, %21
  %24 = sub i32 %6, %23
  %25 = mul nsw i32 %10, %4
  %26 = mul nsw i32 %8, %5
  %27 = add nsw i32 %25, %26
  %28 = mul nsw i32 %18, %12
  %29 = mul nsw i32 %16, %14
  %30 = sub i32 %27, %29
  %31 = add i32 %30, %28
  %32 = mul nsw i32 %14, %4
  %33 = mul nsw i32 %18, %8
  %34 = mul nsw i32 %12, %5
  %35 = mul nsw i32 %16, %10
  %36 = add i32 %32, %34
  %37 = add i32 %36, %35
  %38 = sub i32 %37, %33
  %39 = mul nsw i32 %18, %4
  %40 = mul nsw i32 %14, %8
  %41 = mul nsw i32 %12, %10
  %42 = mul nsw i32 %16, %5
  %43 = sub i32 %40, %41
  %44 = add i32 %43, %42
  %45 = add i32 %44, %39
  store i32 %24, ptr %0, align 4, !tbaa.struct !13
  %46 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %31, ptr %46, align 4, !tbaa.struct !15
  %47 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %38, ptr %47, align 4, !tbaa.struct !16
  %48 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %45, ptr %48, align 4, !tbaa.struct !17
  ret ptr %0
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
!6 = !{!"TYPE_6__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 12}
!13 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14}
!14 = !{!7, !7, i64 0}
!15 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14}
!16 = !{i64 0, i64 4, !14, i64 4, i64 4, !14}
!17 = !{i64 0, i64 4, !14}

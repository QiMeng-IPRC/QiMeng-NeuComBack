; ModuleID = '../benchmarks/fine_grained/exebench/kernel862.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel862.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @LIScaleMat4(ptr nocapture noundef %0, i64 %1, i32 %2) local_unnamed_addr #0 {
  %4 = trunc i64 %1 to i32
  %5 = lshr i64 %1, 32
  %6 = trunc i64 %5 to i32
  %7 = load i32, ptr %0, align 4, !tbaa !5
  %8 = mul nsw i32 %7, %4
  store i32 %8, ptr %0, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !10
  %11 = mul nsw i32 %10, %4
  store i32 %11, ptr %9, align 4, !tbaa !10
  %12 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = mul nsw i32 %13, %4
  store i32 %14, ptr %12, align 4, !tbaa !11
  %15 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !12
  %17 = mul nsw i32 %16, %6
  store i32 %17, ptr %15, align 4, !tbaa !12
  %18 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !13
  %20 = mul nsw i32 %19, %6
  store i32 %20, ptr %18, align 4, !tbaa !13
  %21 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !14
  %23 = mul nsw i32 %22, %6
  store i32 %23, ptr %21, align 4, !tbaa !14
  %24 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !15
  %26 = mul nsw i32 %25, %2
  store i32 %26, ptr %24, align 4, !tbaa !15
  %27 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !16
  %29 = mul nsw i32 %28, %2
  store i32 %29, ptr %27, align 4, !tbaa !16
  %30 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 8
  %31 = load i32, ptr %30, align 4, !tbaa !17
  %32 = mul nsw i32 %31, %2
  store i32 %32, ptr %30, align 4, !tbaa !17
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
!6 = !{!"TYPE_6__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 12}
!13 = !{!6, !7, i64 16}
!14 = !{!6, !7, i64 20}
!15 = !{!6, !7, i64 24}
!16 = !{!6, !7, i64 28}
!17 = !{!6, !7, i64 32}

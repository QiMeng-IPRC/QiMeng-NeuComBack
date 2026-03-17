; ModuleID = '../benchmarks/fine_grained/exebench/kernel1521.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1521.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@geopack1_ = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @geogsm_(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = load i64, ptr %6, align 8, !tbaa !5
  %9 = icmp sgt i64 %8, 0
  %10 = load i32, ptr @geopack1_, align 4, !tbaa !9
  %11 = select i1 %9, ptr %0, ptr %3
  %12 = select i1 %9, ptr %1, ptr %4
  %13 = select i1 %9, ptr %2, ptr %5
  %14 = select i1 %9, ptr %3, ptr %0
  %15 = select i1 %9, ptr %4, ptr %1
  %16 = select i1 %9, ptr %5, ptr %2
  %17 = load i32, ptr %11, align 4, !tbaa !13
  %18 = mul nsw i32 %17, %10
  %19 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 1), align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 3), align 4
  %21 = select i1 %9, i32 %19, i32 %20
  %22 = load i32, ptr %12, align 4, !tbaa !13
  %23 = mul nsw i32 %22, %21
  %24 = add nsw i32 %23, %18
  %25 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 2), align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 6), align 4
  %27 = select i1 %9, i32 %25, i32 %26
  %28 = load i32, ptr %13, align 4, !tbaa !13
  %29 = mul nsw i32 %28, %27
  %30 = add nsw i32 %24, %29
  store i32 %30, ptr %14, align 4, !tbaa !13
  %31 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 3), align 4
  %32 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 1), align 4
  %33 = select i1 %9, i32 %31, i32 %32
  %34 = load i32, ptr %11, align 4, !tbaa !13
  %35 = mul nsw i32 %34, %33
  %36 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 4), align 4, !tbaa !14
  %37 = load i32, ptr %12, align 4, !tbaa !13
  %38 = mul nsw i32 %37, %36
  %39 = add nsw i32 %38, %35
  %40 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 5), align 4
  %41 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 7), align 4
  %42 = select i1 %9, i32 %40, i32 %41
  %43 = load i32, ptr %13, align 4, !tbaa !13
  %44 = mul nsw i32 %43, %42
  %45 = add nsw i32 %39, %44
  store i32 %45, ptr %15, align 4, !tbaa !13
  %46 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 6), align 4
  %47 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 2), align 4
  %48 = select i1 %9, i32 %46, i32 %47
  %49 = load i32, ptr %11, align 4, !tbaa !13
  %50 = mul nsw i32 %49, %48
  %51 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 7), align 4
  %52 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 5), align 4
  %53 = select i1 %9, i32 %51, i32 %52
  %54 = load i32, ptr %12, align 4, !tbaa !13
  %55 = mul nsw i32 %54, %53
  %56 = add nsw i32 %55, %50
  %57 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 8), align 4, !tbaa !15
  %58 = load i32, ptr %13, align 4, !tbaa !13
  %59 = mul nsw i32 %58, %57
  %60 = add nsw i32 %56, %59
  store i32 %60, ptr %16, align 4, !tbaa !13
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 0}
!10 = !{!"TYPE_4__", !11, i64 0}
!11 = !{!"TYPE_3__", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32}
!12 = !{!"int", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!10, !12, i64 16}
!15 = !{!10, !12, i64 32}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel253.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel253.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@geopack1_ = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @gsmgse_(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = load i64, ptr %6, align 8, !tbaa !5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i32, ptr %0, align 4, !tbaa !9
  store i32 %11, ptr %3, align 4, !tbaa !9
  %12 = load i32, ptr %1, align 4, !tbaa !9
  %13 = load i32, ptr @geopack1_, align 4, !tbaa !11
  %14 = mul nsw i32 %13, %12
  %15 = load i32, ptr %2, align 4, !tbaa !9
  %16 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 1), align 4, !tbaa !14
  %17 = mul nsw i32 %16, %15
  %18 = sub nsw i32 %14, %17
  store i32 %18, ptr %4, align 4, !tbaa !9
  %19 = load i32, ptr %1, align 4, !tbaa !9
  %20 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 1), align 4, !tbaa !14
  %21 = mul nsw i32 %20, %19
  %22 = load i32, ptr %2, align 4, !tbaa !9
  %23 = load i32, ptr @geopack1_, align 4, !tbaa !11
  %24 = mul nsw i32 %23, %22
  %25 = add nsw i32 %24, %21
  store i32 %25, ptr %5, align 4, !tbaa !9
  br label %42

26:                                               ; preds = %7
  %27 = load i32, ptr %3, align 4, !tbaa !9
  store i32 %27, ptr %0, align 4, !tbaa !9
  %28 = load i32, ptr %4, align 4, !tbaa !9
  %29 = load i32, ptr @geopack1_, align 4, !tbaa !11
  %30 = mul nsw i32 %29, %28
  %31 = load i32, ptr %5, align 4, !tbaa !9
  %32 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 1), align 4, !tbaa !14
  %33 = mul nsw i32 %32, %31
  %34 = add nsw i32 %33, %30
  store i32 %34, ptr %1, align 4, !tbaa !9
  %35 = load i32, ptr %5, align 4, !tbaa !9
  %36 = load i32, ptr @geopack1_, align 4, !tbaa !11
  %37 = mul nsw i32 %36, %35
  %38 = load i32, ptr %4, align 4, !tbaa !9
  %39 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @geopack1_, i64 0, i32 0, i32 1), align 4, !tbaa !14
  %40 = mul nsw i32 %39, %38
  %41 = sub nsw i32 %37, %40
  store i32 %41, ptr %2, align 4, !tbaa !9
  br label %42

42:                                               ; preds = %26, %10
  ret i32 0
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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"TYPE_4__", !13, i64 0}
!13 = !{!"TYPE_3__", !10, i64 0, !10, i64 4}
!14 = !{!12, !10, i64 4}

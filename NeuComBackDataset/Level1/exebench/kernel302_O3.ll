; ModuleID = '../benchmarks/fine_grained/exebench/kernel302.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel302.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.yas_bma_acceleration }
%struct.yas_bma_acceleration = type { i32, i32, i32, i32, i32, i32 }

@acc_data = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @yas_bma222_data_filter(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @acc_data, align 4, !tbaa !5
  %5 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i64 0, i32 1), align 4, !tbaa !11
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i64 0, i32 2), align 4, !tbaa !12
  %9 = load i32, ptr %0, align 4, !tbaa !13
  %10 = sub nsw i32 %8, %9
  %11 = tail call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = icmp sgt i32 %11, %5
  br i1 %12, label %27, label %13

13:                                               ; preds = %7
  %14 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i64 0, i32 2, i32 1), align 4, !tbaa !14
  %15 = getelementptr inbounds i32, ptr %0, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %17 = sub nsw i32 %14, %16
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 true)
  %19 = icmp sgt i32 %18, %5
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i64 0, i32 2, i32 2), align 4, !tbaa !15
  %22 = getelementptr inbounds i32, ptr %0, i64 2
  %23 = load i32, ptr %22, align 4, !tbaa !13
  %24 = sub nsw i32 %21, %23
  %25 = tail call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = icmp sgt i32 %25, %5
  br i1 %26, label %27, label %42

27:                                               ; preds = %20, %13, %7
  store i32 %9, ptr %2, align 4, !tbaa !16
  %28 = getelementptr inbounds i32, ptr %0, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !13
  %30 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %2, i64 0, i32 1
  store i32 %29, ptr %30, align 4, !tbaa !17
  %31 = getelementptr inbounds i32, ptr %0, i64 2
  %32 = load i32, ptr %31, align 4, !tbaa !13
  %33 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %2, i64 0, i32 2
  store i32 %32, ptr %33, align 4, !tbaa !18
  %34 = load i32, ptr %1, align 4, !tbaa !13
  %35 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %2, i64 0, i32 3
  store i32 %34, ptr %35, align 4, !tbaa !19
  %36 = getelementptr inbounds i32, ptr %1, i64 1
  %37 = load i32, ptr %36, align 4, !tbaa !13
  %38 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %2, i64 0, i32 4
  store i32 %37, ptr %38, align 4, !tbaa !20
  %39 = getelementptr inbounds i32, ptr %1, i64 2
  %40 = load i32, ptr %39, align 4, !tbaa !13
  %41 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %2, i64 0, i32 5
  store i32 %40, ptr %41, align 4, !tbaa !21
  br label %59

42:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i64 0, i32 2), i64 24, i1 false), !tbaa.struct !22
  br label %59

43:                                               ; preds = %3
  %44 = load i32, ptr %0, align 4, !tbaa !13
  store i32 %44, ptr %2, align 4, !tbaa !16
  %45 = getelementptr inbounds i32, ptr %0, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !13
  %47 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %2, i64 0, i32 1
  store i32 %46, ptr %47, align 4, !tbaa !17
  %48 = getelementptr inbounds i32, ptr %0, i64 2
  %49 = load i32, ptr %48, align 4, !tbaa !13
  %50 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %2, i64 0, i32 2
  store i32 %49, ptr %50, align 4, !tbaa !18
  %51 = load i32, ptr %1, align 4, !tbaa !13
  %52 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %2, i64 0, i32 3
  store i32 %51, ptr %52, align 4, !tbaa !19
  %53 = getelementptr inbounds i32, ptr %1, i64 1
  %54 = load i32, ptr %53, align 4, !tbaa !13
  %55 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %2, i64 0, i32 4
  store i32 %54, ptr %55, align 4, !tbaa !20
  %56 = getelementptr inbounds i32, ptr %1, i64 2
  %57 = load i32, ptr %56, align 4, !tbaa !13
  %58 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %2, i64 0, i32 5
  store i32 %57, ptr %58, align 4, !tbaa !21
  br label %59

59:                                               ; preds = %27, %42, %43
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_2__", !7, i64 0, !7, i64 4, !10, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"yas_bma_acceleration", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !7, i64 8}
!13 = !{!7, !7, i64 0}
!14 = !{!6, !7, i64 12}
!15 = !{!6, !7, i64 16}
!16 = !{!10, !7, i64 0}
!17 = !{!10, !7, i64 4}
!18 = !{!10, !7, i64 8}
!19 = !{!10, !7, i64 12}
!20 = !{!10, !7, i64 16}
!21 = !{!10, !7, i64 20}
!22 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 4, !13, i64 20, i64 4, !13}

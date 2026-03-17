; ModuleID = '../benchmarks/fine_grained/exebench/kernel422.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel422.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i64, ptr }

@sfConfig = dso_local local_unnamed_addr global %struct.TYPE_3__ zeroinitializer, align 8
@Num_enabled_extensions = dso_local local_unnamed_addr global i64 0, align 8
@sflow_extensions = dso_local local_unnamed_addr global ptr null, align 8
@extension_descriptor = dso_local local_unnamed_addr global ptr null, align 8
@IP_extension_mask = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @Init_sflow() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @sfConfig, i8 0, i64 16, i1 false)
  store i64 0, ptr @Num_enabled_extensions, align 8, !tbaa !5
  %1 = load ptr, ptr @sflow_extensions, align 8, !tbaa !9
  %2 = load i32, ptr %1, align 4, !tbaa !11
  %3 = icmp eq i32 %2, 0
  %4 = load ptr, ptr @extension_descriptor, align 8, !tbaa !9
  br i1 %3, label %21, label %5

5:                                                ; preds = %0, %15
  %6 = phi i64 [ %17, %15 ], [ 0, %0 ]
  %7 = phi i32 [ %19, %15 ], [ %2, %0 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i64 %9, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !13
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = add nsw i64 %8, 1
  store i64 %14, ptr @Num_enabled_extensions, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i64 [ %14, %13 ], [ %8, %5 ]
  %17 = add nuw nsw i64 %6, 1
  %18 = getelementptr inbounds i32, ptr %1, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %5, !llvm.loop !15

21:                                               ; preds = %15, %0
  %22 = phi i64 [ 0, %0 ], [ %16, %15 ]
  store i32 0, ptr @IP_extension_mask, align 4, !tbaa !11
  %23 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %55, label %26

26:                                               ; preds = %21, %48
  %27 = phi i64 [ %51, %48 ], [ 0, %21 ]
  %28 = phi i32 [ %50, %48 ], [ 0, %21 ]
  %29 = phi i64 [ %49, %48 ], [ %22, %21 ]
  %30 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i64 %27
  %31 = load i32, ptr %30, align 8, !tbaa !18
  switch i32 %31, label %48 [
    i32 9, label %32
    i32 11, label %36
    i32 23, label %40
  ]

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i64 %27, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !13
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %48, label %44

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i64 %27, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !13
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %48, label %44

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i64 %27, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !13
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40, %36, %32
  %45 = phi i32 [ 1, %32 ], [ 2, %36 ], [ 4, %40 ]
  %46 = or i32 %28, %45
  store i32 %46, ptr @IP_extension_mask, align 4, !tbaa !11
  %47 = add nsw i64 %29, 1
  store i64 %47, ptr @Num_enabled_extensions, align 8, !tbaa !5
  br label %48

48:                                               ; preds = %44, %40, %36, %32, %26
  %49 = phi i64 [ %29, %40 ], [ %29, %36 ], [ %29, %32 ], [ %29, %26 ], [ %47, %44 ]
  %50 = phi i32 [ %28, %40 ], [ %28, %36 ], [ %28, %32 ], [ %28, %26 ], [ %46, %44 ]
  %51 = add nuw nsw i64 %27, 1
  %52 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i64 %51, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !17
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %26, !llvm.loop !19

55:                                               ; preds = %48, %21
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!14, !6, i64 8}
!14 = !{!"TYPE_4__", !12, i64 0, !6, i64 8, !10, i64 16}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!14, !10, i64 16}
!18 = !{!14, !12, i64 0}
!19 = distinct !{!19, !16}

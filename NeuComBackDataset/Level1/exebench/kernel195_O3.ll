; ModuleID = '../benchmarks/fine_grained/exebench/kernel195.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel195.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { ptr, i64 }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @serd_uri_resolve(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TYPE_13__, ptr %2, i64 0, i32 5
  %5 = getelementptr inbounds %struct.TYPE_13__, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = load i64, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !16
  br label %56

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.TYPE_13__, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !18
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TYPE_13__, ptr %2, i64 0, i32 2
  store i64 %11, ptr %14, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.TYPE_13__, ptr %2, i64 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_13__, ptr %0, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !20
  %17 = getelementptr inbounds %struct.TYPE_13__, ptr %2, i64 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_13__, ptr %0, i64 0, i32 3
  br label %48

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.TYPE_13__, ptr %2, i64 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_13__, ptr %0, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !20
  %22 = getelementptr inbounds %struct.TYPE_13__, ptr %0, i64 0, i32 4, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !21
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TYPE_13__, ptr %1, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false), !tbaa.struct !20
  %27 = getelementptr inbounds %struct.TYPE_13__, ptr %0, i64 0, i32 3
  %28 = load i64, ptr %27, align 8, !tbaa !18
  %29 = icmp eq i64 %28, 0
  %30 = getelementptr inbounds %struct.TYPE_13__, ptr %2, i64 0, i32 3
  br i1 %29, label %32, label %31

31:                                               ; preds = %25
  store i64 %28, ptr %30, align 8, !tbaa !18
  br label %45

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.TYPE_13__, ptr %1, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !18
  store i64 %34, ptr %30, align 8, !tbaa !18
  br label %45

35:                                               ; preds = %19
  %36 = load ptr, ptr %21, align 8, !tbaa !22
  %37 = load i8, ptr %36, align 1, !tbaa !23
  %38 = icmp eq i8 %37, 47
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_13__, ptr %1, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %40, i64 16, i1 false), !tbaa.struct !20
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.TYPE_13__, ptr %2, i64 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_13__, ptr %0, i64 0, i32 3
  %44 = load i64, ptr %43, align 8, !tbaa !18
  store i64 %44, ptr %42, align 8, !tbaa !18
  br label %45

45:                                               ; preds = %31, %32, %41
  %46 = getelementptr inbounds %struct.TYPE_13__, ptr %2, i64 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_13__, ptr %1, i64 0, i32 2
  br label %48

48:                                               ; preds = %45, %13
  %49 = phi ptr [ %47, %45 ], [ %18, %13 ]
  %50 = phi ptr [ %46, %45 ], [ %17, %13 ]
  %51 = load i64, ptr %49, align 8, !tbaa !18
  store i64 %51, ptr %50, align 8, !tbaa !18
  %52 = getelementptr inbounds %struct.TYPE_13__, ptr %2, i64 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, ptr %1, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !18
  store i64 %54, ptr %52, align 8, !tbaa !18
  %55 = load i32, ptr %0, align 8, !tbaa !24
  store i32 %55, ptr %2, align 8, !tbaa !24
  br label %56

56:                                               ; preds = %48, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !11, i64 8}
!6 = !{!"TYPE_13__", !7, i64 0, !10, i64 8, !12, i64 16, !13, i64 24, !14, i64 32, !14, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_12__", !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!"TYPE_11__", !11, i64 0}
!13 = !{!"TYPE_10__", !11, i64 0}
!14 = !{!"TYPE_9__", !15, i64 0, !11, i64 8}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{i64 0, i64 4, !17, i64 8, i64 8, !18, i64 16, i64 8, !18, i64 24, i64 8, !18, i64 32, i64 8, !19, i64 40, i64 8, !18, i64 48, i64 8, !19, i64 56, i64 8, !18}
!17 = !{!7, !7, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!15, !15, i64 0}
!20 = !{i64 0, i64 8, !19, i64 8, i64 8, !18}
!21 = !{!6, !11, i64 40}
!22 = !{!6, !15, i64 32}
!23 = !{!8, !8, i64 0}
!24 = !{!6, !7, i64 0}

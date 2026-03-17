; ModuleID = '../benchmarks/fine_grained/exebench/kernel593.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel593.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { ptr, ptr, ptr, ptr, ptr }
%struct.TYPE_4__ = type { i64, i32 }

@work = dso_local local_unnamed_addr global %struct.TYPE_3__ zeroinitializer, align 8
@settings = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_start() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @work, i64 0, i32 4), align 8, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, i8 0, i64 88, i1 false), !tbaa !10
  %2 = load ptr, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @work, i64 0, i32 3), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !tbaa !10
  %3 = load ptr, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @work, i64 0, i32 1), align 8, !tbaa !13
  %4 = load ptr, ptr @work, align 8, !tbaa !14
  %5 = load i64, ptr %3, align 8, !tbaa !10
  %6 = icmp sgt i64 %5, 0
  %7 = load i64, ptr @settings, align 8
  %8 = select i1 %6, i64 %5, i64 %7
  store i64 %8, ptr %4, align 8, !tbaa !10
  %9 = getelementptr inbounds i64, ptr %3, i64 1
  %10 = load i64, ptr %9, align 8, !tbaa !10
  %11 = icmp sgt i64 %10, 0
  %12 = load i64, ptr @settings, align 8
  %13 = select i1 %11, i64 %10, i64 %12
  %14 = getelementptr inbounds i64, ptr %4, i64 1
  store i64 %13, ptr %14, align 8, !tbaa !10
  %15 = getelementptr inbounds i64, ptr %3, i64 2
  %16 = load i64, ptr %15, align 8, !tbaa !10
  %17 = icmp sgt i64 %16, 0
  %18 = select i1 %17, i64 %16, i64 %12
  %19 = getelementptr inbounds i64, ptr %4, i64 2
  store i64 %18, ptr %19, align 8, !tbaa !10
  %20 = getelementptr inbounds i64, ptr %3, i64 3
  %21 = load i64, ptr %20, align 8, !tbaa !10
  %22 = icmp sgt i64 %21, 0
  %23 = select i1 %22, i64 %21, i64 %12
  %24 = getelementptr inbounds i64, ptr %4, i64 3
  store i64 %23, ptr %24, align 8, !tbaa !10
  %25 = getelementptr inbounds i64, ptr %3, i64 4
  %26 = load i64, ptr %25, align 8, !tbaa !10
  %27 = icmp sgt i64 %26, 0
  %28 = select i1 %27, i64 %26, i64 %12
  %29 = getelementptr inbounds i64, ptr %4, i64 4
  store i64 %28, ptr %29, align 8, !tbaa !10
  %30 = getelementptr inbounds i64, ptr %3, i64 5
  %31 = load i64, ptr %30, align 8, !tbaa !10
  %32 = icmp sgt i64 %31, 0
  %33 = select i1 %32, i64 %31, i64 %12
  %34 = getelementptr inbounds i64, ptr %4, i64 5
  store i64 %33, ptr %34, align 8, !tbaa !10
  %35 = getelementptr inbounds i64, ptr %3, i64 6
  %36 = load i64, ptr %35, align 8, !tbaa !10
  %37 = icmp sgt i64 %36, 0
  %38 = select i1 %37, i64 %36, i64 %12
  %39 = getelementptr inbounds i64, ptr %4, i64 6
  store i64 %38, ptr %39, align 8, !tbaa !10
  %40 = getelementptr inbounds i64, ptr %3, i64 7
  %41 = load i64, ptr %40, align 8, !tbaa !10
  %42 = icmp sgt i64 %41, 0
  %43 = select i1 %42, i64 %41, i64 %12
  %44 = getelementptr inbounds i64, ptr %4, i64 7
  store i64 %43, ptr %44, align 8, !tbaa !10
  %45 = load ptr, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @work, i64 0, i32 2), align 8, !tbaa !15
  %46 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @settings, i64 0, i32 1), align 8, !tbaa !16
  store i32 %46, ptr %45, align 4, !tbaa !19
  %47 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @settings, i64 0, i32 1), align 8, !tbaa !16
  %48 = getelementptr inbounds i32, ptr %45, i64 1
  store i32 %47, ptr %48, align 4, !tbaa !19
  %49 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @settings, i64 0, i32 1), align 8, !tbaa !16
  %50 = getelementptr inbounds i32, ptr %45, i64 2
  store i32 %49, ptr %50, align 4, !tbaa !19
  %51 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @settings, i64 0, i32 1), align 8, !tbaa !16
  %52 = getelementptr inbounds i32, ptr %45, i64 3
  %53 = insertelement <4 x i32> poison, i32 %51, i64 0
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %54, ptr %52, align 4, !tbaa !19
  %55 = getelementptr inbounds i32, ptr %45, i64 7
  store i32 %51, ptr %55, align 4, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 32}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !7, i64 24}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 0}
!15 = !{!6, !7, i64 16}
!16 = !{!17, !18, i64 8}
!17 = !{!"TYPE_4__", !11, i64 0, !18, i64 8}
!18 = !{!"int", !8, i64 0}
!19 = !{!18, !18, i64 0}

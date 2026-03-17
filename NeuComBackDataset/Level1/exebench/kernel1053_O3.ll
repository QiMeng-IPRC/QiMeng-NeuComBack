; ModuleID = '../benchmarks/fine_grained/exebench/kernel1053.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1053.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64 }

@Scr = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ComputeWindowTitleOffsets(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @Scr, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_7__, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !14
  %9 = add nsw i32 %8, %6
  store i32 %9, ptr %0, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !17
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.TYPE_7__, ptr %4, i64 0, i32 2, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !18
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %3
  %18 = load i32, ptr %4, align 8, !tbaa !19
  %19 = add nsw i32 %18, %9
  store i32 %19, ptr %0, align 8, !tbaa !16
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %19, %17 ], [ %9, %13 ]
  %22 = getelementptr inbounds %struct.TYPE_7__, ptr %4, i64 0, i32 2, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !20
  %24 = sub nsw i32 %1, %23
  %25 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 2
  store i32 %24, ptr %25, align 8, !tbaa !21
  %26 = icmp eq i64 %2, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !22
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %27
  br i1 %12, label %36, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.TYPE_7__, ptr %4, i64 0, i32 2, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !23
  %35 = shl nsw i32 %34, 1
  br label %36

36:                                               ; preds = %31, %32
  %37 = phi i32 [ %35, %32 ], [ 0, %31 ]
  %38 = add nsw i32 %37, %21
  %39 = getelementptr inbounds %struct.TYPE_7__, ptr %4, i64 0, i32 2, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !18
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, ptr %4, align 8, !tbaa !19
  br label %44

44:                                               ; preds = %36, %42
  %45 = phi i32 [ %43, %42 ], [ 0, %36 ]
  %46 = add nsw i32 %38, %45
  %47 = getelementptr inbounds %struct.TYPE_7__, ptr %4, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !24
  %49 = add nsw i32 %46, %48
  %50 = icmp slt i32 %49, %24
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 %49, ptr %25, align 8, !tbaa !21
  br label %52

52:                                               ; preds = %44, %51, %27, %20
  ret void
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"TYPE_7__", !11, i64 0, !11, i64 4, !12, i64 8}
!11 = !{!"int", !7, i64 0}
!12 = !{!"TYPE_5__", !11, i64 0, !13, i64 8, !11, i64 16, !11, i64 20}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !11, i64 4}
!15 = !{!"TYPE_6__", !11, i64 0, !11, i64 4, !11, i64 8, !13, i64 16, !13, i64 24}
!16 = !{!15, !11, i64 0}
!17 = !{!15, !13, i64 16}
!18 = !{!10, !13, i64 16}
!19 = !{!10, !11, i64 0}
!20 = !{!10, !11, i64 24}
!21 = !{!15, !11, i64 8}
!22 = !{!15, !13, i64 24}
!23 = !{!10, !11, i64 28}
!24 = !{!10, !11, i64 4}

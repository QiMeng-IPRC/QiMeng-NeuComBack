; ModuleID = '../benchmarks/fine_grained/exebench/kernel1505.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1505.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @lulu_get_marker_array_extent(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %50

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !10
  %9 = sub nsw i64 %6, %8
  %10 = add nsw i64 %8, %6
  %11 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !11
  %13 = sub nsw i64 %12, %8
  %14 = add nsw i64 %12, %8
  %15 = icmp eq i32 %1, 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = zext i32 %1 to i64
  br label %28

18:                                               ; preds = %28, %5
  %19 = phi i64 [ %14, %5 ], [ %47, %28 ]
  %20 = phi i64 [ %13, %5 ], [ %46, %28 ]
  %21 = phi i64 [ %10, %5 ], [ %45, %28 ]
  %22 = phi i64 [ %9, %5 ], [ %44, %28 ]
  %23 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 0, i32 3
  store i64 %22, ptr %23, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 0, i32 2
  store i64 %20, ptr %24, align 8, !tbaa !14
  %25 = sub nsw i64 %21, %22
  %26 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 0, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !15
  %27 = sub nsw i64 %19, %20
  store i64 %27, ptr %2, align 8, !tbaa !16
  br label %50

28:                                               ; preds = %16, %28
  %29 = phi i64 [ 1, %16 ], [ %48, %28 ]
  %30 = phi i64 [ %9, %16 ], [ %44, %28 ]
  %31 = phi i64 [ %10, %16 ], [ %45, %28 ]
  %32 = phi i64 [ %13, %16 ], [ %46, %28 ]
  %33 = phi i64 [ %14, %16 ], [ %47, %28 ]
  %34 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 %29
  %35 = load i64, ptr %34, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 %29, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !10
  %38 = sub nsw i64 %35, %37
  %39 = add nsw i64 %37, %35
  %40 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 %29, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !11
  %42 = sub nsw i64 %41, %37
  %43 = add nsw i64 %41, %37
  %44 = tail call i64 @llvm.smin.i64(i64 %38, i64 %30)
  %45 = tail call i64 @llvm.smax.i64(i64 %39, i64 %31)
  %46 = tail call i64 @llvm.smin.i64(i64 %42, i64 %32)
  %47 = tail call i64 @llvm.smax.i64(i64 %43, i64 %33)
  %48 = add nuw nsw i64 %29, 1
  %49 = icmp eq i64 %48, %17
  br i1 %49, label %18, label %28, !llvm.loop !17

50:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_6__", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}
!12 = !{!13, !7, i64 24}
!13 = !{!"TYPE_5__", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!14 = !{!13, !7, i64 16}
!15 = !{!13, !7, i64 8}
!16 = !{!13, !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}

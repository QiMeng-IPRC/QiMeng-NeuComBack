; ModuleID = '../benchmarks/fine_grained/exebench/kernel164.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel164.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@queue = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @addQueue(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @queue, align 8, !tbaa !5
  %3 = load i32, ptr %2, align 4, !tbaa !9
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %55, label %5

5:                                                ; preds = %1
  %6 = add nuw i32 %3, 1
  %7 = zext i32 %6 to i64
  %8 = add nsw i64 %7, -1
  %9 = icmp ult i32 %3, 8
  br i1 %9, label %40, label %10

10:                                               ; preds = %5
  %11 = and i64 %8, -8
  %12 = or i64 %11, 1
  %13 = insertelement <4 x i32> poison, i32 %0, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer
  %15 = insertelement <4 x i32> poison, i32 %0, i64 0
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %17

17:                                               ; preds = %17, %10
  %18 = phi i64 [ 0, %10 ], [ %30, %17 ]
  %19 = phi <4 x i32> [ zeroinitializer, %10 ], [ %28, %17 ]
  %20 = phi <4 x i32> [ zeroinitializer, %10 ], [ %29, %17 ]
  %21 = or i64 %18, 1
  %22 = getelementptr inbounds i32, ptr %2, i64 %21
  %23 = load <4 x i32>, ptr %22, align 4, !tbaa !9
  %24 = getelementptr inbounds i32, ptr %22, i64 4
  %25 = load <4 x i32>, ptr %24, align 4, !tbaa !9
  %26 = icmp eq <4 x i32> %23, %14
  %27 = icmp eq <4 x i32> %25, %16
  %28 = select <4 x i1> %26, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %19
  %29 = select <4 x i1> %27, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %20
  %30 = add nuw i64 %18, 8
  %31 = icmp eq i64 %30, %11
  br i1 %31, label %32, label %17, !llvm.loop !11

32:                                               ; preds = %17
  %33 = icmp ne <4 x i32> %28, zeroinitializer
  %34 = icmp ne <4 x i32> %29, zeroinitializer
  %35 = select <4 x i1> %33, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %34
  %36 = bitcast <4 x i1> %35 to i4
  %37 = icmp ne i4 %36, 0
  %38 = zext i1 %37 to i32
  %39 = icmp eq i64 %8, %11
  br i1 %39, label %52, label %40

40:                                               ; preds = %5, %32
  %41 = phi i64 [ 1, %5 ], [ %12, %32 ]
  %42 = phi i32 [ 0, %5 ], [ %38, %32 ]
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ %50, %43 ], [ %41, %40 ]
  %45 = phi i32 [ %49, %43 ], [ %42, %40 ]
  %46 = getelementptr inbounds i32, ptr %2, i64 %44
  %47 = load i32, ptr %46, align 4, !tbaa !9
  %48 = icmp eq i32 %47, %0
  %49 = select i1 %48, i32 1, i32 %45
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %7
  br i1 %51, label %52, label %43, !llvm.loop !15

52:                                               ; preds = %43, %32
  %53 = phi i32 [ %38, %32 ], [ %49, %43 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %1, %52
  %56 = add nsw i32 %3, 1
  store i32 %56, ptr %2, align 4, !tbaa !9
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %2, i64 %57
  store i32 %0, ptr %58, align 4, !tbaa !9
  br label %59

59:                                               ; preds = %55, %52
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12, !14, !13}

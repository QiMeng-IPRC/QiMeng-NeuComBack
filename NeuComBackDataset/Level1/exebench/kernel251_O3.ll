; ModuleID = '../benchmarks/fine_grained/exebench/kernel251.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel251.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@mr_mip = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @mr_setbase(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 65536
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 256
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = icmp slt i32 %0, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = icmp slt i32 %0, 4
  %9 = select i1 %8, i32 2, i32 4
  %10 = select i1 %8, i8 1, i8 2
  br label %11

11:                                               ; preds = %7, %5, %3, %1
  %12 = phi i8 [ 16, %1 ], [ 8, %3 ], [ 4, %5 ], [ %10, %7 ]
  %13 = phi i32 [ 65536, %1 ], [ 256, %3 ], [ 16, %5 ], [ %9, %7 ]
  %14 = icmp eq i32 %13, %0
  %15 = load ptr, ptr @mr_mip, align 8, !tbaa !5
  store i32 %0, ptr %15, align 4, !tbaa !9
  br i1 %14, label %16, label %21

16:                                               ; preds = %11
  %17 = udiv i8 32, %12
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.TYPE_2__, ptr %15, i64 0, i32 1
  store i32 %18, ptr %19, align 4, !tbaa !12
  %20 = getelementptr inbounds %struct.TYPE_2__, ptr %15, i64 0, i32 2
  store i32 0, ptr %20, align 4, !tbaa !13
  br label %37

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.TYPE_2__, ptr %15, i64 0, i32 1
  store i32 1, ptr %22, align 4, !tbaa !12
  %23 = getelementptr inbounds %struct.TYPE_2__, ptr %15, i64 0, i32 2
  store i32 %0, ptr %23, align 4, !tbaa !13
  %24 = icmp eq i32 %0, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = sdiv i32 -2147483648, %0
  %27 = icmp slt i32 %26, %0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25, %28
  %29 = phi i32 [ %33, %28 ], [ 1, %25 ]
  %30 = phi i32 [ %32, %28 ], [ %0, %25 ]
  %31 = phi i32 [ %34, %28 ], [ %26, %25 ]
  %32 = mul nsw i32 %30, %0
  %33 = add nuw nsw i32 %29, 1
  %34 = sdiv i32 %31, %0
  %35 = icmp slt i32 %34, %0
  br i1 %35, label %36, label %28, !llvm.loop !14

36:                                               ; preds = %28
  store i32 %32, ptr %23, align 4, !tbaa !13
  store i32 %33, ptr %22, align 4, !tbaa !12
  br label %37

37:                                               ; preds = %25, %36, %21, %16
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"TYPE_2__", !11, i64 0, !11, i64 4, !11, i64 8}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !11, i64 4}
!13 = !{!10, !11, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}

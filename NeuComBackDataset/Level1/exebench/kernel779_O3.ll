; ModuleID = '../benchmarks/fine_grained/exebench/kernel779.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel779.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev_sd_clk = dso_local local_unnamed_addr global ptr null, align 8
@dev_sd_cmd = dso_local local_unnamed_addr global ptr null, align 8
@response_buffer = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @SD_read_response(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @dev_sd_clk, align 8, !tbaa !5
  store i32 1, ptr %2, align 4, !tbaa !9
  %3 = load ptr, ptr @dev_sd_cmd, align 8, !tbaa !5
  %4 = load i64, ptr %3, align 8, !tbaa !11
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %1
  %7 = icmp eq i32 %0, 2
  %8 = select i1 %7, i64 17, i64 6
  %9 = icmp eq i32 %0, 3
  %10 = load ptr, ptr @response_buffer, align 8
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  %12 = and i64 %8, 3
  %13 = and i64 %8, 20
  br label %16

14:                                               ; preds = %6
  store i32 1, ptr %2, align 4, !tbaa !9
  store i32 0, ptr %10, align 4, !tbaa !9
  store i32 1, ptr %2, align 4, !tbaa !9
  %15 = getelementptr inbounds i32, ptr %10, i64 1
  store i32 0, ptr %15, align 4, !tbaa !9
  br label %29

16:                                               ; preds = %16, %11
  %17 = phi i64 [ 0, %11 ], [ %26, %16 ]
  %18 = phi i64 [ 0, %11 ], [ %27, %16 ]
  store i32 1, ptr %2, align 4, !tbaa !9
  %19 = getelementptr inbounds i32, ptr %10, i64 %17
  store i32 0, ptr %19, align 4, !tbaa !9
  %20 = or i64 %17, 1
  store i32 1, ptr %2, align 4, !tbaa !9
  %21 = getelementptr inbounds i32, ptr %10, i64 %20
  store i32 0, ptr %21, align 4, !tbaa !9
  %22 = or i64 %17, 2
  store i32 1, ptr %2, align 4, !tbaa !9
  %23 = getelementptr inbounds i32, ptr %10, i64 %22
  store i32 0, ptr %23, align 4, !tbaa !9
  %24 = or i64 %17, 3
  store i32 1, ptr %2, align 4, !tbaa !9
  %25 = getelementptr inbounds i32, ptr %10, i64 %24
  store i32 0, ptr %25, align 4, !tbaa !9
  %26 = add nuw nsw i64 %17, 4
  %27 = add i64 %18, 4
  %28 = icmp eq i64 %27, %13
  br i1 %28, label %34, label %16, !llvm.loop !13

29:                                               ; preds = %14, %29
  %30 = phi i64 [ %32, %29 ], [ 2, %14 ]
  store i32 1, ptr %2, align 4, !tbaa !9
  %31 = getelementptr inbounds i32, ptr %10, i64 %30
  store i32 0, ptr %31, align 4, !tbaa !9
  %32 = add nuw nsw i64 %30, 1
  %33 = icmp eq i64 %32, %8
  br i1 %33, label %43, label %29, !llvm.loop !15

34:                                               ; preds = %16
  %35 = icmp eq i64 %12, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ %40, %36 ], [ %26, %34 ]
  %38 = phi i64 [ %41, %36 ], [ 0, %34 ]
  store i32 1, ptr %2, align 4, !tbaa !9
  %39 = getelementptr inbounds i32, ptr %10, i64 %37
  store i32 0, ptr %39, align 4, !tbaa !9
  %40 = add nuw nsw i64 %37, 1
  %41 = add i64 %38, 1
  %42 = icmp eq i64 %41, %12
  br i1 %42, label %43, label %36, !llvm.loop !17

43:                                               ; preds = %34, %36, %29
  %44 = phi i32 [ 1, %29 ], [ 0, %36 ], [ 0, %34 ]
  switch i32 %0, label %46 [
    i32 6, label %45
    i32 1, label %45
  ]

45:                                               ; preds = %43, %43
  br label %46

46:                                               ; preds = %1, %45, %43
  %47 = phi i32 [ %44, %43 ], [ 2, %45 ], [ 2, %1 ]
  ret i32 %47
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
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14, !16}
!16 = !{!"llvm.loop.peeled.count", i32 2}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}

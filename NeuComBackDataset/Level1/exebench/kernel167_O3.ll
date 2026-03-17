; ModuleID = '../benchmarks/fine_grained/exebench/kernel167.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel167.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@debug_handles_count = dso_local local_unnamed_addr global i32 0, align 4
@debug_handles = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @remove_debug_handle_internal(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @debug_handles_count, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %36

4:                                                ; preds = %1
  %5 = load ptr, ptr @debug_handles, align 8, !tbaa !9
  %6 = zext i32 %2 to i64
  br label %7

7:                                                ; preds = %4, %32
  %8 = phi i64 [ 1, %4 ], [ %35, %32 ]
  %9 = phi i64 [ 0, %4 ], [ %33, %32 ]
  %10 = getelementptr inbounds %struct.TYPE_4__, ptr %5, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %12 = icmp eq i32 %11, %0
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = trunc i64 %9 to i32
  %15 = add nuw nsw i32 %14, 1
  %16 = icmp slt i32 %15, %2
  br i1 %16, label %17, label %29

17:                                               ; preds = %13, %17
  %18 = phi i64 [ %20, %17 ], [ %9, %13 ]
  %19 = phi i64 [ %25, %17 ], [ %8, %13 ]
  %20 = add nuw nsw i64 %18, 1
  %21 = load ptr, ptr @debug_handles, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.TYPE_4__, ptr %21, i64 %18
  %23 = getelementptr inbounds %struct.TYPE_4__, ptr %21, i64 %19
  %24 = tail call i32 @memcpy(ptr noundef %22, ptr noundef nonnull %23, i32 noundef 4) #2
  %25 = add nuw nsw i64 %19, 1
  %26 = load i32, ptr @debug_handles_count, align 4, !tbaa !5
  %27 = trunc i64 %25 to i32
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %17, label %29, !llvm.loop !13

29:                                               ; preds = %17, %13
  %30 = phi i32 [ %2, %13 ], [ %26, %17 ]
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr @debug_handles_count, align 4, !tbaa !5
  br label %36

32:                                               ; preds = %7
  %33 = add nuw nsw i64 %9, 1
  %34 = icmp eq i64 %33, %6
  %35 = add nuw nsw i64 %8, 1
  br i1 %34, label %36, label %7, !llvm.loop !15

36:                                               ; preds = %32, %1, %29
  %37 = phi i32 [ 1, %29 ], [ 0, %1 ], [ 0, %32 ]
  ret i32 %37
}

declare i32 @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"TYPE_4__", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}

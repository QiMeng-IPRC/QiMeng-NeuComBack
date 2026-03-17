; ModuleID = '../benchmarks/fine_grained/exebench/kernel880.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel880.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection_domain = type { i32, i32 }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @rnn_set_connection(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %3
  %6 = zext i32 %0 to i64
  br label %8

7:                                                ; preds = %28
  br i1 %14, label %37, label %33

8:                                                ; preds = %5, %28
  %9 = phi i64 [ 0, %5 ], [ %31, %28 ]
  %10 = phi i32 [ 0, %5 ], [ %30, %28 ]
  %11 = phi i32 [ 0, %5 ], [ %29, %28 ]
  %12 = getelementptr inbounds i32, ptr %2, i64 %9
  %13 = load i32, ptr %12, align 4, !tbaa !5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = icmp eq i32 %10, 1
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = sext i32 %11 to i64
  %19 = getelementptr inbounds %struct.connection_domain, ptr %1, i64 %18
  %20 = trunc i64 %9 to i32
  store i32 %20, ptr %19, align 4, !tbaa !9
  %21 = add nsw i32 %11, 1
  br label %28

22:                                               ; preds = %8
  %23 = icmp eq i32 %10, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = sext i32 %11 to i64
  %26 = getelementptr inbounds %struct.connection_domain, ptr %1, i64 %25, i32 1
  %27 = trunc i64 %9 to i32
  store i32 %27, ptr %26, align 4, !tbaa !11
  br label %28

28:                                               ; preds = %17, %15, %24, %22
  %29 = phi i32 [ %11, %24 ], [ %11, %22 ], [ %21, %17 ], [ %11, %15 ]
  %30 = phi i32 [ 1, %24 ], [ 1, %22 ], [ 0, %17 ], [ 0, %15 ]
  %31 = add nuw nsw i64 %9, 1
  %32 = icmp eq i64 %31, %6
  br i1 %32, label %7, label %8, !llvm.loop !12

33:                                               ; preds = %7
  %34 = sext i32 %29 to i64
  %35 = getelementptr inbounds %struct.connection_domain, ptr %1, i64 %34
  store i32 %0, ptr %35, align 4, !tbaa !9
  %36 = add nsw i32 %29, 1
  br label %37

37:                                               ; preds = %3, %33, %7
  %38 = phi i32 [ %36, %33 ], [ %29, %7 ], [ 0, %3 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.connection_domain, ptr %1, i64 %39, i32 1
  store i32 -1, ptr %40, align 4, !tbaa !11
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"connection_domain", !6, i64 0, !6, i64 4}
!11 = !{!10, !6, i64 4}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}

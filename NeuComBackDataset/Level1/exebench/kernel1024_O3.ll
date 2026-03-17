; ModuleID = '../benchmarks/fine_grained/exebench/kernel1024.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1024.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__user_cap_header_struct = type { i32, i64 }
%struct.__user_cap_data_struct = type { i64, i64, i64 }

@raise_cap.head = internal global %struct.__user_cap_header_struct zeroinitializer, align 8
@raise_cap.data = internal global %struct.__user_cap_data_struct zeroinitializer, align 8
@raise_cap.n = internal global %struct.__user_cap_data_struct zeroinitializer, align 8
@clear1 = dso_local local_unnamed_addr global ptr null, align 8
@clear2 = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local void @raise_cap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @clear1, align 8, !tbaa !5
  store i64 0, ptr %2, align 8, !tbaa !9
  %3 = load ptr, ptr @clear2, align 8, !tbaa !5
  store i64 0, ptr %3, align 8, !tbaa !9
  store i32 429392688, ptr @raise_cap.head, align 8, !tbaa !11
  store i64 0, ptr getelementptr inbounds (%struct.__user_cap_header_struct, ptr @raise_cap.head, i64 0, i32 1), align 8, !tbaa !14
  %4 = tail call i32 @capget(ptr noundef nonnull @raise_cap.head, ptr noundef nonnull @raise_cap.data) #2
  %5 = load i64, ptr @raise_cap.data, align 8, !tbaa !15
  br label %6

6:                                                ; preds = %1, %33
  %7 = phi i64 [ %5, %1 ], [ %34, %33 ]
  %8 = phi i32 [ 0, %1 ], [ %35, %33 ]
  %9 = phi ptr [ %0, %1 ], [ %36, %33 ]
  %10 = load i64, ptr %9, align 8, !tbaa !9
  %11 = icmp eq i64 %10, %7
  br i1 %11, label %12, label %33

12:                                               ; preds = %6
  %13 = getelementptr inbounds i64, ptr %9, i64 1
  %14 = load i64, ptr %13, align 8, !tbaa !9
  %15 = load i64, ptr getelementptr inbounds (%struct.__user_cap_data_struct, ptr @raise_cap.data, i64 0, i32 1), align 8, !tbaa !17
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = getelementptr inbounds i64, ptr %9, i64 2
  %19 = load i64, ptr %18, align 8, !tbaa !9
  %20 = load i64, ptr getelementptr inbounds (%struct.__user_cap_data_struct, ptr @raise_cap.data, i64 0, i32 2), align 8, !tbaa !18
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  store i64 305402420, ptr %9, align 8, !tbaa !9
  %23 = tail call i32 @capget(ptr noundef nonnull @raise_cap.head, ptr noundef nonnull @raise_cap.n) #2
  %24 = load i64, ptr @raise_cap.n, align 8, !tbaa !15
  %25 = load i64, ptr %9, align 8, !tbaa !9
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds i64, ptr %9, i64 1
  %29 = getelementptr inbounds i64, ptr %9, i64 2
  store i64 4294967295, ptr %29, align 8, !tbaa !9
  store i64 4294967295, ptr %28, align 8, !tbaa !9
  store i64 4294967295, ptr %9, align 8, !tbaa !9
  br label %38

30:                                               ; preds = %22
  %31 = load i64, ptr @raise_cap.data, align 8, !tbaa !15
  store i64 %31, ptr %9, align 8, !tbaa !9
  %32 = load i64, ptr @raise_cap.data, align 8, !tbaa !15
  br label %33

33:                                               ; preds = %6, %12, %17, %30
  %34 = phi i64 [ %7, %6 ], [ %7, %12 ], [ %7, %17 ], [ %32, %30 ]
  %35 = add nuw nsw i32 %8, 1
  %36 = getelementptr inbounds i64, ptr %9, i64 1
  %37 = icmp eq i32 %35, 512
  br i1 %37, label %38, label %6, !llvm.loop !19

38:                                               ; preds = %33, %27
  ret void
}

declare i32 @capget(ptr noundef, ptr noundef) local_unnamed_addr #1

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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"__user_cap_header_struct", !13, i64 0, !10, i64 8}
!13 = !{!"int", !7, i64 0}
!14 = !{!12, !10, i64 8}
!15 = !{!16, !10, i64 0}
!16 = !{!"__user_cap_data_struct", !10, i64 0, !10, i64 8, !10, i64 16}
!17 = !{!16, !10, i64 8}
!18 = !{!16, !10, i64 16}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}

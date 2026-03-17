; ModuleID = '../benchmarks/fine_grained/exebench/kernel1446.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1446.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@thread_table = dso_local local_unnamed_addr global ptr null, align 8
@current_task = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @syscall_query_ids(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  switch i32 %2, label %23 [
    i32 0, label %3
    i32 1, label %7
    i32 2, label %11
    i32 3, label %15
  ]

3:                                                ; preds = %1
  %4 = load ptr, ptr @thread_table, align 8, !tbaa !10
  %5 = load i64, ptr @current_task, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i64 %5, i32 3
  br label %19

7:                                                ; preds = %1
  %8 = load ptr, ptr @thread_table, align 8, !tbaa !10
  %9 = load i64, ptr @current_task, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.TYPE_5__, ptr %8, i64 %9, i32 2
  br label %19

11:                                               ; preds = %1
  %12 = load ptr, ptr @thread_table, align 8, !tbaa !10
  %13 = load i64, ptr @current_task, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.TYPE_5__, ptr %12, i64 %13, i32 1
  br label %19

15:                                               ; preds = %1
  %16 = load ptr, ptr @thread_table, align 8, !tbaa !10
  %17 = load i64, ptr @current_task, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.TYPE_5__, ptr %16, i64 %17
  br label %19

19:                                               ; preds = %3, %7, %11, %15
  %20 = phi ptr [ %18, %15 ], [ %14, %11 ], [ %10, %7 ], [ %6, %3 ]
  %21 = load i64, ptr %20, align 8, !tbaa !12
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %19, %1
  %24 = phi i32 [ -1, %1 ], [ %22, %19 ]
  %25 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !14
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_4__", !7, i64 0, !7, i64 4}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!6, !7, i64 4}

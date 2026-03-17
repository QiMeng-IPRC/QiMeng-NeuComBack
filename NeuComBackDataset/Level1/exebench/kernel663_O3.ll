; ModuleID = '../benchmarks/fine_grained/exebench/kernel663.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel663.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ID_table = type { i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @is_right(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ID_table, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !5
  switch i32 %3, label %13 [
    i32 6, label %4
    i32 4, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 4, !tbaa !10
  %6 = add i32 %5, -98
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ID_table, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = add i32 %10, -9
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %1, %4, %8
  br label %14

14:                                               ; preds = %8, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %8 ]
  %16 = getelementptr inbounds %struct.ID_table, ptr %0, i64 0, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !12
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 8}
!6 = !{!"ID_table", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 0}
!11 = !{!6, !7, i64 12}
!12 = !{!6, !7, i64 4}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel1213.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1213.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local void @int_array_double_capacity_if_full(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  store i32 100, ptr %0, align 4, !tbaa !5
  %5 = tail call i32 @malloc(i32 noundef 400) #2
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 2
  store i32 %5, ptr %6, align 4, !tbaa !11
  %7 = load i32, ptr %0, align 4, !tbaa !5
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ %7, %4 ], [ %2, %1 ]
  %10 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %12 = icmp slt i32 %11, %9
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = shl nsw i32 %9, 1
  store i32 %14, ptr %0, align 4, !tbaa !5
  %15 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !11
  %17 = shl i32 %9, 3
  %18 = tail call i32 @realloc(i32 noundef %16, i32 noundef %17) #2
  store i32 %18, ptr %15, align 4, !tbaa !11
  br label %19

19:                                               ; preds = %13, %8
  ret void
}

declare i32 @malloc(i32 noundef) local_unnamed_addr #1

declare i32 @realloc(i32 noundef, i32 noundef) local_unnamed_addr #1

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
!5 = !{!6, !8, i64 0}
!6 = !{!"TYPE_5__", !7, i64 0}
!7 = !{!"TYPE_4__", !8, i64 0, !8, i64 4, !8, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!6, !8, i64 8}
!12 = !{!6, !8, i64 4}

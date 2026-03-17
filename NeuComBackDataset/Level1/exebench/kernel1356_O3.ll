; ModuleID = '../benchmarks/fine_grained/exebench/kernel1356.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1356.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64, i64 }

; Function Attrs: nounwind uwtable
define dso_local i32 @buffer_grow(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = shl i64 %1, 1
  %7 = add i64 %3, %6
  store i64 %7, ptr %0, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.buffer, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !10
  %10 = tail call i64 @realloc(i64 noundef %9, i64 noundef %7) #2
  store i64 %10, ptr %8, align 8, !tbaa !10
  %11 = icmp eq i64 %10, 0
  %12 = sext i1 %11 to i32
  br label %13

13:                                               ; preds = %2, %5
  %14 = phi i32 [ %12, %5 ], [ 0, %2 ]
  ret i32 %14
}

declare i64 @realloc(i64 noundef, i64 noundef) local_unnamed_addr #1

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
!5 = !{!6, !7, i64 0}
!6 = !{!"buffer", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}

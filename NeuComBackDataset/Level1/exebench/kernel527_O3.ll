; ModuleID = '../benchmarks/fine_grained/exebench/kernel527.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel527.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_sslcon = type { i32, i32, i64, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @conn_closecon(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !5
  switch i32 %2, label %7 [
    i32 1, label %3
    i32 2, label %3
    i32 4, label %16
    i32 5, label %16
    i32 3, label %11
  ]

3:                                                ; preds = %1, %1
  %4 = getelementptr inbounds %struct.conn_sslcon, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !11
  %6 = tail call i32 @close(i32 noundef %5) #2
  br label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.conn_sslcon, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !11
  %10 = tail call i32 @close(i32 noundef %9) #2
  br label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.conn_sslcon, ptr %0, i64 0, i32 2
  store i64 0, ptr %12, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.conn_sslcon, ptr %0, i64 0, i32 1
  store i32 1, ptr %13, align 4, !tbaa !13
  br label %14

14:                                               ; preds = %3, %7, %11
  %15 = phi i32 [ 4, %11 ], [ 5, %7 ], [ 5, %3 ]
  store i32 %15, ptr %0, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %14, %1, %1
  ret i32 0
}

declare i32 @close(i32 noundef) local_unnamed_addr #1

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
!6 = !{!"conn_sslcon", !7, i64 0, !7, i64 4, !10, i64 8, !7, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !7, i64 4}

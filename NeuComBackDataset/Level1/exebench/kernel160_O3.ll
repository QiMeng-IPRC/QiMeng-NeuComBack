; ModuleID = '../benchmarks/fine_grained/exebench/kernel160.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel160.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@joyfd = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local void @close_realjoy() local_unnamed_addr #0 {
  %1 = load ptr, ptr @joyfd, align 8, !tbaa !5
  %2 = load i32, ptr %1, align 4, !tbaa !9
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @close(i32 noundef %2) #2
  %6 = load ptr, ptr @joyfd, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %4, %0
  %8 = phi ptr [ %6, %4 ], [ %1, %0 ]
  store i32 -1, ptr %8, align 4, !tbaa !9
  %9 = getelementptr inbounds i32, ptr %8, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !9
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @close(i32 noundef %10) #2
  %14 = load ptr, ptr @joyfd, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %8, %7 ]
  %17 = getelementptr inbounds i32, ptr %16, i64 1
  store i32 -1, ptr %17, align 4, !tbaa !9
  ret void
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
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}

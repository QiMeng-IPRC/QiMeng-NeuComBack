; ModuleID = '../benchmarks/fine_grained/exebench/kernel332.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel332.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iterations = dso_local local_unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@iterations_prev = dso_local local_unnamed_addr global i64 0, align 8
@timeout = dso_local local_unnamed_addr global i64 0, align 8
@SIGUSR1 = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @sigalrm_handler(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @iterations, align 8, !tbaa !5
  %3 = load i64, ptr @iterations_prev, align 8, !tbaa !5
  %4 = sub i64 %2, %3
  %5 = tail call i32 @printf(ptr noundef nonnull @.str, i64 noundef %4) #2
  store i64 %2, ptr @iterations_prev, align 8, !tbaa !5
  %6 = load i64, ptr @timeout, align 8, !tbaa !5
  %7 = add nsw i64 %6, -1
  store i64 %7, ptr @timeout, align 8, !tbaa !5
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, ptr @SIGUSR1, align 4, !tbaa !9
  %11 = tail call i32 @kill(i32 noundef 0, i32 noundef %10) #2
  br label %12

12:                                               ; preds = %9, %1
  %13 = tail call i32 @alarm(i32 noundef 1) #2
  ret void
}

declare i32 @printf(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @alarm(i32 noundef) local_unnamed_addr #1

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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel1095.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1095.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trapped = dso_local local_unnamed_addr global i64 0, align 8
@SIGUSR1 = dso_local local_unnamed_addr global i32 0, align 4
@nr_tests = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @check_trapped() local_unnamed_addr #0 {
  %1 = load i64, ptr @trapped, align 8, !tbaa !5
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 (...) @getpid() #2
  %5 = load i32, ptr @SIGUSR1, align 4, !tbaa !9
  %6 = tail call i32 @kill(i32 noundef %4, i32 noundef %5) #2
  br label %7

7:                                                ; preds = %3, %0
  store i64 0, ptr @trapped, align 8, !tbaa !5
  %8 = load i32, ptr @nr_tests, align 4, !tbaa !9
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @nr_tests, align 4, !tbaa !9
  ret void
}

declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @getpid(...) local_unnamed_addr #1

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

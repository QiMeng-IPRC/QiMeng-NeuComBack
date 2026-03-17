; ModuleID = '../benchmarks/fine_grained/exebench/kernel649.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel649.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cssl_started = dso_local local_unnamed_addr global i32 0, align 4
@CSSL_ERROR_NOTSTARTED = dso_local local_unnamed_addr global i32 0, align 4
@cssl_error = dso_local local_unnamed_addr global i32 0, align 4
@CSSL_ERROR_NULLPOINTER = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @cssl_drain(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @cssl_started, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load i32, ptr @CSSL_ERROR_NOTSTARTED, align 4, !tbaa !5
  store i32 %5, ptr @cssl_error, align 4, !tbaa !5
  br label %13

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = load i32, ptr @CSSL_ERROR_NULLPOINTER, align 4, !tbaa !5
  store i32 %9, ptr @cssl_error, align 4, !tbaa !5
  br label %13

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 4, !tbaa !9
  %12 = tail call i32 @tcdrain(i32 noundef %11) #2
  br label %13

13:                                               ; preds = %10, %8, %4
  ret void
}

declare i32 @tcdrain(i32 noundef) local_unnamed_addr #1

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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_3__", !6, i64 0}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel855.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel855.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@pending_list = dso_local local_unnamed_addr global ptr null, align 8
@pending_queries = dso_local local_unnamed_addr global i64 0, align 8
@POLLOUT = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @wait_for_connected(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @pending_list, align 8, !tbaa !5
  %3 = load i64, ptr @pending_queries, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %2, i64 %3
  %5 = tail call i32 @memset(ptr noundef %4, i32 noundef 0, i32 noundef 8) #2
  %6 = load i32, ptr %0, align 4, !tbaa !11
  %7 = load ptr, ptr @pending_list, align 8, !tbaa !5
  %8 = load i64, ptr @pending_queries, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %7, i64 %8, i32 1
  store i32 %6, ptr %9, align 4, !tbaa !14
  %10 = load i32, ptr @POLLOUT, align 4, !tbaa !16
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %7, i64 %8
  store i32 %10, ptr %11, align 4, !tbaa !17
  %12 = add i64 %8, 1
  store i64 %12, ptr @pending_queries, align 8, !tbaa !9
  ret void
}

declare i32 @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!12 = !{!"conn_info", !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !13, i64 4}
!15 = !{!"TYPE_3__", !13, i64 0, !13, i64 4}
!16 = !{!13, !13, i64 0}
!17 = !{!15, !13, i64 0}

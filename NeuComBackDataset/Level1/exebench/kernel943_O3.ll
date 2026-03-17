; ModuleID = '../benchmarks/fine_grained/exebench/kernel943.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel943.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@AZ_VZERO = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @az_init_play_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @memset(ptr noundef %0, i32 noundef 0, i32 noundef 20) #2
  %3 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 3
  store i32 400, ptr %3, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 3, i32 1
  store i32 250, ptr %4, align 4, !tbaa !11
  %5 = load i32, ptr @AZ_VZERO, align 4, !tbaa !12
  %6 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 2
  store i32 %5, ptr %6, align 4, !tbaa !13
  store i32 3, ptr %0, align 4, !tbaa !14
  %7 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  store i32 3, ptr %7, align 4, !tbaa !15
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
!5 = !{!6, !7, i64 12}
!6 = !{!"TYPE_6__", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 12}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_5__", !7, i64 0, !7, i64 4}
!11 = !{!6, !7, i64 16}
!12 = !{!7, !7, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 0}
!15 = !{!6, !7, i64 4}

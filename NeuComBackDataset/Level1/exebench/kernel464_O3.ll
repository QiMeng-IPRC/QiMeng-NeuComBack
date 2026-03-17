; ModuleID = '../benchmarks/fine_grained/exebench/kernel464.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel464.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @getn(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %0, align 8, !tbaa !5
  %5 = sext i32 %2 to i64
  %6 = add nsw i64 %4, %5
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !11
  %9 = icmp sgt i64 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store i32 1, ptr %11, align 8, !tbaa !12
  br label %16

12:                                               ; preds = %3
  %13 = tail call i32 @memcpy(ptr noundef %1, i64 noundef %4, i32 noundef %2) #2
  %14 = load i64, ptr %0, align 8, !tbaa !5
  %15 = add nsw i64 %14, %5
  store i64 %15, ptr %0, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i32 [ 0, %10 ], [ 1, %12 ]
  ret i32 %17
}

declare i32 @memcpy(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

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
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 8, !10, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !10, i64 16}

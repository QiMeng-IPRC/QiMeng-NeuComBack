; ModuleID = '../benchmarks/fine_grained/exebench/kernel139.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel139.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @damage_player(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8, !tbaa !5
  %3 = add nsw i64 %2, -1
  store i64 %3, ptr %0, align 8, !tbaa !5
  %4 = icmp slt i64 %2, 2
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %10 = tail call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null)
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi i32 [ 1, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !10, i64 8, !10, i64 12}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 12}

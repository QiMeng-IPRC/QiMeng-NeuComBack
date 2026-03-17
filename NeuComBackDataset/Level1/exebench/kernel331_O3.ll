; ModuleID = '../benchmarks/fine_grained/exebench/kernel331.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel331.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ctrl = dso_local local_unnamed_addr global ptr null, align 8
@FALSE = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @vfe_stats_wb_exp_ack(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %3 = load ptr, ptr @ctrl, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %3, i64 0, i32 1
  store i32 %2, ptr %4, align 4, !tbaa !12
  %5 = load i32, ptr @FALSE, align 4, !tbaa !15
  store i32 %5, ptr %3, align 4, !tbaa !16
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"vfe_cmd_stats_wb_exp_ack", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !7, i64 4}
!13 = !{!"TYPE_4__", !14, i64 0}
!14 = !{!"TYPE_3__", !7, i64 0, !7, i64 4}
!15 = !{!7, !7, i64 0}
!16 = !{!13, !7, i64 0}

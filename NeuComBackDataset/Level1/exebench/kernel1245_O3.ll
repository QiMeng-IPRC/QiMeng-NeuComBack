; ModuleID = '../benchmarks/fine_grained/exebench/kernel1245.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1245.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet = type { i32, i32 }

@pte_internal = dso_local local_unnamed_addr global i32 0, align 4
@ppt_psbend = dso_local local_unnamed_addr global i32 0, align 4
@ptps_psbend = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @pt_pkt_decode_psbend(ptr nocapture noundef readnone %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load i32, ptr @pte_internal, align 4, !tbaa !5
  %6 = sub nsw i32 0, %5
  br label %12

7:                                                ; preds = %2
  %8 = load i32, ptr @ppt_psbend, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.pt_packet, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !9
  %10 = load i32, ptr @ptps_psbend, align 4, !tbaa !5
  store i32 %10, ptr %1, align 4, !tbaa !11
  %11 = load i32, ptr @ptps_psbend, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %7, %4
  %13 = phi i32 [ %11, %7 ], [ %6, %4 ]
  ret i32 %13
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !6, i64 4}
!10 = !{!"pt_packet", !6, i64 0, !6, i64 4}
!11 = !{!10, !6, i64 0}

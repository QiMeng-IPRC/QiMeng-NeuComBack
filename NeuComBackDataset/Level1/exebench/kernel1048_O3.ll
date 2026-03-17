; ModuleID = '../benchmarks/fine_grained/exebench/kernel1048.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1048.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminal = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MODE_ORIGIN = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @restore_state(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.terminal, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = load i32, ptr @MODE_ORIGIN, align 4, !tbaa !11
  %5 = and i32 %4, %3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %0, align 4, !tbaa !12
  %9 = or i32 %8, %4
  br label %14

10:                                               ; preds = %1
  %11 = xor i32 %4, -1
  %12 = load i32, ptr %0, align 4, !tbaa !12
  %13 = and i32 %12, %11
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ %13, %10 ], [ %9, %7 ]
  store i32 %15, ptr %0, align 4, !tbaa !12
  %16 = getelementptr inbounds %struct.terminal, ptr %0, i64 0, i32 1, i32 1
  %17 = getelementptr inbounds %struct.terminal, ptr %0, i64 0, i32 2
  %18 = load <2 x i32>, ptr %16, align 4, !tbaa !11
  store <2 x i32> %18, ptr %17, align 4, !tbaa !11
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 4}
!6 = !{!"terminal", !7, i64 0, !10, i64 4, !7, i64 16, !7, i64 20}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_2__", !7, i64 0, !7, i64 4, !7, i64 8}
!11 = !{!7, !7, i64 0}
!12 = !{!6, !7, i64 0}

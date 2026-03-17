; ModuleID = '../benchmarks/fine_grained/exebench/kernel1275.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1275.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DebugModeAGS = dso_local local_unnamed_addr global i32 0, align 4
@LatestBacktraceAGS = dso_local local_unnamed_addr global i32 0, align 4
@NumBacktracesAGS = dso_local local_unnamed_addr global i32 0, align 4
@BacktracesAGS = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @AddBacktraceAGS(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @DebugModeAGS, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @LatestBacktraceAGS, align 4, !tbaa !5
  %6 = add nsw i32 %5, 1
  %7 = icmp sgt i32 %5, 48
  %8 = select i1 %7, i32 0, i32 %6
  store i32 %8, ptr @LatestBacktraceAGS, align 4
  %9 = load i32, ptr @NumBacktracesAGS, align 4, !tbaa !5
  %10 = icmp slt i32 %9, 50
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = add nsw i32 %9, 1
  store i32 %12, ptr @NumBacktracesAGS, align 4, !tbaa !5
  br label %13

13:                                               ; preds = %11, %4
  %14 = load i32, ptr %0, align 4, !tbaa !5
  %15 = load ptr, ptr @BacktracesAGS, align 8, !tbaa !9
  %16 = sext i32 %8 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  store i32 %14, ptr %17, align 4, !tbaa !5
  br label %18

18:                                               ; preds = %1, %13
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}

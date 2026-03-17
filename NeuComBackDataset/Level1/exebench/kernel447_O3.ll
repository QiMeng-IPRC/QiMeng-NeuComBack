; ModuleID = '../benchmarks/fine_grained/exebench/kernel447.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel447.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@failed = dso_local local_unnamed_addr global i32 0, align 4
@passed = dso_local local_unnamed_addr global i32 0, align 4
@skipped = dso_local local_unnamed_addr global i32 0, align 4
@tests = dso_local local_unnamed_addr global i32 0, align 4
@switch.table.tp = private unnamed_addr constant [3 x ptr] [ptr @failed, ptr @passed, ptr @skipped], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @tp(i32 noundef returned %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 3
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [3 x ptr], ptr @switch.table.tp, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 4, !tbaa !5
  br label %9

9:                                                ; preds = %1, %3
  %10 = load i32, ptr @tests, align 4, !tbaa !5
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @tests, align 4, !tbaa !5
  ret i32 %0
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

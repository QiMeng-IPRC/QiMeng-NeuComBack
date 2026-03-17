; ModuleID = '../benchmarks/fine_grained/exebench/kernel1115.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1115.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @largest_combine_accum_help(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @INT_MAX, align 4, !tbaa !5
  %4 = add nsw i32 %3, -1
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %3, %0
  %8 = load i32, ptr %1, align 4, !tbaa !5
  br i1 %7, label %9, label %11

9:                                                ; preds = %6
  %10 = icmp eq i32 %8, %4
  br i1 %10, label %17, label %18

11:                                               ; preds = %6
  %12 = icmp eq i32 %8, %3
  %13 = icmp eq i32 %8, %4
  %14 = or i1 %12, %13
  %15 = icmp slt i32 %8, %0
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %9
  store i32 %0, ptr %1, align 4, !tbaa !5
  br label %18

18:                                               ; preds = %17, %11, %9, %2
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}

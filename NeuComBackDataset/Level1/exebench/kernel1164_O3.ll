; ModuleID = '../benchmarks/fine_grained/exebench/kernel1164.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1164.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lastwidth = dso_local local_unnamed_addr global i32 0, align 4
@GCLineWidth = dso_local local_unnamed_addr global i32 0, align 4
@needflush = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @SetWidth(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 1
  %3 = select i1 %2, i32 0, i32 %0
  %4 = load i32, ptr @lastwidth, align 4, !tbaa !5
  %5 = icmp eq i32 %4, %3
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  store i32 %3, ptr @lastwidth, align 4, !tbaa !5
  %7 = load i32, ptr @GCLineWidth, align 4, !tbaa !5
  %8 = load i32, ptr @needflush, align 4, !tbaa !5
  %9 = or i32 %8, %7
  store i32 %9, ptr @needflush, align 4, !tbaa !5
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

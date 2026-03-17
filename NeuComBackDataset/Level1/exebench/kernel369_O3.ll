; ModuleID = '../benchmarks/fine_grained/exebench/kernel369.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel369.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mingcheap = dso_local local_unnamed_addr global i32 0, align 4
@maxgcheap = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_heap_range(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @mingcheap, align 4, !tbaa !5
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store i32 %0, ptr @mingcheap, align 4, !tbaa !5
  br label %7

7:                                                ; preds = %2, %6
  %8 = load i32, ptr @maxgcheap, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  %10 = icmp ult i32 %8, %1
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 %1, ptr @maxgcheap, align 4, !tbaa !5
  br label %13

13:                                               ; preds = %7, %12
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

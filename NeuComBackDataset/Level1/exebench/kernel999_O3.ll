; ModuleID = '../benchmarks/fine_grained/exebench/kernel999.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel999.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINES = dso_local local_unnamed_addr global i32 0, align 4
@ERR = dso_local local_unnamed_addr global i32 0, align 4
@COLS = dso_local local_unnamed_addr global i32 0, align 4
@cursolY = dso_local local_unnamed_addr global i32 0, align 4
@cursolX = dso_local local_unnamed_addr global i32 0, align 4
@OK = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @move(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, -1
  %4 = load i32, ptr @LINES, align 4
  %5 = icmp sgt i32 %4, %0
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = icmp sgt i32 %1, -1
  %9 = load i32, ptr @COLS, align 4
  %10 = icmp sgt i32 %9, %1
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 %0, ptr @cursolY, align 4, !tbaa !5
  store i32 %1, ptr @cursolX, align 4, !tbaa !5
  br label %13

13:                                               ; preds = %7, %2, %12
  %14 = phi ptr [ @OK, %12 ], [ @ERR, %2 ], [ @ERR, %7 ]
  %15 = load i32, ptr %14, align 4, !tbaa !5
  ret i32 %15
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

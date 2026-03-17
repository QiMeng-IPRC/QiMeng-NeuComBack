; ModuleID = '../benchmarks/fine_grained/exebench/kernel597.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel597.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wPreviewScanned = dso_local local_unnamed_addr global i64 0, align 8
@SANE_TRUE = dso_local local_unnamed_addr global i32 0, align 4
@SANE_FALSE = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @fnSamplePreview(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @wPreviewScanned, align 8, !tbaa !5
  %3 = load i32, ptr %0, align 4, !tbaa !9
  %4 = trunc i64 %2 to i32
  %5 = add i32 %3, %4
  %6 = icmp sgt i32 %5, 149
  %7 = add nsw i32 %5, -150
  %8 = select i1 %6, i32 %7, i32 %5
  store i32 %8, ptr %0, align 4, !tbaa !9
  %9 = load i32, ptr @SANE_TRUE, align 4
  %10 = load i32, ptr @SANE_FALSE, align 4
  %11 = select i1 %6, i32 %9, i32 %10
  ret i32 %11
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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 0}
!10 = !{!"TYPE_5__", !11, i64 0}
!11 = !{!"TYPE_4__", !12, i64 0}
!12 = !{!"int", !7, i64 0}

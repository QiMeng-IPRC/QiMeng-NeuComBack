; ModuleID = '../benchmarks/fine_grained/exebench/kernel438.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel438.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctrlc_pressed = dso_local local_unnamed_addr global i64 0, align 8
@FALSE = dso_local local_unnamed_addr global i64 0, align 8
@TRUE = dso_local local_unnamed_addr global i32 0, align 4
@got_int = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @mch_breakcheck() local_unnamed_addr #0 {
  %1 = load i64, ptr @ctrlc_pressed, align 8, !tbaa !5
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, ptr @FALSE, align 8, !tbaa !5
  store i64 %4, ptr @ctrlc_pressed, align 8, !tbaa !5
  %5 = load i32, ptr @TRUE, align 4, !tbaa !9
  store i32 %5, ptr @got_int, align 4, !tbaa !9
  br label %6

6:                                                ; preds = %3, %0
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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}

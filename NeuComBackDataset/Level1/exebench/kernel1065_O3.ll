; ModuleID = '../benchmarks/fine_grained/exebench/kernel1065.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1065.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPV_stamp = dso_local local_unnamed_addr global i64 0, align 8
@OPV_recno = dso_local local_unnamed_addr global i64 0, align 8
@OPV_nofExitLabels = dso_local local_unnamed_addr global i64 0, align 8
@OPM_opt = dso_local local_unnamed_addr global i32 0, align 4
@OPV_assert = dso_local local_unnamed_addr global i32 0, align 4
@OPV_inxchk = dso_local local_unnamed_addr global i32 0, align 4
@OPV_mainprog = dso_local local_unnamed_addr global i32 0, align 4
@OPV_ansi = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @OPV_Init() local_unnamed_addr #0 {
  store i64 0, ptr @OPV_stamp, align 8, !tbaa !5
  store i64 0, ptr @OPV_recno, align 8, !tbaa !5
  store i64 0, ptr @OPV_nofExitLabels, align 8, !tbaa !5
  %1 = load i32, ptr @OPM_opt, align 4, !tbaa !9
  %2 = lshr i32 %1, 7
  %3 = and i32 %2, 1
  store i32 %3, ptr @OPV_assert, align 4, !tbaa !9
  %4 = and i32 %1, 1
  store i32 %4, ptr @OPV_inxchk, align 4, !tbaa !9
  %5 = lshr i32 %1, 10
  %6 = and i32 %5, 1
  store i32 %6, ptr @OPV_mainprog, align 4, !tbaa !9
  %7 = lshr i32 %1, 6
  %8 = and i32 %7, 1
  store i32 %8, ptr @OPV_ansi, align 4, !tbaa !9
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

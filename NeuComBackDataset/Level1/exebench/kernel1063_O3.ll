; ModuleID = '../benchmarks/fine_grained/exebench/kernel1063.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1063.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LFSR_S15 = dso_local local_unnamed_addr global i32 0, align 4
@LFSR_S14 = dso_local local_unnamed_addr global i32 0, align 4
@BRC_X0 = dso_local local_unnamed_addr global i32 0, align 4
@LFSR_S11 = dso_local local_unnamed_addr global i32 0, align 4
@LFSR_S9 = dso_local local_unnamed_addr global i32 0, align 4
@BRC_X1 = dso_local local_unnamed_addr global i32 0, align 4
@LFSR_S7 = dso_local local_unnamed_addr global i32 0, align 4
@LFSR_S5 = dso_local local_unnamed_addr global i32 0, align 4
@BRC_X2 = dso_local local_unnamed_addr global i32 0, align 4
@LFSR_S2 = dso_local local_unnamed_addr global i32 0, align 4
@LFSR_S0 = dso_local local_unnamed_addr global i32 0, align 4
@BRC_X3 = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BitReorganization() local_unnamed_addr #0 {
  %1 = load i32, ptr @LFSR_S15, align 4, !tbaa !5
  %2 = shl i32 %1, 1
  %3 = and i32 %2, -65536
  %4 = load i32, ptr @LFSR_S14, align 4, !tbaa !5
  %5 = and i32 %4, 65535
  %6 = or i32 %3, %5
  store i32 %6, ptr @BRC_X0, align 4, !tbaa !5
  %7 = load i32, ptr @LFSR_S11, align 4, !tbaa !5
  %8 = shl i32 %7, 16
  %9 = load i32, ptr @LFSR_S9, align 4, !tbaa !5
  %10 = ashr i32 %9, 15
  %11 = or i32 %10, %8
  store i32 %11, ptr @BRC_X1, align 4, !tbaa !5
  %12 = load i32, ptr @LFSR_S7, align 4, !tbaa !5
  %13 = shl i32 %12, 16
  %14 = load i32, ptr @LFSR_S5, align 4, !tbaa !5
  %15 = ashr i32 %14, 15
  %16 = or i32 %15, %13
  store i32 %16, ptr @BRC_X2, align 4, !tbaa !5
  %17 = load i32, ptr @LFSR_S2, align 4, !tbaa !5
  %18 = shl i32 %17, 16
  %19 = load i32, ptr @LFSR_S0, align 4, !tbaa !5
  %20 = ashr i32 %19, 15
  %21 = or i32 %20, %18
  store i32 %21, ptr @BRC_X3, align 4, !tbaa !5
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

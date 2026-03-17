; ModuleID = '../benchmarks/fine_grained/exebench/kernel647.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel647.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STM32_COMP_CSR = dso_local local_unnamed_addr global i32 0, align 4
@STM32_COMP_CMP1INSEL_MASK = dso_local local_unnamed_addr global i32 0, align 4
@STM32_COMP_CMP1EN = dso_local local_unnamed_addr global i32 0, align 4
@STM32_COMP_CMP1INSEL_INM4 = dso_local local_unnamed_addr global i32 0, align 4
@STM32_COMP_CMP1INSEL_INM6 = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @pd_select_polarity(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @STM32_COMP_CSR, align 4, !tbaa !5
  %3 = load i32, ptr @STM32_COMP_CMP1INSEL_MASK, align 4, !tbaa !5
  %4 = xor i32 %3, -1
  %5 = and i32 %2, %4
  %6 = load i32, ptr @STM32_COMP_CMP1EN, align 4, !tbaa !5
  %7 = or i32 %5, %6
  %8 = icmp eq i32 %0, 0
  %9 = load i32, ptr @STM32_COMP_CMP1INSEL_INM4, align 4
  %10 = load i32, ptr @STM32_COMP_CMP1INSEL_INM6, align 4
  %11 = select i1 %8, i32 %10, i32 %9
  %12 = or i32 %7, %11
  store i32 %12, ptr @STM32_COMP_CSR, align 4, !tbaa !5
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

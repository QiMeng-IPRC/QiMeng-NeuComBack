; ModuleID = '../benchmarks/fine_grained/exebench/kernel661.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel661.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEDS_PxOUT = dso_local local_unnamed_addr global i8 0, align 1
@LEDS_CONF_RED = dso_local local_unnamed_addr global i8 0, align 1
@LEDS_CONF_GREEN = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @leds_arch_get() local_unnamed_addr #0 {
  %1 = load i8, ptr @LEDS_PxOUT, align 1, !tbaa !5
  %2 = load i8, ptr @LEDS_CONF_RED, align 1, !tbaa !5
  %3 = and i8 %2, %1
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i8 4, i8 0
  %6 = load i8, ptr @LEDS_CONF_GREEN, align 1, !tbaa !5
  %7 = and i8 %6, %1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  %10 = or i8 %5, %9
  ret i8 %10
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel1180.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1180.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DDRB = dso_local local_unnamed_addr global i32 0, align 4
@PORTB = dso_local local_unnamed_addr global i32 0, align 4
@settings = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 4
@PCMSK0 = dso_local local_unnamed_addr global i32 0, align 4
@PCICR = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @limits_init() local_unnamed_addr #0 {
  %1 = load i32, ptr @DDRB, align 4, !tbaa !5
  %2 = and i32 %1, -15
  store i32 %2, ptr @DDRB, align 4, !tbaa !5
  %3 = load i32, ptr @PORTB, align 4, !tbaa !5
  %4 = or i32 %3, 14
  store i32 %4, ptr @PORTB, align 4, !tbaa !5
  %5 = load i32, ptr @settings, align 4, !tbaa !9
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr @PCMSK0, align 4, !tbaa !5
  %9 = load i32, ptr @PCICR, align 4, !tbaa !5
  %10 = and i32 %8, -15
  %11 = and i32 %9, -2
  %12 = select i1 %7, i32 0, i32 14
  %13 = or i32 %10, %12
  %14 = lshr exact i32 %6, 3
  %15 = or i32 %11, %14
  store i32 %13, ptr @PCMSK0, align 4
  store i32 %15, ptr @PCICR, align 4, !tbaa !5
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
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_2__", !6, i64 0}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel997.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel997.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDRD = dso_local local_unnamed_addr global i32 0, align 4
@DDRC = dso_local local_unnamed_addr global i32 0, align 4
@DDRA = dso_local local_unnamed_addr global i32 0, align 4
@DDRB = dso_local local_unnamed_addr global i32 0, align 4
@PORTD = dso_local local_unnamed_addr global i32 0, align 4
@PORTC = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @DRAM_Init() local_unnamed_addr #0 {
  %1 = load i32, ptr @DDRD, align 4, !tbaa !5
  %2 = or i32 %1, 224
  store i32 %2, ptr @DDRD, align 4, !tbaa !5
  %3 = load i32, ptr @DDRC, align 4, !tbaa !5
  store i32 255, ptr @DDRA, align 4, !tbaa !5
  %4 = or i32 %3, 3
  store i32 %4, ptr @DDRC, align 4, !tbaa !5
  %5 = load i32, ptr @DDRB, align 4, !tbaa !5
  %6 = and i32 %5, 240
  store i32 %6, ptr @DDRB, align 4, !tbaa !5
  %7 = load i32, ptr @PORTD, align 4, !tbaa !5
  %8 = or i32 %7, 224
  store i32 %8, ptr @PORTD, align 4, !tbaa !5
  %9 = load i32, ptr @PORTC, align 4, !tbaa !5
  %10 = or i32 %9, 1
  store i32 %10, ptr @PORTC, align 4, !tbaa !5
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

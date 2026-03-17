; ModuleID = '../benchmarks/fine_grained/exebench/kernel392.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel392.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PB5 = dso_local local_unnamed_addr global i32 0, align 4
@PB6 = dso_local local_unnamed_addr global i32 0, align 4
@PB3 = dso_local local_unnamed_addr global i32 0, align 4
@DDRB = dso_local local_unnamed_addr global i32 0, align 4
@PORTB = dso_local local_unnamed_addr global i32 0, align 4
@PB0 = dso_local local_unnamed_addr global i32 0, align 4
@DDRD = dso_local local_unnamed_addr global i32 0, align 4
@PORTD = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @ergodox_led_init() local_unnamed_addr #0 {
  %1 = load i32, ptr @PB5, align 4, !tbaa !5
  %2 = shl nuw i32 1, %1
  %3 = load i32, ptr @PB6, align 4, !tbaa !5
  %4 = shl nuw i32 1, %3
  %5 = load i32, ptr @PB3, align 4, !tbaa !5
  %6 = shl nuw i32 1, %5
  %7 = or i32 %4, %6
  %8 = or i32 %7, %2
  %9 = load i32, ptr @DDRB, align 4, !tbaa !5
  %10 = or i32 %8, %9
  %11 = xor i32 %8, -1
  %12 = load i32, ptr @PORTB, align 4, !tbaa !5
  %13 = and i32 %12, %11
  %14 = load i32, ptr @PB0, align 4, !tbaa !5
  %15 = shl nuw i32 1, %14
  %16 = or i32 %15, %10
  store i32 %16, ptr @DDRB, align 4, !tbaa !5
  %17 = or i32 %15, %13
  store i32 %17, ptr @PORTB, align 4, !tbaa !5
  %18 = load i32, ptr @DDRD, align 4, !tbaa !5
  %19 = or i32 %18, %2
  store i32 %19, ptr @DDRD, align 4, !tbaa !5
  %20 = load i32, ptr @PORTD, align 4, !tbaa !5
  %21 = or i32 %20, %2
  store i32 %21, ptr @PORTD, align 4, !tbaa !5
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

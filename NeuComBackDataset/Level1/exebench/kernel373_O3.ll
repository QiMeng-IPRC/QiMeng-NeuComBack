; ModuleID = '../benchmarks/fine_grained/exebench/kernel373.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel373.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COM1B1 = dso_local local_unnamed_addr global i32 0, align 4
@TCCR1A = dso_local local_unnamed_addr global i32 0, align 4
@COM1B0 = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @timer1_out_B_clear_on_compare_match() local_unnamed_addr #0 {
  %1 = load i32, ptr @COM1B1, align 4, !tbaa !5
  %2 = shl nuw i32 1, %1
  %3 = load i32, ptr @TCCR1A, align 4, !tbaa !5
  %4 = or i32 %3, %2
  %5 = load i32, ptr @COM1B0, align 4, !tbaa !5
  %6 = shl nuw i32 1, %5
  %7 = xor i32 %6, -1
  %8 = and i32 %4, %7
  store i32 %8, ptr @TCCR1A, align 4, !tbaa !5
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

; ModuleID = '../benchmarks/fine_grained/exebench/kernel1508.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1508.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P1DIR = dso_local local_unnamed_addr global i32 0, align 4
@PERCFG = dso_local local_unnamed_addr global i32 0, align 4
@P1SEL = dso_local local_unnamed_addr global i32 0, align 4
@U1CSR = dso_local local_unnamed_addr global i32 0, align 4
@U1BAUD = dso_local local_unnamed_addr global i32 0, align 4
@U1GCR = dso_local local_unnamed_addr global i32 0, align 4
@U1UCR = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @usart_init() local_unnamed_addr #0 {
  %1 = load i32, ptr @P1DIR, align 4, !tbaa !5
  %2 = or i32 %1, 4
  store i32 %2, ptr @P1DIR, align 4, !tbaa !5
  store i32 2, ptr @PERCFG, align 4, !tbaa !5
  %3 = load i32, ptr @P1SEL, align 4, !tbaa !5
  %4 = or i32 %3, 192
  store i32 %4, ptr @P1SEL, align 4, !tbaa !5
  store i32 192, ptr @U1CSR, align 4, !tbaa !5
  store i32 163, ptr @U1BAUD, align 4, !tbaa !5
  store i32 10, ptr @U1GCR, align 4, !tbaa !5
  store i32 166, ptr @U1UCR, align 4, !tbaa !5
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

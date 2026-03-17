; ModuleID = '../benchmarks/fine_grained/exebench/kernel792.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel792.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLKPCE = dso_local local_unnamed_addr global i32 0, align 4
@CLKPR = dso_local local_unnamed_addr global i32 0, align 4
@DDRD = dso_local local_unnamed_addr global i32 0, align 4
@DDC5 = dso_local local_unnamed_addr global i32 0, align 4
@DDRC = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @sound_init() local_unnamed_addr #0 {
  store i32 3, ptr @CLKPR, align 4, !tbaa !5
  store i32 255, ptr @DDRD, align 4, !tbaa !5
  %1 = load i32, ptr @DDC5, align 4, !tbaa !5
  %2 = shl nuw i32 1, %1
  store i32 %2, ptr @DDRC, align 4, !tbaa !5
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

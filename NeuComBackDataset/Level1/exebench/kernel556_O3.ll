; ModuleID = '../benchmarks/fine_grained/exebench/kernel556.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel556.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@motor = dso_local local_unnamed_addr global ptr null, align 8
@LL1 = dso_local local_unnamed_addr global i64 0, align 8
@LR1 = dso_local local_unnamed_addr global i64 0, align 8
@LR2 = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @activateLauncher(float noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @motor, align 8, !tbaa !5
  %3 = load i64, ptr @LL1, align 8, !tbaa !9
  %4 = getelementptr inbounds float, ptr %2, i64 %3
  store float %0, ptr %4, align 4, !tbaa !11
  %5 = load i64, ptr @LR1, align 8, !tbaa !9
  %6 = getelementptr inbounds float, ptr %2, i64 %5
  store float %0, ptr %6, align 4, !tbaa !11
  %7 = load i64, ptr @LR2, align 8, !tbaa !9
  %8 = getelementptr inbounds float, ptr %2, i64 %7
  store float %0, ptr %8, align 4, !tbaa !11
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}

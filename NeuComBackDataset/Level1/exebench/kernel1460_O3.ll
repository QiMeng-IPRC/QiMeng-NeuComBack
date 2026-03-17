; ModuleID = '../benchmarks/fine_grained/exebench/kernel1460.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1460.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @br(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %1, 24
  %4 = ashr exact i32 %3, 23
  %5 = load <2 x i32>, ptr %0, align 4, !tbaa !5
  %6 = insertelement <2 x i32> <i32 -12, i32 poison>, i32 %4, i64 1
  %7 = add nsw <2 x i32> %5, %6
  store <2 x i32> %7, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

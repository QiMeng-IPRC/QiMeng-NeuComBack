; ModuleID = '../benchmarks/fine_grained/exebench/kernel376.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel376.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local nonnull ptr @ne_stream4(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 255
  store i32 %3, ptr %0, align 4, !tbaa !5
  %4 = lshr i32 %1, 8
  %5 = and i32 %4, 255
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !5
  %7 = lshr i32 %1, 16
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds i32, ptr %0, i64 2
  store i32 %8, ptr %9, align 4, !tbaa !5
  %10 = lshr i32 %1, 24
  %11 = getelementptr inbounds i32, ptr %0, i64 3
  store i32 %10, ptr %11, align 4, !tbaa !5
  %12 = getelementptr inbounds i32, ptr %0, i64 4
  ret ptr %12
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

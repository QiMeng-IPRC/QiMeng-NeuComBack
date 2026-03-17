; ModuleID = '../benchmarks/fine_grained/exebench/kernel1452.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1452.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local i32 @writeInt64(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 24
  %4 = getelementptr inbounds i32, ptr %0, i64 4
  store i32 %3, ptr %4, align 4, !tbaa !5
  %5 = lshr i32 %1, 16
  %6 = and i32 %5, 255
  %7 = getelementptr inbounds i32, ptr %0, i64 5
  store i32 %6, ptr %7, align 4, !tbaa !5
  %8 = lshr i32 %1, 8
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds i32, ptr %0, i64 6
  store i32 %9, ptr %10, align 4, !tbaa !5
  %11 = and i32 %1, 255
  %12 = getelementptr inbounds i32, ptr %0, i64 7
  store i32 %11, ptr %12, align 4, !tbaa !5
  ret i32 8
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

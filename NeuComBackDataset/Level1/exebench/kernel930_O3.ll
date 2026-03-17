; ModuleID = '../benchmarks/fine_grained/exebench/kernel930.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel930.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitrv208(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i32, ptr %0, i64 2
  %3 = load <2 x i32>, ptr %2, align 4, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %0, i64 6
  %5 = getelementptr inbounds i32, ptr %0, i64 8
  %6 = getelementptr inbounds i32, ptr %0, i64 12
  %7 = load <2 x i32>, ptr %6, align 4, !tbaa !5
  %8 = load <2 x i32>, ptr %5, align 4, !tbaa !5
  store <2 x i32> %8, ptr %2, align 4, !tbaa !5
  %9 = shufflevector <2 x i32> %7, <2 x i32> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = load <2 x i32>, ptr %4, align 4, !tbaa !5
  store <4 x i32> %9, ptr %4, align 4, !tbaa !5
  store <2 x i32> %10, ptr %6, align 4, !tbaa !5
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

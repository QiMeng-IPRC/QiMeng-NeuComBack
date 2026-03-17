; ModuleID = '../benchmarks/fine_grained/exebench/kernel584.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel584.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitrv216neg(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i32, ptr %0, i64 2
  %3 = load <2 x i32>, ptr %2, align 4, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %0, i64 4
  %5 = load <2 x i32>, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %0, i64 6
  %7 = load <2 x i32>, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds i32, ptr %0, i64 8
  %9 = load <2 x i32>, ptr %8, align 4, !tbaa !5
  %10 = getelementptr inbounds i32, ptr %0, i64 10
  %11 = load <2 x i32>, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds i32, ptr %0, i64 12
  %13 = load <2 x i32>, ptr %12, align 4, !tbaa !5
  %14 = getelementptr inbounds i32, ptr %0, i64 14
  %15 = load <2 x i32>, ptr %14, align 4, !tbaa !5
  %16 = getelementptr inbounds i32, ptr %0, i64 16
  %17 = getelementptr inbounds i32, ptr %0, i64 18
  %18 = load <2 x i32>, ptr %17, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, ptr %0, i64 20
  %20 = load <2 x i32>, ptr %19, align 4, !tbaa !5
  %21 = getelementptr inbounds i32, ptr %0, i64 22
  %22 = load <2 x i32>, ptr %21, align 4, !tbaa !5
  %23 = getelementptr inbounds i32, ptr %0, i64 24
  %24 = load <2 x i32>, ptr %23, align 4, !tbaa !5
  %25 = getelementptr inbounds i32, ptr %0, i64 26
  %26 = load <2 x i32>, ptr %25, align 4, !tbaa !5
  %27 = getelementptr inbounds i32, ptr %0, i64 28
  %28 = load <2 x i32>, ptr %27, align 4, !tbaa !5
  %29 = getelementptr inbounds i32, ptr %0, i64 30
  %30 = load <2 x i32>, ptr %29, align 4, !tbaa !5
  %31 = shufflevector <2 x i32> %30, <2 x i32> %15, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %31, ptr %2, align 4, !tbaa !5
  %32 = shufflevector <2 x i32> %22, <2 x i32> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %32, ptr %6, align 4, !tbaa !5
  %33 = shufflevector <2 x i32> %26, <2 x i32> %11, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %33, ptr %10, align 4, !tbaa !5
  %34 = shufflevector <2 x i32> %18, <2 x i32> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %35 = shufflevector <2 x i32> %28, <2 x i32> %13, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %35, ptr %17, align 4, !tbaa !5
  %36 = shufflevector <2 x i32> %20, <2 x i32> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %36, ptr %21, align 4, !tbaa !5
  %37 = shufflevector <2 x i32> %24, <2 x i32> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %37, ptr %25, align 4, !tbaa !5
  %38 = load <2 x i32>, ptr %16, align 4, !tbaa !5
  store <4 x i32> %34, ptr %14, align 4, !tbaa !5
  store <2 x i32> %38, ptr %29, align 4, !tbaa !5
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

; ModuleID = '../benchmarks/fine_grained/exebench/kernel749.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel749.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @acado_rhs_forw(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i32, ptr %0, i64 15
  %4 = getelementptr inbounds i32, ptr %0, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !5
  store i32 %5, ptr %1, align 4, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %0, i64 2
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %7, ptr %8, align 4, !tbaa !5
  %9 = load i32, ptr %3, align 4, !tbaa !5
  %10 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %9, ptr %10, align 4, !tbaa !5
  %11 = getelementptr inbounds i32, ptr %0, i64 6
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %12, ptr %13, align 4, !tbaa !5
  %14 = getelementptr inbounds i32, ptr %0, i64 7
  %15 = load i32, ptr %14, align 4, !tbaa !5
  %16 = getelementptr inbounds i32, ptr %1, i64 4
  store i32 %15, ptr %16, align 4, !tbaa !5
  %17 = getelementptr inbounds i32, ptr %0, i64 8
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, ptr %1, i64 5
  store i32 %18, ptr %19, align 4, !tbaa !5
  %20 = getelementptr inbounds i32, ptr %0, i64 9
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = getelementptr inbounds i32, ptr %1, i64 6
  store i32 %21, ptr %22, align 4, !tbaa !5
  %23 = getelementptr inbounds i32, ptr %0, i64 10
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = getelementptr inbounds i32, ptr %1, i64 7
  store i32 %24, ptr %25, align 4, !tbaa !5
  %26 = getelementptr inbounds i32, ptr %0, i64 11
  %27 = load i32, ptr %26, align 4, !tbaa !5
  %28 = getelementptr inbounds i32, ptr %1, i64 8
  store i32 %27, ptr %28, align 4, !tbaa !5
  %29 = getelementptr inbounds i32, ptr %1, i64 9
  store i32 0, ptr %29, align 4, !tbaa !5
  %30 = getelementptr inbounds i32, ptr %1, i64 10
  store i32 0, ptr %30, align 4, !tbaa !5
  %31 = getelementptr inbounds i32, ptr %1, i64 11
  store i32 0, ptr %31, align 4, !tbaa !5
  %32 = getelementptr inbounds i32, ptr %0, i64 13
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = getelementptr inbounds i32, ptr %1, i64 12
  store i32 %33, ptr %34, align 4, !tbaa !5
  %35 = getelementptr inbounds i32, ptr %0, i64 14
  %36 = load i32, ptr %35, align 4, !tbaa !5
  %37 = getelementptr inbounds i32, ptr %1, i64 13
  store i32 %36, ptr %37, align 4, !tbaa !5
  %38 = getelementptr inbounds i32, ptr %1, i64 14
  store i32 1, ptr %38, align 4, !tbaa !5
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

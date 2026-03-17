; ModuleID = '../benchmarks/fine_grained/exebench/kernel409.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel409.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mcpy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !5
  store i32 %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds i32, ptr %1, i64 2
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds i32, ptr %0, i64 2
  store i32 %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds i32, ptr %1, i64 3
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds i32, ptr %0, i64 3
  store i32 %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds i32, ptr %1, i64 4
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds i32, ptr %0, i64 4
  store i32 %14, ptr %15, align 4, !tbaa !5
  %16 = getelementptr inbounds i32, ptr %1, i64 5
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = getelementptr inbounds i32, ptr %0, i64 5
  store i32 %17, ptr %18, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, ptr %1, i64 6
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = getelementptr inbounds i32, ptr %0, i64 6
  store i32 %20, ptr %21, align 4, !tbaa !5
  %22 = getelementptr inbounds i32, ptr %1, i64 7
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = getelementptr inbounds i32, ptr %0, i64 7
  store i32 %23, ptr %24, align 4, !tbaa !5
  %25 = getelementptr inbounds i32, ptr %1, i64 8
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = getelementptr inbounds i32, ptr %0, i64 8
  store i32 %26, ptr %27, align 4, !tbaa !5
  %28 = getelementptr inbounds i32, ptr %1, i64 9
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = getelementptr inbounds i32, ptr %0, i64 9
  store i32 %29, ptr %30, align 4, !tbaa !5
  %31 = getelementptr inbounds i32, ptr %1, i64 10
  %32 = load i32, ptr %31, align 4, !tbaa !5
  %33 = getelementptr inbounds i32, ptr %0, i64 10
  store i32 %32, ptr %33, align 4, !tbaa !5
  %34 = getelementptr inbounds i32, ptr %1, i64 11
  %35 = load i32, ptr %34, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, ptr %0, i64 11
  store i32 %35, ptr %36, align 4, !tbaa !5
  %37 = getelementptr inbounds i32, ptr %1, i64 12
  %38 = load i32, ptr %37, align 4, !tbaa !5
  %39 = getelementptr inbounds i32, ptr %0, i64 12
  store i32 %38, ptr %39, align 4, !tbaa !5
  %40 = getelementptr inbounds i32, ptr %1, i64 13
  %41 = load i32, ptr %40, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, ptr %0, i64 13
  store i32 %41, ptr %42, align 4, !tbaa !5
  %43 = getelementptr inbounds i32, ptr %1, i64 14
  %44 = load i32, ptr %43, align 4, !tbaa !5
  %45 = getelementptr inbounds i32, ptr %0, i64 14
  store i32 %44, ptr %45, align 4, !tbaa !5
  %46 = getelementptr inbounds i32, ptr %1, i64 15
  %47 = load i32, ptr %46, align 4, !tbaa !5
  %48 = getelementptr inbounds i32, ptr %0, i64 15
  store i32 %47, ptr %48, align 4, !tbaa !5
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

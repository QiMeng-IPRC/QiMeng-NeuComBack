; ModuleID = '../benchmarks/fine_grained/exebench/kernel714.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel714.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @od_pre_filter4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %1, i64 3
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = sub nsw i32 %3, %5
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds i32, ptr %1, i64 2
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = sub nsw i32 %8, %10
  %12 = ashr i32 %11, 1
  %13 = sub nsw i32 %8, %12
  %14 = ashr i32 %6, 1
  %15 = sub nsw i32 %3, %14
  %16 = mul nsw i32 %11, 85
  %17 = ashr i32 %16, 6
  %18 = icmp sgt i32 %11, 0
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 %17, %19
  %21 = mul nsw i32 %6, 75
  %22 = ashr i32 %21, 6
  %23 = icmp sgt i32 %6, 0
  %24 = zext i1 %23 to i32
  %25 = add nsw i32 %22, %24
  %26 = mul nsw i32 %20, -15
  %27 = add nsw i32 %26, 32
  %28 = ashr i32 %27, 6
  %29 = add nsw i32 %25, %28
  %30 = mul nsw i32 %29, 33
  %31 = add nsw i32 %30, 32
  %32 = ashr i32 %31, 6
  %33 = add nsw i32 %32, %20
  %34 = ashr i32 %29, 1
  %35 = add nsw i32 %34, %15
  store i32 %35, ptr %0, align 4, !tbaa !5
  %36 = ashr i32 %33, 1
  %37 = add nsw i32 %36, %13
  %38 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %37, ptr %38, align 4, !tbaa !5
  %39 = sub nsw i32 %37, %33
  %40 = getelementptr inbounds i32, ptr %0, i64 2
  store i32 %39, ptr %40, align 4, !tbaa !5
  %41 = sub nsw i32 %35, %29
  %42 = getelementptr inbounds i32, ptr %0, i64 3
  store i32 %41, ptr %42, align 4, !tbaa !5
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

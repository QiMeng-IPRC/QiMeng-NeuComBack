; ModuleID = '../benchmarks/fine_grained/exebench/kernel1004.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1004.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = dso_local local_unnamed_addr global i8 0, align 1
@bb = dso_local local_unnamed_addr global i8 0, align 1
@cc = dso_local local_unnamed_addr global i8 0, align 1
@dd = dso_local local_unnamed_addr global i8 0, align 1
@ee = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @leds_name_repaint() local_unnamed_addr #0 {
  %1 = load i8, ptr @aa, align 1, !tbaa !5
  %2 = add i8 %1, 1
  %3 = add i8 %1, 2
  %4 = add i8 %1, 3
  %5 = add i8 %1, 4
  %6 = add i8 %1, 5
  %7 = icmp ugt i8 %1, 1
  br i1 %7, label %8, label %46

8:                                                ; preds = %0
  %9 = load i8, ptr @ee, align 1, !tbaa !5
  %10 = load i8, ptr @dd, align 1, !tbaa !5
  %11 = load i8, ptr @cc, align 1, !tbaa !5
  %12 = load i8, ptr @bb, align 1, !tbaa !5
  %13 = add i8 %2, %1
  store i8 %13, ptr @aa, align 1, !tbaa !5
  %14 = add i8 %3, %12
  store i8 %14, ptr @bb, align 1, !tbaa !5
  %15 = add i8 %4, %11
  store i8 %15, ptr @cc, align 1, !tbaa !5
  %16 = add i8 %5, %10
  store i8 %16, ptr @dd, align 1, !tbaa !5
  %17 = add i8 %6, %9
  store i8 %17, ptr @ee, align 1, !tbaa !5
  %18 = icmp ugt i8 %13, 1
  br i1 %18, label %19, label %46

19:                                               ; preds = %8
  %20 = add i8 %2, %13
  store i8 %20, ptr @aa, align 1, !tbaa !5
  %21 = add i8 %3, %14
  store i8 %21, ptr @bb, align 1, !tbaa !5
  %22 = add i8 %4, %15
  store i8 %22, ptr @cc, align 1, !tbaa !5
  %23 = add i8 %5, %16
  store i8 %23, ptr @dd, align 1, !tbaa !5
  %24 = add i8 %6, %17
  store i8 %24, ptr @ee, align 1, !tbaa !5
  %25 = icmp ugt i8 %20, 1
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = add i8 %2, %20
  store i8 %27, ptr @aa, align 1, !tbaa !5
  %28 = add i8 %3, %21
  store i8 %28, ptr @bb, align 1, !tbaa !5
  %29 = add i8 %4, %22
  store i8 %29, ptr @cc, align 1, !tbaa !5
  %30 = add i8 %5, %23
  store i8 %30, ptr @dd, align 1, !tbaa !5
  %31 = add i8 %6, %24
  store i8 %31, ptr @ee, align 1, !tbaa !5
  %32 = icmp ugt i8 %27, 1
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = add i8 %2, %27
  store i8 %34, ptr @aa, align 1, !tbaa !5
  %35 = add i8 %3, %28
  store i8 %35, ptr @bb, align 1, !tbaa !5
  %36 = add i8 %4, %29
  store i8 %36, ptr @cc, align 1, !tbaa !5
  %37 = add i8 %5, %30
  store i8 %37, ptr @dd, align 1, !tbaa !5
  %38 = add i8 %6, %31
  store i8 %38, ptr @ee, align 1, !tbaa !5
  %39 = icmp ugt i8 %34, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = add i8 %2, %34
  store i8 %41, ptr @aa, align 1, !tbaa !5
  %42 = add i8 %3, %35
  store i8 %42, ptr @bb, align 1, !tbaa !5
  %43 = add i8 %4, %36
  store i8 %43, ptr @cc, align 1, !tbaa !5
  %44 = add i8 %5, %37
  store i8 %44, ptr @dd, align 1, !tbaa !5
  %45 = add i8 %6, %38
  store i8 %45, ptr @ee, align 1, !tbaa !5
  br label %46

46:                                               ; preds = %0, %8, %19, %26, %40, %33
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}

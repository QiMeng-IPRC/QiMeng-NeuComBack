; ModuleID = '../benchmarks/fine_grained/exebench/kernel308.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel308.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@y = dso_local local_unnamed_addr global i32 0, align 4
@lens_width = dso_local local_unnamed_addr global i32 0, align 4
@video_height = dso_local local_unnamed_addr global i32 0, align 4
@x = dso_local local_unnamed_addr global i32 0, align 4
@video_width = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @clipmag() local_unnamed_addr #0 {
  %1 = load i32, ptr @y, align 4, !tbaa !5
  %2 = load i32, ptr @lens_width, align 4, !tbaa !5
  %3 = sdiv i32 %2, -2
  %4 = icmp sgt i32 %1, %3
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = add nsw i32 %3, 1
  store i32 %6, ptr @y, align 4, !tbaa !5
  br label %7

7:                                                ; preds = %5, %0
  %8 = phi i32 [ %6, %5 ], [ %1, %0 ]
  %9 = load i32, ptr @video_height, align 4, !tbaa !5
  %10 = add nsw i32 %3, -1
  %11 = add i32 %10, %9
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  store i32 %11, ptr @y, align 4, !tbaa !5
  br label %14

14:                                               ; preds = %13, %7
  %15 = load i32, ptr @x, align 4, !tbaa !5
  %16 = icmp sgt i32 %15, %3
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = add nsw i32 %3, 1
  store i32 %18, ptr @x, align 4, !tbaa !5
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %18, %17 ], [ %15, %14 ]
  %21 = load i32, ptr @video_width, align 4, !tbaa !5
  %22 = add i32 %10, %21
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 %22, ptr @x, align 4, !tbaa !5
  br label %25

25:                                               ; preds = %24, %19
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}

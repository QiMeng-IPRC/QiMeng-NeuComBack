; ModuleID = '../benchmarks/fine_grained/exebench/kernel239.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel239.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @pseudonoise(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = icmp sgt i64 %1, 0
  br i1 %4, label %5, label %51

5:                                                ; preds = %2
  %6 = and i64 %1, 1
  %7 = icmp eq i64 %1, 1
  br i1 %7, label %36, label %8

8:                                                ; preds = %5
  %9 = and i64 %1, -2
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i64 [ %3, %8 ], [ %31, %10 ]
  %12 = phi i64 [ 0, %8 ], [ %27, %10 ]
  %13 = phi i64 [ 0, %8 ], [ %32, %10 ]
  %14 = lshr i64 %11, 28
  %15 = xor i64 %14, %11
  %16 = ashr i64 %11, 1
  %17 = shl i64 %15, 30
  %18 = and i64 %17, 1073741824
  %19 = or i64 %18, %16
  %20 = and i64 %16, 1
  %21 = lshr i64 %16, 28
  %22 = xor i64 %21, %16
  %23 = shl i64 %12, 2
  %24 = shl i64 %11, 1
  %25 = and i64 %24, 2
  %26 = or i64 %23, %25
  %27 = or i64 %20, %26
  %28 = ashr i64 %19, 1
  %29 = shl i64 %22, 30
  %30 = and i64 %29, 1073741824
  %31 = or i64 %30, %28
  %32 = add i64 %13, 2
  %33 = icmp eq i64 %32, %9
  br i1 %33, label %34, label %10, !llvm.loop !9

34:                                               ; preds = %10
  %35 = shl i64 %27, 1
  br label %36

36:                                               ; preds = %34, %5
  %37 = phi i64 [ undef, %5 ], [ %27, %34 ]
  %38 = phi i64 [ undef, %5 ], [ %31, %34 ]
  %39 = phi i64 [ %3, %5 ], [ %31, %34 ]
  %40 = phi i64 [ 0, %5 ], [ %35, %34 ]
  %41 = icmp eq i64 %6, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = and i64 %39, 1
  %44 = lshr i64 %39, 28
  %45 = xor i64 %44, %39
  %46 = or i64 %43, %40
  %47 = ashr i64 %39, 1
  %48 = shl i64 %45, 30
  %49 = and i64 %48, 1073741824
  %50 = or i64 %49, %47
  br label %51

51:                                               ; preds = %42, %36, %2
  %52 = phi i64 [ 0, %2 ], [ %37, %36 ], [ %46, %42 ]
  %53 = phi i64 [ %3, %2 ], [ %38, %36 ], [ %50, %42 ]
  store i64 %53, ptr %0, align 8, !tbaa !5
  ret i64 %52
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}

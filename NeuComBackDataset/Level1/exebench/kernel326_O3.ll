; ModuleID = '../benchmarks/fine_grained/exebench/kernel326.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel326.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@right_contiguous = dso_local local_unnamed_addr global ptr null, align 8
@right_flip = dso_local local_unnamed_addr global ptr null, align 8
@lsb_mask = dso_local local_unnamed_addr global ptr null, align 8
@bb_flips = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @TestFlips_bitboard_b2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @right_contiguous, align 8, !tbaa !5
  %6 = lshr i32 %3, 10
  %7 = and i32 %6, 31
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !9
  %11 = load ptr, ptr @right_flip, align 8, !tbaa !5
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i32, ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !9
  %15 = shl i32 %14, 10
  %16 = and i32 %15, %1
  %17 = icmp sgt i32 %16, 0
  %18 = sext i1 %17 to i32
  %19 = and i32 %15, %18
  %20 = or i32 %19, %1
  %21 = and i32 %10, %18
  %22 = and i32 %3, 131072
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %4
  %25 = and i32 %3, 33554432
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = lshr i32 %2, 1
  %29 = and i32 %28, 1
  %30 = or i32 %29, 2
  %31 = lshr i32 %2, 9
  %32 = and i32 %29, %31
  %33 = add nuw nsw i32 %30, %32
  %34 = lshr i32 %2, 17
  %35 = and i32 %32, %34
  %36 = add nuw nsw i32 %33, %35
  %37 = load ptr, ptr @lsb_mask, align 8, !tbaa !5
  %38 = add nsw i32 %36, -2
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %37, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !9
  %42 = and i32 %41, 33686018
  %43 = and i32 %42, %0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %27
  %46 = or i32 %42, %0
  %47 = or i32 %20, 33685504
  %48 = add nsw i32 %21, %36
  br label %55

49:                                               ; preds = %24
  %50 = lshr i32 %20, 25
  %51 = and i32 %50, 1
  %52 = shl nuw nsw i32 %51, 17
  %53 = or i32 %52, %20
  %54 = add i32 %51, %21
  br label %55

55:                                               ; preds = %49, %45, %27, %4
  %56 = phi i32 [ %47, %45 ], [ %20, %27 ], [ %53, %49 ], [ %20, %4 ]
  %57 = phi i32 [ %48, %45 ], [ %21, %27 ], [ %54, %49 ], [ %21, %4 ]
  %58 = phi i32 [ %46, %45 ], [ %0, %27 ], [ %0, %49 ], [ %0, %4 ]
  %59 = and i32 %3, 262144
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %92, label %61

61:                                               ; preds = %55
  %62 = and i32 %3, 134217728
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %61
  %65 = lshr i32 %2, 4
  %66 = and i32 %65, 1
  %67 = or i32 %66, 2
  %68 = lshr i32 %2, 13
  %69 = and i32 %66, %68
  %70 = add nuw nsw i32 %67, %69
  %71 = lshr i32 %2, 22
  %72 = and i32 %69, %71
  %73 = add nuw nsw i32 %70, %72
  %74 = load ptr, ptr @lsb_mask, align 8, !tbaa !5
  %75 = add nsw i32 %73, -2
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %74, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !9
  %79 = and i32 %78, -2143281136
  %80 = and i32 %79, %58
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %64
  %83 = or i32 %79, %58
  %84 = or i32 %56, 134479872
  %85 = add nsw i32 %57, %73
  br label %92

86:                                               ; preds = %61
  %87 = lshr i32 %56, 27
  %88 = and i32 %87, 1
  %89 = shl nuw nsw i32 %88, 18
  %90 = or i32 %89, %56
  %91 = add i32 %88, %57
  br label %92

92:                                               ; preds = %86, %82, %64, %55
  %93 = phi i32 [ %84, %82 ], [ %56, %64 ], [ %90, %86 ], [ %56, %55 ]
  %94 = phi i32 [ %85, %82 ], [ %57, %64 ], [ %91, %86 ], [ %57, %55 ]
  %95 = phi i32 [ %83, %82 ], [ %58, %64 ], [ %58, %86 ], [ %58, %55 ]
  %96 = or i32 %93, 512
  store i32 %95, ptr @bb_flips, align 4, !tbaa !11
  store i32 %96, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bb_flips, i64 0, i32 1), align 4, !tbaa !13
  ret i32 %94
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"TYPE_2__", !10, i64 0, !10, i64 4}
!13 = !{!12, !10, i64 4}

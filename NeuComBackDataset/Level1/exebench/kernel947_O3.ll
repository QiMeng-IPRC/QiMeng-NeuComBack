; ModuleID = '../benchmarks/fine_grained/exebench/kernel947.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel947.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Tx = dso_local local_unnamed_addr global i32 0, align 4
@Testx = dso_local local_unnamed_addr global i32 0, align 4
@T3 = dso_local local_unnamed_addr global i32 0, align 4
@T2 = dso_local local_unnamed_addr global i32 0, align 4
@Bitx = dso_local local_unnamed_addr global i32 0, align 4
@Rune2 = dso_local local_unnamed_addr global i32 0, align 4
@Rune1 = dso_local local_unnamed_addr global i64 0, align 8
@T4 = dso_local local_unnamed_addr global i32 0, align 4
@Rune3 = dso_local local_unnamed_addr global i32 0, align 4
@T5 = dso_local local_unnamed_addr global i32 0, align 4
@Rune4 = dso_local local_unnamed_addr global i32 0, align 4
@Bad = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @chartorune(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1, !tbaa !5
  %4 = zext i8 %3 to i32
  %5 = load i32, ptr @Tx, align 4, !tbaa !8
  %6 = icmp sgt i32 %5, %4
  br i1 %6, label %74, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = zext i8 %9 to i32
  %11 = xor i32 %5, %10
  %12 = load i32, ptr @Testx, align 4, !tbaa !8
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %7
  %16 = load i32, ptr @T3, align 4, !tbaa !8
  %17 = icmp sgt i32 %16, %4
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32, ptr @T2, align 4, !tbaa !8
  %20 = icmp sgt i32 %19, %4
  br i1 %20, label %72, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr @Bitx, align 4, !tbaa !8
  %23 = shl i32 %4, %22
  %24 = or i32 %23, %11
  %25 = load i32, ptr @Rune2, align 4, !tbaa !8
  %26 = and i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, ptr @Rune1, align 8, !tbaa !10
  %29 = icmp slt i64 %28, %27
  br i1 %29, label %74, label %72

30:                                               ; preds = %15
  %31 = getelementptr inbounds i8, ptr %1, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = zext i8 %32 to i32
  %34 = xor i32 %5, %33
  %35 = and i32 %34, %12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %30
  %38 = load i32, ptr @T4, align 4, !tbaa !8
  %39 = icmp sgt i32 %38, %4
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32, ptr @Bitx, align 4, !tbaa !8
  %42 = shl i32 %4, %41
  %43 = or i32 %42, %11
  %44 = shl i32 %43, %41
  %45 = or i32 %44, %34
  %46 = load i32, ptr @Rune3, align 4, !tbaa !8
  %47 = and i32 %45, %46
  %48 = load i32, ptr @Rune2, align 4, !tbaa !8
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %74, label %72

50:                                               ; preds = %37
  %51 = getelementptr inbounds i8, ptr %1, i64 3
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = zext i8 %52 to i32
  %54 = xor i32 %5, %53
  %55 = and i32 %54, %12
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr @T5, align 4
  %58 = icmp sgt i32 %57, %4
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %72

60:                                               ; preds = %50
  %61 = load i32, ptr @Bitx, align 4, !tbaa !8
  %62 = shl i32 %4, %61
  %63 = or i32 %62, %11
  %64 = shl i32 %63, %61
  %65 = or i32 %64, %34
  %66 = shl i32 %65, %61
  %67 = or i32 %66, %54
  %68 = load i32, ptr @Rune4, align 4, !tbaa !8
  %69 = and i32 %67, %68
  %70 = load i32, ptr @Rune3, align 4, !tbaa !8
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %74, label %72

72:                                               ; preds = %60, %50, %40, %30, %21, %18, %7
  %73 = load i32, ptr @Bad, align 4, !tbaa !8
  br label %74

74:                                               ; preds = %60, %40, %21, %2, %72
  %75 = phi i32 [ %73, %72 ], [ %4, %2 ], [ %26, %21 ], [ %47, %40 ], [ %69, %60 ]
  %76 = phi i32 [ 1, %72 ], [ 1, %2 ], [ 2, %21 ], [ 3, %40 ], [ 4, %60 ]
  store i32 %75, ptr %0, align 4, !tbaa !8
  ret i32 %76
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}

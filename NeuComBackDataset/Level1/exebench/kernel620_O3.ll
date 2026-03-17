; ModuleID = '../benchmarks/fine_grained/exebench/kernel620.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel620.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fx = dso_local local_unnamed_addr global ptr null, align 8
@arpeggio_val = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @xlat_fx(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 4, !tbaa !5
  %5 = and i32 %4, 15
  %6 = load ptr, ptr @fx, align 8, !tbaa !9
  %7 = load i32, ptr %1, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %6, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !5
  store i32 %10, ptr %1, align 4, !tbaa !5
  switch i32 %10, label %60 [
    i32 0, label %11
    i32 254, label %20
    i32 253, label %31
    i32 14, label %42
    i32 255, label %59
  ]

11:                                               ; preds = %3
  %12 = load i32, ptr %2, align 4, !tbaa !5
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr @arpeggio_val, align 8, !tbaa !9
  %15 = sext i32 %0 to i64
  %16 = getelementptr inbounds i32, ptr %14, i64 %15
  br i1 %13, label %18, label %17

17:                                               ; preds = %11
  store i32 %12, ptr %16, align 4, !tbaa !5
  br label %60

18:                                               ; preds = %11
  %19 = load i32, ptr %16, align 4, !tbaa !5
  store i32 %19, ptr %2, align 4, !tbaa !5
  br label %60

20:                                               ; preds = %3
  store i32 1, ptr %1, align 4, !tbaa !5
  %21 = load i32, ptr %2, align 4, !tbaa !5
  %22 = icmp slt i32 %21, 48
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = lshr i32 %21, 2
  %25 = and i32 %24, 15
  %26 = or i32 %25, 224
  store i32 %26, ptr %2, align 4, !tbaa !5
  br label %60

27:                                               ; preds = %20
  %28 = lshr i32 %21, 4
  %29 = and i32 %28, 15
  %30 = or i32 %29, 240
  store i32 %30, ptr %2, align 4, !tbaa !5
  br label %60

31:                                               ; preds = %3
  store i32 2, ptr %1, align 4, !tbaa !5
  %32 = load i32, ptr %2, align 4, !tbaa !5
  %33 = icmp slt i32 %32, 48
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = lshr i32 %32, 2
  %36 = and i32 %35, 15
  %37 = or i32 %36, 224
  store i32 %37, ptr %2, align 4, !tbaa !5
  br label %60

38:                                               ; preds = %31
  %39 = lshr i32 %32, 4
  %40 = and i32 %39, 15
  %41 = or i32 %40, 240
  store i32 %41, ptr %2, align 4, !tbaa !5
  br label %60

42:                                               ; preds = %3
  %43 = lshr i32 %4, 4
  %44 = and i32 %43, 15
  switch i32 %44, label %60 [
    i32 1, label %45
    i32 2, label %45
    i32 4, label %45
    i32 6, label %45
    i32 7, label %45
    i32 9, label %45
    i32 14, label %45
    i32 15, label %45
    i32 3, label %46
    i32 5, label %48
    i32 8, label %50
    i32 10, label %52
    i32 11, label %54
    i32 12, label %56
  ]

45:                                               ; preds = %42, %42, %42, %42, %42, %42, %42, %42
  store i32 0, ptr %1, align 4, !tbaa !5
  store i32 0, ptr %2, align 4, !tbaa !5
  br label %60

46:                                               ; preds = %42
  %47 = or i32 %5, 48
  store i32 %47, ptr %2, align 4, !tbaa !5
  br label %60

48:                                               ; preds = %42
  %49 = or i32 %5, 64
  store i32 %49, ptr %2, align 4, !tbaa !5
  br label %60

50:                                               ; preds = %42
  %51 = or i32 %5, 112
  store i32 %51, ptr %2, align 4, !tbaa !5
  br label %60

52:                                               ; preds = %42
  %53 = or i32 %5, 96
  store i32 %53, ptr %2, align 4, !tbaa !5
  br label %60

54:                                               ; preds = %42
  %55 = or i32 %5, 224
  store i32 %55, ptr %2, align 4, !tbaa !5
  br label %60

56:                                               ; preds = %42
  %57 = icmp eq i32 %5, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  store i32 0, ptr %2, align 4, !tbaa !5
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %60

59:                                               ; preds = %3
  store i32 0, ptr %2, align 4, !tbaa !5
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %60

60:                                               ; preds = %45, %46, %48, %50, %52, %54, %42, %58, %56, %34, %38, %23, %27, %17, %18, %3, %59
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}

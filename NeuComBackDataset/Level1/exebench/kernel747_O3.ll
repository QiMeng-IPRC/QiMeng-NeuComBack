; ModuleID = '../benchmarks/fine_grained/exebench/kernel747.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel747.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_s8b = dso_local local_unnamed_addr global i32 0, align 4
@flag_u8b = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @scan_routine_INTEGER8_UPDATE(ptr nocapture noundef readnone %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readnone %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %2, align 4, !tbaa !5
  %9 = load i32, ptr @flag_s8b, align 4, !tbaa !10
  %10 = and i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load i32, ptr %4, align 4, !tbaa !10
  %14 = or i32 %13, %9
  store i32 %14, ptr %4, align 4, !tbaa !10
  %15 = load i32, ptr %2, align 4, !tbaa !5
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i32 [ %15, %12 ], [ %8, %7 ]
  %18 = phi i32 [ 1, %12 ], [ 0, %7 ]
  %19 = load i32, ptr @flag_u8b, align 4, !tbaa !10
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %4, align 4, !tbaa !10
  %24 = or i32 %23, %19
  store i32 %24, ptr %4, align 4, !tbaa !10
  br label %25

25:                                               ; preds = %16, %22, %5
  %26 = phi i32 [ 0, %5 ], [ 1, %22 ], [ %18, %16 ]
  ret i32 %26
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}

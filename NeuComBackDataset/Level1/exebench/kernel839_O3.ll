; ModuleID = '../benchmarks/fine_grained/exebench/kernel839.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel839.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@areg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@status = dso_local local_unnamed_addr global i32 0, align 4
@reg = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Op3808() local_unnamed_addr #0 {
  %1 = load ptr, ptr @areg, align 8, !tbaa !5
  %2 = load i32, ptr @inst, align 4, !tbaa !9
  %3 = and i32 %2, 7
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds i64, ptr %1, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !11
  %7 = icmp eq i64 %6, 0
  %8 = load i32, ptr @status, align 4, !tbaa !9
  br i1 %7, label %14, label %9

9:                                                ; preds = %0
  %10 = and i32 %8, -16
  store i32 %10, ptr @status, align 4, !tbaa !9
  %11 = icmp slt i64 %6, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = or i32 %10, 8
  br label %17

14:                                               ; preds = %0
  %15 = and i32 %8, -15
  %16 = or i32 %15, 4
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %13, %12 ], [ %16, %14 ]
  store i32 %18, ptr @status, align 4, !tbaa !9
  br label %19

19:                                               ; preds = %17, %9
  %20 = load ptr, ptr @reg, align 8, !tbaa !5
  %21 = getelementptr inbounds i32, ptr %20, i64 4
  store i64 %6, ptr %21, align 8, !tbaa !11
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}

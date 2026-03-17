; ModuleID = '../benchmarks/fine_grained/exebench/kernel1542.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1542.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CPU = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @asr_shift_by_reg(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = icmp slt i32 %1, 32
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = add nsw i32 %1, -1
  %9 = lshr i32 %0, %8
  %10 = and i32 %9, 1
  store i32 %10, ptr %2, align 4, !tbaa !5
  %11 = ashr i32 %0, %1
  br label %19

12:                                               ; preds = %5
  %13 = lshr i32 %0, 31
  store i32 %13, ptr %2, align 4, !tbaa !5
  %14 = ashr i32 %0, 31
  br label %19

15:                                               ; preds = %3
  %16 = load i32, ptr @CPU, align 4, !tbaa !9
  %17 = lshr i32 %16, 29
  %18 = and i32 %17, 1
  store i32 %18, ptr %2, align 4, !tbaa !5
  br label %19

19:                                               ; preds = %15, %12, %7
  %20 = phi i32 [ %11, %7 ], [ %14, %12 ], [ %0, %15 ]
  ret i32 %20
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_2__", !6, i64 0}

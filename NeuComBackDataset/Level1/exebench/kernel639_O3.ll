; ModuleID = '../benchmarks/fine_grained/exebench/kernel639.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel639.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@inv = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 8
@n = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local { i64, i32 } @getst() local_unnamed_addr #0 {
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i64, ptr @inv, align 8, !tbaa.struct !9
  %5 = trunc i64 %4 to i32
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %8 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @inv, i64 0, i32 2), align 8, !tbaa.struct !10
  br label %13

9:                                                ; preds = %0
  %10 = add nsw i32 %1, -1
  store i32 %10, ptr @n, align 4, !tbaa !5
  %11 = sdiv i32 %10, 6
  %12 = srem i32 %10, 6
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ 1, %9 ], [ %8, %3 ]
  %15 = phi i32 [ %11, %9 ], [ %5, %3 ]
  %16 = phi i32 [ %12, %9 ], [ %7, %3 ]
  %17 = zext i32 %16 to i64
  %18 = shl nuw i64 %17, 32
  %19 = zext i32 %15 to i64
  %20 = or i64 %18, %19
  %21 = insertvalue { i64, i32 } poison, i64 %20, 0
  %22 = insertvalue { i64, i32 } %21, i32 %14, 1
  ret { i64, i32 } %22
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
!9 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5}
!10 = !{i64 0, i64 4, !5}

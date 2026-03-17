; ModuleID = '../benchmarks/fine_grained/exebench/kernel741.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel741.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, ptr }

@ivm = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @op_not() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ivm, align 8, !tbaa !5
  %2 = load i32, ptr %1, align 4, !tbaa !11
  %3 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i64 0, i32 1), align 8, !tbaa !12
  %4 = add nsw i32 %3, -1
  %5 = icmp slt i32 %2, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %0
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp slt i32 %8, %4
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i64 0, i32 2), align 8, !tbaa !13
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds i32, ptr %11, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !14
  %15 = xor i16 %14, -1
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds i32, ptr %11, i64 %16
  store i16 %15, ptr %17, align 2, !tbaa !14
  br label %18

18:                                               ; preds = %6, %0, %10
  %19 = phi i32 [ 0, %10 ], [ -1, %0 ], [ -1, %6 ]
  ret i32 %19
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !7, i64 16}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !8, i64 0}

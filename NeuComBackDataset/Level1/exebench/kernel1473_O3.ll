; ModuleID = '../benchmarks/fine_grained/exebench/kernel1473.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1473.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @rate_limit_is_ready(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !11
  %6 = add nsw i64 %5, %3
  %7 = icmp sgt i64 %6, %1
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !12
  br i1 %7, label %12, label %10

10:                                               ; preds = %2
  %11 = add nsw i32 %9, 1
  store i64 %1, ptr %4, align 8, !tbaa !11
  br label %16

12:                                               ; preds = %2
  %13 = icmp slt i32 %9, 16000001
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = add nsw i32 %9, 1
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %10 ]
  %18 = phi i32 [ 0, %14 ], [ %11, %10 ]
  store i32 %17, ptr %8, align 8, !tbaa !12
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i32 [ 0, %12 ], [ %18, %16 ]
  ret i32 %20
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 8, !10, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !10, i64 16}

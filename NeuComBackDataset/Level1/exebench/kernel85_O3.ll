; ModuleID = '../benchmarks/fine_grained/exebench/kernel85.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel85.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@g_gwContext = dso_local local_unnamed_addr global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @gwTestMouseHit(ptr noundef writeonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %5
  %8 = load i64, ptr @g_gwContext, align 8, !tbaa !5
  %9 = icmp slt i64 %8, %1
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = load i64, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @g_gwContext, i64 0, i32 0, i32 0, i32 1), align 8, !tbaa !12
  %12 = icmp slt i64 %11, %2
  %13 = add nsw i64 %3, %1
  %14 = icmp sgt i64 %8, %13
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = add nsw i64 %4, %2
  %18 = icmp sle i64 %11, %17
  %19 = zext i1 %18 to i64
  br label %20

20:                                               ; preds = %16, %10, %7
  %21 = phi i64 [ 0, %10 ], [ 0, %7 ], [ %19, %16 ]
  store i64 %21, ptr %0, align 8, !tbaa !13
  br label %22

22:                                               ; preds = %20, %5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !9, i64 0}
!6 = !{!"TYPE_6__", !7, i64 0}
!7 = !{!"TYPE_4__", !8, i64 0}
!8 = !{!"TYPE_5__", !9, i64 0, !9, i64 8}
!9 = !{!"long", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!6, !9, i64 8}
!13 = !{!9, !9, i64 0}

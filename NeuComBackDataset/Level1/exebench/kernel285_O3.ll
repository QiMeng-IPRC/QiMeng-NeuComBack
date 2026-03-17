; ModuleID = '../benchmarks/fine_grained/exebench/kernel285.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel285.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @rbuff_remove_left(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 4, !tbaa !5
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !10
  %10 = add nsw i32 %9, %1
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = icmp slt i32 %10, %12
  %14 = select i1 %13, i32 0, i32 %12
  %15 = sub nsw i32 %10, %14
  store i32 %15, ptr %8, align 4, !tbaa !10
  %16 = sub nsw i32 %5, %1
  store i32 %16, ptr %0, align 4, !tbaa !5
  br label %17

17:                                               ; preds = %2, %4, %7
  %18 = phi i32 [ %1, %7 ], [ 0, %4 ], [ 0, %2 ]
  ret i32 %18
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
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}

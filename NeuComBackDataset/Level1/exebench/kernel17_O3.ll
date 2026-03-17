; ModuleID = '../benchmarks/fine_grained/exebench/kernel17.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @msRectIntersect(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = load i64, ptr %1, align 8, !tbaa !5
  %5 = icmp sgt i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i64 %4, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i64 [ %4, %6 ], [ %3, %2 ]
  %9 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !10
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i64 %12, ptr %9, align 8, !tbaa !10
  br label %15

15:                                               ; preds = %14, %7
  %16 = phi i64 [ %12, %14 ], [ %10, %7 ]
  %17 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !11
  %21 = icmp sgt i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i64 %20, ptr %17, align 8, !tbaa !11
  br label %23

23:                                               ; preds = %22, %15
  %24 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !12
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i64 %27, ptr %24, align 8, !tbaa !12
  br label %30

30:                                               ; preds = %29, %23
  %31 = icmp slt i64 %8, %16
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = load i64, ptr %1, align 8, !tbaa !5
  %34 = load i64, ptr %11, align 8, !tbaa !10
  %35 = icmp sge i64 %33, %34
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi i32 [ 0, %30 ], [ %36, %32 ]
  ret i32 %38
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
!6 = !{!"TYPE_4__", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 24}

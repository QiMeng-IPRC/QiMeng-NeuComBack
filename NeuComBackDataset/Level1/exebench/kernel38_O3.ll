; ModuleID = '../benchmarks/fine_grained/exebench/kernel38.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel38.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@g_bola = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @move_ball() local_unnamed_addr #0 {
  %1 = load ptr, ptr @g_bola, align 8, !tbaa !5
  %2 = load i32, ptr %1, align 4, !tbaa !9
  %3 = getelementptr inbounds %struct.TYPE_2__, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !12
  %5 = add nsw i32 %4, %2
  %6 = getelementptr inbounds %struct.TYPE_2__, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %8 = getelementptr inbounds %struct.TYPE_2__, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !14
  %10 = add nsw i32 %9, %7
  %11 = getelementptr inbounds %struct.TYPE_2__, ptr %1, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !15
  %13 = getelementptr inbounds %struct.TYPE_2__, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !16
  %15 = add nsw i32 %14, %12
  %16 = icmp sgt i32 %5, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct.TYPE_2__, ptr %1, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !17
  %20 = icmp sgt i32 %5, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 %5, ptr %1, align 4, !tbaa !9
  br label %22

22:                                               ; preds = %21, %17, %0
  %23 = icmp sgt i32 %10, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.TYPE_2__, ptr %1, i64 0, i32 7
  %26 = load i32, ptr %25, align 4, !tbaa !18
  %27 = icmp sgt i32 %10, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 %10, ptr %6, align 4, !tbaa !13
  br label %29

29:                                               ; preds = %28, %24, %22
  %30 = icmp sgt i32 %15, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.TYPE_2__, ptr %1, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !19
  %34 = icmp sgt i32 %15, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 %15, ptr %11, align 4, !tbaa !15
  br label %36

36:                                               ; preds = %35, %31, %29
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
!9 = !{!10, !11, i64 0}
!10 = !{!"TYPE_2__", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !11, i64 4}
!13 = !{!10, !11, i64 8}
!14 = !{!10, !11, i64 12}
!15 = !{!10, !11, i64 16}
!16 = !{!10, !11, i64 20}
!17 = !{!10, !11, i64 24}
!18 = !{!10, !11, i64 28}
!19 = !{!10, !11, i64 32}

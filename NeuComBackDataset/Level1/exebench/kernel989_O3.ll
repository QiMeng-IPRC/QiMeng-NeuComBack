; ModuleID = '../benchmarks/fine_grained/exebench/kernel989.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel989.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RejectArmController_run(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 4, !tbaa !5
  %3 = load i32, ptr %0, align 4, !tbaa !14
  switch i32 %3, label %31 [
    i32 0, label %4
    i32 1, label %26
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !15
  switch i32 %6, label %31 [
    i32 129, label %7
    i32 130, label %12
    i32 128, label %21
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  store i32 130, ptr %5, align 4, !tbaa !15
  br label %31

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  store i32 128, ptr %5, align 4, !tbaa !15
  br label %30

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  store i32 130, ptr %5, align 4, !tbaa !15
  br label %31

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !15
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %31

30:                                               ; preds = %20, %26
  store i32 1, ptr %2, align 4, !tbaa !5
  br label %31

31:                                               ; preds = %1, %11, %25, %21, %12, %16, %7, %4, %30, %26
  store i32 0, ptr %0, align 4, !tbaa !14
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 8}
!6 = !{!"TYPE_11__", !7, i64 0, !7, i64 4, !10, i64 8, !12, i64 12, !7, i64 20}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_10__", !11, i64 0}
!11 = !{!"TYPE_9__", !7, i64 0}
!12 = !{!"TYPE_8__", !13, i64 0}
!13 = !{!"TYPE_7__", !7, i64 0, !7, i64 4}
!14 = !{!6, !7, i64 0}
!15 = !{!6, !7, i64 4}
!16 = !{!6, !7, i64 12}
!17 = !{!6, !7, i64 16}
!18 = !{!6, !7, i64 20}

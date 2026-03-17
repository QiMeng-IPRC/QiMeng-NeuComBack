; ModuleID = '../benchmarks/fine_grained/exebench/kernel1365.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1365.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32, i32, i64 }

@entities = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @html_named_entity_decode(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  store i64 0, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @entities, align 8, !tbaa !9
  br label %11

7:                                                ; preds = %41
  %8 = add nuw i64 %14, 1
  %9 = icmp ult i64 %8, %1
  %10 = icmp eq i64 %8, %1
  br i1 %10, label %46, label %11, !llvm.loop !11

11:                                               ; preds = %5, %7
  %12 = phi i1 [ true, %5 ], [ %9, %7 ]
  %13 = phi i32 [ 0, %5 ], [ %44, %7 ]
  %14 = phi i64 [ 0, %5 ], [ %8, %7 ]
  %15 = phi i32 [ 0, %5 ], [ %42, %7 ]
  %16 = getelementptr inbounds i8, ptr %0, i64 %14
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %18
  %20 = load i8, ptr %19, align 8, !tbaa !14
  %21 = icmp eq i8 %17, %20
  br i1 %12, label %22, label %33, !llvm.loop !11

22:                                               ; preds = %11
  br i1 %21, label %34, label %28

23:                                               ; preds = %28
  %24 = add i64 %29, 1
  %25 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %24
  %26 = load i8, ptr %25, align 8, !tbaa !14
  %27 = icmp eq i8 %17, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22, %23
  %29 = phi i64 [ %24, %23 ], [ %18, %22 ]
  %30 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %29, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !17
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %46, label %23

33:                                               ; preds = %11
  br i1 %21, label %34, label %46

34:                                               ; preds = %23, %33, %22
  %35 = phi i64 [ %18, %22 ], [ %18, %33 ], [ %24, %23 ]
  %36 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %35, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !18
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = add nuw i64 %14, 1
  store i64 %40, ptr %2, align 8, !tbaa !5
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi i32 [ %37, %39 ], [ %15, %34 ]
  %43 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %35, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !19
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %7

46:                                               ; preds = %41, %7, %33, %28, %3
  %47 = phi i32 [ 0, %3 ], [ %15, %28 ], [ %42, %41 ], [ %42, %7 ], [ %15, %33 ]
  ret i32 %47
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !7, i64 0}
!15 = !{!"TYPE_2__", !7, i64 0, !16, i64 4, !16, i64 8, !6, i64 16}
!16 = !{!"int", !7, i64 0}
!17 = !{!15, !6, i64 16}
!18 = !{!15, !16, i64 4}
!19 = !{!15, !16, i64 8}

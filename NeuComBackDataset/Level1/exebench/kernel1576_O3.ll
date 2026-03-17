; ModuleID = '../benchmarks/fine_grained/exebench/kernel1576.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1576.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eCAP_VINTF = dso_local local_unnamed_addr global i64 0, align 8
@pfnCAP_IntHandlerTable = dso_local local_unnamed_addr global ptr null, align 8
@eCAP_ADDRMINTF = dso_local local_unnamed_addr global i64 0, align 8
@eCAP_MEINTF = dso_local local_unnamed_addr global i64 0, align 8
@eCAP_MDINTF = dso_local local_unnamed_addr global i64 0, align 8
@E_CAP_INVALID_INT = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @CAP_InstallCallback(i64 noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i64, ptr @eCAP_VINTF, align 8, !tbaa !5
  %5 = icmp eq i64 %4, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @pfnCAP_IntHandlerTable, align 8, !tbaa !9
  %8 = load i64, ptr %7, align 8, !tbaa !5
  store i64 %8, ptr %2, align 8, !tbaa !5
  store i64 %1, ptr %7, align 8, !tbaa !5
  br label %32

9:                                                ; preds = %3
  %10 = load i64, ptr @eCAP_ADDRMINTF, align 8, !tbaa !5
  %11 = icmp eq i64 %10, %0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load ptr, ptr @pfnCAP_IntHandlerTable, align 8, !tbaa !9
  %14 = getelementptr inbounds i64, ptr %13, i64 1
  %15 = load i64, ptr %14, align 8, !tbaa !5
  store i64 %15, ptr %2, align 8, !tbaa !5
  store i64 %1, ptr %14, align 8, !tbaa !5
  br label %32

16:                                               ; preds = %9
  %17 = load i64, ptr @eCAP_MEINTF, align 8, !tbaa !5
  %18 = icmp eq i64 %17, %0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load ptr, ptr @pfnCAP_IntHandlerTable, align 8, !tbaa !9
  %21 = getelementptr inbounds i64, ptr %20, i64 2
  %22 = load i64, ptr %21, align 8, !tbaa !5
  store i64 %22, ptr %2, align 8, !tbaa !5
  store i64 %1, ptr %21, align 8, !tbaa !5
  br label %32

23:                                               ; preds = %16
  %24 = load i64, ptr @eCAP_MDINTF, align 8, !tbaa !5
  %25 = icmp eq i64 %24, %0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load ptr, ptr @pfnCAP_IntHandlerTable, align 8, !tbaa !9
  %28 = getelementptr inbounds i64, ptr %27, i64 3
  %29 = load i64, ptr %28, align 8, !tbaa !5
  store i64 %29, ptr %2, align 8, !tbaa !5
  store i64 %1, ptr %28, align 8, !tbaa !5
  br label %32

30:                                               ; preds = %23
  %31 = load i32, ptr @E_CAP_INVALID_INT, align 4, !tbaa !11
  br label %32

32:                                               ; preds = %6, %19, %26, %12, %30
  %33 = phi i32 [ %31, %30 ], [ 0, %12 ], [ 0, %26 ], [ 0, %19 ], [ 0, %6 ]
  ret i32 %33
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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}

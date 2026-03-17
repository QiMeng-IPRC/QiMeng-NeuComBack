; ModuleID = '../benchmarks/fine_grained/exebench/kernel623.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel623.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_EMPTY_LABEL = dso_local local_unnamed_addr global i32 0, align 4
@LDNS_STATUS_DDD_OVERFLOW = dso_local local_unnamed_addr global i32 0, align 4
@LDNS_STATUS_OK = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @ldns_octet(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  store i64 0, ptr %1, align 8, !tbaa !5
  %3 = load i8, ptr %0, align 1, !tbaa !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %59, label %5

5:                                                ; preds = %2, %53
  %6 = phi i8 [ %57, %53 ], [ %3, %2 ]
  %7 = phi ptr [ %56, %53 ], [ %0, %2 ]
  %8 = phi ptr [ %55, %53 ], [ %0, %2 ]
  %9 = sext i8 %6 to i32
  switch i32 %9, label %48 [
    i32 46, label %10
    i32 92, label %14
    i32 34, label %41
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = icmp eq i8 %12, 46
  br i1 %13, label %61, label %48

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = sext i8 %16 to i32
  %18 = add i8 %16, -48
  %19 = icmp ult i8 %18, 10
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %8, i64 2
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = sext i8 %22 to i32
  %24 = add i8 %22, -48
  %25 = icmp ult i8 %24, 10
  br i1 %25, label %26, label %48

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, ptr %8, i64 3
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = add i8 %28, -48
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = zext i8 %28 to i32
  %33 = mul nsw i32 %17, 100
  %34 = mul nsw i32 %23, 10
  %35 = add nsw i32 %34, %33
  %36 = add nsw i32 %35, %32
  %37 = icmp slt i32 %36, 5584
  br i1 %37, label %38, label %61

38:                                               ; preds = %31
  %39 = trunc i32 %36 to i8
  %40 = add i8 %39, 48
  br label %48

41:                                               ; preds = %5
  %42 = getelementptr inbounds i8, ptr %8, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !9
  store i8 %43, ptr %7, align 1, !tbaa !9
  %44 = load i64, ptr %1, align 8, !tbaa !5
  %45 = add i64 %44, 1
  store i64 %45, ptr %1, align 8, !tbaa !5
  %46 = load i8, ptr %42, align 1, !tbaa !9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %59, label %53

48:                                               ; preds = %5, %14, %20, %26, %10, %38
  %49 = phi i8 [ %40, %38 ], [ %6, %10 ], [ %16, %26 ], [ %16, %20 ], [ %16, %14 ], [ %6, %5 ]
  %50 = phi ptr [ %27, %38 ], [ %8, %10 ], [ %15, %26 ], [ %15, %20 ], [ %15, %14 ], [ %8, %5 ]
  store i8 %49, ptr %7, align 1, !tbaa !9
  %51 = load i64, ptr %1, align 8, !tbaa !5
  %52 = add i64 %51, 1
  store i64 %52, ptr %1, align 8, !tbaa !5
  br label %53

53:                                               ; preds = %48, %41
  %54 = phi ptr [ %42, %41 ], [ %50, %48 ]
  %55 = getelementptr inbounds i8, ptr %54, i64 1
  %56 = getelementptr inbounds i8, ptr %7, i64 1
  %57 = load i8, ptr %55, align 1, !tbaa !9
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %5, !llvm.loop !10

59:                                               ; preds = %53, %41, %2
  %60 = phi ptr [ %0, %2 ], [ %7, %41 ], [ %56, %53 ]
  store i8 0, ptr %60, align 1, !tbaa !9
  br label %61

61:                                               ; preds = %31, %10, %59
  %62 = phi ptr [ @LDNS_STATUS_OK, %59 ], [ @LDNS_STATUS_DDD_OVERFLOW, %31 ], [ @LDNS_STATUS_EMPTY_LABEL, %10 ]
  %63 = load i32, ptr %62, align 4, !tbaa !12
  ret i32 %63
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}

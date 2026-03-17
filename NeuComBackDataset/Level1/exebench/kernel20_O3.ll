; ModuleID = '../benchmarks/fine_grained/exebench/kernel20.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTLESC = dso_local local_unnamed_addr global i8 0, align 1
@CTLQUOTEMARK = dso_local local_unnamed_addr global i8 0, align 1
@CTLQUOTEEND = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @rmescapes(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @CTLESC, align 1, !tbaa !5
  %3 = load i8, ptr @CTLQUOTEMARK, align 1
  %4 = load i8, ptr @CTLQUOTEEND, align 1
  br label %5

5:                                                ; preds = %15, %1
  %6 = phi ptr [ %0, %1 ], [ %16, %15 ]
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, %2
  %9 = icmp eq i8 %7, %3
  %10 = select i1 %8, i1 true, i1 %9
  %11 = icmp eq i8 %7, %4
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = icmp eq i8 %7, 0
  br i1 %14, label %44, label %38

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, ptr %6, i64 1
  %17 = icmp eq i8 %7, 0
  br i1 %17, label %46, label %5, !llvm.loop !8

18:                                               ; preds = %38, %24
  %19 = phi i8 [ %39, %38 ], [ %26, %24 ]
  %20 = phi ptr [ %41, %38 ], [ %25, %24 ]
  %21 = icmp eq i8 %19, %42
  %22 = icmp eq i8 %19, %43
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds i8, ptr %20, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !5
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %44, label %18, !llvm.loop !10

28:                                               ; preds = %18
  %29 = load i8, ptr @CTLESC, align 1, !tbaa !5
  %30 = icmp eq i8 %19, %29
  %31 = zext i1 %30 to i64
  %32 = getelementptr inbounds i8, ptr %20, i64 %31
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %32, align 1, !tbaa !5
  %35 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 %34, ptr %40, align 1, !tbaa !5
  %36 = load i8, ptr %33, align 1, !tbaa !5
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %44, label %38, !llvm.loop !10

38:                                               ; preds = %13, %28
  %39 = phi i8 [ %36, %28 ], [ %7, %13 ]
  %40 = phi ptr [ %35, %28 ], [ %6, %13 ]
  %41 = phi ptr [ %33, %28 ], [ %6, %13 ]
  %42 = load i8, ptr @CTLQUOTEMARK, align 1, !tbaa !5
  %43 = load i8, ptr @CTLQUOTEEND, align 1
  br label %18

44:                                               ; preds = %28, %24, %13
  %45 = phi ptr [ %6, %13 ], [ %40, %24 ], [ %35, %28 ]
  store i8 0, ptr %45, align 1, !tbaa !5
  br label %46

46:                                               ; preds = %15, %44
  ret void
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}

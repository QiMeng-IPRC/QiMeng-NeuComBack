; ModuleID = '../benchmarks/fine_grained/exebench/kernel1592.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1592.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @copy_fhandle(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load ptr, ptr %1, align 8, !tbaa !8
  store i8 %3, ptr %7, align 1, !tbaa !5
  %8 = load i8, ptr %6, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %0, i64 2
  %12 = load ptr, ptr %1, align 8, !tbaa !8
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %8, ptr %13, align 1, !tbaa !5
  %14 = load i8, ptr %11, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds i8, ptr %0, i64 3
  %18 = load ptr, ptr %1, align 8, !tbaa !8
  %19 = getelementptr inbounds i8, ptr %18, i64 2
  store i8 %14, ptr %19, align 1, !tbaa !5
  %20 = load i8, ptr %17, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds i8, ptr %0, i64 4
  %24 = load ptr, ptr %1, align 8, !tbaa !8
  %25 = getelementptr inbounds i8, ptr %24, i64 3
  store i8 %20, ptr %25, align 1, !tbaa !5
  %26 = load i8, ptr %23, align 1, !tbaa !5
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds i8, ptr %0, i64 5
  %30 = load ptr, ptr %1, align 8, !tbaa !8
  %31 = getelementptr inbounds i8, ptr %30, i64 4
  store i8 %26, ptr %31, align 1, !tbaa !5
  %32 = load i8, ptr %29, align 1, !tbaa !5
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds i8, ptr %0, i64 6
  %36 = load ptr, ptr %1, align 8, !tbaa !8
  %37 = getelementptr inbounds i8, ptr %36, i64 5
  store i8 %32, ptr %37, align 1, !tbaa !5
  %38 = load i8, ptr %35, align 1, !tbaa !5
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %1, align 8, !tbaa !8
  %42 = getelementptr inbounds i8, ptr %41, i64 6
  store i8 %38, ptr %42, align 1, !tbaa !5
  br label %43

43:                                               ; preds = %40, %34, %28, %22, %16, %10, %5, %2
  %44 = phi i64 [ 0, %2 ], [ 1, %5 ], [ 2, %10 ], [ 3, %16 ], [ 4, %22 ], [ 5, %28 ], [ 6, %34 ], [ 7, %40 ]
  %45 = load ptr, ptr %1, align 8, !tbaa !8
  %46 = getelementptr inbounds i8, ptr %45, i64 %44
  store i8 0, ptr %46, align 1, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"fanotify_mark_inode", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel718.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel718.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { ptr, i32 }

@widthp = dso_local local_unnamed_addr global i32 0, align 4
@eschar = dso_local local_unnamed_addr global i32 0, align 4
@envp = dso_local local_unnamed_addr global ptr null, align 8
@trtab = dso_local local_unnamed_addr global ptr null, align 8
@t = dso_local local_unnamed_addr global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @n_width(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = icmp sgt i32 %0, -1
  br i1 %3, label %4, label %43

4:                                                ; preds = %1
  %5 = and i64 %2, 65536
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = and i64 %2, 1073807360
  %9 = icmp eq i64 %8, 1073807360
  br i1 %9, label %43, label %10

10:                                               ; preds = %7
  %11 = and i32 %0, 65535
  %12 = and i64 %2, 536936448
  %13 = icmp eq i64 %12, 536936448
  %14 = sub nsw i32 0, %11
  %15 = select i1 %13, i32 %14, i32 %11
  br label %43

16:                                               ; preds = %4
  %17 = and i32 %0, 131071
  %18 = icmp ult i32 %17, 32
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  switch i32 %17, label %25 [
    i32 8, label %20
    i32 22, label %23
    i32 29, label %43
  ]

20:                                               ; preds = %19
  %21 = load i32, ptr @widthp, align 4, !tbaa !5
  %22 = sub nsw i32 0, %21
  br label %43

23:                                               ; preds = %19
  %24 = load i32, ptr @eschar, align 4, !tbaa !5
  br label %25

25:                                               ; preds = %19, %23, %16
  %26 = phi i32 [ %24, %23 ], [ %17, %16 ], [ %17, %19 ]
  %27 = load ptr, ptr @envp, align 8, !tbaa !9
  %28 = load i32, ptr %27, align 4, !tbaa !11
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr @trtab, align 8, !tbaa !9
  %32 = sext i32 %26 to i64
  %33 = getelementptr inbounds i32, ptr %31, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !5
  %35 = icmp slt i32 %34, 32
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr @t, align 8, !tbaa !13
  %38 = zext i32 %34 to i64
  %39 = getelementptr inbounds i32, ptr %37, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @t, i64 0, i32 1), align 8, !tbaa !15
  %42 = mul nsw i32 %41, %40
  store i32 %42, ptr @widthp, align 4, !tbaa !5
  br label %43

43:                                               ; preds = %30, %25, %19, %7, %1, %36, %20, %10
  %44 = phi i32 [ %15, %10 ], [ %22, %20 ], [ %42, %36 ], [ 0, %1 ], [ 0, %7 ], [ 0, %19 ], [ 0, %25 ], [ 0, %30 ]
  ret i32 %44
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"TYPE_4__", !6, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"TYPE_3__", !10, i64 0, !6, i64 8}
!15 = !{!14, !6, i64 8}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel882.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel882.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Ope9a8() local_unnamed_addr #0 {
  %1 = load ptr, ptr @reg, align 8, !tbaa !5
  %2 = getelementptr inbounds i32, ptr %1, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !9
  %4 = load i32, ptr @inst, align 4, !tbaa !9
  %5 = and i32 %4, 7
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %9 = and i32 %3, 63
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %0
  %12 = load i32, ptr @status, align 4, !tbaa !9
  %13 = and i32 %12, -32
  %14 = add nsw i32 %9, -1
  %15 = shl i32 %8, %14
  %16 = or i32 %12, 17
  %17 = icmp slt i32 %15, 0
  %18 = select i1 %17, i32 %16, i32 %13
  %19 = shl i32 %15, 1
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %18, -15
  br i1 %20, label %26, label %22

22:                                               ; preds = %11
  store i32 %21, ptr @status, align 4, !tbaa !9
  %23 = icmp slt i32 %19, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %22
  %25 = or i32 %21, 8
  br label %39

26:                                               ; preds = %11
  %27 = or i32 %21, 4
  br label %39

28:                                               ; preds = %0
  %29 = icmp eq i32 %8, 0
  %30 = load i32, ptr @status, align 4, !tbaa !9
  br i1 %29, label %36, label %31

31:                                               ; preds = %28
  %32 = and i32 %30, -16
  store i32 %32, ptr @status, align 4, !tbaa !9
  %33 = icmp slt i32 %8, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = or i32 %32, 8
  br label %39

36:                                               ; preds = %28
  %37 = and i32 %30, -15
  %38 = or i32 %37, 4
  br label %39

39:                                               ; preds = %24, %26, %34, %36
  %40 = phi i32 [ %38, %36 ], [ %35, %34 ], [ %27, %26 ], [ %25, %24 ]
  %41 = phi i32 [ 0, %36 ], [ %8, %34 ], [ 0, %26 ], [ %19, %24 ]
  store i32 %40, ptr @status, align 4, !tbaa !9
  br label %42

42:                                               ; preds = %39, %31, %22
  %43 = phi i32 [ %19, %22 ], [ %8, %31 ], [ %41, %39 ]
  store i32 %43, ptr %7, align 4, !tbaa !9
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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}

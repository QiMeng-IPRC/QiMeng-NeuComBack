; ModuleID = '../benchmarks/fine_grained/exebench/kernel596.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel596.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Ope060() local_unnamed_addr #0 {
  %1 = load ptr, ptr @reg, align 8, !tbaa !5
  %2 = load i64, ptr %1, align 8, !tbaa !9
  %3 = trunc i64 %2 to i32
  %4 = load i32, ptr @inst, align 4, !tbaa !11
  %5 = and i32 %4, 7
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i64, ptr %1, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !9
  %9 = trunc i64 %8 to i32
  %10 = and i32 %3, 63
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %0
  %13 = load i32, ptr @status, align 4, !tbaa !11
  %14 = and i32 %13, -32
  %15 = add nsw i32 %10, -1
  %16 = ashr i32 %9, %15
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = or i32 %13, 17
  %20 = select i1 %18, i32 %14, i32 %19
  %21 = ashr i32 %16, 1
  %22 = icmp ult i32 %16, 2
  %23 = and i32 %20, -15
  br i1 %22, label %28, label %24

24:                                               ; preds = %12
  store i32 %23, ptr @status, align 4, !tbaa !11
  %25 = icmp slt i32 %16, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %24
  %27 = or i32 %23, 8
  br label %41

28:                                               ; preds = %12
  %29 = or i32 %23, 4
  br label %41

30:                                               ; preds = %0
  %31 = icmp eq i32 %9, 0
  %32 = load i32, ptr @status, align 4, !tbaa !11
  br i1 %31, label %38, label %33

33:                                               ; preds = %30
  %34 = and i32 %32, -16
  store i32 %34, ptr @status, align 4, !tbaa !11
  %35 = icmp slt i32 %9, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = or i32 %34, 8
  br label %41

38:                                               ; preds = %30
  %39 = and i32 %32, -15
  %40 = or i32 %39, 4
  br label %41

41:                                               ; preds = %26, %28, %36, %38
  %42 = phi i32 [ %40, %38 ], [ %37, %36 ], [ %29, %28 ], [ %27, %26 ]
  %43 = phi i32 [ 0, %38 ], [ %9, %36 ], [ 0, %28 ], [ %21, %26 ]
  store i32 %42, ptr @status, align 4, !tbaa !11
  br label %44

44:                                               ; preds = %41, %33, %24
  %45 = phi i32 [ %21, %24 ], [ %9, %33 ], [ %43, %41 ]
  store i32 %45, ptr %7, align 4, !tbaa !11
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
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}

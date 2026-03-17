; ModuleID = '../benchmarks/fine_grained/exebench/kernel897.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel897.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Opea20() local_unnamed_addr #0 {
  %1 = load ptr, ptr @reg, align 8, !tbaa !5
  %2 = getelementptr inbounds i64, ptr %1, i64 5
  %3 = load i64, ptr %2, align 8, !tbaa !9
  %4 = trunc i64 %3 to i32
  %5 = load i32, ptr @inst, align 4, !tbaa !11
  %6 = and i32 %5, 7
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i64, ptr %1, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !9
  %10 = trunc i64 %9 to i32
  %11 = and i32 %4, 63
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %0
  %14 = load i32, ptr @status, align 4, !tbaa !11
  %15 = and i32 %14, -32
  %16 = add nsw i32 %11, -1
  %17 = ashr i32 %10, %16
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = or i32 %14, 17
  %21 = select i1 %19, i32 %15, i32 %20
  %22 = ashr i32 %17, 1
  %23 = icmp ult i32 %17, 2
  %24 = and i32 %21, -15
  br i1 %23, label %29, label %25

25:                                               ; preds = %13
  store i32 %24, ptr @status, align 4, !tbaa !11
  %26 = icmp slt i32 %17, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %25
  %28 = or i32 %24, 8
  br label %42

29:                                               ; preds = %13
  %30 = or i32 %24, 4
  br label %42

31:                                               ; preds = %0
  %32 = icmp eq i32 %10, 0
  %33 = load i32, ptr @status, align 4, !tbaa !11
  br i1 %32, label %39, label %34

34:                                               ; preds = %31
  %35 = and i32 %33, -16
  store i32 %35, ptr @status, align 4, !tbaa !11
  %36 = icmp slt i32 %10, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = or i32 %35, 8
  br label %42

39:                                               ; preds = %31
  %40 = and i32 %33, -15
  %41 = or i32 %40, 4
  br label %42

42:                                               ; preds = %27, %29, %37, %39
  %43 = phi i32 [ %41, %39 ], [ %38, %37 ], [ %30, %29 ], [ %28, %27 ]
  %44 = phi i32 [ 0, %39 ], [ %10, %37 ], [ 0, %29 ], [ %22, %27 ]
  store i32 %43, ptr @status, align 4, !tbaa !11
  br label %45

45:                                               ; preds = %42, %34, %25
  %46 = phi i32 [ %22, %25 ], [ %10, %34 ], [ %44, %42 ]
  store i32 %46, ptr %8, align 4, !tbaa !11
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

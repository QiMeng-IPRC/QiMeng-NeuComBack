; ModuleID = '../benchmarks/fine_grained/exebench/kernel284.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel284.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Op9c80() local_unnamed_addr #0 {
  %1 = load ptr, ptr @reg, align 8, !tbaa !5
  %2 = load i32, ptr @inst, align 4, !tbaa !9
  %3 = and i32 %2, 7
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds i64, ptr %1, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds i64, ptr %1, i64 6
  %8 = load i64, ptr %7, align 8, !tbaa !11
  %9 = lshr i64 %8, 63
  %10 = trunc i64 %9 to i32
  %11 = lshr i64 %6, 63
  %12 = trunc i64 %11 to i32
  %13 = icmp ne i32 %10, %12
  %14 = load i32, ptr @status, align 4
  %15 = and i32 %14, -20
  %16 = icmp sgt i64 %6, %8
  %17 = select i1 %16, i32 17, i32 0
  %18 = or i32 %15, %17
  %19 = sub nsw i64 %8, %6
  %20 = lshr i64 %19, 63
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %21, %12
  %23 = select i1 %13, i1 %22, i1 false
  %24 = or i32 %18, 2
  %25 = select i1 %23, i32 %24, i32 %18
  %26 = icmp eq i64 %8, %6
  %27 = and i32 %25, -13
  br i1 %26, label %30, label %28

28:                                               ; preds = %0
  %29 = icmp slt i64 %19, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %0, %28
  %31 = phi i32 [ 8, %28 ], [ 4, %0 ]
  %32 = or i32 %27, %31
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %32, %30 ], [ %27, %28 ]
  store i32 %34, ptr @status, align 4, !tbaa !9
  store i64 %19, ptr %7, align 8, !tbaa !11
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
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel1407.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1407.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@areg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@reg = dso_local local_unnamed_addr global ptr null, align 8
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Op9e88() local_unnamed_addr #0 {
  %1 = load ptr, ptr @areg, align 8, !tbaa !5
  %2 = load i32, ptr @inst, align 4, !tbaa !9
  %3 = and i32 %2, 7
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds i64, ptr %1, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !11
  %7 = load ptr, ptr @reg, align 8, !tbaa !5
  %8 = getelementptr inbounds i64, ptr %7, i64 7
  %9 = load i64, ptr %8, align 8, !tbaa !11
  %10 = lshr i64 %9, 63
  %11 = trunc i64 %10 to i32
  %12 = lshr i64 %6, 63
  %13 = trunc i64 %12 to i32
  %14 = icmp ne i32 %11, %13
  %15 = load i32, ptr @status, align 4
  %16 = and i32 %15, -20
  %17 = icmp sgt i64 %6, %9
  %18 = select i1 %17, i32 17, i32 0
  %19 = or i32 %16, %18
  %20 = sub nsw i64 %9, %6
  %21 = lshr i64 %20, 63
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %22, %13
  %24 = select i1 %14, i1 %23, i1 false
  %25 = or i32 %19, 2
  %26 = select i1 %24, i32 %25, i32 %19
  %27 = icmp eq i64 %9, %6
  %28 = and i32 %26, -13
  br i1 %27, label %31, label %29

29:                                               ; preds = %0
  %30 = icmp slt i64 %20, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %0, %29
  %32 = phi i32 [ 8, %29 ], [ 4, %0 ]
  %33 = or i32 %28, %32
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %33, %31 ], [ %28, %29 ]
  store i32 %35, ptr @status, align 4, !tbaa !9
  store i64 %20, ptr %8, align 8, !tbaa !11
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

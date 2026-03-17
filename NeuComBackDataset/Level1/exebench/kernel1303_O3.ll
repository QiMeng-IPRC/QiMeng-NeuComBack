; ModuleID = '../benchmarks/fine_grained/exebench/kernel1303.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1303.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@subcnt = dso_local local_unnamed_addr global i32 0, align 4
@substack = dso_local local_unnamed_addr global ptr null, align 8
@vb = dso_local local_unnamed_addr global i32 0, align 4
@prep = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @pop_subcall_grammar(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = load i32, ptr @subcnt, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @substack, align 8, !tbaa !9
  %11 = add nsw i32 %7, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, ptr %10, i64 %12, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !11
  store i32 %14, ptr @vb, align 4, !tbaa !5
  %15 = getelementptr inbounds %struct.TYPE_2__, ptr %10, i64 %12, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !13
  store i32 %16, ptr @prep, align 4, !tbaa !5
  %17 = getelementptr inbounds %struct.TYPE_2__, ptr %10, i64 %12
  %18 = load i32, ptr %17, align 4, !tbaa !14
  store i32 %18, ptr %5, align 4, !tbaa !5
  %19 = load i32, ptr @subcnt, align 4, !tbaa !5
  %20 = add nsw i32 %19, -1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, ptr %10, i64 %21, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !15
  store i32 %23, ptr %0, align 4, !tbaa !5
  %24 = load i32, ptr @subcnt, align 4, !tbaa !5
  %25 = add nsw i32 %24, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, ptr %10, i64 %26, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !16
  store i32 %28, ptr %1, align 4, !tbaa !5
  %29 = load i32, ptr @subcnt, align 4, !tbaa !5
  %30 = add nsw i32 %29, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, ptr %10, i64 %31, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !17
  store i32 %33, ptr %2, align 4, !tbaa !5
  %34 = load i32, ptr @subcnt, align 4, !tbaa !5
  %35 = add nsw i32 %34, -1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, ptr %10, i64 %36, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !18
  store i32 %38, ptr %3, align 4, !tbaa !5
  %39 = load i32, ptr @subcnt, align 4, !tbaa !5
  %40 = add nsw i32 %39, -1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, ptr %10, i64 %41, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !19
  store i32 %43, ptr %4, align 4, !tbaa !5
  br label %44

44:                                               ; preds = %6, %9
  %45 = phi i32 [ 1, %9 ], [ 0, %6 ]
  ret i32 %45
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !6, i64 28}
!12 = !{!"TYPE_2__", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!13 = !{!12, !6, i64 24}
!14 = !{!12, !6, i64 0}
!15 = !{!12, !6, i64 20}
!16 = !{!12, !6, i64 4}
!17 = !{!12, !6, i64 16}
!18 = !{!12, !6, i64 12}
!19 = !{!12, !6, i64 8}

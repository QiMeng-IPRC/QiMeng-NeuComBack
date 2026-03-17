; ModuleID = '../benchmarks/fine_grained/exebench/kernel477.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel477.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Nmoltype = dso_local local_unnamed_addr global i32 0, align 4
@MolType = dso_local local_unnamed_addr global ptr null, align 8
@MolName = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @CheckExistence(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @Nmoltype, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 0
  %4 = load ptr, ptr @MolName, align 8, !tbaa !9
  %5 = load ptr, ptr @MolType, align 8, !tbaa !9
  %6 = shl nsw i32 %0, 2
  %7 = sext i32 %6 to i64
  br i1 %3, label %8, label %21

8:                                                ; preds = %1
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %4, i64 %7
  %11 = load <4 x i32>, ptr %10, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %8, %53
  %13 = phi i64 [ 0, %8 ], [ %54, %53 ]
  %14 = shl nsw i64 %13, 2
  %15 = getelementptr inbounds i32, ptr %5, i64 %14
  %16 = load <4 x i32>, ptr %15, align 4, !tbaa !5
  %17 = icmp eq <4 x i32> %16, %11
  %18 = freeze <4 x i1> %17
  %19 = bitcast <4 x i1> %18 to i4
  %20 = icmp eq i4 %19, -1
  br i1 %20, label %56, label %53

21:                                               ; preds = %53, %1
  %22 = or i64 %7, 1
  %23 = or i64 %7, 2
  %24 = or i64 %7, 3
  %25 = getelementptr inbounds i32, ptr %4, i64 %7
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = shl nsw i32 %2, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %5, i64 %28
  store i32 %26, ptr %29, align 4, !tbaa !5
  %30 = getelementptr inbounds i32, ptr %4, i64 %22
  %31 = load i32, ptr %30, align 4, !tbaa !5
  %32 = load i32, ptr @Nmoltype, align 4, !tbaa !5
  %33 = shl nsw i32 %32, 2
  %34 = or i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %5, i64 %35
  store i32 %31, ptr %36, align 4, !tbaa !5
  %37 = getelementptr inbounds i32, ptr %4, i64 %23
  %38 = load i32, ptr %37, align 4, !tbaa !5
  %39 = load i32, ptr @Nmoltype, align 4, !tbaa !5
  %40 = shl nsw i32 %39, 2
  %41 = or i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %5, i64 %42
  store i32 %38, ptr %43, align 4, !tbaa !5
  %44 = getelementptr inbounds i32, ptr %4, i64 %24
  %45 = load i32, ptr %44, align 4, !tbaa !5
  %46 = load i32, ptr @Nmoltype, align 4, !tbaa !5
  %47 = shl nsw i32 %46, 2
  %48 = or i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %5, i64 %49
  store i32 %45, ptr %50, align 4, !tbaa !5
  %51 = load i32, ptr @Nmoltype, align 4, !tbaa !5
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr @Nmoltype, align 4, !tbaa !5
  br label %58

53:                                               ; preds = %12
  %54 = add nuw nsw i64 %13, 1
  %55 = icmp eq i64 %54, %9
  br i1 %55, label %21, label %12, !llvm.loop !11

56:                                               ; preds = %12
  %57 = trunc i64 %13 to i32
  br label %58

58:                                               ; preds = %56, %21
  %59 = phi i32 [ %51, %21 ], [ %57, %56 ]
  ret i32 %59
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}

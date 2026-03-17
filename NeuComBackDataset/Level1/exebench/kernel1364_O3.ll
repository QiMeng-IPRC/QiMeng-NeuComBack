; ModuleID = '../benchmarks/fine_grained/exebench/kernel1364.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1364.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iterations = dso_local local_unnamed_addr global i32 0, align 4
@blu = dso_local local_unnamed_addr global ptr null, align 8
@nu = dso_local local_unnamed_addr global i32 0, align 4
@img = dso_local local_unnamed_addr global ptr null, align 8
@grn = dso_local local_unnamed_addr global ptr null, align 8
@red = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @color_pixel_continous(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @iterations, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %5, label %45

5:                                                ; preds = %2
  %6 = srem i32 %1, 3
  %7 = load ptr, ptr @blu, align 8, !tbaa !9
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = load i32, ptr @nu, align 4, !tbaa !5
  %12 = trunc i32 %6 to i8
  %13 = add nsw i8 %12, 1
  %14 = srem i8 %13, 3
  %15 = sext i8 %14 to i64
  %16 = getelementptr inbounds i32, ptr %7, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = sub nsw i32 %17, %10
  %19 = mul nsw i32 %18, %11
  %20 = add nsw i32 %19, %10
  %21 = load ptr, ptr @img, align 8, !tbaa !9
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  store i32 %20, ptr %23, align 4, !tbaa !5
  %24 = load ptr, ptr @grn, align 8, !tbaa !9
  %25 = getelementptr inbounds i32, ptr %24, i64 %8
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = load i32, ptr @nu, align 4, !tbaa !5
  %28 = getelementptr inbounds i32, ptr %24, i64 %15
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = sub nsw i32 %29, %26
  %31 = mul nsw i32 %30, %27
  %32 = add nsw i32 %31, %26
  %33 = add nsw i32 %0, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %21, i64 %34
  store i32 %32, ptr %35, align 4, !tbaa !5
  %36 = load ptr, ptr @red, align 8, !tbaa !9
  %37 = getelementptr inbounds i32, ptr %36, i64 %8
  %38 = load i32, ptr %37, align 4, !tbaa !5
  %39 = load i32, ptr @nu, align 4, !tbaa !5
  %40 = getelementptr inbounds i32, ptr %36, i64 %15
  %41 = load i32, ptr %40, align 4, !tbaa !5
  %42 = sub nsw i32 %41, %38
  %43 = mul nsw i32 %42, %39
  %44 = add nsw i32 %43, %38
  br label %52

45:                                               ; preds = %2
  %46 = load ptr, ptr @img, align 8, !tbaa !9
  %47 = sext i32 %0 to i64
  %48 = getelementptr inbounds i32, ptr %46, i64 %47
  store i32 0, ptr %48, align 4, !tbaa !5
  %49 = add nsw i32 %0, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %46, i64 %50
  store i32 0, ptr %51, align 4, !tbaa !5
  br label %52

52:                                               ; preds = %45, %5
  %53 = phi ptr [ %46, %45 ], [ %21, %5 ]
  %54 = phi i32 [ 0, %45 ], [ %44, %5 ]
  %55 = add nsw i32 %0, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %53, i64 %56
  store i32 %54, ptr %57, align 4, !tbaa !5
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}

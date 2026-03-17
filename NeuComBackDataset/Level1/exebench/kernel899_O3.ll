; ModuleID = '../benchmarks/fine_grained/exebench/kernel899.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel899.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4
@num = dso_local local_unnamed_addr global ptr null, align 8
@rowdia = dso_local local_unnamed_addr global ptr null, align 8
@maindia = dso_local local_unnamed_addr global ptr null, align 8
@vicedia = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @funiction(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 8
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load i32, ptr @n, align 4, !tbaa !5
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @n, align 4, !tbaa !5
  br label %68

6:                                                ; preds = %1
  %7 = load ptr, ptr @num, align 8, !tbaa !9
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  store i32 0, ptr %9, align 4, !tbaa !5
  %10 = sub nsw i32 7, %0
  %11 = add nsw i32 %0, 1
  %12 = load ptr, ptr @rowdia, align 8, !tbaa !9
  br label %13

13:                                               ; preds = %6, %61
  %14 = phi ptr [ %7, %6 ], [ %63, %61 ]
  %15 = phi ptr [ %12, %6 ], [ %64, %61 ]
  %16 = phi i32 [ 0, %6 ], [ %66, %61 ]
  %17 = getelementptr inbounds i32, ptr %14, i64 %8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i32, ptr %15, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %13
  %23 = load ptr, ptr @maindia, align 8, !tbaa !9
  %24 = add nsw i32 %16, %0
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %22
  %30 = load ptr, ptr @vicedia, align 8, !tbaa !9
  %31 = add nsw i32 %16, %10
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %30, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %29
  store i32 1, ptr %33, align 4, !tbaa !5
  %37 = load i32, ptr %17, align 4, !tbaa !5
  %38 = add nsw i32 %37, %0
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %23, i64 %39
  store i32 1, ptr %40, align 4, !tbaa !5
  %41 = load i32, ptr %17, align 4, !tbaa !5
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %15, i64 %42
  store i32 1, ptr %43, align 4, !tbaa !5
  tail call void @funiction(i32 noundef %11)
  %44 = load ptr, ptr @vicedia, align 8, !tbaa !9
  %45 = load ptr, ptr @num, align 8, !tbaa !9
  %46 = getelementptr inbounds i32, ptr %45, i64 %8
  %47 = load i32, ptr %46, align 4, !tbaa !5
  %48 = add nsw i32 %47, %10
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %44, i64 %49
  store i32 0, ptr %50, align 4, !tbaa !5
  %51 = load ptr, ptr @maindia, align 8, !tbaa !9
  %52 = load i32, ptr %46, align 4, !tbaa !5
  %53 = add nsw i32 %52, %0
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %51, i64 %54
  store i32 0, ptr %55, align 4, !tbaa !5
  %56 = load ptr, ptr @rowdia, align 8, !tbaa !9
  %57 = load i32, ptr %46, align 4, !tbaa !5
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %56, i64 %58
  store i32 0, ptr %59, align 4, !tbaa !5
  %60 = load i32, ptr %46, align 4, !tbaa !5
  br label %61

61:                                               ; preds = %13, %29, %36, %22
  %62 = phi i32 [ %16, %13 ], [ %16, %29 ], [ %60, %36 ], [ %16, %22 ]
  %63 = phi ptr [ %14, %13 ], [ %14, %29 ], [ %45, %36 ], [ %14, %22 ]
  %64 = phi ptr [ %15, %13 ], [ %15, %29 ], [ %56, %36 ], [ %15, %22 ]
  %65 = getelementptr inbounds i32, ptr %63, i64 %8
  %66 = add nsw i32 %62, 1
  store i32 %66, ptr %65, align 4, !tbaa !5
  %67 = icmp slt i32 %62, 7
  br i1 %67, label %13, label %68, !llvm.loop !11

68:                                               ; preds = %61, %3
  ret void
}

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

; ModuleID = '../benchmarks/fine_grained/exebench/kernel788.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel788.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@angles = dso_local local_unnamed_addr global ptr null, align 8
@kvals = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @cordic(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  store i32 65536, ptr %1, align 4, !tbaa !5
  store i32 0, ptr %2, align 4, !tbaa !5
  %4 = add i32 %0, -102944
  %5 = icmp ult i32 %4, -205887
  br i1 %5, label %74, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @angles, align 8, !tbaa !9
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = icmp sgt i32 %0, -1
  %10 = select i1 %9, i32 1, i32 -1
  %11 = load i32, ptr %1, align 4, !tbaa !5
  %12 = mul nsw i32 %11, %10
  store i32 %12, ptr %2, align 4, !tbaa !5
  %13 = mul nsw i32 %8, %10
  %14 = sub nsw i32 %0, %13
  %15 = getelementptr inbounds i32, ptr %7, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !5
  %17 = icmp sgt i32 %14, -1
  %18 = select i1 %17, i32 1, i32 -1
  %19 = load i32, ptr %1, align 4, !tbaa !5
  %20 = ashr i32 %12, 1
  %21 = mul nsw i32 %20, %18
  %22 = sub nsw i32 %19, %21
  %23 = ashr i32 %19, 1
  %24 = mul nsw i32 %23, %18
  %25 = add nsw i32 %24, %12
  store i32 %22, ptr %1, align 4, !tbaa !5
  store i32 %25, ptr %2, align 4, !tbaa !5
  %26 = mul nsw i32 %16, %18
  %27 = sub nsw i32 %14, %26
  %28 = getelementptr inbounds i32, ptr %7, i64 2
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = icmp sgt i32 %27, -1
  %31 = select i1 %30, i32 1, i32 -1
  %32 = load i32, ptr %1, align 4, !tbaa !5
  %33 = ashr i32 %25, 2
  %34 = mul nsw i32 %33, %31
  %35 = sub nsw i32 %32, %34
  %36 = ashr i32 %32, 2
  %37 = mul nsw i32 %36, %31
  %38 = add nsw i32 %37, %25
  store i32 %35, ptr %1, align 4, !tbaa !5
  store i32 %38, ptr %2, align 4, !tbaa !5
  %39 = mul nsw i32 %29, %31
  %40 = sub nsw i32 %27, %39
  %41 = getelementptr inbounds i32, ptr %7, i64 3
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = icmp sgt i32 %40, -1
  %44 = select i1 %43, i32 1, i32 -1
  %45 = load i32, ptr %1, align 4, !tbaa !5
  %46 = ashr i32 %38, 3
  %47 = mul nsw i32 %46, %44
  %48 = sub nsw i32 %45, %47
  %49 = ashr i32 %45, 3
  %50 = mul nsw i32 %49, %44
  %51 = add nsw i32 %50, %38
  store i32 %48, ptr %1, align 4, !tbaa !5
  store i32 %51, ptr %2, align 4, !tbaa !5
  %52 = mul nsw i32 %42, %44
  %53 = icmp slt i32 %40, %52
  %54 = select i1 %53, i32 -1, i32 1
  %55 = load i32, ptr %1, align 4, !tbaa !5
  %56 = ashr i32 %51, 4
  %57 = mul nsw i32 %56, %54
  %58 = sub nsw i32 %55, %57
  %59 = ashr i32 %55, 4
  %60 = mul nsw i32 %59, %54
  %61 = add nsw i32 %60, %51
  store i32 %58, ptr %1, align 4, !tbaa !5
  store i32 %61, ptr %2, align 4, !tbaa !5
  %62 = load i32, ptr %1, align 4, !tbaa !5
  %63 = ashr i32 %62, 8
  %64 = load ptr, ptr @kvals, align 8, !tbaa !9
  %65 = getelementptr inbounds i32, ptr %64, i64 4
  %66 = load i32, ptr %65, align 4, !tbaa !5
  %67 = ashr i32 %66, 8
  %68 = mul nsw i32 %67, %63
  store i32 %68, ptr %1, align 4, !tbaa !5
  %69 = load i32, ptr %2, align 4, !tbaa !5
  %70 = ashr i32 %69, 8
  %71 = load i32, ptr %65, align 4, !tbaa !5
  %72 = ashr i32 %71, 8
  %73 = mul nsw i32 %72, %70
  br label %82

74:                                               ; preds = %3
  %75 = icmp slt i32 %0, 0
  %76 = select i1 %75, i32 205887, i32 -205887
  %77 = add nsw i32 %76, %0
  tail call void @cordic(i32 noundef %77, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %78 = load i32, ptr %1, align 4, !tbaa !5
  %79 = sub nsw i32 0, %78
  store i32 %79, ptr %1, align 4, !tbaa !5
  %80 = load i32, ptr %2, align 4, !tbaa !5
  %81 = sub nsw i32 0, %80
  br label %82

82:                                               ; preds = %6, %74
  %83 = phi i32 [ %73, %6 ], [ %81, %74 ]
  store i32 %83, ptr %2, align 4, !tbaa !5
  ret void
}

attributes #0 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

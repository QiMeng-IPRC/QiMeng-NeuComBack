; ModuleID = '../benchmarks/fine_grained/exebench/kernel674.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel674.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @CTShift(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds [4 x i32], ptr %1, i64 3, i64 0
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = mul nsw i32 %5, %3
  %7 = load i32, ptr %1, align 4, !tbaa !10
  %8 = sub nsw i32 %7, %6
  store i32 %8, ptr %1, align 4, !tbaa !10
  %9 = load i32, ptr %0, align 4, !tbaa !5
  %10 = getelementptr inbounds [4 x i32], ptr %1, i64 3, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !10
  %12 = mul nsw i32 %11, %9
  %13 = getelementptr inbounds [4 x i32], ptr %1, i64 0, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !10
  %15 = sub nsw i32 %14, %12
  store i32 %15, ptr %13, align 4, !tbaa !10
  %16 = load i32, ptr %0, align 4, !tbaa !5
  %17 = getelementptr inbounds [4 x i32], ptr %1, i64 3, i64 2
  %18 = load i32, ptr %17, align 4, !tbaa !10
  %19 = mul nsw i32 %18, %16
  %20 = getelementptr inbounds [4 x i32], ptr %1, i64 0, i64 2
  %21 = load i32, ptr %20, align 4, !tbaa !10
  %22 = sub nsw i32 %21, %19
  store i32 %22, ptr %20, align 4, !tbaa !10
  %23 = load i32, ptr %0, align 4, !tbaa !5
  %24 = getelementptr inbounds [4 x i32], ptr %1, i64 3, i64 3
  %25 = load i32, ptr %24, align 4, !tbaa !10
  %26 = mul nsw i32 %25, %23
  %27 = getelementptr inbounds [4 x i32], ptr %1, i64 0, i64 3
  %28 = load i32, ptr %27, align 4, !tbaa !10
  %29 = sub nsw i32 %28, %26
  store i32 %29, ptr %27, align 4, !tbaa !10
  %30 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !11
  %32 = mul nsw i32 %5, %31
  %33 = getelementptr inbounds [4 x i32], ptr %1, i64 1, i64 0
  %34 = load i32, ptr %33, align 4, !tbaa !10
  %35 = sub nsw i32 %34, %32
  store i32 %35, ptr %33, align 4, !tbaa !10
  %36 = load i32, ptr %30, align 4, !tbaa !11
  %37 = mul nsw i32 %11, %36
  %38 = getelementptr inbounds [4 x i32], ptr %1, i64 1, i64 1
  %39 = load i32, ptr %38, align 4, !tbaa !10
  %40 = sub nsw i32 %39, %37
  store i32 %40, ptr %38, align 4, !tbaa !10
  %41 = load i32, ptr %30, align 4, !tbaa !11
  %42 = mul nsw i32 %18, %41
  %43 = getelementptr inbounds [4 x i32], ptr %1, i64 1, i64 2
  %44 = load i32, ptr %43, align 4, !tbaa !10
  %45 = sub nsw i32 %44, %42
  store i32 %45, ptr %43, align 4, !tbaa !10
  %46 = load i32, ptr %30, align 4, !tbaa !11
  %47 = mul nsw i32 %25, %46
  %48 = getelementptr inbounds [4 x i32], ptr %1, i64 1, i64 3
  %49 = load i32, ptr %48, align 4, !tbaa !10
  %50 = sub nsw i32 %49, %47
  store i32 %50, ptr %48, align 4, !tbaa !10
  %51 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !12
  %53 = mul nsw i32 %5, %52
  %54 = getelementptr inbounds [4 x i32], ptr %1, i64 2, i64 0
  %55 = load i32, ptr %54, align 4, !tbaa !10
  %56 = sub nsw i32 %55, %53
  store i32 %56, ptr %54, align 4, !tbaa !10
  %57 = load i32, ptr %51, align 4, !tbaa !12
  %58 = mul nsw i32 %11, %57
  %59 = getelementptr inbounds [4 x i32], ptr %1, i64 2, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !10
  %61 = sub nsw i32 %60, %58
  store i32 %61, ptr %59, align 4, !tbaa !10
  %62 = load i32, ptr %51, align 4, !tbaa !12
  %63 = mul nsw i32 %18, %62
  %64 = getelementptr inbounds [4 x i32], ptr %1, i64 2, i64 2
  %65 = load i32, ptr %64, align 4, !tbaa !10
  %66 = sub nsw i32 %65, %63
  store i32 %66, ptr %64, align 4, !tbaa !10
  %67 = load i32, ptr %51, align 4, !tbaa !12
  %68 = mul nsw i32 %25, %67
  %69 = getelementptr inbounds [4 x i32], ptr %1, i64 2, i64 3
  %70 = load i32, ptr %69, align 4, !tbaa !10
  %71 = sub nsw i32 %70, %68
  store i32 %71, ptr %69, align 4, !tbaa !10
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !7, i64 8}

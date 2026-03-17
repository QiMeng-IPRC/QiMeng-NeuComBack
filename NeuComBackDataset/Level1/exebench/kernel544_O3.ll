; ModuleID = '../benchmarks/fine_grained/exebench/kernel544.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel544.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @qtMul(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4, !tbaa !5
  %5 = load i32, ptr %1, align 4, !tbaa !5
  %6 = mul nsw i32 %5, %4
  %7 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !10
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !10
  %11 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !11
  %15 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !12
  %17 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %19 = mul i32 %10, %8
  %20 = mul i32 %14, %12
  %21 = mul i32 %18, %16
  %22 = add i32 %20, %19
  %23 = add i32 %22, %21
  %24 = sub i32 %6, %23
  store i32 %24, ptr %2, align 4, !tbaa !5
  %25 = load i32, ptr %0, align 4, !tbaa !5
  %26 = mul nsw i32 %25, %10
  %27 = load i32, ptr %1, align 4, !tbaa !5
  %28 = mul nsw i32 %27, %8
  %29 = mul nsw i32 %18, %12
  %30 = mul nsw i32 %16, %14
  %31 = sub i32 %29, %30
  %32 = add i32 %31, %26
  %33 = add i32 %32, %28
  %34 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 0, i32 1
  store i32 %33, ptr %34, align 4, !tbaa !10
  %35 = mul nsw i32 %25, %14
  %36 = mul nsw i32 %27, %12
  %37 = add nsw i32 %36, %35
  %38 = load i32, ptr %9, align 4, !tbaa !10
  %39 = mul nsw i32 %38, %16
  %40 = add nsw i32 %37, %39
  %41 = load i32, ptr %7, align 4, !tbaa !10
  %42 = mul nsw i32 %41, %18
  %43 = sub i32 %40, %42
  %44 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 0, i32 2
  store i32 %43, ptr %44, align 4, !tbaa !11
  %45 = mul nsw i32 %25, %18
  %46 = mul nsw i32 %27, %16
  %47 = add nsw i32 %46, %45
  %48 = load i32, ptr %13, align 4, !tbaa !11
  %49 = mul nsw i32 %48, %41
  %50 = add nsw i32 %47, %49
  %51 = load i32, ptr %11, align 4, !tbaa !11
  %52 = mul nsw i32 %51, %38
  %53 = sub i32 %50, %52
  %54 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 0, i32 3
  store i32 %53, ptr %54, align 4, !tbaa !12
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
!6 = !{!"TYPE_5__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 12}

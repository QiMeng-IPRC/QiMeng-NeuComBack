; ModuleID = '../benchmarks/fine_grained/exebench/kernel95.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel95.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @Coefficients_27_39(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4, !tbaa !5
  %5 = ashr i32 %4, 2
  %6 = load i32, ptr %1, align 4, !tbaa !5
  %7 = ashr i32 %6, 2
  %8 = add nsw i32 %7, %5
  store i32 %8, ptr %2, align 4, !tbaa !5
  %9 = load i32, ptr %1, align 4, !tbaa !5
  %10 = ashr i32 %9, 1
  %11 = add nsw i32 %10, %8
  store i32 %11, ptr %2, align 4, !tbaa !5
  %12 = getelementptr inbounds i32, ptr %0, i64 1
  %13 = getelementptr inbounds i32, ptr %1, i64 1
  %14 = getelementptr inbounds i32, ptr %2, i64 1
  %15 = load i32, ptr %12, align 4, !tbaa !5
  %16 = ashr i32 %15, 2
  %17 = load i32, ptr %13, align 4, !tbaa !5
  %18 = ashr i32 %17, 2
  %19 = add nsw i32 %18, %16
  store i32 %19, ptr %14, align 4, !tbaa !5
  %20 = load i32, ptr %13, align 4, !tbaa !5
  %21 = ashr i32 %20, 1
  %22 = add nsw i32 %21, %19
  store i32 %22, ptr %14, align 4, !tbaa !5
  %23 = getelementptr inbounds i32, ptr %0, i64 2
  %24 = getelementptr inbounds i32, ptr %1, i64 2
  %25 = getelementptr inbounds i32, ptr %2, i64 2
  %26 = load i32, ptr %23, align 4, !tbaa !5
  %27 = ashr i32 %26, 2
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = ashr i32 %28, 2
  %30 = add nsw i32 %29, %27
  store i32 %30, ptr %25, align 4, !tbaa !5
  %31 = load i32, ptr %24, align 4, !tbaa !5
  %32 = ashr i32 %31, 1
  %33 = add nsw i32 %32, %30
  store i32 %33, ptr %25, align 4, !tbaa !5
  %34 = getelementptr inbounds i32, ptr %0, i64 3
  %35 = getelementptr inbounds i32, ptr %1, i64 3
  %36 = getelementptr inbounds i32, ptr %2, i64 3
  %37 = load i32, ptr %34, align 4, !tbaa !5
  %38 = ashr i32 %37, 2
  %39 = load i32, ptr %35, align 4, !tbaa !5
  %40 = ashr i32 %39, 2
  %41 = add nsw i32 %40, %38
  store i32 %41, ptr %36, align 4, !tbaa !5
  %42 = load i32, ptr %35, align 4, !tbaa !5
  %43 = ashr i32 %42, 1
  %44 = add nsw i32 %43, %41
  store i32 %44, ptr %36, align 4, !tbaa !5
  %45 = getelementptr inbounds i32, ptr %0, i64 4
  %46 = getelementptr inbounds i32, ptr %1, i64 4
  %47 = getelementptr inbounds i32, ptr %2, i64 4
  %48 = load i32, ptr %45, align 4, !tbaa !5
  %49 = ashr i32 %48, 2
  %50 = load i32, ptr %46, align 4, !tbaa !5
  %51 = ashr i32 %50, 2
  %52 = add nsw i32 %51, %49
  store i32 %52, ptr %47, align 4, !tbaa !5
  %53 = load i32, ptr %46, align 4, !tbaa !5
  %54 = ashr i32 %53, 1
  %55 = add nsw i32 %54, %52
  store i32 %55, ptr %47, align 4, !tbaa !5
  %56 = getelementptr inbounds i32, ptr %0, i64 5
  %57 = getelementptr inbounds i32, ptr %1, i64 5
  %58 = getelementptr inbounds i32, ptr %2, i64 5
  %59 = load i32, ptr %56, align 4, !tbaa !5
  %60 = ashr i32 %59, 2
  %61 = load i32, ptr %57, align 4, !tbaa !5
  %62 = ashr i32 %61, 2
  %63 = add nsw i32 %62, %60
  store i32 %63, ptr %58, align 4, !tbaa !5
  %64 = load i32, ptr %57, align 4, !tbaa !5
  %65 = ashr i32 %64, 1
  %66 = add nsw i32 %65, %63
  store i32 %66, ptr %58, align 4, !tbaa !5
  %67 = getelementptr inbounds i32, ptr %0, i64 6
  %68 = getelementptr inbounds i32, ptr %1, i64 6
  %69 = getelementptr inbounds i32, ptr %2, i64 6
  %70 = load i32, ptr %67, align 4, !tbaa !5
  %71 = ashr i32 %70, 2
  %72 = load i32, ptr %68, align 4, !tbaa !5
  %73 = ashr i32 %72, 2
  %74 = add nsw i32 %73, %71
  store i32 %74, ptr %69, align 4, !tbaa !5
  %75 = load i32, ptr %68, align 4, !tbaa !5
  %76 = ashr i32 %75, 1
  %77 = add nsw i32 %76, %74
  store i32 %77, ptr %69, align 4, !tbaa !5
  %78 = getelementptr inbounds i32, ptr %0, i64 7
  %79 = getelementptr inbounds i32, ptr %1, i64 7
  %80 = getelementptr inbounds i32, ptr %2, i64 7
  %81 = load i32, ptr %78, align 4, !tbaa !5
  %82 = ashr i32 %81, 2
  %83 = load i32, ptr %79, align 4, !tbaa !5
  %84 = ashr i32 %83, 2
  %85 = add nsw i32 %84, %82
  store i32 %85, ptr %80, align 4, !tbaa !5
  %86 = load i32, ptr %79, align 4, !tbaa !5
  %87 = ashr i32 %86, 1
  %88 = add nsw i32 %87, %85
  store i32 %88, ptr %80, align 4, !tbaa !5
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}

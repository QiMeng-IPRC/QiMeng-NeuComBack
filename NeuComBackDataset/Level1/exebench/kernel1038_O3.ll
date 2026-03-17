; ModuleID = '../benchmarks/fine_grained/exebench/kernel1038.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1038.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cst_mul = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @mul2(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !5
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds i32, ptr %0, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = ashr i32 %6, 7
  %8 = or i32 %7, %4
  store i32 %8, ptr %1, align 4, !tbaa !5
  %9 = load i32, ptr %5, align 4, !tbaa !5
  %10 = shl i32 %9, 1
  %11 = getelementptr inbounds i32, ptr %0, i64 2
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = ashr i32 %12, 7
  %14 = or i32 %13, %10
  %15 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %14, ptr %15, align 4, !tbaa !5
  %16 = load i32, ptr %11, align 4, !tbaa !5
  %17 = shl i32 %16, 1
  %18 = getelementptr inbounds i32, ptr %0, i64 3
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = ashr i32 %19, 7
  %21 = or i32 %20, %17
  %22 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %21, ptr %22, align 4, !tbaa !5
  %23 = load i32, ptr %18, align 4, !tbaa !5
  %24 = shl i32 %23, 1
  %25 = getelementptr inbounds i32, ptr %0, i64 4
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = ashr i32 %26, 7
  %28 = or i32 %27, %24
  %29 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %28, ptr %29, align 4, !tbaa !5
  %30 = load i32, ptr %25, align 4, !tbaa !5
  %31 = shl i32 %30, 1
  %32 = getelementptr inbounds i32, ptr %0, i64 5
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = ashr i32 %33, 7
  %35 = or i32 %34, %31
  %36 = getelementptr inbounds i32, ptr %1, i64 4
  store i32 %35, ptr %36, align 4, !tbaa !5
  %37 = load i32, ptr %32, align 4, !tbaa !5
  %38 = shl i32 %37, 1
  %39 = getelementptr inbounds i32, ptr %0, i64 6
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = ashr i32 %40, 7
  %42 = or i32 %41, %38
  %43 = getelementptr inbounds i32, ptr %1, i64 5
  store i32 %42, ptr %43, align 4, !tbaa !5
  %44 = load i32, ptr %39, align 4, !tbaa !5
  %45 = shl i32 %44, 1
  %46 = getelementptr inbounds i32, ptr %0, i64 7
  %47 = load i32, ptr %46, align 4, !tbaa !5
  %48 = ashr i32 %47, 7
  %49 = or i32 %48, %45
  %50 = getelementptr inbounds i32, ptr %1, i64 6
  store i32 %49, ptr %50, align 4, !tbaa !5
  %51 = load i32, ptr %46, align 4, !tbaa !5
  %52 = shl i32 %51, 1
  %53 = getelementptr inbounds i32, ptr %0, i64 8
  %54 = load i32, ptr %53, align 4, !tbaa !5
  %55 = ashr i32 %54, 7
  %56 = or i32 %55, %52
  %57 = getelementptr inbounds i32, ptr %1, i64 7
  store i32 %56, ptr %57, align 4, !tbaa !5
  %58 = load i32, ptr %53, align 4, !tbaa !5
  %59 = shl i32 %58, 1
  %60 = getelementptr inbounds i32, ptr %0, i64 9
  %61 = load i32, ptr %60, align 4, !tbaa !5
  %62 = ashr i32 %61, 7
  %63 = or i32 %62, %59
  %64 = getelementptr inbounds i32, ptr %1, i64 8
  store i32 %63, ptr %64, align 4, !tbaa !5
  %65 = load i32, ptr %60, align 4, !tbaa !5
  %66 = shl i32 %65, 1
  %67 = getelementptr inbounds i32, ptr %0, i64 10
  %68 = load i32, ptr %67, align 4, !tbaa !5
  %69 = ashr i32 %68, 7
  %70 = or i32 %69, %66
  %71 = getelementptr inbounds i32, ptr %1, i64 9
  store i32 %70, ptr %71, align 4, !tbaa !5
  %72 = load i32, ptr %67, align 4, !tbaa !5
  %73 = shl i32 %72, 1
  %74 = getelementptr inbounds i32, ptr %0, i64 11
  %75 = load i32, ptr %74, align 4, !tbaa !5
  %76 = ashr i32 %75, 7
  %77 = or i32 %76, %73
  %78 = getelementptr inbounds i32, ptr %1, i64 10
  store i32 %77, ptr %78, align 4, !tbaa !5
  %79 = load i32, ptr %74, align 4, !tbaa !5
  %80 = shl i32 %79, 1
  %81 = getelementptr inbounds i32, ptr %0, i64 12
  %82 = load i32, ptr %81, align 4, !tbaa !5
  %83 = ashr i32 %82, 7
  %84 = or i32 %83, %80
  %85 = getelementptr inbounds i32, ptr %1, i64 11
  store i32 %84, ptr %85, align 4, !tbaa !5
  %86 = load i32, ptr %81, align 4, !tbaa !5
  %87 = shl i32 %86, 1
  %88 = getelementptr inbounds i32, ptr %0, i64 13
  %89 = load i32, ptr %88, align 4, !tbaa !5
  %90 = ashr i32 %89, 7
  %91 = or i32 %90, %87
  %92 = getelementptr inbounds i32, ptr %1, i64 12
  store i32 %91, ptr %92, align 4, !tbaa !5
  %93 = load i32, ptr %88, align 4, !tbaa !5
  %94 = shl i32 %93, 1
  %95 = getelementptr inbounds i32, ptr %0, i64 14
  %96 = load i32, ptr %95, align 4, !tbaa !5
  %97 = ashr i32 %96, 7
  %98 = or i32 %97, %94
  %99 = getelementptr inbounds i32, ptr %1, i64 13
  store i32 %98, ptr %99, align 4, !tbaa !5
  %100 = load i32, ptr %95, align 4, !tbaa !5
  %101 = shl i32 %100, 1
  %102 = getelementptr inbounds i32, ptr %0, i64 15
  %103 = load i32, ptr %102, align 4, !tbaa !5
  %104 = ashr i32 %103, 7
  %105 = or i32 %104, %101
  %106 = getelementptr inbounds i32, ptr %1, i64 14
  store i32 %105, ptr %106, align 4, !tbaa !5
  %107 = ashr i32 %3, 7
  %108 = load i32, ptr %102, align 4, !tbaa !5
  %109 = shl i32 %108, 1
  %110 = load ptr, ptr @cst_mul, align 8, !tbaa !9
  %111 = sext i32 %107 to i64
  %112 = getelementptr inbounds i32, ptr %110, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !5
  %114 = xor i32 %113, %109
  %115 = getelementptr inbounds i32, ptr %1, i64 15
  store i32 %114, ptr %115, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

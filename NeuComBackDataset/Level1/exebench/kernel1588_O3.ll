; ModuleID = '../benchmarks/fine_grained/exebench/kernel1588.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1588.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LowDecomFilCoef = dso_local local_unnamed_addr global ptr null, align 8
@LowReconFilCoef = dso_local local_unnamed_addr global ptr null, align 8
@HiDecomFilCoef = dso_local local_unnamed_addr global ptr null, align 8
@HiReconFilCoef = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @filter_clear() local_unnamed_addr #0 {
  %1 = load ptr, ptr @LowDecomFilCoef, align 8, !tbaa !5
  %2 = load ptr, ptr @LowReconFilCoef, align 8, !tbaa !5
  %3 = load ptr, ptr @HiDecomFilCoef, align 8, !tbaa !5
  %4 = load ptr, ptr @HiReconFilCoef, align 8, !tbaa !5
  store i64 0, ptr %1, align 8, !tbaa !9
  store i64 0, ptr %2, align 8, !tbaa !9
  store i64 0, ptr %3, align 8, !tbaa !9
  store i64 0, ptr %4, align 8, !tbaa !9
  %5 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 0, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds i64, ptr %2, i64 1
  store i64 0, ptr %6, align 8, !tbaa !9
  %7 = getelementptr inbounds i64, ptr %3, i64 1
  store i64 0, ptr %7, align 8, !tbaa !9
  %8 = getelementptr inbounds i64, ptr %4, i64 1
  store i64 0, ptr %8, align 8, !tbaa !9
  %9 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 0, ptr %9, align 8, !tbaa !9
  %10 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 0, ptr %10, align 8, !tbaa !9
  %11 = getelementptr inbounds i64, ptr %3, i64 2
  store i64 0, ptr %11, align 8, !tbaa !9
  %12 = getelementptr inbounds i64, ptr %4, i64 2
  store i64 0, ptr %12, align 8, !tbaa !9
  %13 = getelementptr inbounds i64, ptr %1, i64 3
  store i64 0, ptr %13, align 8, !tbaa !9
  %14 = getelementptr inbounds i64, ptr %2, i64 3
  store i64 0, ptr %14, align 8, !tbaa !9
  %15 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 0, ptr %15, align 8, !tbaa !9
  %16 = getelementptr inbounds i64, ptr %4, i64 3
  store i64 0, ptr %16, align 8, !tbaa !9
  %17 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 0, ptr %17, align 8, !tbaa !9
  %18 = getelementptr inbounds i64, ptr %2, i64 4
  store i64 0, ptr %18, align 8, !tbaa !9
  %19 = getelementptr inbounds i64, ptr %3, i64 4
  store i64 0, ptr %19, align 8, !tbaa !9
  %20 = getelementptr inbounds i64, ptr %4, i64 4
  store i64 0, ptr %20, align 8, !tbaa !9
  %21 = getelementptr inbounds i64, ptr %1, i64 5
  store i64 0, ptr %21, align 8, !tbaa !9
  %22 = getelementptr inbounds i64, ptr %2, i64 5
  store i64 0, ptr %22, align 8, !tbaa !9
  %23 = getelementptr inbounds i64, ptr %3, i64 5
  store i64 0, ptr %23, align 8, !tbaa !9
  %24 = getelementptr inbounds i64, ptr %4, i64 5
  store i64 0, ptr %24, align 8, !tbaa !9
  %25 = getelementptr inbounds i64, ptr %1, i64 6
  store i64 0, ptr %25, align 8, !tbaa !9
  %26 = getelementptr inbounds i64, ptr %2, i64 6
  store i64 0, ptr %26, align 8, !tbaa !9
  %27 = getelementptr inbounds i64, ptr %3, i64 6
  store i64 0, ptr %27, align 8, !tbaa !9
  %28 = getelementptr inbounds i64, ptr %4, i64 6
  store i64 0, ptr %28, align 8, !tbaa !9
  %29 = getelementptr inbounds i64, ptr %1, i64 7
  store i64 0, ptr %29, align 8, !tbaa !9
  %30 = getelementptr inbounds i64, ptr %2, i64 7
  store i64 0, ptr %30, align 8, !tbaa !9
  %31 = getelementptr inbounds i64, ptr %3, i64 7
  store i64 0, ptr %31, align 8, !tbaa !9
  %32 = getelementptr inbounds i64, ptr %4, i64 7
  store i64 0, ptr %32, align 8, !tbaa !9
  %33 = getelementptr inbounds i64, ptr %1, i64 8
  store i64 0, ptr %33, align 8, !tbaa !9
  %34 = getelementptr inbounds i64, ptr %2, i64 8
  store i64 0, ptr %34, align 8, !tbaa !9
  %35 = getelementptr inbounds i64, ptr %3, i64 8
  store i64 0, ptr %35, align 8, !tbaa !9
  %36 = getelementptr inbounds i64, ptr %4, i64 8
  store i64 0, ptr %36, align 8, !tbaa !9
  %37 = getelementptr inbounds i64, ptr %1, i64 9
  store i64 0, ptr %37, align 8, !tbaa !9
  %38 = getelementptr inbounds i64, ptr %2, i64 9
  store i64 0, ptr %38, align 8, !tbaa !9
  %39 = getelementptr inbounds i64, ptr %3, i64 9
  store i64 0, ptr %39, align 8, !tbaa !9
  %40 = getelementptr inbounds i64, ptr %4, i64 9
  store i64 0, ptr %40, align 8, !tbaa !9
  %41 = getelementptr inbounds i64, ptr %1, i64 10
  store i64 0, ptr %41, align 8, !tbaa !9
  %42 = getelementptr inbounds i64, ptr %2, i64 10
  store i64 0, ptr %42, align 8, !tbaa !9
  %43 = getelementptr inbounds i64, ptr %3, i64 10
  store i64 0, ptr %43, align 8, !tbaa !9
  %44 = getelementptr inbounds i64, ptr %4, i64 10
  store i64 0, ptr %44, align 8, !tbaa !9
  %45 = getelementptr inbounds i64, ptr %1, i64 11
  store i64 0, ptr %45, align 8, !tbaa !9
  %46 = getelementptr inbounds i64, ptr %2, i64 11
  store i64 0, ptr %46, align 8, !tbaa !9
  %47 = getelementptr inbounds i64, ptr %3, i64 11
  store i64 0, ptr %47, align 8, !tbaa !9
  %48 = getelementptr inbounds i64, ptr %4, i64 11
  store i64 0, ptr %48, align 8, !tbaa !9
  %49 = getelementptr inbounds i64, ptr %1, i64 12
  store i64 0, ptr %49, align 8, !tbaa !9
  %50 = getelementptr inbounds i64, ptr %2, i64 12
  store i64 0, ptr %50, align 8, !tbaa !9
  %51 = getelementptr inbounds i64, ptr %3, i64 12
  store i64 0, ptr %51, align 8, !tbaa !9
  %52 = getelementptr inbounds i64, ptr %4, i64 12
  store i64 0, ptr %52, align 8, !tbaa !9
  %53 = getelementptr inbounds i64, ptr %1, i64 13
  store i64 0, ptr %53, align 8, !tbaa !9
  %54 = getelementptr inbounds i64, ptr %2, i64 13
  store i64 0, ptr %54, align 8, !tbaa !9
  %55 = getelementptr inbounds i64, ptr %3, i64 13
  store i64 0, ptr %55, align 8, !tbaa !9
  %56 = getelementptr inbounds i64, ptr %4, i64 13
  store i64 0, ptr %56, align 8, !tbaa !9
  %57 = getelementptr inbounds i64, ptr %1, i64 14
  store i64 0, ptr %57, align 8, !tbaa !9
  %58 = getelementptr inbounds i64, ptr %2, i64 14
  store i64 0, ptr %58, align 8, !tbaa !9
  %59 = getelementptr inbounds i64, ptr %3, i64 14
  store i64 0, ptr %59, align 8, !tbaa !9
  %60 = getelementptr inbounds i64, ptr %4, i64 14
  store i64 0, ptr %60, align 8, !tbaa !9
  %61 = getelementptr inbounds i64, ptr %1, i64 15
  store i64 0, ptr %61, align 8, !tbaa !9
  %62 = getelementptr inbounds i64, ptr %2, i64 15
  store i64 0, ptr %62, align 8, !tbaa !9
  %63 = getelementptr inbounds i64, ptr %3, i64 15
  store i64 0, ptr %63, align 8, !tbaa !9
  %64 = getelementptr inbounds i64, ptr %4, i64 15
  store i64 0, ptr %64, align 8, !tbaa !9
  %65 = getelementptr inbounds i64, ptr %1, i64 16
  store i64 0, ptr %65, align 8, !tbaa !9
  %66 = getelementptr inbounds i64, ptr %2, i64 16
  store i64 0, ptr %66, align 8, !tbaa !9
  %67 = getelementptr inbounds i64, ptr %3, i64 16
  store i64 0, ptr %67, align 8, !tbaa !9
  %68 = getelementptr inbounds i64, ptr %4, i64 16
  store i64 0, ptr %68, align 8, !tbaa !9
  %69 = getelementptr inbounds i64, ptr %1, i64 17
  store i64 0, ptr %69, align 8, !tbaa !9
  %70 = getelementptr inbounds i64, ptr %2, i64 17
  store i64 0, ptr %70, align 8, !tbaa !9
  %71 = getelementptr inbounds i64, ptr %3, i64 17
  store i64 0, ptr %71, align 8, !tbaa !9
  %72 = getelementptr inbounds i64, ptr %4, i64 17
  store i64 0, ptr %72, align 8, !tbaa !9
  %73 = getelementptr inbounds i64, ptr %1, i64 18
  store i64 0, ptr %73, align 8, !tbaa !9
  %74 = getelementptr inbounds i64, ptr %2, i64 18
  store i64 0, ptr %74, align 8, !tbaa !9
  %75 = getelementptr inbounds i64, ptr %3, i64 18
  store i64 0, ptr %75, align 8, !tbaa !9
  %76 = getelementptr inbounds i64, ptr %4, i64 18
  store i64 0, ptr %76, align 8, !tbaa !9
  %77 = getelementptr inbounds i64, ptr %1, i64 19
  store i64 0, ptr %77, align 8, !tbaa !9
  %78 = getelementptr inbounds i64, ptr %2, i64 19
  store i64 0, ptr %78, align 8, !tbaa !9
  %79 = getelementptr inbounds i64, ptr %3, i64 19
  store i64 0, ptr %79, align 8, !tbaa !9
  %80 = getelementptr inbounds i64, ptr %4, i64 19
  store i64 0, ptr %80, align 8, !tbaa !9
  %81 = getelementptr inbounds i64, ptr %1, i64 20
  store i64 0, ptr %81, align 8, !tbaa !9
  %82 = getelementptr inbounds i64, ptr %2, i64 20
  store i64 0, ptr %82, align 8, !tbaa !9
  %83 = getelementptr inbounds i64, ptr %3, i64 20
  store i64 0, ptr %83, align 8, !tbaa !9
  %84 = getelementptr inbounds i64, ptr %4, i64 20
  store i64 0, ptr %84, align 8, !tbaa !9
  %85 = getelementptr inbounds i64, ptr %1, i64 21
  store i64 0, ptr %85, align 8, !tbaa !9
  %86 = getelementptr inbounds i64, ptr %2, i64 21
  store i64 0, ptr %86, align 8, !tbaa !9
  %87 = getelementptr inbounds i64, ptr %3, i64 21
  store i64 0, ptr %87, align 8, !tbaa !9
  %88 = getelementptr inbounds i64, ptr %4, i64 21
  store i64 0, ptr %88, align 8, !tbaa !9
  %89 = getelementptr inbounds i64, ptr %1, i64 22
  store i64 0, ptr %89, align 8, !tbaa !9
  %90 = getelementptr inbounds i64, ptr %2, i64 22
  store i64 0, ptr %90, align 8, !tbaa !9
  %91 = getelementptr inbounds i64, ptr %3, i64 22
  store i64 0, ptr %91, align 8, !tbaa !9
  %92 = getelementptr inbounds i64, ptr %4, i64 22
  store i64 0, ptr %92, align 8, !tbaa !9
  %93 = getelementptr inbounds i64, ptr %1, i64 23
  store i64 0, ptr %93, align 8, !tbaa !9
  %94 = getelementptr inbounds i64, ptr %2, i64 23
  store i64 0, ptr %94, align 8, !tbaa !9
  %95 = getelementptr inbounds i64, ptr %3, i64 23
  store i64 0, ptr %95, align 8, !tbaa !9
  %96 = getelementptr inbounds i64, ptr %4, i64 23
  store i64 0, ptr %96, align 8, !tbaa !9
  %97 = getelementptr inbounds i64, ptr %1, i64 24
  store i64 0, ptr %97, align 8, !tbaa !9
  %98 = getelementptr inbounds i64, ptr %2, i64 24
  store i64 0, ptr %98, align 8, !tbaa !9
  %99 = getelementptr inbounds i64, ptr %3, i64 24
  store i64 0, ptr %99, align 8, !tbaa !9
  %100 = getelementptr inbounds i64, ptr %4, i64 24
  store i64 0, ptr %100, align 8, !tbaa !9
  %101 = getelementptr inbounds i64, ptr %1, i64 25
  store i64 0, ptr %101, align 8, !tbaa !9
  %102 = getelementptr inbounds i64, ptr %2, i64 25
  store i64 0, ptr %102, align 8, !tbaa !9
  %103 = getelementptr inbounds i64, ptr %3, i64 25
  store i64 0, ptr %103, align 8, !tbaa !9
  %104 = getelementptr inbounds i64, ptr %4, i64 25
  store i64 0, ptr %104, align 8, !tbaa !9
  %105 = getelementptr inbounds i64, ptr %1, i64 26
  store i64 0, ptr %105, align 8, !tbaa !9
  %106 = getelementptr inbounds i64, ptr %2, i64 26
  store i64 0, ptr %106, align 8, !tbaa !9
  %107 = getelementptr inbounds i64, ptr %3, i64 26
  store i64 0, ptr %107, align 8, !tbaa !9
  %108 = getelementptr inbounds i64, ptr %4, i64 26
  store i64 0, ptr %108, align 8, !tbaa !9
  %109 = getelementptr inbounds i64, ptr %1, i64 27
  store i64 0, ptr %109, align 8, !tbaa !9
  %110 = getelementptr inbounds i64, ptr %2, i64 27
  store i64 0, ptr %110, align 8, !tbaa !9
  %111 = getelementptr inbounds i64, ptr %3, i64 27
  store i64 0, ptr %111, align 8, !tbaa !9
  %112 = getelementptr inbounds i64, ptr %4, i64 27
  store i64 0, ptr %112, align 8, !tbaa !9
  %113 = getelementptr inbounds i64, ptr %1, i64 28
  store i64 0, ptr %113, align 8, !tbaa !9
  %114 = getelementptr inbounds i64, ptr %2, i64 28
  store i64 0, ptr %114, align 8, !tbaa !9
  %115 = getelementptr inbounds i64, ptr %3, i64 28
  store i64 0, ptr %115, align 8, !tbaa !9
  %116 = getelementptr inbounds i64, ptr %4, i64 28
  store i64 0, ptr %116, align 8, !tbaa !9
  %117 = getelementptr inbounds i64, ptr %1, i64 29
  store i64 0, ptr %117, align 8, !tbaa !9
  %118 = getelementptr inbounds i64, ptr %2, i64 29
  store i64 0, ptr %118, align 8, !tbaa !9
  %119 = getelementptr inbounds i64, ptr %3, i64 29
  store i64 0, ptr %119, align 8, !tbaa !9
  %120 = getelementptr inbounds i64, ptr %4, i64 29
  store i64 0, ptr %120, align 8, !tbaa !9
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"long", !7, i64 0}

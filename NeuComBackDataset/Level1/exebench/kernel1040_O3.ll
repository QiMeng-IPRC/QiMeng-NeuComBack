; ModuleID = '../benchmarks/fine_grained/exebench/kernel1040.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1040.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @dct4x4dc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %3 = getelementptr inbounds i32, ptr %0, i64 1
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = add nsw i32 %4, %2
  %6 = sub nsw i32 %2, %4
  %7 = getelementptr inbounds i32, ptr %0, i64 2
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds i32, ptr %0, i64 3
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = add nsw i32 %10, %8
  %12 = sub nsw i32 %8, %10
  %13 = add nsw i32 %11, %5
  %14 = sub nsw i32 %5, %11
  %15 = sub nsw i32 %6, %12
  %16 = add nsw i32 %12, %6
  %17 = getelementptr inbounds i32, ptr %0, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, ptr %0, i64 5
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = add nsw i32 %20, %18
  %22 = sub nsw i32 %18, %20
  %23 = getelementptr inbounds i32, ptr %0, i64 6
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = getelementptr inbounds i32, ptr %0, i64 7
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = add nsw i32 %26, %24
  %28 = sub nsw i32 %24, %26
  %29 = add nsw i32 %27, %21
  %30 = sub nsw i32 %21, %27
  %31 = sub nsw i32 %22, %28
  %32 = add nsw i32 %28, %22
  %33 = getelementptr inbounds i32, ptr %0, i64 8
  %34 = load i32, ptr %33, align 4, !tbaa !5
  %35 = getelementptr inbounds i32, ptr %0, i64 9
  %36 = load i32, ptr %35, align 4, !tbaa !5
  %37 = add nsw i32 %36, %34
  %38 = sub nsw i32 %34, %36
  %39 = getelementptr inbounds i32, ptr %0, i64 10
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = getelementptr inbounds i32, ptr %0, i64 11
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = add nsw i32 %42, %40
  %44 = sub nsw i32 %40, %42
  %45 = add nsw i32 %43, %37
  %46 = sub nsw i32 %37, %43
  %47 = sub nsw i32 %38, %44
  %48 = add nsw i32 %44, %38
  %49 = getelementptr inbounds i32, ptr %0, i64 12
  %50 = load i32, ptr %49, align 4, !tbaa !5
  %51 = getelementptr inbounds i32, ptr %0, i64 13
  %52 = load i32, ptr %51, align 4, !tbaa !5
  %53 = add nsw i32 %52, %50
  %54 = sub nsw i32 %50, %52
  %55 = getelementptr inbounds i32, ptr %0, i64 14
  %56 = load i32, ptr %55, align 4, !tbaa !5
  %57 = getelementptr inbounds i32, ptr %0, i64 15
  %58 = load i32, ptr %57, align 4, !tbaa !5
  %59 = add nsw i32 %58, %56
  %60 = sub nsw i32 %56, %58
  %61 = add nsw i32 %59, %53
  %62 = sub nsw i32 %53, %59
  %63 = sub nsw i32 %54, %60
  %64 = add nsw i32 %60, %54
  %65 = add nsw i32 %29, %13
  %66 = sub nsw i32 %13, %29
  %67 = add nsw i32 %61, %45
  %68 = sub nsw i32 %45, %61
  %69 = add i32 %65, 1
  %70 = add i32 %69, %67
  %71 = ashr i32 %70, 1
  store i32 %71, ptr %0, align 4, !tbaa !5
  %72 = sub i32 %69, %67
  %73 = ashr i32 %72, 1
  store i32 %73, ptr %3, align 4, !tbaa !5
  %74 = add i32 %66, 1
  %75 = sub i32 %74, %68
  %76 = ashr i32 %75, 1
  store i32 %76, ptr %7, align 4, !tbaa !5
  %77 = add i32 %74, %68
  %78 = ashr i32 %77, 1
  store i32 %78, ptr %9, align 4, !tbaa !5
  %79 = add nsw i32 %30, %14
  %80 = sub nsw i32 %14, %30
  %81 = add nsw i32 %62, %46
  %82 = sub nsw i32 %46, %62
  %83 = add i32 %79, 1
  %84 = add i32 %83, %81
  %85 = ashr i32 %84, 1
  store i32 %85, ptr %17, align 4, !tbaa !5
  %86 = sub i32 %83, %81
  %87 = ashr i32 %86, 1
  store i32 %87, ptr %19, align 4, !tbaa !5
  %88 = add i32 %80, 1
  %89 = sub i32 %88, %82
  %90 = ashr i32 %89, 1
  store i32 %90, ptr %23, align 4, !tbaa !5
  %91 = add i32 %88, %82
  %92 = ashr i32 %91, 1
  store i32 %92, ptr %25, align 4, !tbaa !5
  %93 = add nsw i32 %31, %15
  %94 = sub nsw i32 %15, %31
  %95 = add nsw i32 %63, %47
  %96 = sub nsw i32 %47, %63
  %97 = add i32 %93, 1
  %98 = add i32 %97, %95
  %99 = ashr i32 %98, 1
  store i32 %99, ptr %33, align 4, !tbaa !5
  %100 = sub i32 %97, %95
  %101 = ashr i32 %100, 1
  store i32 %101, ptr %35, align 4, !tbaa !5
  %102 = add i32 %94, 1
  %103 = sub i32 %102, %96
  %104 = ashr i32 %103, 1
  store i32 %104, ptr %39, align 4, !tbaa !5
  %105 = add i32 %102, %96
  %106 = ashr i32 %105, 1
  store i32 %106, ptr %41, align 4, !tbaa !5
  %107 = add nsw i32 %32, %16
  %108 = sub nsw i32 %16, %32
  %109 = add nsw i32 %64, %48
  %110 = sub nsw i32 %48, %64
  %111 = add i32 %107, 1
  %112 = add i32 %111, %109
  %113 = ashr i32 %112, 1
  store i32 %113, ptr %49, align 4, !tbaa !5
  %114 = sub i32 %111, %109
  %115 = ashr i32 %114, 1
  store i32 %115, ptr %51, align 4, !tbaa !5
  %116 = add i32 %108, 1
  %117 = sub i32 %116, %110
  %118 = ashr i32 %117, 1
  store i32 %118, ptr %55, align 4, !tbaa !5
  %119 = add i32 %116, %110
  %120 = ashr i32 %119, 1
  store i32 %120, ptr %57, align 4, !tbaa !5
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

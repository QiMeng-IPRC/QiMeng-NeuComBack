; ModuleID = '../benchmarks/fine_grained/exebench/kernel227.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel227.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sig_invalid_handler = dso_local local_unnamed_addr global i32 0, align 4
@default_sig_handler = dso_local local_unnamed_addr global ptr null, align 8
@signal_handler = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sig_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @default_sig_handler, align 8, !tbaa !5
  %2 = load i32, ptr @sig_invalid_handler, align 4, !tbaa !9
  store i32 %2, ptr %1, align 4, !tbaa !9
  %3 = load i32, ptr @sig_invalid_handler, align 4, !tbaa !9
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = getelementptr inbounds i32, ptr %1, i64 2
  %6 = getelementptr inbounds i32, ptr %1, i64 3
  %7 = getelementptr inbounds i32, ptr %1, i64 4
  %8 = insertelement <4 x i32> poison, i32 %3, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %9, ptr %4, align 4, !tbaa !9
  %10 = getelementptr inbounds i32, ptr %1, i64 5
  %11 = getelementptr inbounds i32, ptr %1, i64 6
  %12 = getelementptr inbounds i32, ptr %1, i64 7
  %13 = getelementptr inbounds i32, ptr %1, i64 8
  store <4 x i32> %9, ptr %10, align 4, !tbaa !9
  %14 = getelementptr inbounds i32, ptr %1, i64 9
  store i32 %3, ptr %14, align 4, !tbaa !9
  %15 = getelementptr inbounds i32, ptr %1, i64 10
  %16 = getelementptr inbounds i32, ptr %1, i64 11
  store i32 %3, ptr %16, align 4, !tbaa !9
  %17 = getelementptr inbounds i32, ptr %1, i64 12
  %18 = getelementptr inbounds i32, ptr %1, i64 13
  store i32 %3, ptr %18, align 4, !tbaa !9
  %19 = getelementptr inbounds i32, ptr %1, i64 14
  %20 = getelementptr inbounds i32, ptr %1, i64 15
  %21 = getelementptr inbounds i32, ptr %1, i64 16
  %22 = getelementptr inbounds i32, ptr %1, i64 17
  %23 = getelementptr inbounds i32, ptr %1, i64 18
  store <4 x i32> %9, ptr %20, align 4, !tbaa !9
  %24 = getelementptr inbounds i32, ptr %1, i64 19
  store i32 %3, ptr %24, align 4, !tbaa !9
  %25 = getelementptr inbounds i32, ptr %1, i64 20
  store i32 %3, ptr %25, align 4, !tbaa !9
  %26 = getelementptr inbounds i32, ptr %1, i64 21
  %27 = getelementptr inbounds i32, ptr %1, i64 22
  %28 = getelementptr inbounds i32, ptr %1, i64 23
  %29 = getelementptr inbounds i32, ptr %1, i64 24
  %30 = getelementptr inbounds i32, ptr %1, i64 25
  store <4 x i32> %9, ptr %27, align 4, !tbaa !9
  %31 = getelementptr inbounds i32, ptr %1, i64 26
  store i32 %3, ptr %31, align 4, !tbaa !9
  %32 = getelementptr inbounds i32, ptr %1, i64 27
  store i32 %3, ptr %32, align 4, !tbaa !9
  %33 = getelementptr inbounds i32, ptr %1, i64 28
  store i32 %3, ptr %33, align 4, !tbaa !9
  %34 = getelementptr inbounds i32, ptr %1, i64 29
  %35 = getelementptr inbounds i32, ptr %1, i64 30
  store i32 %3, ptr %35, align 4, !tbaa !9
  %36 = getelementptr inbounds i32, ptr %1, i64 31
  store i32 %3, ptr %36, align 4, !tbaa !9
  store i32 1, ptr %19, align 4, !tbaa !9
  store i32 1, ptr %15, align 4, !tbaa !9
  store i32 1, ptr %17, align 4, !tbaa !9
  store i32 1, ptr %34, align 4, !tbaa !9
  store i32 1, ptr %26, align 4, !tbaa !9
  %37 = load ptr, ptr @signal_handler, align 8, !tbaa !5
  store i32 %2, ptr %37, align 4, !tbaa !9
  %38 = load i32, ptr %4, align 4, !tbaa !9
  %39 = getelementptr inbounds i32, ptr %37, i64 1
  store i32 %38, ptr %39, align 4, !tbaa !9
  %40 = load i32, ptr %5, align 4, !tbaa !9
  %41 = getelementptr inbounds i32, ptr %37, i64 2
  store i32 %40, ptr %41, align 4, !tbaa !9
  %42 = load i32, ptr %6, align 4, !tbaa !9
  %43 = getelementptr inbounds i32, ptr %37, i64 3
  store i32 %42, ptr %43, align 4, !tbaa !9
  %44 = load i32, ptr %7, align 4, !tbaa !9
  %45 = getelementptr inbounds i32, ptr %37, i64 4
  store i32 %44, ptr %45, align 4, !tbaa !9
  %46 = load i32, ptr %10, align 4, !tbaa !9
  %47 = getelementptr inbounds i32, ptr %37, i64 5
  store i32 %46, ptr %47, align 4, !tbaa !9
  %48 = load i32, ptr %11, align 4, !tbaa !9
  %49 = getelementptr inbounds i32, ptr %37, i64 6
  store i32 %48, ptr %49, align 4, !tbaa !9
  %50 = load i32, ptr %12, align 4, !tbaa !9
  %51 = getelementptr inbounds i32, ptr %37, i64 7
  store i32 %50, ptr %51, align 4, !tbaa !9
  %52 = load i32, ptr %13, align 4, !tbaa !9
  %53 = getelementptr inbounds i32, ptr %37, i64 8
  store i32 %52, ptr %53, align 4, !tbaa !9
  %54 = load i32, ptr %14, align 4, !tbaa !9
  %55 = getelementptr inbounds i32, ptr %37, i64 9
  store i32 %54, ptr %55, align 4, !tbaa !9
  %56 = load i32, ptr %15, align 4, !tbaa !9
  %57 = getelementptr inbounds i32, ptr %37, i64 10
  store i32 %56, ptr %57, align 4, !tbaa !9
  %58 = load i32, ptr %16, align 4, !tbaa !9
  %59 = getelementptr inbounds i32, ptr %37, i64 11
  store i32 %58, ptr %59, align 4, !tbaa !9
  %60 = load i32, ptr %17, align 4, !tbaa !9
  %61 = getelementptr inbounds i32, ptr %37, i64 12
  store i32 %60, ptr %61, align 4, !tbaa !9
  %62 = load i32, ptr %18, align 4, !tbaa !9
  %63 = getelementptr inbounds i32, ptr %37, i64 13
  store i32 %62, ptr %63, align 4, !tbaa !9
  %64 = load i32, ptr %19, align 4, !tbaa !9
  %65 = getelementptr inbounds i32, ptr %37, i64 14
  store i32 %64, ptr %65, align 4, !tbaa !9
  %66 = load i32, ptr %20, align 4, !tbaa !9
  %67 = getelementptr inbounds i32, ptr %37, i64 15
  store i32 %66, ptr %67, align 4, !tbaa !9
  %68 = load i32, ptr %21, align 4, !tbaa !9
  %69 = getelementptr inbounds i32, ptr %37, i64 16
  store i32 %68, ptr %69, align 4, !tbaa !9
  %70 = load i32, ptr %22, align 4, !tbaa !9
  %71 = getelementptr inbounds i32, ptr %37, i64 17
  store i32 %70, ptr %71, align 4, !tbaa !9
  %72 = load i32, ptr %23, align 4, !tbaa !9
  %73 = getelementptr inbounds i32, ptr %37, i64 18
  store i32 %72, ptr %73, align 4, !tbaa !9
  %74 = load i32, ptr %24, align 4, !tbaa !9
  %75 = getelementptr inbounds i32, ptr %37, i64 19
  store i32 %74, ptr %75, align 4, !tbaa !9
  %76 = load i32, ptr %25, align 4, !tbaa !9
  %77 = getelementptr inbounds i32, ptr %37, i64 20
  store i32 %76, ptr %77, align 4, !tbaa !9
  %78 = load i32, ptr %26, align 4, !tbaa !9
  %79 = getelementptr inbounds i32, ptr %37, i64 21
  store i32 %78, ptr %79, align 4, !tbaa !9
  %80 = load i32, ptr %27, align 4, !tbaa !9
  %81 = getelementptr inbounds i32, ptr %37, i64 22
  store i32 %80, ptr %81, align 4, !tbaa !9
  %82 = load i32, ptr %28, align 4, !tbaa !9
  %83 = getelementptr inbounds i32, ptr %37, i64 23
  store i32 %82, ptr %83, align 4, !tbaa !9
  %84 = load i32, ptr %29, align 4, !tbaa !9
  %85 = getelementptr inbounds i32, ptr %37, i64 24
  store i32 %84, ptr %85, align 4, !tbaa !9
  %86 = load i32, ptr %30, align 4, !tbaa !9
  %87 = getelementptr inbounds i32, ptr %37, i64 25
  store i32 %86, ptr %87, align 4, !tbaa !9
  %88 = load i32, ptr %31, align 4, !tbaa !9
  %89 = getelementptr inbounds i32, ptr %37, i64 26
  store i32 %88, ptr %89, align 4, !tbaa !9
  %90 = load i32, ptr %32, align 4, !tbaa !9
  %91 = getelementptr inbounds i32, ptr %37, i64 27
  store i32 %90, ptr %91, align 4, !tbaa !9
  %92 = load i32, ptr %33, align 4, !tbaa !9
  %93 = getelementptr inbounds i32, ptr %37, i64 28
  store i32 %92, ptr %93, align 4, !tbaa !9
  %94 = load i32, ptr %34, align 4, !tbaa !9
  %95 = getelementptr inbounds i32, ptr %37, i64 29
  store i32 %94, ptr %95, align 4, !tbaa !9
  %96 = load i32, ptr %35, align 4, !tbaa !9
  %97 = getelementptr inbounds i32, ptr %37, i64 30
  store i32 %96, ptr %97, align 4, !tbaa !9
  %98 = load i32, ptr %36, align 4, !tbaa !9
  %99 = getelementptr inbounds i32, ptr %37, i64 31
  store i32 %98, ptr %99, align 4, !tbaa !9
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}

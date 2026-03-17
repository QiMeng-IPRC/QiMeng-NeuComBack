; ModuleID = '../benchmarks/fine_grained/exebench/kernel1284.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1284.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@result = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @result, align 8, !tbaa !5
  %3 = load float, ptr %2, align 4, !tbaa !9
  %4 = fcmp une float %3, 0x3FF6A09E60000000
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !9
  %8 = fcmp une float %7, 0x3FFBB67AE0000000
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds float, ptr %2, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !9
  %12 = fcmp une float %11, 0x4001E377A0000000
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds float, ptr %2, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !9
  %16 = fcmp une float %15, 0x4003988E20000000
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds float, ptr %2, i64 4
  %19 = load float, ptr %18, align 4, !tbaa !9
  %20 = fcmp une float %19, 0x40052A7FA0000000
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds float, ptr %2, i64 5
  %23 = load float, ptr %22, align 4, !tbaa !9
  %24 = fcmp une float %23, 0x4006A09E60000000
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %21, %17, %13, %9, %5, %1
  %27 = phi i32 [ 0, %1 ], [ 0, %5 ], [ 0, %9 ], [ 0, %13 ], [ 0, %17 ], [ 0, %21 ], [ 1, %25 ]
  ret i32 %27
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"float", !7, i64 0}

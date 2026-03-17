; ModuleID = '../benchmarks/fine_grained/exebench/kernel859.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel859.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uchar0 = dso_local local_unnamed_addr global i32 0, align 4
@failures = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @or_lit2uchar() local_unnamed_addr #0 {
  %1 = load i32, ptr @uchar0, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @failures, align 4, !tbaa !5
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @failures, align 4, !tbaa !5
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = add nsw i32 %4, 2
  store i32 %8, ptr @failures, align 4, !tbaa !5
  %9 = icmp ult i32 %1, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %3, %0, %7
  store i32 15, ptr @uchar0, align 4, !tbaa !5
  br label %17

11:                                               ; preds = %7
  %12 = add nsw i32 %4, 3
  store i32 %12, ptr @failures, align 4, !tbaa !5
  %13 = or i32 %1, 15
  store i32 %13, ptr @uchar0, align 4, !tbaa !5
  %14 = icmp ult i32 %1, 16
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = add nsw i32 %4, 4
  store i32 %16, ptr @failures, align 4, !tbaa !5
  br label %17

17:                                               ; preds = %10, %15, %11
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

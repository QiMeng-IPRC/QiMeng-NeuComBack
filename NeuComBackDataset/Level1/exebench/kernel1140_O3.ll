; ModuleID = '../benchmarks/fine_grained/exebench/kernel1140.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1140.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sp = dso_local local_unnamed_addr global i32 0, align 4
@ERROR_STACK_EMPTY = dso_local local_unnamed_addr global i32 0, align 4
@errcode = dso_local local_unnamed_addr global i32 0, align 4
@stack = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @cmd_math_subtract() local_unnamed_addr #0 {
  %1 = load i32, ptr @sp, align 4, !tbaa !5
  %2 = icmp slt i32 %1, 2
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i32, ptr @ERROR_STACK_EMPTY, align 4, !tbaa !5
  store i32 %4, ptr @errcode, align 4, !tbaa !5
  br label %16

5:                                                ; preds = %0
  %6 = load ptr, ptr @stack, align 8, !tbaa !9
  %7 = add nsw i32 %1, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i64, ptr %6, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !11
  %11 = add nsw i32 %1, -2
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i64, ptr %6, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !11
  %15 = sub nsw i64 %10, %14
  store i64 %15, ptr %13, align 8, !tbaa !11
  store i32 %7, ptr @sp, align 4, !tbaa !5
  br label %16

16:                                               ; preds = %5, %3
  %17 = phi i32 [ -1, %3 ], [ 0, %5 ]
  ret i32 %17
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}

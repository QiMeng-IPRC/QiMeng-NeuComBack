; ModuleID = '../benchmarks/fine_grained/exebench/kernel1581.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1581.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sp = dso_local local_unnamed_addr global i32 0, align 4
@ERROR_STACK_FULL = dso_local local_unnamed_addr global i32 0, align 4
@errcode = dso_local local_unnamed_addr global i32 0, align 4
@stack = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @cmd_stack_push(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @sp, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 1027
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load i32, ptr @ERROR_STACK_FULL, align 4, !tbaa !5
  store i32 %5, ptr @errcode, align 4, !tbaa !5
  br label %12

6:                                                ; preds = %1
  %7 = load ptr, ptr @stack, align 8, !tbaa !9
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  store i32 %0, ptr %9, align 4, !tbaa !5
  %10 = load i32, ptr @sp, align 4, !tbaa !5
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @sp, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi i32 [ -1, %4 ], [ 0, %6 ]
  ret i32 %13
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel452.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel452.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@block_stack = dso_local local_unnamed_addr global ptr null, align 8
@block_depth = dso_local local_unnamed_addr global i64 0, align 8
@num_blocks = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @SET_pop_block() local_unnamed_addr #0 {
  %1 = load ptr, ptr @block_stack, align 8, !tbaa !5
  %2 = icmp ne ptr %1, null
  %3 = load i64, ptr @block_depth, align 8
  %4 = icmp ne i64 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = add i64 %3, -1
  store i64 %7, ptr @block_depth, align 8, !tbaa !9
  %8 = getelementptr inbounds i64, ptr %1, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !9
  %10 = icmp eq i64 %9, 0
  %11 = icmp ne i64 %7, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = add i64 %3, -2
  store i64 %14, ptr @block_depth, align 8, !tbaa !9
  %15 = getelementptr inbounds i64, ptr %1, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !9
  store i64 %16, ptr @num_blocks, align 8, !tbaa !9
  br label %17

17:                                               ; preds = %6, %13, %0
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

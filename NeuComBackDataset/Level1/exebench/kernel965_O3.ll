; ModuleID = '../benchmarks/fine_grained/exebench/kernel965.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel965.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MOD_CTRL = dso_local local_unnamed_addr global i32 0, align 4
@MOD_META = dso_local local_unnamed_addr global i32 0, align 4
@MOD_SHIFT = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @parse_modifiers(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %21, %2
  %4 = phi i32 [ 0, %2 ], [ %22, %21 ]
  %5 = phi i64 [ 0, %2 ], [ %23, %21 ]
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = sext i8 %7 to i32
  switch i32 %8, label %24 [
    i32 67, label %11
    i32 77, label %9
    i32 83, label %10
  ]

9:                                                ; preds = %3
  br label %11

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %3, %10, %9
  %12 = phi ptr [ @MOD_SHIFT, %10 ], [ @MOD_META, %9 ], [ @MOD_CTRL, %3 ]
  %13 = load i32, ptr %12, align 4, !tbaa !8
  %14 = or i64 %5, 1
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = icmp eq i8 %16, 45
  %18 = and i32 %13, %4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = or i32 %13, %4
  %23 = add i64 %5, 2
  br label %3

24:                                               ; preds = %11, %3
  store i32 %4, ptr %1, align 4, !tbaa !8
  ret i64 %5
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}

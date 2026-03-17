; ModuleID = '../benchmarks/fine_grained/exebench/kernel915.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel915.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@porta = dso_local local_unnamed_addr global i8 0, align 1
@portb = dso_local local_unnamed_addr global i8 0, align 1
@portc = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @d8255_read(i8 noundef zeroext %0) local_unnamed_addr #0 {
  switch i8 %0, label %8 [
    i8 1, label %2
    i8 2, label %4
    i8 3, label %6
  ]

2:                                                ; preds = %1
  %3 = load i8, ptr @porta, align 1, !tbaa !5
  br label %8

4:                                                ; preds = %1
  %5 = load i8, ptr @portb, align 1, !tbaa !5
  br label %8

6:                                                ; preds = %1
  %7 = load i8, ptr @portc, align 1, !tbaa !5
  br label %8

8:                                                ; preds = %1, %6, %4, %2
  %9 = phi i8 [ %7, %6 ], [ %5, %4 ], [ %3, %2 ], [ -1, %1 ]
  ret i8 %9
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

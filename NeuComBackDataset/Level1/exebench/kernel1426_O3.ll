; ModuleID = '../benchmarks/fine_grained/exebench/kernel1426.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1426.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yytext = dso_local local_unnamed_addr global ptr null, align 8
@column = dso_local local_unnamed_addr global i32 0, align 4
@line = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @count_no_log() local_unnamed_addr #0 {
  %1 = load ptr, ptr @yytext, align 8, !tbaa !5
  %2 = load i32, ptr @column, align 4, !tbaa !9
  %3 = load i32, ptr @line, align 4, !tbaa !9
  br label %4

4:                                                ; preds = %18, %0
  %5 = phi i64 [ %21, %18 ], [ 0, %0 ]
  %6 = phi i32 [ %19, %18 ], [ %3, %0 ]
  %7 = phi i32 [ %20, %18 ], [ %2, %0 ]
  %8 = getelementptr inbounds i8, ptr %1, i64 %5
  %9 = load i8, ptr %8, align 1, !tbaa !11
  switch i8 %9, label %16 [
    i8 0, label %22
    i8 10, label %10
    i8 9, label %12
  ]

10:                                               ; preds = %4
  store i32 0, ptr @column, align 4, !tbaa !9
  %11 = add nsw i32 %6, 1
  store i32 %11, ptr @line, align 4, !tbaa !9
  br label %18

12:                                               ; preds = %4
  %13 = srem i32 %7, 8
  %14 = add i32 %7, 8
  %15 = sub i32 %14, %13
  store i32 %15, ptr @column, align 4, !tbaa !9
  br label %18

16:                                               ; preds = %4
  %17 = add nsw i32 %7, 1
  store i32 %17, ptr @column, align 4, !tbaa !9
  br label %18

18:                                               ; preds = %10, %16, %12
  %19 = phi i32 [ %11, %10 ], [ %6, %16 ], [ %6, %12 ]
  %20 = phi i32 [ 0, %10 ], [ %17, %16 ], [ %15, %12 ]
  %21 = add nuw i64 %5, 1
  br label %4, !llvm.loop !12

22:                                               ; preds = %4
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel928.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel928.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pnt = dso_local local_unnamed_addr global ptr null, align 8
@xright = dso_local local_unnamed_addr global i32 0, align 4
@xfact = dso_local local_unnamed_addr global i32 0, align 4
@xleft = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @reset_hidden_line_removal() local_unnamed_addr #0 {
  %1 = load ptr, ptr @pnt, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @xright, align 4, !tbaa !9
  %5 = load i32, ptr @xfact, align 4, !tbaa !9
  %6 = sdiv i32 %4, %5
  %7 = load i32, ptr @xleft, align 4, !tbaa !9
  %8 = sdiv i32 %7, %5
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %37, label %10

10:                                               ; preds = %3, %26
  %11 = phi i32 [ %27, %26 ], [ %7, %3 ]
  %12 = phi i32 [ %28, %26 ], [ %5, %3 ]
  %13 = phi i32 [ %29, %26 ], [ %4, %3 ]
  %14 = phi ptr [ %30, %26 ], [ %1, %3 ]
  %15 = phi i64 [ %31, %26 ], [ 0, %3 ]
  %16 = getelementptr inbounds i64, ptr %14, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !11
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %10
  %20 = tail call i32 @free(i64 noundef %17) #2
  %21 = load ptr, ptr @pnt, align 8, !tbaa !5
  %22 = getelementptr inbounds i64, ptr %21, i64 %15
  store i64 0, ptr %22, align 8, !tbaa !11
  %23 = load i32, ptr @xright, align 4, !tbaa !9
  %24 = load i32, ptr @xfact, align 4, !tbaa !9
  %25 = load i32, ptr @xleft, align 4, !tbaa !9
  br label %26

26:                                               ; preds = %10, %19
  %27 = phi i32 [ %11, %10 ], [ %25, %19 ]
  %28 = phi i32 [ %12, %10 ], [ %24, %19 ]
  %29 = phi i32 [ %13, %10 ], [ %23, %19 ]
  %30 = phi ptr [ %14, %10 ], [ %21, %19 ]
  %31 = add nuw nsw i64 %15, 1
  %32 = sdiv i32 %29, %28
  %33 = sdiv i32 %27, %28
  %34 = sub nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %15, %35
  br i1 %36, label %10, label %37, !llvm.loop !13

37:                                               ; preds = %26, %3, %0
  ret void
}

declare i32 @free(i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}

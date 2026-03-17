; ModuleID = '../benchmarks/fine_grained/exebench/kernel224.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel224.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stackCnt = dso_local local_unnamed_addr global i64 0, align 8
@dirStack = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @pwpCwdPop() local_unnamed_addr #0 {
  %1 = load i64, ptr @stackCnt, align 8, !tbaa !5
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %19, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @dirStack, align 8, !tbaa !9
  %5 = add i64 %1, -1
  store i64 %5, ptr @stackCnt, align 8, !tbaa !5
  %6 = getelementptr inbounds i64, ptr %4, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @chdir(i64 noundef %7) #2
  %11 = load ptr, ptr @dirStack, align 8, !tbaa !9
  %12 = load i64, ptr @stackCnt, align 8, !tbaa !5
  %13 = getelementptr inbounds i64, ptr %11, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !5
  %15 = tail call i32 @free(i64 noundef %14) #2
  %16 = load ptr, ptr @dirStack, align 8, !tbaa !9
  %17 = load i64, ptr @stackCnt, align 8, !tbaa !5
  %18 = getelementptr inbounds i64, ptr %16, i64 %17
  store i64 0, ptr %18, align 8, !tbaa !5
  br label %19

19:                                               ; preds = %9, %3, %0
  %20 = phi i32 [ %10, %9 ], [ -1, %3 ], [ -1, %0 ]
  ret i32 %20
}

declare i32 @chdir(i64 noundef) local_unnamed_addr #1

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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}

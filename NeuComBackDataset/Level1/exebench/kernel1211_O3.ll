; ModuleID = '../benchmarks/fine_grained/exebench/kernel1211.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remote_socks = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local void @connection_closed_by_peer(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @remote_socks, align 8, !tbaa !5
  %3 = load i32, ptr %2, align 4, !tbaa !9
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !tbaa !9
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds i32, ptr %2, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 0, ptr %7, align 4, !tbaa !9
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds i32, ptr %2, i64 2
  %13 = load i32, ptr %12, align 4, !tbaa !9
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, ptr %12, align 4, !tbaa !9
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds i32, ptr %2, i64 3
  %18 = load i32, ptr %17, align 4, !tbaa !9
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, ptr %17, align 4, !tbaa !9
  br label %21

21:                                               ; preds = %20, %16
  %22 = tail call i32 @close(i32 noundef %0) #2
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #1

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

; ModuleID = '../benchmarks/fine_grained/exebench/kernel1219.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1219.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ECHO = dso_local local_unnamed_addr global i32 0, align 4
@termbuf = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @tty_setecho(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  %3 = load i32, ptr @ECHO, align 4, !tbaa !5
  br i1 %2, label %7, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @termbuf, align 4, !tbaa !9
  %6 = or i32 %5, %3
  br label %11

7:                                                ; preds = %1
  %8 = xor i32 %3, -1
  %9 = load i32, ptr @termbuf, align 4, !tbaa !9
  %10 = and i32 %9, %8
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i32 [ %10, %7 ], [ %6, %4 ]
  store i32 %12, ptr @termbuf, align 4, !tbaa !9
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
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_2__", !6, i64 0}

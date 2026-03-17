; ModuleID = '../benchmarks/fine_grained/exebench/kernel1403.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1403.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local signext i8 @hstr2nibble(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !5
  %4 = add i8 %3, -48
  %5 = icmp ult i8 %4, 10
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = add i8 %3, -97
  %8 = icmp ult i8 %7, 6
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = add nsw i8 %3, -87
  br label %16

11:                                               ; preds = %6
  %12 = add i8 %3, -65
  %13 = icmp ult i8 %12, 6
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = add nsw i8 %3, -55
  br label %16

16:                                               ; preds = %2, %9, %14
  %17 = phi i8 [ %15, %14 ], [ %10, %9 ], [ %4, %2 ]
  store i8 %17, ptr %1, align 1, !tbaa !5
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi i8 [ 0, %11 ], [ 1, %16 ]
  ret i8 %19
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

; ModuleID = '../benchmarks/fine_grained/exebench/kernel763.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel763.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @rgb_cs_to_rgbk_cm(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = icmp eq i64 %2, %3
  %8 = icmp eq i64 %3, %4
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %6, %10
  %12 = phi i64 [ %4, %10 ], [ 0, %6 ]
  %13 = phi i64 [ %3, %10 ], [ 0, %6 ]
  %14 = phi i64 [ %2, %10 ], [ 0, %6 ]
  %15 = phi i64 [ 0, %10 ], [ %2, %6 ]
  %16 = getelementptr inbounds i64, ptr %5, i64 2
  store i64 %12, ptr %16, align 8
  %17 = getelementptr inbounds i64, ptr %5, i64 1
  store i64 %13, ptr %17, align 8
  store i64 %14, ptr %5, align 8
  %18 = getelementptr inbounds i64, ptr %5, i64 3
  store i64 %15, ptr %18, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}

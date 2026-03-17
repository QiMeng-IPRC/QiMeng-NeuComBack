; ModuleID = '../benchmarks/fine_grained/exebench/kernel1109.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1109.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_reg = type { i64, [2 x i64] }

@__const.hp3800_vrefs.reg = private unnamed_addr constant [5 x %struct.st_reg] [%struct.st_reg { i64 150, [2 x i64] [i64 25, i64 50] }, %struct.st_reg { i64 300, [2 x i64] [i64 50, i64 101] }, %struct.st_reg { i64 600, [2 x i64] [i64 102, i64 202] }, %struct.st_reg { i64 1200, [2 x i64] [i64 204, i64 404] }, %struct.st_reg { i64 2400, [2 x i64] [i64 408, i64 808] }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @hp3800_vrefs(i64 noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  store i64 0, ptr %2, align 8, !tbaa !5
  store i64 0, ptr %1, align 8, !tbaa !5
  switch i64 %0, label %18 [
    i64 150, label %12
    i64 300, label %8
    i64 600, label %9
    i64 1200, label %10
    i64 2400, label %11
  ]

8:                                                ; preds = %7
  br label %12

9:                                                ; preds = %7
  br label %12

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %7, %11, %10, %9, %8
  %13 = phi i64 [ 0, %7 ], [ 1, %8 ], [ 2, %9 ], [ 3, %10 ], [ 4, %11 ]
  %14 = getelementptr inbounds [5 x %struct.st_reg], ptr @__const.hp3800_vrefs.reg, i64 0, i64 %13, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !5
  store i64 %15, ptr %1, align 8, !tbaa !5
  %16 = getelementptr inbounds [5 x %struct.st_reg], ptr @__const.hp3800_vrefs.reg, i64 0, i64 %13, i32 1, i64 1
  %17 = load i64, ptr %16, align 8, !tbaa !5
  store i64 %17, ptr %2, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %7, %12, %3
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
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}

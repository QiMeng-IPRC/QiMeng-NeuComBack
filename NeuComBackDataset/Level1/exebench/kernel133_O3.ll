; ModuleID = '../benchmarks/fine_grained/exebench/kernel133.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel133.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Opb580() local_unnamed_addr #0 {
  %1 = load ptr, ptr @reg, align 8, !tbaa !5
  %2 = getelementptr inbounds i32, ptr %1, i64 2
  %3 = load i32, ptr %2, align 4, !tbaa !9
  %4 = load i32, ptr @inst, align 4, !tbaa !9
  %5 = and i32 %4, 7
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %9 = xor i32 %8, %3
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr @status, align 4, !tbaa !9
  br i1 %10, label %17, label %12

12:                                               ; preds = %0
  %13 = and i32 %11, -16
  store i32 %13, ptr @status, align 4, !tbaa !9
  %14 = icmp slt i32 %9, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = or i32 %13, 8
  br label %20

17:                                               ; preds = %0
  %18 = and i32 %11, -15
  %19 = or i32 %18, 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %19, %17 ]
  store i32 %21, ptr @status, align 4, !tbaa !9
  br label %22

22:                                               ; preds = %20, %12
  store i32 %9, ptr %7, align 4, !tbaa !9
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

; ModuleID = '../benchmarks/fine_grained/exebench/kernel110.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel110.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Opc080() local_unnamed_addr #0 {
  %1 = load ptr, ptr @reg, align 8, !tbaa !5
  %2 = load i32, ptr @inst, align 4, !tbaa !9
  %3 = and i32 %2, 7
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !9
  %7 = load i32, ptr %1, align 4, !tbaa !9
  %8 = and i32 %7, %6
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr @status, align 4, !tbaa !9
  br i1 %9, label %16, label %11

11:                                               ; preds = %0
  %12 = and i32 %10, -16
  store i32 %12, ptr @status, align 4, !tbaa !9
  %13 = icmp slt i32 %8, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = or i32 %12, 8
  br label %19

16:                                               ; preds = %0
  %17 = and i32 %10, -15
  %18 = or i32 %17, 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ %15, %14 ], [ %18, %16 ]
  store i32 %20, ptr @status, align 4, !tbaa !9
  br label %21

21:                                               ; preds = %19, %11
  store i32 %8, ptr %1, align 4, !tbaa !9
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

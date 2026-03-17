; ModuleID = '../benchmarks/fine_grained/exebench/kernel1112.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1112.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local local_unnamed_addr global i32 0, align 4
@reg = dso_local local_unnamed_addr global ptr null, align 8
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Opef80() local_unnamed_addr #0 {
  %1 = load i32, ptr @inst, align 4, !tbaa !5
  %2 = and i32 %1, 7
  %3 = zext i32 %2 to i64
  %4 = load ptr, ptr @reg, align 8, !tbaa !9
  %5 = getelementptr inbounds i32, ptr %4, i64 %3
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = add i32 %6, 16777216
  %8 = icmp ult i32 %7, 33554432
  %9 = load i32, ptr @status, align 4
  %10 = and i32 %9, -32
  %11 = select i1 %8, i32 0, i32 2
  %12 = or i32 %11, %10
  %13 = and i32 %6, 33554432
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 0, i32 17
  %16 = or i32 %12, %15
  %17 = shl i32 %6, 7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %0
  %20 = icmp slt i32 %17, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %0, %19
  %22 = phi i32 [ 8, %19 ], [ 4, %0 ]
  %23 = or i32 %16, %22
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %23, %21 ], [ %16, %19 ]
  store i32 %25, ptr @status, align 4, !tbaa !5
  store i32 %17, ptr %5, align 4, !tbaa !5
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}

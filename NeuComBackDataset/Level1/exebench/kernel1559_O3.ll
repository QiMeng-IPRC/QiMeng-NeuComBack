; ModuleID = '../benchmarks/fine_grained/exebench/kernel1559.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1559.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@port_handle = dso_local local_unnamed_addr global ptr null, align 8
@TR1 = dso_local local_unnamed_addr global i32 0, align 4
@TH1 = dso_local local_unnamed_addr global i32 0, align 4
@TL1 = dso_local local_unnamed_addr global i32 0, align 4
@TF1 = dso_local local_unnamed_addr global i32 0, align 4
@T3CM = dso_local local_unnamed_addr global i32 0, align 4
@TH3 = dso_local local_unnamed_addr global i32 0, align 4
@TL3 = dso_local local_unnamed_addr global i32 0, align 4
@switch.table.SetBaudCOM = private unnamed_addr constant [7 x i32] [i32 232, i32 232, i32 244, i32 232, i32 252, i32 232, i32 254], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @SetBaudCOM(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 7
  br i1 %3, label %4, label %23

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8
  %6 = lshr i8 85, %5
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [7 x i32], ptr @switch.table.SetBaudCOM, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr @port_handle, align 8, !tbaa !5
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !9
  switch i32 %16, label %23 [
    i32 0, label %17
    i32 1, label %18
    i32 2, label %19
  ]

17:                                               ; preds = %9
  store i32 %12, ptr @TH1, align 4, !tbaa !9
  store i32 %12, ptr @TL1, align 4, !tbaa !9
  store i32 0, ptr @TF1, align 4, !tbaa !9
  store i32 1, ptr @TR1, align 4, !tbaa !9
  br label %23

18:                                               ; preds = %9
  store i32 %12, ptr @TH1, align 4, !tbaa !9
  store i32 %12, ptr @TL1, align 4, !tbaa !9
  store i32 0, ptr @TF1, align 4, !tbaa !9
  store i32 1, ptr @TR1, align 4, !tbaa !9
  br label %23

19:                                               ; preds = %9
  %20 = load i32, ptr @T3CM, align 4, !tbaa !9
  %21 = and i32 %20, -193
  store i32 %12, ptr @TH3, align 4, !tbaa !9
  store i32 %12, ptr @TL3, align 4, !tbaa !9
  %22 = or i32 %21, 64
  store i32 %22, ptr @T3CM, align 4, !tbaa !9
  br label %23

23:                                               ; preds = %4, %2, %17, %18, %19, %9
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

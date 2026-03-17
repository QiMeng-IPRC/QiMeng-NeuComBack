; ModuleID = '../benchmarks/fine_grained/exebench/kernel1193.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1193.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB20 = dso_local local_unnamed_addr global i32 0, align 4
@CCD_SENSOR = dso_local local_unnamed_addr global i32 0, align 4
@USB11 = dso_local local_unnamed_addr global i32 0, align 4
@CIS_SENSOR = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @hp3970_refvoltages(i64 noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load i32, ptr @CCD_SENSOR, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %8 = load i32, ptr @USB11, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %10 = load i32, ptr @CIS_SENSOR, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %12 = icmp ne ptr %2, null
  %13 = icmp ne ptr %3, null
  %14 = and i1 %12, %13
  %15 = icmp ne ptr %4, null
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %5
  %18 = load i32, ptr @USB20, align 4, !tbaa !5
  %19 = sext i32 %18 to i64
  store i32 0, ptr %4, align 4, !tbaa !5
  store i32 0, ptr %3, align 4, !tbaa !5
  store i32 0, ptr %2, align 4, !tbaa !5
  %20 = icmp eq i64 %19, %0
  %21 = icmp eq i64 %7, %1
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, ptr %3, align 4, !tbaa !5
  store i32 0, ptr %4, align 4, !tbaa !5
  br label %24

24:                                               ; preds = %17, %23
  %25 = icmp eq i64 %9, %0
  %26 = icmp eq i64 %7, %1
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, ptr %2, align 4, !tbaa !5
  store i32 0, ptr %3, align 4, !tbaa !5
  store i32 0, ptr %4, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %28, %24
  %30 = icmp eq i64 %11, %1
  %31 = select i1 %20, i1 %30, i1 false
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, ptr %2, align 4, !tbaa !5
  store i32 0, ptr %3, align 4, !tbaa !5
  store i32 0, ptr %4, align 4, !tbaa !5
  br label %33

33:                                               ; preds = %32, %29
  %34 = icmp eq i64 %11, %1
  %35 = select i1 %25, i1 %34, i1 false
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, ptr %2, align 4, !tbaa !5
  store i32 0, ptr %3, align 4, !tbaa !5
  store i32 0, ptr %4, align 4, !tbaa !5
  br label %37

37:                                               ; preds = %33, %36, %5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

; ModuleID = '../benchmarks/fine_grained/exebench/kernel1199.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1199.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Ope170() local_unnamed_addr #0 {
  %1 = load ptr, ptr @reg, align 8, !tbaa !5
  %2 = load i64, ptr %1, align 8, !tbaa !9
  %3 = trunc i64 %2 to i32
  %4 = load i32, ptr @inst, align 4, !tbaa !11
  %5 = and i32 %4, 7
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i64, ptr %1, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !9
  %9 = trunc i64 %8 to i32
  %10 = and i32 %3, 63
  %11 = load i32, ptr @status, align 4, !tbaa !11
  %12 = and i32 %11, -3
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %0
  %15 = and i32 %11, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = or i32 %12, 1
  br label %37

19:                                               ; preds = %14
  %20 = and i32 %11, -4
  br label %37

21:                                               ; preds = %0
  %22 = trunc i32 %10 to i8
  %23 = urem i8 %22, 17
  %24 = zext i8 %23 to i32
  %25 = shl i32 %11, 12
  %26 = and i32 %25, 65536
  %27 = or i32 %26, %9
  %28 = sub nuw nsw i32 17, %24
  %29 = ashr i32 %27, %28
  %30 = shl i32 %27, %24
  %31 = or i32 %30, %29
  %32 = and i32 %31, 65536
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %11, -20
  %35 = or i32 %12, 17
  %36 = select i1 %33, i32 %34, i32 %35
  br label %37

37:                                               ; preds = %17, %19, %21
  %38 = phi i32 [ %18, %17 ], [ %20, %19 ], [ %36, %21 ]
  %39 = phi i32 [ %9, %17 ], [ %9, %19 ], [ %31, %21 ]
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %38, -13
  br i1 %40, label %44, label %42

42:                                               ; preds = %37
  %43 = icmp slt i32 %39, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37, %42
  %45 = phi i32 [ 8, %42 ], [ 4, %37 ]
  %46 = or i32 %41, %45
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ %46, %44 ], [ %41, %42 ]
  store i32 %48, ptr @status, align 4, !tbaa !11
  store i32 %39, ptr %7, align 4, !tbaa !11
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
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}

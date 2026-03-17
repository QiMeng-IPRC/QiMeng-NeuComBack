; ModuleID = '../benchmarks/fine_grained/exebench/kernel735.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel735.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @timeval_subtract(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8, !tbaa !5
  %5 = load i64, ptr %2, align 8, !tbaa !5
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = sub nsw i64 %5, %4
  %9 = sdiv i64 %8, 1000000
  %10 = trunc i64 %9 to i32
  %11 = add i32 %10, 1
  %12 = mul nsw i32 %11, 1000000
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 %5, %13
  store i64 %14, ptr %2, align 8, !tbaa !5
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !10
  %18 = add nsw i64 %17, %15
  store i64 %18, ptr %16, align 8, !tbaa !10
  %19 = load i64, ptr %1, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %7, %3
  %21 = phi i64 [ %14, %7 ], [ %5, %3 ]
  %22 = phi i64 [ %19, %7 ], [ %4, %3 ]
  %23 = sub nsw i64 %22, %21
  %24 = icmp sgt i64 %23, 1000000
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !10
  br label %40

28:                                               ; preds = %20
  %29 = udiv i64 %23, 1000000
  %30 = mul i64 %29, 4294967296000000
  %31 = ashr exact i64 %30, 32
  %32 = add nsw i64 %31, %21
  store i64 %32, ptr %2, align 8, !tbaa !5
  %33 = shl i64 %29, 32
  %34 = ashr exact i64 %33, 32
  %35 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !10
  %37 = sub nsw i64 %36, %34
  store i64 %37, ptr %35, align 8, !tbaa !10
  %38 = load i64, ptr %1, align 8, !tbaa !5
  %39 = sub nsw i64 %38, %32
  br label %40

40:                                               ; preds = %25, %28
  %41 = phi i64 [ %23, %25 ], [ %39, %28 ]
  %42 = phi i64 [ %27, %25 ], [ %37, %28 ]
  %43 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !10
  %45 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 0, i32 1
  %46 = sub nsw i64 %44, %42
  %47 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 1
  store i64 %46, ptr %47, align 8, !tbaa !10
  store i64 %41, ptr %0, align 8, !tbaa !5
  %48 = load i64, ptr %43, align 8, !tbaa !10
  %49 = load i64, ptr %45, align 8, !tbaa !10
  %50 = icmp slt i64 %48, %49
  %51 = zext i1 %50 to i32
  ret i32 %51
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_5__", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}

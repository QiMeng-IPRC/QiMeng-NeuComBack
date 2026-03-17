; ModuleID = '../benchmarks/fine_grained/exebench/kernel591.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel591.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mult = dso_local local_unnamed_addr global ptr null, align 8
@add = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @dorand48(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @mult, align 8, !tbaa !5
  %3 = load i16, ptr %2, align 2, !tbaa !9
  %4 = zext i16 %3 to i64
  %5 = load i16, ptr %0, align 2, !tbaa !9
  %6 = zext i16 %5 to i64
  %7 = mul nuw nsw i64 %6, %4
  %8 = load i64, ptr @add, align 8, !tbaa !11
  %9 = add i64 %7, %8
  %10 = trunc i64 %9 to i16
  %11 = lshr i64 %9, 16
  %12 = getelementptr inbounds i16, ptr %0, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !9
  %14 = zext i16 %13 to i64
  %15 = mul nuw nsw i64 %14, %4
  %16 = getelementptr inbounds i16, ptr %2, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !9
  %18 = zext i16 %17 to i64
  %19 = mul nuw nsw i64 %18, %6
  %20 = add nuw nsw i64 %11, %15
  %21 = add nuw nsw i64 %20, %19
  %22 = trunc i64 %21 to i16
  %23 = lshr i64 %21, 16
  %24 = getelementptr inbounds i16, ptr %0, i64 2
  %25 = load i16, ptr %24, align 2, !tbaa !9
  %26 = zext i16 %25 to i64
  %27 = mul nuw nsw i64 %26, %4
  %28 = mul nuw nsw i64 %18, %14
  %29 = add nuw nsw i64 %27, %28
  %30 = getelementptr inbounds i16, ptr %2, i64 2
  %31 = load i16, ptr %30, align 2, !tbaa !9
  %32 = zext i16 %31 to i64
  %33 = mul nuw nsw i64 %32, %6
  %34 = add nuw nsw i64 %29, %33
  %35 = add nuw nsw i64 %34, %23
  store i16 %10, ptr %0, align 2, !tbaa !9
  store i16 %22, ptr %12, align 2, !tbaa !9
  %36 = trunc i64 %35 to i16
  store i16 %36, ptr %24, align 2, !tbaa !9
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"short", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}

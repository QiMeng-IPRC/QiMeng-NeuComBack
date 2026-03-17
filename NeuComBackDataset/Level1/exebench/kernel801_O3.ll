; ModuleID = '../benchmarks/fine_grained/exebench/kernel801.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel801.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local i32 @unsafe_encode_char(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = icmp ult i32 %0, 128
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = zext i32 %0 to i64
  store i64 %7, ptr %1, align 8, !tbaa !5
  br label %56

8:                                                ; preds = %4
  %9 = icmp ult i32 %0, 2048
  br i1 %9, label %10, label %18

10:                                               ; preds = %8
  %11 = lshr i32 %0, 6
  %12 = add nuw nsw i32 %11, 192
  %13 = zext i32 %12 to i64
  store i64 %13, ptr %1, align 8, !tbaa !5
  %14 = and i32 %0, 63
  %15 = or i32 %14, 128
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %16, ptr %17, align 8, !tbaa !5
  br label %56

18:                                               ; preds = %8
  switch i32 %0, label %21 [
    i32 65535, label %19
    i32 65534, label %20
  ]

19:                                               ; preds = %18
  store i64 255, ptr %1, align 8, !tbaa !5
  br label %56

20:                                               ; preds = %18
  store i64 254, ptr %1, align 8, !tbaa !5
  br label %56

21:                                               ; preds = %18
  %22 = icmp ult i32 %0, 65536
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = lshr i32 %0, 12
  %25 = add nuw nsw i32 %24, 224
  %26 = zext i32 %25 to i64
  store i64 %26, ptr %1, align 8, !tbaa !5
  %27 = lshr i32 %0, 6
  %28 = and i32 %27, 63
  %29 = or i32 %28, 128
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %30, ptr %31, align 8, !tbaa !5
  %32 = and i32 %0, 63
  %33 = or i32 %32, 128
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 %34, ptr %35, align 8, !tbaa !5
  br label %56

36:                                               ; preds = %21
  %37 = icmp ult i32 %0, 1114112
  br i1 %37, label %38, label %56

38:                                               ; preds = %36
  %39 = lshr i32 %0, 18
  %40 = add nuw nsw i32 %39, 240
  %41 = zext i32 %40 to i64
  store i64 %41, ptr %1, align 8, !tbaa !5
  %42 = lshr i32 %0, 12
  %43 = and i32 %42, 63
  %44 = or i32 %43, 128
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %45, ptr %46, align 8, !tbaa !5
  %47 = lshr i32 %0, 6
  %48 = and i32 %47, 63
  %49 = or i32 %48, 128
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 %50, ptr %51, align 8, !tbaa !5
  %52 = and i32 %0, 63
  %53 = or i32 %52, 128
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %1, i64 3
  store i64 %54, ptr %55, align 8, !tbaa !5
  br label %56

56:                                               ; preds = %36, %2, %38, %23, %20, %19, %10, %6
  %57 = phi i32 [ 1, %6 ], [ 2, %10 ], [ 1, %19 ], [ 1, %20 ], [ 3, %23 ], [ 4, %38 ], [ 0, %2 ], [ 0, %36 ]
  ret i32 %57
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

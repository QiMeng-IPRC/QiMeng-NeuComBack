; ModuleID = '../benchmarks/fine_grained/exebench/kernel611.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel611.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @uchar_from_utf16(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp eq i64 %2, 0
  %6 = or i1 %4, %5
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 4, !tbaa !5
  %9 = and i32 %8, -1024
  %10 = icmp eq i32 %9, 55296
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = icmp ugt i64 %2, 1
  br i1 %12, label %13, label %30

13:                                               ; preds = %11
  %14 = getelementptr inbounds i32, ptr %1, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !5
  %16 = and i32 %15, -1024
  %17 = icmp eq i32 %16, 56320
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = shl nuw nsw i32 %8, 10
  %20 = and i32 %19, 1047552
  %21 = add nuw nsw i32 %20, 65536
  %22 = and i32 %15, 1023
  %23 = or i32 %22, %21
  br label %27

24:                                               ; preds = %7
  %25 = add i32 %8, -57344
  %26 = icmp ult i32 %25, -1024
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %18
  %28 = phi i32 [ %23, %18 ], [ %8, %24 ]
  %29 = phi i32 [ 2, %18 ], [ 1, %24 ]
  store i32 %28, ptr %0, align 4, !tbaa !5
  br label %30

30:                                               ; preds = %27, %13, %11, %24, %3
  %31 = phi i32 [ 0, %3 ], [ -1, %13 ], [ -1, %11 ], [ -1, %24 ], [ %29, %27 ]
  ret i32 %31
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

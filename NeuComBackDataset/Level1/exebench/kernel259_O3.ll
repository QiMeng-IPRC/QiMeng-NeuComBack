; ModuleID = '../benchmarks/fine_grained/exebench/kernel259.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel259.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @u16_mbtouc_aux(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load i16, ptr %1, align 2, !tbaa !5
  %5 = zext i16 %4 to i32
  %6 = icmp ult i16 %4, -9216
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = icmp ugt i64 %2, 1
  br i1 %8, label %9, label %19

9:                                                ; preds = %7
  %10 = getelementptr inbounds i16, ptr %1, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !5
  %12 = and i16 %11, -1024
  %13 = icmp eq i16 %12, -9216
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = zext i16 %11 to i32
  %16 = shl nuw nsw i32 %5, 10
  %17 = add nsw i32 %16, -56613888
  %18 = add nsw i32 %17, %15
  store i32 %18, ptr %0, align 4, !tbaa !9
  br label %22

19:                                               ; preds = %7
  store i32 65533, ptr %0, align 4, !tbaa !9
  %20 = trunc i64 %2 to i32
  br label %22

21:                                               ; preds = %9, %3
  store i32 65533, ptr %0, align 4, !tbaa !9
  br label %22

22:                                               ; preds = %21, %19, %14
  %23 = phi i32 [ 2, %14 ], [ 1, %21 ], [ %20, %19 ]
  ret i32 %23
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
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}

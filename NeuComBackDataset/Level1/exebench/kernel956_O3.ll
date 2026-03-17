; ModuleID = '../benchmarks/fine_grained/exebench/kernel956.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel956.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@areg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@reg = dso_local local_unnamed_addr global ptr null, align 8
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @Opb648() local_unnamed_addr #0 {
  %1 = load ptr, ptr @areg, align 8, !tbaa !5
  %2 = load i32, ptr @inst, align 4, !tbaa !9
  %3 = and i32 %2, 7
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds i64, ptr %1, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !11
  %7 = load ptr, ptr @reg, align 8, !tbaa !5
  %8 = getelementptr inbounds i64, ptr %7, i64 3
  %9 = load i64, ptr %8, align 8, !tbaa !11
  %10 = sub nsw i64 %9, %6
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i64 %6, %9
  %13 = load i32, ptr @status, align 4
  %14 = and i32 %13, -16
  %15 = zext i1 %12 to i32
  %16 = or i32 %14, %15
  %17 = add i32 %11, -32768
  %18 = icmp ult i32 %17, -65536
  %19 = select i1 %18, i32 2, i32 0
  %20 = or i32 %16, %19
  %21 = shl i64 %10, 32
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %0
  %24 = icmp slt i64 %21, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %0, %23
  %26 = phi i32 [ 8, %23 ], [ 4, %0 ]
  %27 = or i32 %20, %26
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i32 [ %27, %25 ], [ %20, %23 ]
  store i32 %29, ptr @status, align 4, !tbaa !9
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
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}

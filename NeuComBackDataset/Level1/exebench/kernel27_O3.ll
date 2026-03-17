; ModuleID = '../benchmarks/fine_grained/exebench/kernel27.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel27.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantissa = type { i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @b64_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = sub i64 4294967295, %3
  %5 = load i64, ptr %1, align 8, !tbaa !5
  %6 = icmp ult i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = add nsw i64 %5, %3
  store i64 %8, ptr %0, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.mantissa, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !10
  %11 = sub i64 4294967295, %10
  %12 = getelementptr inbounds %struct.mantissa, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !10
  %14 = icmp ult i64 %11, %13
  %15 = add i64 %13, %10
  store i64 %15, ptr %9, align 8, !tbaa !10
  br i1 %14, label %16, label %19

16:                                               ; preds = %2
  %17 = add nsw i64 %8, 1
  store i64 %17, ptr %0, align 8, !tbaa !5
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %20

20:                                               ; preds = %16, %19
  %21 = phi i32 [ %7, %19 ], [ 1, %16 ]
  ret i32 %21
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
!6 = !{!"mantissa", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}

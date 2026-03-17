; ModuleID = '../benchmarks/fine_grained/exebench/kernel91.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel91.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32 }

@CPU = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @thumb_cmp(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @CPU, align 8, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %3, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = getelementptr inbounds i32, ptr %3, i64 %1
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = sub i32 %5, %7
  %9 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @CPU, i64 0, i32 1), align 8, !tbaa !12
  %10 = and i32 %9, 268435455
  %11 = icmp eq i32 %5, %7
  %12 = select i1 %11, i32 1073741824, i32 0
  %13 = and i32 %8, -2147483648
  %14 = or i32 %12, %13
  %15 = lshr i32 %8, 2
  %16 = and i32 %15, 536870912
  %17 = xor i32 %5, -1
  %18 = and i32 %7, %17
  %19 = and i32 %18, %8
  %20 = or i32 %8, %7
  %21 = xor i32 %20, -1
  %22 = and i32 %5, %21
  %23 = or i32 %22, %19
  %24 = lshr i32 %23, 3
  %25 = and i32 %24, 268435456
  %26 = or i32 %14, %10
  %27 = or i32 %26, %16
  %28 = or i32 %27, %25
  store i32 %28, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @CPU, i64 0, i32 1), align 8, !tbaa !12
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !10, i64 8}

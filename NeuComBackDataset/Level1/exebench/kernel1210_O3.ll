; ModuleID = '../benchmarks/fine_grained/exebench/kernel1210.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @h8_cmp8(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sub nsw i32 %2, %1
  %5 = lshr i32 %4, 8
  %6 = and i32 %5, 1
  store i32 %6, ptr %0, align 4, !tbaa !5
  %7 = xor i32 %2, %1
  %8 = xor i32 %4, %2
  %9 = and i32 %8, %7
  %10 = lshr i32 %9, 7
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !10
  %13 = and i32 %4, 255
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store i32 %15, ptr %16, align 4, !tbaa !11
  %17 = lshr i32 %4, 7
  %18 = and i32 %17, 1
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  store i32 %18, ptr %19, align 4, !tbaa !12
  %20 = xor i32 %7, %4
  %21 = lshr i32 %20, 4
  %22 = and i32 %21, 1
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  store i32 %22, ptr %23, align 4, !tbaa !13
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 12}
!13 = !{!6, !7, i64 16}

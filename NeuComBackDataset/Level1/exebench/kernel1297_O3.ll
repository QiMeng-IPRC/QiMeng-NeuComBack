; ModuleID = '../benchmarks/fine_grained/exebench/kernel1297.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1297.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32 }

@Chip8 = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @op_xxx5() local_unnamed_addr #0 {
  %1 = load ptr, ptr @Chip8, align 8, !tbaa !5
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i64 0, i32 1), align 8, !tbaa !11
  %3 = lshr i32 %2, 8
  %4 = and i32 %3, 15
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = lshr i32 %2, 4
  %9 = and i32 %8, 15
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = icmp sgt i32 %7, %12
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds i32, ptr %1, i64 15
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr %6, align 4, !tbaa !12
  %17 = load i32, ptr %11, align 4, !tbaa !12
  %18 = sub nsw i32 %16, %17
  store i32 %18, ptr %6, align 4, !tbaa !12
  %19 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i64 0, i32 2), align 4, !tbaa !13
  %20 = add nsw i32 %19, 2
  store i32 %20, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i64 0, i32 2), align 4, !tbaa !13
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !10, i64 12}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!10, !10, i64 0}
!13 = !{!6, !10, i64 12}

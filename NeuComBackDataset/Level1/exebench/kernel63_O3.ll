; ModuleID = '../benchmarks/fine_grained/exebench/kernel63.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel63.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32 }

@Chip8 = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @op_7xxx() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i64 0, i32 1), align 8, !tbaa !5
  %2 = and i32 %1, 255
  %3 = load ptr, ptr @Chip8, align 8, !tbaa !11
  %4 = lshr i32 %1, 8
  %5 = and i32 %4, 15
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = add nsw i32 %8, %2
  store i32 %9, ptr %7, align 4, !tbaa !12
  %10 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i64 0, i32 2), align 4, !tbaa !13
  %11 = add nsw i32 %10, 2
  store i32 %11, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i64 0, i32 2), align 4, !tbaa !13
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
!5 = !{!6, !10, i64 8}
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !10, i64 12}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!10, !10, i64 0}
!13 = !{!6, !10, i64 12}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel729.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel729.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, ptr, i64 }

@Chip8 = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @op_Bxxx() local_unnamed_addr #0 {
  %1 = load i32, ptr @Chip8, align 8, !tbaa !5
  %2 = and i32 %1, 4095
  %3 = zext i32 %2 to i64
  %4 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i64 0, i32 1), align 8, !tbaa !12
  %5 = load i64, ptr %4, align 8, !tbaa !13
  %6 = add nsw i64 %5, %3
  store i64 %6, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i64 0, i32 2), align 8, !tbaa !14
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
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !11, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !10, i64 8}
!13 = !{!11, !11, i64 0}
!14 = !{!6, !11, i64 16}

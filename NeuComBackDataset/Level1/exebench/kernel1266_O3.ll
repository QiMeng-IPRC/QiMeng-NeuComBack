; ModuleID = '../benchmarks/fine_grained/exebench/kernel1266.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1266.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@ck_keenObj = dso_local local_unnamed_addr global ptr null, align 8
@IN_motion_Right = dso_local local_unnamed_addr global i32 0, align 4
@IN_motion_Left = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CK4_ArachnutSearch(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8, !tbaa !5
  %3 = load ptr, ptr @ck_keenObj, align 8, !tbaa !11
  %4 = load i64, ptr %3, align 8, !tbaa !13
  %5 = icmp slt i64 %2, %4
  %6 = load i32, ptr @IN_motion_Right, align 4
  %7 = load i32, ptr @IN_motion_Left, align 4
  %8 = select i1 %5, i32 %6, i32 %7
  %9 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !15
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_4__", !7, i64 0, !10, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"TYPE_5__", !7, i64 0}
!15 = !{!6, !10, i64 8}

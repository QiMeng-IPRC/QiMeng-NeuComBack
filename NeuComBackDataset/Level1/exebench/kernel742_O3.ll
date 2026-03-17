; ModuleID = '../benchmarks/fine_grained/exebench/kernel742.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel742.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z26_state = type { i32, i64, i32 }

@ChargeTrigger0 = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ReadAnalogINPT(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ChargeTrigger0, align 8, !tbaa !5
  %3 = load i32, ptr %0, align 8, !tbaa !9
  %4 = and i32 %3, 3
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i64, ptr %2, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.z26_state, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !14
  %10 = icmp sgt i64 %7, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.z26_state, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !15
  %14 = and i32 %13, 63
  %15 = or i32 %14, 128
  store i32 %15, ptr %12, align 8, !tbaa !15
  br label %16

16:                                               ; preds = %11, %1
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
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"z26_state", !11, i64 0, !12, i64 8, !11, i64 16}
!11 = !{!"int", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!10, !12, i64 8}
!15 = !{!10, !11, i64 16}

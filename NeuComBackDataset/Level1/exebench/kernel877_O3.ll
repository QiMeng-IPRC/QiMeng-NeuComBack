; ModuleID = '../benchmarks/fine_grained/exebench/kernel877.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel877.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, ptr, i32, i64 }

@AINode_MP_MedicGiveHealth = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"AINode_MP_MedicGiveHealth\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AIEnter_MP_MedicGiveHealth(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  store i64 0, ptr %2, align 8, !tbaa !5
  %3 = load i32, ptr %0, align 8, !tbaa !12
  %4 = and i32 %3, -65
  store i32 %4, ptr %0, align 8, !tbaa !12
  %5 = load i32, ptr @AINode_MP_MedicGiveHealth, align 4, !tbaa !13
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store i32 %5, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store ptr @.str, ptr %7, align 8, !tbaa !15
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
!5 = !{!6, !11, i64 24}
!6 = !{!"TYPE_3__", !7, i64 0, !10, i64 8, !7, i64 16, !11, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!6, !7, i64 16}
!15 = !{!6, !10, i64 8}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel1601.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1601.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tek_STR_BITMODEL = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @tek_setbm5(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  store i32 %1, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %0, i64 0, i32 1
  store i32 %2, ptr %4, align 4, !tbaa !10
  %5 = add nsw i32 %2, %1
  %6 = shl nsw i32 -1, %5
  %7 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %0, i64 0, i32 2
  %8 = xor i32 %6, -1
  %9 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %0, i64 0, i32 3
  %10 = shl nuw i32 1, %1
  %11 = or i32 %6, %10
  %12 = shl nsw i32 -1, %1
  %13 = and i32 %12, 65535
  %14 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %0, i64 0, i32 4
  store i32 %13, ptr %14, align 4, !tbaa !11
  %15 = and i32 %13, %8
  store i32 %15, ptr %9, align 4, !tbaa !12
  %16 = and i32 %11, %13
  store i32 %16, ptr %7, align 4, !tbaa !13
  %17 = xor i32 %13, -1
  %18 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !14
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
!6 = !{!"tek_STR_BITMODEL", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 12}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 20}

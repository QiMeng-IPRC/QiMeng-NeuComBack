; ModuleID = '../benchmarks/fine_grained/exebench/kernel1248.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1248.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdtdesc = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_gdt_desc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = and i32 %1, 65535
  store i32 %6, ptr %4, align 4, !tbaa !5
  %7 = and i32 %0, 65535
  %8 = getelementptr inbounds %struct.gdtdesc, ptr %4, i64 0, i32 1
  store i32 %7, ptr %8, align 4, !tbaa !10
  %9 = lshr i32 %0, 16
  %10 = and i32 %9, 255
  %11 = getelementptr inbounds %struct.gdtdesc, ptr %4, i64 0, i32 2
  store i32 %10, ptr %11, align 4, !tbaa !11
  %12 = getelementptr inbounds %struct.gdtdesc, ptr %4, i64 0, i32 3
  store i32 %2, ptr %12, align 4, !tbaa !12
  %13 = lshr i32 %1, 16
  %14 = and i32 %13, 15
  %15 = getelementptr inbounds %struct.gdtdesc, ptr %4, i64 0, i32 4
  store i32 %14, ptr %15, align 4, !tbaa !13
  %16 = and i32 %3, 15
  %17 = getelementptr inbounds %struct.gdtdesc, ptr %4, i64 0, i32 5
  store i32 %16, ptr %17, align 4, !tbaa !14
  %18 = lshr i32 %0, 24
  %19 = getelementptr inbounds %struct.gdtdesc, ptr %4, i64 0, i32 6
  store i32 %18, ptr %19, align 4, !tbaa !15
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
!6 = !{!"gdtdesc", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 12}
!13 = !{!6, !7, i64 16}
!14 = !{!6, !7, i64 20}
!15 = !{!6, !7, i64 24}

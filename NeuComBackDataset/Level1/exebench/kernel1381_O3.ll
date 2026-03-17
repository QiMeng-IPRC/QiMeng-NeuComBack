; ModuleID = '../benchmarks/fine_grained/exebench/kernel1381.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1381.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i16, i8, i64 }

@idt_entries = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @idt_set_gate(i8 noundef zeroext %0, i32 noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = and i32 %1, 65535
  %6 = load ptr, ptr @idt_entries, align 8, !tbaa !5
  %7 = zext i8 %0 to i64
  %8 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %7
  store i32 %5, ptr %8, align 8, !tbaa !9
  %9 = lshr i32 %1, 16
  %10 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %7, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !14
  %11 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %7, i32 2
  store i16 %2, ptr %11, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %7, i32 4
  store i64 0, ptr %12, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %7, i32 3
  store i8 %3, ptr %13, align 2, !tbaa !17
  ret i32 1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"TYPE_2__", !11, i64 0, !11, i64 4, !12, i64 8, !7, i64 10, !13, i64 16}
!11 = !{!"int", !7, i64 0}
!12 = !{!"short", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!10, !11, i64 4}
!15 = !{!10, !12, i64 8}
!16 = !{!10, !13, i64 16}
!17 = !{!10, !7, i64 10}

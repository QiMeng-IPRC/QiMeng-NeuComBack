; ModuleID = '../benchmarks/fine_grained/exebench/kernel1389.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1389.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i16, i8, i64 }

@idt = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @idt_set_gate(i32 noundef %0, i64 noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = and i64 %1, 65535
  %6 = load ptr, ptr @idt, align 8, !tbaa !5
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %7
  store i64 %5, ptr %8, align 8, !tbaa !9
  %9 = lshr i64 %1, 16
  %10 = and i64 %9, 255
  %11 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %7, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %7, i32 2
  store i16 %2, ptr %12, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %7, i32 4
  store i64 0, ptr %13, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %7, i32 3
  store i8 %3, ptr %14, align 2, !tbaa !16
  ret void
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
!10 = !{!"TYPE_2__", !11, i64 0, !11, i64 8, !12, i64 16, !7, i64 18, !11, i64 24}
!11 = !{!"long", !7, i64 0}
!12 = !{!"short", !7, i64 0}
!13 = !{!10, !11, i64 8}
!14 = !{!10, !12, i64 16}
!15 = !{!10, !11, i64 24}
!16 = !{!10, !7, i64 18}

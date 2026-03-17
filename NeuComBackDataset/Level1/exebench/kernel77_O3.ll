; ModuleID = '../benchmarks/fine_grained/exebench/kernel77.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel77.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@gdt = dso_local local_unnamed_addr global ptr null, align 8
@gdt_entries = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @gdt_set_entry(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %2, 65535
  %7 = load ptr, ptr @gdt, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 %0
  store i32 %6, ptr %8, align 4, !tbaa !9
  %9 = shl i32 %4, 4
  %10 = lshr i32 %2, 16
  %11 = and i32 %10, 15
  %12 = or i32 %9, %11
  %13 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 %0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !12
  %14 = and i32 %1, 65535
  %15 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 %0, i32 2
  store i32 %14, ptr %15, align 4, !tbaa !13
  %16 = lshr i32 %1, 16
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 %0, i32 3
  store i32 %17, ptr %18, align 4, !tbaa !14
  %19 = lshr i32 %1, 24
  %20 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 %0, i32 4
  store i32 %19, ptr %20, align 4, !tbaa !15
  %21 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 %0, i32 5
  store i32 %3, ptr %21, align 4, !tbaa !16
  %22 = add i64 %0, 1
  %23 = load i64, ptr @gdt_entries, align 8, !tbaa !17
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i64 %22, ptr @gdt_entries, align 8, !tbaa !17
  br label %26

26:                                               ; preds = %25, %5
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
!10 = !{!"TYPE_2__", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !11, i64 4}
!13 = !{!10, !11, i64 8}
!14 = !{!10, !11, i64 12}
!15 = !{!10, !11, i64 16}
!16 = !{!10, !11, i64 20}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !7, i64 0}

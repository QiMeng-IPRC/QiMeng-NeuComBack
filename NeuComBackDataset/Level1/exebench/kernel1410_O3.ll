; ModuleID = '../benchmarks/fine_grained/exebench/kernel1410.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1410.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr }

@entry_symbol = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8
@entry_from_cmdline = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @lang_add_entry(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @entry_symbol, align 8, !tbaa !5
  %4 = icmp ne ptr %3, null
  %5 = icmp eq i64 %1, 0
  %6 = and i1 %5, %4
  %7 = load i64, ptr @entry_from_cmdline, align 8
  %8 = icmp ne i64 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store ptr %0, ptr @entry_symbol, align 8, !tbaa !5
  store i64 %1, ptr @entry_from_cmdline, align 8, !tbaa !10
  br label %11

11:                                               ; preds = %2, %10
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_2__", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}

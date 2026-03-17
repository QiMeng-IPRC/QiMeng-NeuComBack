; ModuleID = '../benchmarks/fine_grained/exebench/kernel1179.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1179.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_conf = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @dm_set_gfx_flag(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @_conf, align 8, !tbaa !5
  %6 = load i16, ptr %5, align 2, !tbaa !9
  %7 = or i16 %6, %0
  store i16 %7, ptr %5, align 2, !tbaa !9
  br label %13

8:                                                ; preds = %2
  %9 = xor i16 %0, -1
  %10 = load ptr, ptr @_conf, align 8, !tbaa !5
  %11 = load i16, ptr %10, align 2, !tbaa !9
  %12 = and i16 %11, %9
  store i16 %12, ptr %10, align 2, !tbaa !9
  br label %13

13:                                               ; preds = %8, %4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"TYPE_2__", !11, i64 0}
!11 = !{!"short", !7, i64 0}

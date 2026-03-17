; ModuleID = '../benchmarks/fine_grained/exebench/kernel602.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel602.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @printsep(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8, !tbaa !5
  %5 = add i64 %4, 1
  %6 = icmp ult i64 %5, %2
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 %4
  store i8 44, ptr %8, align 1, !tbaa !9
  %9 = load i64, ptr %1, align 8, !tbaa !5
  %10 = add i64 %9, 1
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i64 [ %10, %7 ], [ %5, %3 ]
  store i64 %12, ptr %1, align 8, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}

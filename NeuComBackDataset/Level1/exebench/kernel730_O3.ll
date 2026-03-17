; ModuleID = '../benchmarks/fine_grained/exebench/kernel730.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel730.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@al_reg = dso_local local_unnamed_addr global i8 0, align 1
@bh_reg = dso_local local_unnamed_addr global i8 0, align 1
@ax_reg = dso_local local_unnamed_addr global i8 0, align 1
@di_reg = dso_local local_unnamed_addr global i8 0, align 1
@eax_reg = dso_local local_unnamed_addr global i8 0, align 1
@edi_reg = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @indep_regnum(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @al_reg, align 1, !tbaa !5
  %3 = icmp ugt i8 %2, %0
  %4 = load i8, ptr @bh_reg, align 1
  %5 = icmp ult i8 %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = sub i8 %0, %2
  br label %25

9:                                                ; preds = %1
  %10 = load i8, ptr @ax_reg, align 1, !tbaa !5
  %11 = icmp ugt i8 %10, %0
  %12 = load i8, ptr @di_reg, align 1
  %13 = icmp ult i8 %12, %0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = sub i8 %0, %10
  br label %25

17:                                               ; preds = %9
  %18 = load i8, ptr @eax_reg, align 1, !tbaa !5
  %19 = icmp ugt i8 %18, %0
  %20 = load i8, ptr @edi_reg, align 1
  %21 = icmp ult i8 %20, %0
  %22 = select i1 %19, i1 true, i1 %21
  %23 = sub i8 %0, %18
  %24 = select i1 %22, i8 -1, i8 %23
  br label %25

25:                                               ; preds = %17, %15, %7
  %26 = phi i8 [ %8, %7 ], [ %16, %15 ], [ %24, %17 ]
  ret i8 %26
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}

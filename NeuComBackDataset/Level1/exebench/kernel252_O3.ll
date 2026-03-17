; ModuleID = '../benchmarks/fine_grained/exebench/kernel252.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel252.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPT_INVALID_KEYSIZE = dso_local local_unnamed_addr global i32 0, align 4
@CRYPT_OK = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @rijndael_keysize(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %3 = icmp slt i32 %2, 16
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = icmp ult i32 %2, 24
  %6 = icmp ult i32 %2, 32
  %7 = select i1 %6, i32 24, i32 32
  %8 = select i1 %5, i32 16, i32 %7
  store i32 %8, ptr %0, align 4, !tbaa !5
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi ptr [ @CRYPT_INVALID_KEYSIZE, %1 ], [ @CRYPT_OK, %4 ]
  %11 = load i32, ptr %10, align 4, !tbaa !5
  ret i32 %11
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}

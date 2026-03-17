; ModuleID = '../benchmarks/fine_grained/exebench/kernel1366.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1366.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@testReadFromFile.test_read_buf_ind = internal unnamed_addr global i32 0, align 4
@test_read_buf = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @testReadFromFile(i8 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @test_read_buf, align 8, !tbaa !5
  %3 = load i32, ptr @testReadFromFile.test_read_buf_ind, align 4, !tbaa !9
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @testReadFromFile.test_read_buf_ind, align 4, !tbaa !9
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds i8, ptr %2, i64 %5
  store i8 %0, ptr %6, align 1, !tbaa !11
  %7 = load ptr, ptr @test_read_buf, align 8, !tbaa !5
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  store i8 0, ptr %9, align 1, !tbaa !11
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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel416.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel416.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two2word = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @expand16_2col2mask(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @two2word, align 8, !tbaa !5
  %6 = and i32 %1, 3
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !9
  store i32 %9, ptr %3, align 4, !tbaa !9
  %10 = and i32 %0, 3
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !9
  %14 = xor i32 %13, %9
  store i32 %14, ptr %2, align 4, !tbaa !9
  %15 = lshr i32 %1, 2
  %16 = and i32 %15, 3
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %5, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !9
  %20 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %19, ptr %20, align 4, !tbaa !9
  %21 = lshr i32 %0, 2
  %22 = and i32 %21, 3
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %5, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !9
  %26 = xor i32 %25, %19
  %27 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %26, ptr %27, align 4, !tbaa !9
  %28 = lshr i32 %1, 4
  %29 = and i32 %28, 3
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %5, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !9
  %33 = getelementptr inbounds i32, ptr %3, i64 2
  store i32 %32, ptr %33, align 4, !tbaa !9
  %34 = lshr i32 %0, 4
  %35 = and i32 %34, 3
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %5, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !9
  %39 = xor i32 %38, %32
  %40 = getelementptr inbounds i32, ptr %2, i64 2
  store i32 %39, ptr %40, align 4, !tbaa !9
  %41 = ashr i32 %1, 6
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %5, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !9
  %45 = getelementptr inbounds i32, ptr %3, i64 3
  store i32 %44, ptr %45, align 4, !tbaa !9
  %46 = ashr i32 %0, 6
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %5, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !9
  %50 = xor i32 %49, %44
  %51 = getelementptr inbounds i32, ptr %2, i64 3
  store i32 %50, ptr %51, align 4, !tbaa !9
  ret void
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}

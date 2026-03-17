; ModuleID = '../benchmarks/fine_grained/exebench/kernel1572.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1572.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P2_Flags = dso_local local_unnamed_addr global ptr null, align 8
@P2_Counters = dso_local local_unnamed_addr global ptr null, align 8
@P2_Top = dso_local local_unnamed_addr global ptr null, align 8
@P2_Bottom = dso_local local_unnamed_addr global ptr null, align 8
@P2_Enable = dso_local local_unnamed_addr global ptr null, align 8
@P2_Music_Top = dso_local local_unnamed_addr global ptr null, align 8
@P2_Music_Bottom = dso_local local_unnamed_addr global ptr null, align 8
@P2_Music_Count = dso_local local_unnamed_addr global ptr null, align 8
@Pitfall2 = dso_local local_unnamed_addr global i64 0, align 8
@P2_Rbyte = dso_local local_unnamed_addr global i64 0, align 8
@P2_AUDV = dso_local local_unnamed_addr global i64 0, align 8
@P2_sreg = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @Init_P2() local_unnamed_addr #0 {
  %1 = load ptr, ptr @P2_Flags, align 8, !tbaa !5
  %2 = load ptr, ptr @P2_Counters, align 8, !tbaa !5
  %3 = load ptr, ptr @P2_Top, align 8, !tbaa !5
  %4 = load ptr, ptr @P2_Bottom, align 8, !tbaa !5
  %5 = load ptr, ptr @P2_Enable, align 8, !tbaa !5
  %6 = load ptr, ptr @P2_Music_Top, align 8, !tbaa !5
  %7 = load ptr, ptr @P2_Music_Bottom, align 8, !tbaa !5
  %8 = load ptr, ptr @P2_Music_Count, align 8, !tbaa !5
  store i64 0, ptr %1, align 8, !tbaa !9
  store i64 0, ptr %2, align 8, !tbaa !9
  store i64 0, ptr %3, align 8, !tbaa !9
  store i64 0, ptr %4, align 8, !tbaa !9
  store i64 0, ptr %5, align 8, !tbaa !9
  store i64 0, ptr %6, align 8, !tbaa !9
  store i64 0, ptr %7, align 8, !tbaa !9
  store i64 0, ptr %8, align 8, !tbaa !9
  %9 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 0, ptr %9, align 8, !tbaa !9
  %10 = getelementptr inbounds i64, ptr %2, i64 1
  store i64 0, ptr %10, align 8, !tbaa !9
  %11 = getelementptr inbounds i64, ptr %3, i64 1
  store i64 0, ptr %11, align 8, !tbaa !9
  %12 = getelementptr inbounds i64, ptr %4, i64 1
  store i64 0, ptr %12, align 8, !tbaa !9
  %13 = getelementptr inbounds i64, ptr %5, i64 1
  store i64 0, ptr %13, align 8, !tbaa !9
  %14 = getelementptr inbounds i64, ptr %6, i64 1
  store i64 0, ptr %14, align 8, !tbaa !9
  %15 = getelementptr inbounds i64, ptr %7, i64 1
  store i64 0, ptr %15, align 8, !tbaa !9
  %16 = getelementptr inbounds i64, ptr %8, i64 1
  store i64 0, ptr %16, align 8, !tbaa !9
  %17 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 0, ptr %17, align 8, !tbaa !9
  %18 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 0, ptr %18, align 8, !tbaa !9
  %19 = getelementptr inbounds i64, ptr %3, i64 2
  store i64 0, ptr %19, align 8, !tbaa !9
  %20 = getelementptr inbounds i64, ptr %4, i64 2
  store i64 0, ptr %20, align 8, !tbaa !9
  %21 = getelementptr inbounds i64, ptr %5, i64 2
  store i64 0, ptr %21, align 8, !tbaa !9
  %22 = getelementptr inbounds i64, ptr %6, i64 2
  store i64 0, ptr %22, align 8, !tbaa !9
  %23 = getelementptr inbounds i64, ptr %7, i64 2
  store i64 0, ptr %23, align 8, !tbaa !9
  %24 = getelementptr inbounds i64, ptr %8, i64 2
  store i64 0, ptr %24, align 8, !tbaa !9
  %25 = getelementptr inbounds i64, ptr %1, i64 3
  store i64 0, ptr %25, align 8, !tbaa !9
  %26 = getelementptr inbounds i64, ptr %2, i64 3
  store i64 0, ptr %26, align 8, !tbaa !9
  %27 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 0, ptr %27, align 8, !tbaa !9
  %28 = getelementptr inbounds i64, ptr %4, i64 3
  store i64 0, ptr %28, align 8, !tbaa !9
  %29 = getelementptr inbounds i64, ptr %5, i64 3
  store i64 0, ptr %29, align 8, !tbaa !9
  %30 = getelementptr inbounds i64, ptr %6, i64 3
  store i64 0, ptr %30, align 8, !tbaa !9
  %31 = getelementptr inbounds i64, ptr %7, i64 3
  store i64 0, ptr %31, align 8, !tbaa !9
  %32 = getelementptr inbounds i64, ptr %8, i64 3
  store i64 0, ptr %32, align 8, !tbaa !9
  %33 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 0, ptr %33, align 8, !tbaa !9
  %34 = getelementptr inbounds i64, ptr %2, i64 4
  store i64 0, ptr %34, align 8, !tbaa !9
  %35 = getelementptr inbounds i64, ptr %3, i64 4
  store i64 0, ptr %35, align 8, !tbaa !9
  %36 = getelementptr inbounds i64, ptr %4, i64 4
  store i64 0, ptr %36, align 8, !tbaa !9
  %37 = getelementptr inbounds i64, ptr %5, i64 4
  store i64 0, ptr %37, align 8, !tbaa !9
  %38 = getelementptr inbounds i64, ptr %6, i64 4
  store i64 0, ptr %38, align 8, !tbaa !9
  %39 = getelementptr inbounds i64, ptr %7, i64 4
  store i64 0, ptr %39, align 8, !tbaa !9
  %40 = getelementptr inbounds i64, ptr %8, i64 4
  store i64 0, ptr %40, align 8, !tbaa !9
  %41 = getelementptr inbounds i64, ptr %1, i64 5
  store i64 0, ptr %41, align 8, !tbaa !9
  %42 = getelementptr inbounds i64, ptr %2, i64 5
  store i64 0, ptr %42, align 8, !tbaa !9
  %43 = getelementptr inbounds i64, ptr %3, i64 5
  store i64 0, ptr %43, align 8, !tbaa !9
  %44 = getelementptr inbounds i64, ptr %4, i64 5
  store i64 0, ptr %44, align 8, !tbaa !9
  %45 = getelementptr inbounds i64, ptr %5, i64 5
  store i64 0, ptr %45, align 8, !tbaa !9
  %46 = getelementptr inbounds i64, ptr %6, i64 5
  store i64 0, ptr %46, align 8, !tbaa !9
  %47 = getelementptr inbounds i64, ptr %7, i64 5
  store i64 0, ptr %47, align 8, !tbaa !9
  %48 = getelementptr inbounds i64, ptr %8, i64 5
  store i64 0, ptr %48, align 8, !tbaa !9
  %49 = getelementptr inbounds i64, ptr %1, i64 6
  store i64 0, ptr %49, align 8, !tbaa !9
  %50 = getelementptr inbounds i64, ptr %2, i64 6
  store i64 0, ptr %50, align 8, !tbaa !9
  %51 = getelementptr inbounds i64, ptr %3, i64 6
  store i64 0, ptr %51, align 8, !tbaa !9
  %52 = getelementptr inbounds i64, ptr %4, i64 6
  store i64 0, ptr %52, align 8, !tbaa !9
  %53 = getelementptr inbounds i64, ptr %5, i64 6
  store i64 0, ptr %53, align 8, !tbaa !9
  %54 = getelementptr inbounds i64, ptr %6, i64 6
  store i64 0, ptr %54, align 8, !tbaa !9
  %55 = getelementptr inbounds i64, ptr %7, i64 6
  store i64 0, ptr %55, align 8, !tbaa !9
  %56 = getelementptr inbounds i64, ptr %8, i64 6
  store i64 0, ptr %56, align 8, !tbaa !9
  %57 = getelementptr inbounds i64, ptr %1, i64 7
  store i64 0, ptr %57, align 8, !tbaa !9
  %58 = getelementptr inbounds i64, ptr %2, i64 7
  store i64 0, ptr %58, align 8, !tbaa !9
  %59 = getelementptr inbounds i64, ptr %3, i64 7
  store i64 0, ptr %59, align 8, !tbaa !9
  %60 = getelementptr inbounds i64, ptr %4, i64 7
  store i64 0, ptr %60, align 8, !tbaa !9
  %61 = getelementptr inbounds i64, ptr %5, i64 7
  store i64 0, ptr %61, align 8, !tbaa !9
  %62 = getelementptr inbounds i64, ptr %6, i64 7
  store i64 0, ptr %62, align 8, !tbaa !9
  %63 = getelementptr inbounds i64, ptr %7, i64 7
  store i64 0, ptr %63, align 8, !tbaa !9
  %64 = getelementptr inbounds i64, ptr %8, i64 7
  store i64 0, ptr %64, align 8, !tbaa !9
  store i64 0, ptr @Pitfall2, align 8, !tbaa !9
  store i64 0, ptr @P2_Rbyte, align 8, !tbaa !9
  store i64 0, ptr @P2_AUDV, align 8, !tbaa !9
  store i32 1, ptr @P2_sreg, align 4, !tbaa !11
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
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}

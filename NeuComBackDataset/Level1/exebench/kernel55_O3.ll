; ModuleID = '../benchmarks/fine_grained/exebench/kernel55.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel55.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOTE_A4 = dso_local local_unnamed_addr global i32 0, align 4
@pitchSonPerdenti = dso_local local_unnamed_addr global ptr null, align 8
@NOTE_F4 = dso_local local_unnamed_addr global i32 0, align 4
@NOTE_D4 = dso_local local_unnamed_addr global i32 0, align 4
@NOTE_G4 = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @initSonPerdenti() local_unnamed_addr #0 {
  %1 = load i32, ptr @NOTE_A4, align 4, !tbaa !5
  %2 = load ptr, ptr @pitchSonPerdenti, align 8, !tbaa !9
  store i32 %1, ptr %2, align 4, !tbaa !5
  %3 = load i32, ptr @NOTE_F4, align 4, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %3, ptr %4, align 4, !tbaa !5
  %5 = getelementptr inbounds i32, ptr %2, i64 2
  store i32 %3, ptr %5, align 4, !tbaa !5
  %6 = load i32, ptr @NOTE_D4, align 4, !tbaa !5
  %7 = getelementptr inbounds i32, ptr %2, i64 3
  store i32 %6, ptr %7, align 4, !tbaa !5
  %8 = getelementptr inbounds i32, ptr %2, i64 4
  store i32 %3, ptr %8, align 4, !tbaa !5
  %9 = getelementptr inbounds i32, ptr %2, i64 5
  store i32 %3, ptr %9, align 4, !tbaa !5
  %10 = load i32, ptr @NOTE_A4, align 4, !tbaa !5
  %11 = getelementptr inbounds i32, ptr %2, i64 6
  store i32 %10, ptr %11, align 4, !tbaa !5
  %12 = getelementptr inbounds i32, ptr %2, i64 7
  store i32 %10, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds i32, ptr %2, i64 8
  store i32 %10, ptr %13, align 4, !tbaa !5
  %14 = getelementptr inbounds i32, ptr %2, i64 9
  store i32 %3, ptr %14, align 4, !tbaa !5
  %15 = getelementptr inbounds i32, ptr %2, i64 10
  store i32 %3, ptr %15, align 4, !tbaa !5
  %16 = getelementptr inbounds i32, ptr %2, i64 11
  store i32 %6, ptr %16, align 4, !tbaa !5
  %17 = getelementptr inbounds i32, ptr %2, i64 12
  store i32 %3, ptr %17, align 4, !tbaa !5
  %18 = load i32, ptr @NOTE_G4, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, ptr %2, i64 13
  store i32 %18, ptr %19, align 4, !tbaa !5
  %20 = getelementptr inbounds i32, ptr %2, i64 14
  store i32 %3, ptr %20, align 4, !tbaa !5
  %21 = getelementptr inbounds i32, ptr %2, i64 15
  store i32 %3, ptr %21, align 4, !tbaa !5
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}

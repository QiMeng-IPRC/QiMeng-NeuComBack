; ModuleID = '../benchmarks/fine_grained/exebench/kernel277.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel277.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@columns = dso_local local_unnamed_addr global ptr null, align 8
@lock = dso_local local_unnamed_addr global i32 0, align 4
@htindex = dso_local local_unnamed_addr global i32 0, align 4
@stride = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @hash() local_unnamed_addr #0 {
  %1 = load ptr, ptr @columns, align 8, !tbaa !5
  %2 = getelementptr inbounds i32, ptr %1, i64 1
  %3 = load i32, ptr %2, align 4, !tbaa !9
  %4 = getelementptr inbounds i32, ptr %1, i64 2
  %5 = load i32, ptr %4, align 4, !tbaa !9
  %6 = shl i32 %3, 14
  %7 = shl i32 %5, 7
  %8 = or i32 %7, %6
  %9 = getelementptr inbounds i32, ptr %1, i64 3
  %10 = load i32, ptr %9, align 4, !tbaa !9
  %11 = or i32 %8, %10
  %12 = getelementptr inbounds i32, ptr %1, i64 7
  %13 = load i32, ptr %12, align 4, !tbaa !9
  %14 = getelementptr inbounds i32, ptr %1, i64 6
  %15 = load i32, ptr %14, align 4, !tbaa !9
  %16 = shl i32 %13, 14
  %17 = shl i32 %15, 7
  %18 = or i32 %17, %16
  %19 = getelementptr inbounds i32, ptr %1, i64 5
  %20 = load i32, ptr %19, align 4, !tbaa !9
  %21 = or i32 %18, %20
  %22 = icmp ugt i32 %11, %21
  %23 = getelementptr inbounds i32, ptr %1, i64 4
  %24 = load i32, ptr %23, align 4, !tbaa !9
  %25 = shl i32 %24, 21
  %26 = select i1 %22, i32 %10, i32 %20
  %27 = tail call i32 @llvm.umin.i32(i32 %11, i32 %21)
  %28 = shl i32 %26, 28
  %29 = or i32 %28, %25
  %30 = or i32 %29, %27
  %31 = ashr i32 %30, 17
  store i32 %31, ptr @lock, align 4, !tbaa !9
  %32 = srem i32 %30, 1050011
  store i32 %32, ptr @htindex, align 4, !tbaa !9
  %33 = trunc i32 %31 to i16
  %34 = srem i16 %33, 179
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %35, 131072
  store i32 %36, ptr @stride, align 4, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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

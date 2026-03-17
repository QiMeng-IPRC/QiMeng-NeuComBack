; ModuleID = '../benchmarks/fine_grained/exebench/kernel929.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel929.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @int_to_str(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @str, align 8, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, i8 0, i64 5, i1 false), !tbaa !9
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load ptr, ptr @str, align 8, !tbaa !5
  store i8 48, ptr %5, align 1, !tbaa !9
  br label %69

6:                                                ; preds = %1
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %20, label %69

8:                                                ; preds = %20
  %9 = and i64 %27, 4294967294
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %69, label %11

11:                                               ; preds = %8
  %12 = lshr i64 %27, 1
  %13 = shl i64 %27, 32
  %14 = ashr exact i64 %13, 32
  %15 = and i64 %12, 2147483647
  %16 = and i64 %12, 1
  %17 = icmp eq i64 %15, 1
  br i1 %17, label %56, label %18

18:                                               ; preds = %11
  %19 = sub nsw i64 %15, %16
  br label %31

20:                                               ; preds = %6, %20
  %21 = phi i64 [ %27, %20 ], [ 0, %6 ]
  %22 = phi i32 [ %29, %20 ], [ %0, %6 ]
  %23 = urem i32 %22, 10
  %24 = trunc i32 %23 to i8
  %25 = or i8 %24, 48
  %26 = load ptr, ptr @str, align 8, !tbaa !5
  %27 = add nuw i64 %21, 1
  %28 = getelementptr inbounds i8, ptr %26, i64 %21
  store i8 %25, ptr %28, align 1, !tbaa !9
  %29 = udiv i32 %22, 10
  %30 = icmp ult i32 %22, 10
  br i1 %30, label %8, label %20, !llvm.loop !10

31:                                               ; preds = %31, %18
  %32 = phi i64 [ 0, %18 ], [ %53, %31 ]
  %33 = phi i64 [ 0, %18 ], [ %54, %31 ]
  %34 = load ptr, ptr @str, align 8, !tbaa !5
  %35 = getelementptr inbounds i8, ptr %34, i64 %32
  %36 = load i8, ptr %35, align 1, !tbaa !9
  %37 = xor i64 %32, -1
  %38 = add nsw i64 %14, %37
  %39 = getelementptr inbounds i8, ptr %34, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !9
  store i8 %40, ptr %35, align 1, !tbaa !9
  %41 = load ptr, ptr @str, align 8, !tbaa !5
  %42 = getelementptr inbounds i8, ptr %41, i64 %38
  store i8 %36, ptr %42, align 1, !tbaa !9
  %43 = or i64 %32, 1
  %44 = load ptr, ptr @str, align 8, !tbaa !5
  %45 = getelementptr inbounds i8, ptr %44, i64 %43
  %46 = load i8, ptr %45, align 1, !tbaa !9
  %47 = xor i64 %32, -2
  %48 = add nsw i64 %14, %47
  %49 = getelementptr inbounds i8, ptr %44, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !9
  store i8 %50, ptr %45, align 1, !tbaa !9
  %51 = load ptr, ptr @str, align 8, !tbaa !5
  %52 = getelementptr inbounds i8, ptr %51, i64 %48
  store i8 %46, ptr %52, align 1, !tbaa !9
  %53 = add nuw nsw i64 %32, 2
  %54 = add i64 %33, 2
  %55 = icmp eq i64 %54, %19
  br i1 %55, label %56, label %31, !llvm.loop !12

56:                                               ; preds = %31, %11
  %57 = phi i64 [ 0, %11 ], [ %53, %31 ]
  %58 = icmp eq i64 %16, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr @str, align 8, !tbaa !5
  %61 = getelementptr inbounds i8, ptr %60, i64 %57
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = xor i64 %57, -1
  %64 = add nsw i64 %14, %63
  %65 = getelementptr inbounds i8, ptr %60, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !9
  store i8 %66, ptr %61, align 1, !tbaa !9
  %67 = load ptr, ptr @str, align 8, !tbaa !5
  %68 = getelementptr inbounds i8, ptr %67, i64 %64
  store i8 %62, ptr %68, align 1, !tbaa !9
  br label %69

69:                                               ; preds = %59, %56, %4, %6, %8
  %70 = load ptr, ptr @str, align 8, !tbaa !5
  ret ptr %70
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}

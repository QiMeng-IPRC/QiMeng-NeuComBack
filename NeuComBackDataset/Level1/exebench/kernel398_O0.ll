; ModuleID = '../benchmarks/fine_grained/exebench/kernel398.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel398.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@diagram = dso_local global ptr null, align 8
@temp = dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_letter_diagram() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  store i32 0, ptr %1, align 4
  br label %3

3:                                                ; preds = %99, %0
  %4 = load i32, ptr %1, align 4
  %5 = icmp slt i32 %4, 26
  br i1 %5, label %6, label %102

6:                                                ; preds = %3
  store i32 0, ptr %2, align 4
  br label %7

7:                                                ; preds = %95, %6
  %8 = load i32, ptr %2, align 4
  %9 = icmp slt i32 %8, 26
  br i1 %9, label %10, label %98

10:                                               ; preds = %7
  %11 = load ptr, ptr @diagram, align 8
  %12 = load i32, ptr %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, ptr %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i32 0, i32 0
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr @diagram, align 8
  %18 = load i32, ptr %2, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, ptr %21, i32 0, i32 0
  %23 = load i64, ptr %22, align 8
  %24 = icmp slt i64 %16, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %10
  %26 = load ptr, ptr @diagram, align 8
  %27 = load i32, ptr %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %26, i64 %28
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @temp, ptr align 8 %29, i64 16, i1 false)
  %30 = load ptr, ptr @diagram, align 8
  %31 = load i32, ptr %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, ptr %30, i64 %32
  %34 = load ptr, ptr @diagram, align 8
  %35 = load i32, ptr %2, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, ptr %34, i64 %37
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %38, i64 16, i1 false)
  %39 = load ptr, ptr @diagram, align 8
  %40 = load i32, ptr %2, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, ptr %39, i64 %42
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %43, ptr align 8 @temp, i64 16, i1 false)
  br label %44

44:                                               ; preds = %25, %10
  %45 = load ptr, ptr @diagram, align 8
  %46 = load i32, ptr %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, ptr %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, ptr %48, i32 0, i32 0
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr @diagram, align 8
  %52 = load i32, ptr %2, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, ptr %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, ptr %55, i32 0, i32 0
  %57 = load i64, ptr %56, align 8
  %58 = icmp eq i64 %50, %57
  br i1 %58, label %59, label %94

59:                                               ; preds = %44
  %60 = load ptr, ptr @diagram, align 8
  %61 = load i32, ptr %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, ptr %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, ptr %63, i32 0, i32 1
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr @diagram, align 8
  %67 = load i32, ptr %2, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, ptr %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, ptr %70, i32 0, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = icmp sgt i64 %65, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %59
  %75 = load ptr, ptr @diagram, align 8
  %76 = load i32, ptr %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, ptr %75, i64 %77
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @temp, ptr align 8 %78, i64 16, i1 false)
  %79 = load ptr, ptr @diagram, align 8
  %80 = load i32, ptr %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, ptr %79, i64 %81
  %83 = load ptr, ptr @diagram, align 8
  %84 = load i32, ptr %2, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, ptr %83, i64 %86
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %82, ptr align 8 %87, i64 16, i1 false)
  %88 = load ptr, ptr @diagram, align 8
  %89 = load i32, ptr %2, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, ptr %88, i64 %91
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %92, ptr align 8 @temp, i64 16, i1 false)
  br label %93

93:                                               ; preds = %74, %59
  br label %94

94:                                               ; preds = %93, %44
  br label %95

95:                                               ; preds = %94
  %96 = load i32, ptr %2, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %2, align 4
  br label %7, !llvm.loop !6

98:                                               ; preds = %7
  br label %99

99:                                               ; preds = %98
  %100 = load i32, ptr %1, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %1, align 4
  br label %3, !llvm.loop !8

102:                                              ; preds = %3
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}

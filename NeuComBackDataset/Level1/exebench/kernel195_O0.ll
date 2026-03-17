; ModuleID = '../benchmarks/fine_grained/exebench/kernel195.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel195.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { ptr, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serd_uri_resolve(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, ptr %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_9__, ptr %8, i32 0, i32 0
  store ptr null, ptr %9, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, ptr %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_9__, ptr %11, i32 0, i32 1
  store i64 0, ptr %12, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, ptr %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_12__, ptr %14, i32 0, i32 0
  %16 = load i64, ptr %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load ptr, ptr %6, align 8
  %20 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %20, i64 64, i1 false)
  br label %105

21:                                               ; preds = %3
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, ptr %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_11__, ptr %23, i32 0, i32 0
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, ptr %30, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %31, i64 8, i1 false)
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, ptr %32, i32 0, i32 4
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, ptr %34, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %35, i64 16, i1 false)
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, ptr %38, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr align 8 %39, i64 8, i1 false)
  br label %95

40:                                               ; preds = %21
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, ptr %43, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %42, ptr align 8 %44, i64 16, i1 false)
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, ptr %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_9__, ptr %46, i32 0, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %40
  %51 = load ptr, ptr %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, ptr %51, i32 0, i32 5
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, ptr %53, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %52, ptr align 8 %54, i64 16, i1 false)
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, ptr %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_10__, ptr %56, i32 0, i32 0
  %58 = load i64, ptr %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, ptr %63, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %62, ptr align 8 %64, i64 8, i1 false)
  br label %70

65:                                               ; preds = %50
  %66 = load ptr, ptr %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, ptr %68, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %67, ptr align 8 %69, i64 8, i1 false)
  br label %70

70:                                               ; preds = %65, %60
  br label %90

71:                                               ; preds = %40
  %72 = load ptr, ptr %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, ptr %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_9__, ptr %73, i32 0, i32 0
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds i8, ptr %75, i64 0
  %77 = load i8, ptr %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 47
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load ptr, ptr %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, ptr %81, i32 0, i32 5
  %83 = load ptr, ptr %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, ptr %83, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %82, ptr align 8 %84, i64 16, i1 false)
  br label %85

85:                                               ; preds = %80, %71
  %86 = load ptr, ptr %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, ptr %88, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %87, ptr align 8 %89, i64 8, i1 false)
  br label %90

90:                                               ; preds = %85, %70
  %91 = load ptr, ptr %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, ptr %93, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %92, ptr align 8 %94, i64 8, i1 false)
  br label %95

95:                                               ; preds = %90, %27
  %96 = load ptr, ptr %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, ptr %98, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %97, ptr align 8 %99, i64 8, i1 false)
  %100 = load ptr, ptr %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, ptr %100, i32 0, i32 0
  %102 = load i32, ptr %101, align 8
  %103 = load ptr, ptr %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, ptr %103, i32 0, i32 0
  store i32 %102, ptr %104, align 8
  br label %105

105:                                              ; preds = %95, %18
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

; ModuleID = '../benchmarks/fine_grained/exebench/kernel639.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel639.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@inv = dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@n = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @getst() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca { i64, i32 }, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 @inv, i64 12, i1 false)
  %4 = load i32, ptr @n, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 @inv, i64 12, i1 false)
  br label %17

7:                                                ; preds = %0
  %8 = load i32, ptr @n, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr @n, align 4
  %10 = load i32, ptr @n, align 4
  %11 = sdiv i32 %10, 6
  %12 = getelementptr inbounds %struct.TYPE_4__, ptr %2, i32 0, i32 0
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr @n, align 4
  %14 = srem i32 %13, 6
  %15 = getelementptr inbounds %struct.TYPE_4__, ptr %2, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, ptr %2, i32 0, i32 2
  store i32 1, ptr %16, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 12, i1 false)
  br label %17

17:                                               ; preds = %7, %6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 4 %1, i64 12, i1 false)
  %18 = load { i64, i32 }, ptr %3, align 8
  ret { i64, i32 } %18
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

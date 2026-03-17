; ModuleID = '../benchmarks/fine_grained/exebench/kernel634.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel634.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fn9() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = load i64, ptr @x, align 8
  %4 = add nsw i64 %3, -1
  store i64 %4, ptr @x, align 8
  %5 = trunc i64 %4 to i8
  %6 = zext i8 %5 to i64
  %7 = call ptr @llvm.stacksave()
  store ptr %7, ptr %1, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, ptr %2, align 8
  %9 = load ptr, ptr %1, align 8
  call void @llvm.stackrestore(ptr %9)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}

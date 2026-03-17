; ModuleID = '../benchmarks/fine_grained/exebench/kernel963.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel963.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { ptr, i32, i32, i32, i32, i32 }

@LIGHTTPD_VERSION_ID = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"redirect\00", align 1
@mod_redirect_init = dso_local global i32 0, align 4
@mod_redirect_uri_handler = dso_local global i32 0, align 4
@mod_redirect_set_defaults = dso_local global i32 0, align 4
@mod_redirect_free = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_redirect_plugin_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @LIGHTTPD_VERSION_ID, align 4
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %4, i32 0, i32 5
  store i32 %3, ptr %5, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %6, i32 0, i32 0
  store ptr @.str, ptr %7, align 8
  %8 = load i32, ptr @mod_redirect_init, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, ptr %9, i32 0, i32 4
  store i32 %8, ptr %10, align 4
  %11 = load i32, ptr @mod_redirect_uri_handler, align 4
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, ptr %12, i32 0, i32 3
  store i32 %11, ptr %13, align 8
  %14 = load i32, ptr @mod_redirect_set_defaults, align 4
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %15, i32 0, i32 2
  store i32 %14, ptr %16, align 4
  %17 = load i32, ptr @mod_redirect_free, align 4
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %18, i32 0, i32 1
  store i32 %17, ptr %19, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}

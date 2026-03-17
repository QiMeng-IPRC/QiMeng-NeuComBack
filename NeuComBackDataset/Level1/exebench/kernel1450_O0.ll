; ModuleID = '../benchmarks/fine_grained/exebench/kernel1450.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1450.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double }
%struct.TYPE_4__ = type { double, double }

@cone1 = dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@coneList = dso_local global ptr null, align 8
@position = dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup() #0 {
  store double 1.058000e+02, ptr @cone1, align 8
  store double 1.058000e+02, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @cone1, i32 0, i32 1), align 8
  %1 = load ptr, ptr @coneList, align 8
  %2 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 @cone1, i64 16, i1 false)
  store double 1.058000e+02, ptr @position, align 8
  store double 5.840000e+01, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @position, i32 0, i32 1), align 8
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

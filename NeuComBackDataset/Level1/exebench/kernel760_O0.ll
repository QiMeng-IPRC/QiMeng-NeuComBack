; ModuleID = '../benchmarks/fine_grained/exebench/kernel760.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel760.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@Vdp2Regs = dso_local global ptr null, align 8
@yabsys = dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@Vdp2Internal = dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@Vdp2External = dso_local global %struct.TYPE_18__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp2Reset() #0 {
  %1 = load ptr, ptr @Vdp2Regs, align 8
  %2 = getelementptr inbounds %struct.TYPE_16__, ptr %1, i32 0, i32 0
  store i32 0, ptr %2, align 4
  %3 = load ptr, ptr @Vdp2Regs, align 8
  %4 = getelementptr inbounds %struct.TYPE_16__, ptr %3, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = load ptr, ptr @Vdp2Regs, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = load ptr, ptr @Vdp2Regs, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, ptr %9, i32 0, i32 2
  store i32 %8, ptr %10, align 4
  %11 = load ptr, ptr @Vdp2Regs, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, ptr %11, i32 0, i32 3
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr @Vdp2Regs, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, ptr %13, i32 0, i32 4
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr @Vdp2Regs, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, ptr %15, i32 0, i32 5
  store i32 0, ptr %16, align 4
  %17 = load ptr, ptr @Vdp2Regs, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, ptr %17, i32 0, i32 6
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr @Vdp2Regs, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, ptr %19, i32 0, i32 7
  store i32 0, ptr %20, align 4
  %21 = load ptr, ptr @Vdp2Regs, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, ptr %21, i32 0, i32 8
  store i32 0, ptr %22, align 4
  %23 = load ptr, ptr @Vdp2Regs, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, ptr %23, i32 0, i32 9
  store i32 0, ptr %24, align 4
  %25 = load ptr, ptr @Vdp2Regs, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, ptr %25, i32 0, i32 10
  store i32 0, ptr %26, align 4
  %27 = load ptr, ptr @Vdp2Regs, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, ptr %27, i32 0, i32 11
  store i32 0, ptr %28, align 4
  %29 = load ptr, ptr @Vdp2Regs, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, ptr %29, i32 0, i32 12
  store i32 0, ptr %30, align 4
  %31 = load ptr, ptr @Vdp2Regs, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, ptr %31, i32 0, i32 13
  store i32 0, ptr %32, align 4
  %33 = load ptr, ptr @Vdp2Regs, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, ptr %33, i32 0, i32 14
  store i32 0, ptr %34, align 4
  %35 = load ptr, ptr @Vdp2Regs, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, ptr %35, i32 0, i32 15
  store i32 0, ptr %36, align 4
  %37 = load ptr, ptr @Vdp2Regs, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, ptr %37, i32 0, i32 75
  %39 = getelementptr inbounds %struct.TYPE_10__, ptr %38, i32 0, i32 0
  store i32 0, ptr %39, align 4
  %40 = load ptr, ptr @Vdp2Regs, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, ptr %40, i32 0, i32 74
  %42 = getelementptr inbounds %struct.TYPE_11__, ptr %41, i32 0, i32 0
  store i32 0, ptr %42, align 4
  %43 = load ptr, ptr @Vdp2Regs, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, ptr %43, i32 0, i32 16
  store i32 0, ptr %44, align 4
  %45 = load ptr, ptr @Vdp2Regs, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, ptr %45, i32 0, i32 17
  store i32 0, ptr %46, align 4
  %47 = load ptr, ptr @Vdp2Regs, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, ptr %47, i32 0, i32 18
  store i32 0, ptr %48, align 4
  %49 = load ptr, ptr @Vdp2Regs, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, ptr %49, i32 0, i32 19
  store i32 0, ptr %50, align 4
  %51 = load ptr, ptr @Vdp2Regs, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, ptr %51, i32 0, i32 73
  %53 = getelementptr inbounds %struct.TYPE_12__, ptr %52, i32 0, i32 0
  store i32 0, ptr %53, align 4
  %54 = load ptr, ptr @Vdp2Regs, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, ptr %54, i32 0, i32 72
  %56 = getelementptr inbounds %struct.TYPE_13__, ptr %55, i32 0, i32 0
  store i32 0, ptr %56, align 4
  %57 = load ptr, ptr @Vdp2Regs, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, ptr %57, i32 0, i32 20
  store i32 0, ptr %58, align 4
  %59 = load ptr, ptr @Vdp2Regs, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, ptr %59, i32 0, i32 21
  store i32 0, ptr %60, align 4
  %61 = load ptr, ptr @Vdp2Regs, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, ptr %61, i32 0, i32 22
  store i32 0, ptr %62, align 4
  %63 = load ptr, ptr @Vdp2Regs, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, ptr %63, i32 0, i32 23
  store i32 0, ptr %64, align 4
  %65 = load ptr, ptr @Vdp2Regs, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, ptr %65, i32 0, i32 24
  store i32 0, ptr %66, align 4
  %67 = load ptr, ptr @Vdp2Regs, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, ptr %67, i32 0, i32 25
  store i32 0, ptr %68, align 4
  %69 = load ptr, ptr @Vdp2Regs, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, ptr %69, i32 0, i32 71
  %71 = getelementptr inbounds %struct.TYPE_14__, ptr %70, i32 0, i32 0
  store i32 0, ptr %71, align 4
  %72 = load ptr, ptr @Vdp2Regs, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, ptr %72, i32 0, i32 26
  store i32 0, ptr %73, align 4
  %74 = load ptr, ptr @Vdp2Regs, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, ptr %74, i32 0, i32 27
  store i32 0, ptr %75, align 4
  %76 = load ptr, ptr @Vdp2Regs, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, ptr %76, i32 0, i32 28
  store i32 0, ptr %77, align 4
  %78 = load ptr, ptr @Vdp2Regs, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, ptr %78, i32 0, i32 29
  store i32 0, ptr %79, align 4
  %80 = load ptr, ptr @Vdp2Regs, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, ptr %80, i32 0, i32 30
  store i32 0, ptr %81, align 4
  %82 = load ptr, ptr @Vdp2Regs, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, ptr %82, i32 0, i32 31
  store i32 0, ptr %83, align 4
  %84 = load ptr, ptr @Vdp2Regs, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, ptr %84, i32 0, i32 32
  store i32 0, ptr %85, align 4
  %86 = load ptr, ptr @Vdp2Regs, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, ptr %86, i32 0, i32 33
  store i32 0, ptr %87, align 4
  %88 = load ptr, ptr @Vdp2Regs, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, ptr %88, i32 0, i32 34
  store i32 0, ptr %89, align 4
  %90 = load ptr, ptr @Vdp2Regs, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, ptr %90, i32 0, i32 35
  store i32 0, ptr %91, align 4
  %92 = load ptr, ptr @Vdp2Regs, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, ptr %92, i32 0, i32 36
  store i32 0, ptr %93, align 4
  %94 = load ptr, ptr @Vdp2Regs, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, ptr %94, i32 0, i32 37
  store i32 0, ptr %95, align 4
  %96 = load ptr, ptr @Vdp2Regs, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, ptr %96, i32 0, i32 38
  store i32 0, ptr %97, align 4
  %98 = load ptr, ptr @Vdp2Regs, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, ptr %98, i32 0, i32 39
  store i32 0, ptr %99, align 4
  %100 = load ptr, ptr @Vdp2Regs, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, ptr %100, i32 0, i32 40
  store i32 0, ptr %101, align 4
  %102 = load ptr, ptr @Vdp2Regs, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, ptr %102, i32 0, i32 41
  store i32 0, ptr %103, align 4
  %104 = load ptr, ptr @Vdp2Regs, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, ptr %104, i32 0, i32 42
  store i32 0, ptr %105, align 4
  %106 = load ptr, ptr @Vdp2Regs, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, ptr %106, i32 0, i32 43
  store i32 0, ptr %107, align 4
  %108 = load ptr, ptr @Vdp2Regs, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, ptr %108, i32 0, i32 44
  store i32 0, ptr %109, align 4
  %110 = load ptr, ptr @Vdp2Regs, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, ptr %110, i32 0, i32 45
  store i32 0, ptr %111, align 4
  %112 = load ptr, ptr @Vdp2Regs, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, ptr %112, i32 0, i32 46
  store i32 0, ptr %113, align 4
  %114 = load ptr, ptr @Vdp2Regs, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, ptr %114, i32 0, i32 47
  store i32 0, ptr %115, align 4
  %116 = load ptr, ptr @Vdp2Regs, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, ptr %116, i32 0, i32 48
  store i32 0, ptr %117, align 4
  %118 = load ptr, ptr @Vdp2Regs, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, ptr %118, i32 0, i32 49
  store i32 0, ptr %119, align 4
  %120 = load ptr, ptr @Vdp2Regs, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, ptr %120, i32 0, i32 50
  store i32 0, ptr %121, align 4
  %122 = load ptr, ptr @Vdp2Regs, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, ptr %122, i32 0, i32 51
  store i32 0, ptr %123, align 4
  %124 = load ptr, ptr @Vdp2Regs, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, ptr %124, i32 0, i32 52
  store i32 0, ptr %125, align 4
  %126 = load ptr, ptr @Vdp2Regs, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, ptr %126, i32 0, i32 53
  store i32 0, ptr %127, align 4
  %128 = load ptr, ptr @Vdp2Regs, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, ptr %128, i32 0, i32 54
  store i32 0, ptr %129, align 4
  %130 = load ptr, ptr @Vdp2Regs, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, ptr %130, i32 0, i32 55
  store i32 0, ptr %131, align 4
  %132 = load ptr, ptr @Vdp2Regs, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, ptr %132, i32 0, i32 56
  store i32 0, ptr %133, align 4
  %134 = load ptr, ptr @Vdp2Regs, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, ptr %134, i32 0, i32 57
  store i32 0, ptr %135, align 4
  %136 = load ptr, ptr @Vdp2Regs, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, ptr %136, i32 0, i32 58
  store i32 0, ptr %137, align 4
  %138 = load ptr, ptr @Vdp2Regs, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, ptr %138, i32 0, i32 59
  store i32 0, ptr %139, align 4
  %140 = load ptr, ptr @Vdp2Regs, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, ptr %140, i32 0, i32 60
  store i32 0, ptr %141, align 4
  %142 = load ptr, ptr @Vdp2Regs, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, ptr %142, i32 0, i32 61
  store i32 0, ptr %143, align 4
  %144 = load ptr, ptr @Vdp2Regs, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, ptr %144, i32 0, i32 62
  store i32 0, ptr %145, align 4
  %146 = load ptr, ptr @Vdp2Regs, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, ptr %146, i32 0, i32 63
  store i32 0, ptr %147, align 4
  %148 = load ptr, ptr @Vdp2Regs, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, ptr %148, i32 0, i32 64
  store i32 0, ptr %149, align 4
  %150 = load ptr, ptr @Vdp2Regs, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, ptr %150, i32 0, i32 65
  store i32 0, ptr %151, align 4
  %152 = load ptr, ptr @Vdp2Regs, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, ptr %152, i32 0, i32 66
  store i32 0, ptr %153, align 4
  %154 = load ptr, ptr @Vdp2Regs, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, ptr %154, i32 0, i32 67
  store i32 0, ptr %155, align 4
  %156 = load ptr, ptr @Vdp2Regs, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, ptr %156, i32 0, i32 68
  store i32 0, ptr %157, align 4
  %158 = load ptr, ptr @Vdp2Regs, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, ptr %158, i32 0, i32 69
  store i32 0, ptr %159, align 4
  %160 = load ptr, ptr @Vdp2Regs, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, ptr %160, i32 0, i32 70
  store i32 0, ptr %161, align 4
  store i32 224, ptr @yabsys, align 4
  store i64 0, ptr @Vdp2Internal, align 8
  store i32 255, ptr @Vdp2External, align 4
  ret void
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

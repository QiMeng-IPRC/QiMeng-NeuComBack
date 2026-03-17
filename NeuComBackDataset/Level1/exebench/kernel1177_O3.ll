; ModuleID = '../benchmarks/fine_grained/exebench/kernel1177.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1177.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gpio = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local void @intro_0() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gpio, align 8, !tbaa !5
  %2 = getelementptr inbounds i32, ptr %1, i64 10
  store i32 262144, ptr %2, align 4, !tbaa !9
  %3 = tail call i32 @usleep(i32 noundef 253) #2
  %4 = load ptr, ptr @gpio, align 8, !tbaa !5
  %5 = getelementptr inbounds i32, ptr %4, i64 7
  store i32 262144, ptr %5, align 4, !tbaa !9
  %6 = tail call i32 @usleep(i32 noundef 970) #2
  ret void
}

declare i32 @usleep(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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

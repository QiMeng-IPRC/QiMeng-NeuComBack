; ModuleID = '../benchmarks/fine_grained/exebench/kernel64.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { double }

@GOOGLE_PROTOBUF_FIELDDESCRIPTORPROTO_TYPE_TYPE_DOUBLE = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @upb_value_setdouble(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @memset(ptr noundef %0, i32 noundef 0, i32 noundef 16) #2
  %4 = load i32, ptr @GOOGLE_PROTOBUF_FIELDDESCRIPTORPROTO_TYPE_TYPE_DOUBLE, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  store i32 %4, ptr %5, align 8, !tbaa !9
  store double %1, ptr %0, align 8, !tbaa !13
  ret void
}

declare i32 @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"TYPE_6__", !11, i64 0, !6, i64 8}
!11 = !{!"TYPE_5__", !12, i64 0}
!12 = !{!"double", !7, i64 0}
!13 = !{!10, !12, i64 0}

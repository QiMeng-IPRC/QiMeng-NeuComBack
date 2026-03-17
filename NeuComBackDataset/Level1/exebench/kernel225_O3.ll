; ModuleID = '../benchmarks/fine_grained/exebench/kernel225.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel225.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32 }

@http_r = dso_local local_unnamed_addr global ptr null, align 8
@resp_index = dso_local local_unnamed_addr global i64 0, align 8
@http_resp_cout = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @set_http_cb(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @http_r, align 8, !tbaa !5
  store ptr %0, ptr %3, align 8, !tbaa !9
  %4 = load ptr, ptr @http_r, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_2__, ptr %4, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !12
  store i64 0, ptr @resp_index, align 8, !tbaa !13
  store i64 0, ptr @http_resp_cout, align 8, !tbaa !13
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_2__", !6, i64 0, !11, i64 8}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}

; ModuleID = '../benchmarks/fine_grained/exebench/kernel831.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel831.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@LIGHTTPD_VERSION_ID = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"scgi\00", align 1
@gw_init = dso_local local_unnamed_addr global i32 0, align 4
@gw_free = dso_local local_unnamed_addr global i32 0, align 4
@mod_scgi_set_defaults = dso_local local_unnamed_addr global i32 0, align 4
@gw_handle_request_reset = dso_local local_unnamed_addr global i32 0, align 4
@scgi_check_extension_1 = dso_local local_unnamed_addr global i32 0, align 4
@scgi_check_extension_2 = dso_local local_unnamed_addr global i32 0, align 4
@gw_handle_subrequest = dso_local local_unnamed_addr global i32 0, align 4
@gw_handle_trigger = dso_local local_unnamed_addr global i32 0, align 4
@gw_handle_waitpid_cb = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @mod_scgi_plugin_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @LIGHTTPD_VERSION_ID, align 4, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 10
  store i32 %2, ptr %3, align 4, !tbaa !9
  store ptr @.str, ptr %0, align 8, !tbaa !12
  %4 = load i32, ptr @gw_init, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 9
  store i32 %4, ptr %5, align 8, !tbaa !13
  %6 = load i32, ptr @gw_free, align 4, !tbaa !5
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 8
  store i32 %6, ptr %7, align 4, !tbaa !14
  %8 = load i32, ptr @mod_scgi_set_defaults, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 7
  store i32 %8, ptr %9, align 8, !tbaa !15
  %10 = load i32, ptr @gw_handle_request_reset, align 4, !tbaa !5
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 6
  store i32 %10, ptr %11, align 4, !tbaa !16
  %12 = load i32, ptr @scgi_check_extension_1, align 4, !tbaa !5
  %13 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 5
  store i32 %12, ptr %13, align 8, !tbaa !17
  %14 = load i32, ptr @scgi_check_extension_2, align 4, !tbaa !5
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  store i32 %14, ptr %15, align 4, !tbaa !18
  %16 = load i32, ptr @gw_handle_subrequest, align 4, !tbaa !5
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  store i32 %16, ptr %17, align 8, !tbaa !19
  %18 = load i32, ptr @gw_handle_trigger, align 4, !tbaa !5
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store i32 %18, ptr %19, align 4, !tbaa !20
  %20 = load i32, ptr @gw_handle_waitpid_cb, align 4, !tbaa !5
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 %20, ptr %21, align 8, !tbaa !21
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !6, i64 44}
!10 = !{!"TYPE_3__", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 0}
!13 = !{!10, !6, i64 40}
!14 = !{!10, !6, i64 36}
!15 = !{!10, !6, i64 32}
!16 = !{!10, !6, i64 28}
!17 = !{!10, !6, i64 24}
!18 = !{!10, !6, i64 20}
!19 = !{!10, !6, i64 16}
!20 = !{!10, !6, i64 12}
!21 = !{!10, !6, i64 8}

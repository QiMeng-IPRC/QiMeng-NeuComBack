; ModuleID = '../benchmarks/fine_grained/exebench/kernel1554.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1554.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dec_detl = dso_local local_unnamed_addr global i32 0, align 4
@detl = dso_local local_unnamed_addr global i32 0, align 4
@dec_deth = dso_local local_unnamed_addr global i32 0, align 4
@deth = dso_local local_unnamed_addr global i32 0, align 4
@rlt2 = dso_local local_unnamed_addr global i64 0, align 8
@rlt1 = dso_local local_unnamed_addr global i64 0, align 8
@plt2 = dso_local local_unnamed_addr global i64 0, align 8
@plt1 = dso_local local_unnamed_addr global i64 0, align 8
@al2 = dso_local local_unnamed_addr global i64 0, align 8
@al1 = dso_local local_unnamed_addr global i64 0, align 8
@nbl = dso_local local_unnamed_addr global i64 0, align 8
@rh2 = dso_local local_unnamed_addr global i64 0, align 8
@rh1 = dso_local local_unnamed_addr global i64 0, align 8
@ph2 = dso_local local_unnamed_addr global i64 0, align 8
@ph1 = dso_local local_unnamed_addr global i64 0, align 8
@ah2 = dso_local local_unnamed_addr global i64 0, align 8
@ah1 = dso_local local_unnamed_addr global i64 0, align 8
@nbh = dso_local local_unnamed_addr global i64 0, align 8
@dec_rlt2 = dso_local local_unnamed_addr global i64 0, align 8
@dec_rlt1 = dso_local local_unnamed_addr global i64 0, align 8
@dec_plt2 = dso_local local_unnamed_addr global i64 0, align 8
@dec_plt1 = dso_local local_unnamed_addr global i64 0, align 8
@dec_al2 = dso_local local_unnamed_addr global i64 0, align 8
@dec_al1 = dso_local local_unnamed_addr global i64 0, align 8
@dec_nbl = dso_local local_unnamed_addr global i64 0, align 8
@dec_rh2 = dso_local local_unnamed_addr global i64 0, align 8
@dec_rh1 = dso_local local_unnamed_addr global i64 0, align 8
@dec_ph2 = dso_local local_unnamed_addr global i64 0, align 8
@dec_ph1 = dso_local local_unnamed_addr global i64 0, align 8
@dec_ah2 = dso_local local_unnamed_addr global i64 0, align 8
@dec_ah1 = dso_local local_unnamed_addr global i64 0, align 8
@dec_nbh = dso_local local_unnamed_addr global i64 0, align 8
@delay_dltx = dso_local local_unnamed_addr global ptr null, align 8
@delay_dhx = dso_local local_unnamed_addr global ptr null, align 8
@dec_del_dltx = dso_local local_unnamed_addr global ptr null, align 8
@dec_del_dhx = dso_local local_unnamed_addr global ptr null, align 8
@delay_bpl = dso_local local_unnamed_addr global ptr null, align 8
@delay_bph = dso_local local_unnamed_addr global ptr null, align 8
@dec_del_bpl = dso_local local_unnamed_addr global ptr null, align 8
@dec_del_bph = dso_local local_unnamed_addr global ptr null, align 8
@tqmf = dso_local local_unnamed_addr global ptr null, align 8
@accumc = dso_local local_unnamed_addr global ptr null, align 8
@accumd = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @reset() local_unnamed_addr #0 {
  store i32 32, ptr @dec_detl, align 4, !tbaa !5
  store i32 32, ptr @detl, align 4, !tbaa !5
  store i32 8, ptr @dec_deth, align 4, !tbaa !5
  store i32 8, ptr @deth, align 4, !tbaa !5
  store i64 0, ptr @rlt2, align 8, !tbaa !9
  store i64 0, ptr @rlt1, align 8, !tbaa !9
  store i64 0, ptr @plt2, align 8, !tbaa !9
  store i64 0, ptr @plt1, align 8, !tbaa !9
  store i64 0, ptr @al2, align 8, !tbaa !9
  store i64 0, ptr @al1, align 8, !tbaa !9
  store i64 0, ptr @nbl, align 8, !tbaa !9
  store i64 0, ptr @rh2, align 8, !tbaa !9
  store i64 0, ptr @rh1, align 8, !tbaa !9
  store i64 0, ptr @ph2, align 8, !tbaa !9
  store i64 0, ptr @ph1, align 8, !tbaa !9
  store i64 0, ptr @ah2, align 8, !tbaa !9
  store i64 0, ptr @ah1, align 8, !tbaa !9
  store i64 0, ptr @nbh, align 8, !tbaa !9
  store i64 0, ptr @dec_rlt2, align 8, !tbaa !9
  store i64 0, ptr @dec_rlt1, align 8, !tbaa !9
  store i64 0, ptr @dec_plt2, align 8, !tbaa !9
  store i64 0, ptr @dec_plt1, align 8, !tbaa !9
  store i64 0, ptr @dec_al2, align 8, !tbaa !9
  store i64 0, ptr @dec_al1, align 8, !tbaa !9
  store i64 0, ptr @dec_nbl, align 8, !tbaa !9
  store i64 0, ptr @dec_rh2, align 8, !tbaa !9
  store i64 0, ptr @dec_rh1, align 8, !tbaa !9
  store i64 0, ptr @dec_ph2, align 8, !tbaa !9
  store i64 0, ptr @dec_ph1, align 8, !tbaa !9
  store i64 0, ptr @dec_ah2, align 8, !tbaa !9
  store i64 0, ptr @dec_ah1, align 8, !tbaa !9
  store i64 0, ptr @dec_nbh, align 8, !tbaa !9
  %1 = load ptr, ptr @delay_dltx, align 8, !tbaa !11
  %2 = load ptr, ptr @delay_dhx, align 8, !tbaa !11
  %3 = load ptr, ptr @dec_del_dltx, align 8, !tbaa !11
  %4 = load ptr, ptr @dec_del_dhx, align 8, !tbaa !11
  store i64 0, ptr %1, align 8, !tbaa !9
  store i64 0, ptr %2, align 8, !tbaa !9
  store i64 0, ptr %3, align 8, !tbaa !9
  store i64 0, ptr %4, align 8, !tbaa !9
  %5 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 0, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds i64, ptr %2, i64 1
  store i64 0, ptr %6, align 8, !tbaa !9
  %7 = getelementptr inbounds i64, ptr %3, i64 1
  store i64 0, ptr %7, align 8, !tbaa !9
  %8 = getelementptr inbounds i64, ptr %4, i64 1
  store i64 0, ptr %8, align 8, !tbaa !9
  %9 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 0, ptr %9, align 8, !tbaa !9
  %10 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 0, ptr %10, align 8, !tbaa !9
  %11 = getelementptr inbounds i64, ptr %3, i64 2
  store i64 0, ptr %11, align 8, !tbaa !9
  %12 = getelementptr inbounds i64, ptr %4, i64 2
  store i64 0, ptr %12, align 8, !tbaa !9
  %13 = getelementptr inbounds i64, ptr %1, i64 3
  store i64 0, ptr %13, align 8, !tbaa !9
  %14 = getelementptr inbounds i64, ptr %2, i64 3
  store i64 0, ptr %14, align 8, !tbaa !9
  %15 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 0, ptr %15, align 8, !tbaa !9
  %16 = getelementptr inbounds i64, ptr %4, i64 3
  store i64 0, ptr %16, align 8, !tbaa !9
  %17 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 0, ptr %17, align 8, !tbaa !9
  %18 = getelementptr inbounds i64, ptr %2, i64 4
  store i64 0, ptr %18, align 8, !tbaa !9
  %19 = getelementptr inbounds i64, ptr %3, i64 4
  store i64 0, ptr %19, align 8, !tbaa !9
  %20 = getelementptr inbounds i64, ptr %4, i64 4
  store i64 0, ptr %20, align 8, !tbaa !9
  %21 = getelementptr inbounds i64, ptr %1, i64 5
  store i64 0, ptr %21, align 8, !tbaa !9
  %22 = getelementptr inbounds i64, ptr %2, i64 5
  store i64 0, ptr %22, align 8, !tbaa !9
  %23 = getelementptr inbounds i64, ptr %3, i64 5
  store i64 0, ptr %23, align 8, !tbaa !9
  %24 = getelementptr inbounds i64, ptr %4, i64 5
  store i64 0, ptr %24, align 8, !tbaa !9
  %25 = load ptr, ptr @delay_bpl, align 8, !tbaa !11
  %26 = load ptr, ptr @delay_bph, align 8, !tbaa !11
  %27 = load ptr, ptr @dec_del_bpl, align 8, !tbaa !11
  %28 = load ptr, ptr @dec_del_bph, align 8, !tbaa !11
  store i64 0, ptr %25, align 8, !tbaa !9
  store i64 0, ptr %26, align 8, !tbaa !9
  store i64 0, ptr %27, align 8, !tbaa !9
  store i64 0, ptr %28, align 8, !tbaa !9
  %29 = getelementptr inbounds i64, ptr %25, i64 1
  store i64 0, ptr %29, align 8, !tbaa !9
  %30 = getelementptr inbounds i64, ptr %26, i64 1
  store i64 0, ptr %30, align 8, !tbaa !9
  %31 = getelementptr inbounds i64, ptr %27, i64 1
  store i64 0, ptr %31, align 8, !tbaa !9
  %32 = getelementptr inbounds i64, ptr %28, i64 1
  store i64 0, ptr %32, align 8, !tbaa !9
  %33 = getelementptr inbounds i64, ptr %25, i64 2
  store i64 0, ptr %33, align 8, !tbaa !9
  %34 = getelementptr inbounds i64, ptr %26, i64 2
  store i64 0, ptr %34, align 8, !tbaa !9
  %35 = getelementptr inbounds i64, ptr %27, i64 2
  store i64 0, ptr %35, align 8, !tbaa !9
  %36 = getelementptr inbounds i64, ptr %28, i64 2
  store i64 0, ptr %36, align 8, !tbaa !9
  %37 = getelementptr inbounds i64, ptr %25, i64 3
  store i64 0, ptr %37, align 8, !tbaa !9
  %38 = getelementptr inbounds i64, ptr %26, i64 3
  store i64 0, ptr %38, align 8, !tbaa !9
  %39 = getelementptr inbounds i64, ptr %27, i64 3
  store i64 0, ptr %39, align 8, !tbaa !9
  %40 = getelementptr inbounds i64, ptr %28, i64 3
  store i64 0, ptr %40, align 8, !tbaa !9
  %41 = getelementptr inbounds i64, ptr %25, i64 4
  store i64 0, ptr %41, align 8, !tbaa !9
  %42 = getelementptr inbounds i64, ptr %26, i64 4
  store i64 0, ptr %42, align 8, !tbaa !9
  %43 = getelementptr inbounds i64, ptr %27, i64 4
  store i64 0, ptr %43, align 8, !tbaa !9
  %44 = getelementptr inbounds i64, ptr %28, i64 4
  store i64 0, ptr %44, align 8, !tbaa !9
  %45 = getelementptr inbounds i64, ptr %25, i64 5
  store i64 0, ptr %45, align 8, !tbaa !9
  %46 = getelementptr inbounds i64, ptr %26, i64 5
  store i64 0, ptr %46, align 8, !tbaa !9
  %47 = getelementptr inbounds i64, ptr %27, i64 5
  store i64 0, ptr %47, align 8, !tbaa !9
  %48 = getelementptr inbounds i64, ptr %28, i64 5
  store i64 0, ptr %48, align 8, !tbaa !9
  %49 = load ptr, ptr @tqmf, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %49, i8 0, i64 192, i1 false), !tbaa !9
  %50 = load ptr, ptr @accumc, align 8, !tbaa !11
  %51 = load ptr, ptr @accumd, align 8, !tbaa !11
  store i64 0, ptr %50, align 8, !tbaa !9
  store i64 0, ptr %51, align 8, !tbaa !9
  %52 = getelementptr inbounds i64, ptr %50, i64 1
  store i64 0, ptr %52, align 8, !tbaa !9
  %53 = getelementptr inbounds i64, ptr %51, i64 1
  store i64 0, ptr %53, align 8, !tbaa !9
  %54 = getelementptr inbounds i64, ptr %50, i64 2
  store i64 0, ptr %54, align 8, !tbaa !9
  %55 = getelementptr inbounds i64, ptr %51, i64 2
  store i64 0, ptr %55, align 8, !tbaa !9
  %56 = getelementptr inbounds i64, ptr %50, i64 3
  store i64 0, ptr %56, align 8, !tbaa !9
  %57 = getelementptr inbounds i64, ptr %51, i64 3
  store i64 0, ptr %57, align 8, !tbaa !9
  %58 = getelementptr inbounds i64, ptr %50, i64 4
  store i64 0, ptr %58, align 8, !tbaa !9
  %59 = getelementptr inbounds i64, ptr %51, i64 4
  store i64 0, ptr %59, align 8, !tbaa !9
  %60 = getelementptr inbounds i64, ptr %50, i64 5
  store i64 0, ptr %60, align 8, !tbaa !9
  %61 = getelementptr inbounds i64, ptr %51, i64 5
  store i64 0, ptr %61, align 8, !tbaa !9
  %62 = getelementptr inbounds i64, ptr %50, i64 6
  store i64 0, ptr %62, align 8, !tbaa !9
  %63 = getelementptr inbounds i64, ptr %51, i64 6
  store i64 0, ptr %63, align 8, !tbaa !9
  %64 = getelementptr inbounds i64, ptr %50, i64 7
  store i64 0, ptr %64, align 8, !tbaa !9
  %65 = getelementptr inbounds i64, ptr %51, i64 7
  store i64 0, ptr %65, align 8, !tbaa !9
  %66 = getelementptr inbounds i64, ptr %50, i64 8
  store i64 0, ptr %66, align 8, !tbaa !9
  %67 = getelementptr inbounds i64, ptr %51, i64 8
  store i64 0, ptr %67, align 8, !tbaa !9
  %68 = getelementptr inbounds i64, ptr %50, i64 9
  store i64 0, ptr %68, align 8, !tbaa !9
  %69 = getelementptr inbounds i64, ptr %51, i64 9
  store i64 0, ptr %69, align 8, !tbaa !9
  %70 = getelementptr inbounds i64, ptr %50, i64 10
  store i64 0, ptr %70, align 8, !tbaa !9
  %71 = getelementptr inbounds i64, ptr %51, i64 10
  store i64 0, ptr %71, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}

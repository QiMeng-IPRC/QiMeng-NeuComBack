; ModuleID = '../benchmarks/fine_grained/exebench/kernel592.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel592.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BotLoadCharacter = dso_local local_unnamed_addr global i32 0, align 4
@BotFreeCharacter = dso_local local_unnamed_addr global i32 0, align 4
@Characteristic_Float = dso_local local_unnamed_addr global i32 0, align 4
@Characteristic_BFloat = dso_local local_unnamed_addr global i32 0, align 4
@Characteristic_Integer = dso_local local_unnamed_addr global i32 0, align 4
@Characteristic_BInteger = dso_local local_unnamed_addr global i32 0, align 4
@Characteristic_String = dso_local local_unnamed_addr global i32 0, align 4
@BotAllocChatState = dso_local local_unnamed_addr global i32 0, align 4
@BotFreeChatState = dso_local local_unnamed_addr global i32 0, align 4
@BotQueueConsoleMessage = dso_local local_unnamed_addr global i32 0, align 4
@BotRemoveConsoleMessage = dso_local local_unnamed_addr global i32 0, align 4
@BotNextConsoleMessage = dso_local local_unnamed_addr global i32 0, align 4
@BotNumConsoleMessages = dso_local local_unnamed_addr global i32 0, align 4
@BotInitialChat = dso_local local_unnamed_addr global i32 0, align 4
@BotNumInitialChats = dso_local local_unnamed_addr global i32 0, align 4
@BotReplyChat = dso_local local_unnamed_addr global i32 0, align 4
@BotChatLength = dso_local local_unnamed_addr global i32 0, align 4
@BotEnterChat = dso_local local_unnamed_addr global i32 0, align 4
@BotGetChatMessage = dso_local local_unnamed_addr global i32 0, align 4
@StringContains = dso_local local_unnamed_addr global i32 0, align 4
@BotFindMatch = dso_local local_unnamed_addr global i32 0, align 4
@BotMatchVariable = dso_local local_unnamed_addr global i32 0, align 4
@UnifyWhiteSpaces = dso_local local_unnamed_addr global i32 0, align 4
@BotReplaceSynonyms = dso_local local_unnamed_addr global i32 0, align 4
@BotLoadChatFile = dso_local local_unnamed_addr global i32 0, align 4
@BotSetChatGender = dso_local local_unnamed_addr global i32 0, align 4
@BotSetChatName = dso_local local_unnamed_addr global i32 0, align 4
@BotResetGoalState = dso_local local_unnamed_addr global i32 0, align 4
@BotResetAvoidGoals = dso_local local_unnamed_addr global i32 0, align 4
@BotRemoveFromAvoidGoals = dso_local local_unnamed_addr global i32 0, align 4
@BotPushGoal = dso_local local_unnamed_addr global i32 0, align 4
@BotPopGoal = dso_local local_unnamed_addr global i32 0, align 4
@BotEmptyGoalStack = dso_local local_unnamed_addr global i32 0, align 4
@BotDumpAvoidGoals = dso_local local_unnamed_addr global i32 0, align 4
@BotDumpGoalStack = dso_local local_unnamed_addr global i32 0, align 4
@BotGoalName = dso_local local_unnamed_addr global i32 0, align 4
@BotGetTopGoal = dso_local local_unnamed_addr global i32 0, align 4
@BotGetSecondGoal = dso_local local_unnamed_addr global i32 0, align 4
@BotChooseLTGItem = dso_local local_unnamed_addr global i32 0, align 4
@BotChooseNBGItem = dso_local local_unnamed_addr global i32 0, align 4
@BotTouchingGoal = dso_local local_unnamed_addr global i32 0, align 4
@BotItemGoalInVisButNotVisible = dso_local local_unnamed_addr global i32 0, align 4
@BotGetLevelItemGoal = dso_local local_unnamed_addr global i32 0, align 4
@BotGetNextCampSpotGoal = dso_local local_unnamed_addr global i32 0, align 4
@BotGetMapLocationGoal = dso_local local_unnamed_addr global i32 0, align 4
@BotAvoidGoalTime = dso_local local_unnamed_addr global i32 0, align 4
@BotInitLevelItems = dso_local local_unnamed_addr global i32 0, align 4
@BotUpdateEntityItems = dso_local local_unnamed_addr global i32 0, align 4
@BotLoadItemWeights = dso_local local_unnamed_addr global i32 0, align 4
@BotFreeItemWeights = dso_local local_unnamed_addr global i32 0, align 4
@BotInterbreedGoalFuzzyLogic = dso_local local_unnamed_addr global i32 0, align 4
@BotSaveGoalFuzzyLogic = dso_local local_unnamed_addr global i32 0, align 4
@BotMutateGoalFuzzyLogic = dso_local local_unnamed_addr global i32 0, align 4
@BotAllocGoalState = dso_local local_unnamed_addr global i32 0, align 4
@BotFreeGoalState = dso_local local_unnamed_addr global i32 0, align 4
@BotResetMoveState = dso_local local_unnamed_addr global i32 0, align 4
@BotMoveToGoal = dso_local local_unnamed_addr global i32 0, align 4
@BotMoveInDirection = dso_local local_unnamed_addr global i32 0, align 4
@BotResetAvoidReach = dso_local local_unnamed_addr global i32 0, align 4
@BotResetLastAvoidReach = dso_local local_unnamed_addr global i32 0, align 4
@BotReachabilityArea = dso_local local_unnamed_addr global i32 0, align 4
@BotMovementViewTarget = dso_local local_unnamed_addr global i32 0, align 4
@BotPredictVisiblePosition = dso_local local_unnamed_addr global i32 0, align 4
@BotAllocMoveState = dso_local local_unnamed_addr global i32 0, align 4
@BotFreeMoveState = dso_local local_unnamed_addr global i32 0, align 4
@BotInitMoveState = dso_local local_unnamed_addr global i32 0, align 4
@BotInitAvoidReach = dso_local local_unnamed_addr global i32 0, align 4
@BotChooseBestFightWeapon = dso_local local_unnamed_addr global i32 0, align 4
@BotGetWeaponInfo = dso_local local_unnamed_addr global i32 0, align 4
@BotLoadWeaponWeights = dso_local local_unnamed_addr global i32 0, align 4
@BotAllocWeaponState = dso_local local_unnamed_addr global i32 0, align 4
@BotFreeWeaponState = dso_local local_unnamed_addr global i32 0, align 4
@BotResetWeaponState = dso_local local_unnamed_addr global i32 0, align 4
@GeneticParentsAndChildSelection = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @Init_AI_Export(ptr noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @BotLoadCharacter, align 4, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 73
  store i32 %2, ptr %3, align 4, !tbaa !9
  %4 = load i32, ptr @BotFreeCharacter, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 72
  store i32 %4, ptr %5, align 4, !tbaa !11
  %6 = load i32, ptr @Characteristic_Float, align 4, !tbaa !5
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 71
  store i32 %6, ptr %7, align 4, !tbaa !12
  %8 = load i32, ptr @Characteristic_BFloat, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 70
  store i32 %8, ptr %9, align 4, !tbaa !13
  %10 = load i32, ptr @Characteristic_Integer, align 4, !tbaa !5
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 69
  store i32 %10, ptr %11, align 4, !tbaa !14
  %12 = load i32, ptr @Characteristic_BInteger, align 4, !tbaa !5
  %13 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 68
  store i32 %12, ptr %13, align 4, !tbaa !15
  %14 = load i32, ptr @Characteristic_String, align 4, !tbaa !5
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 67
  store i32 %14, ptr %15, align 4, !tbaa !16
  %16 = load i32, ptr @BotAllocChatState, align 4, !tbaa !5
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 66
  store i32 %16, ptr %17, align 4, !tbaa !17
  %18 = load i32, ptr @BotFreeChatState, align 4, !tbaa !5
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 65
  store i32 %18, ptr %19, align 4, !tbaa !18
  %20 = load i32, ptr @BotQueueConsoleMessage, align 4, !tbaa !5
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 64
  store i32 %20, ptr %21, align 4, !tbaa !19
  %22 = load i32, ptr @BotRemoveConsoleMessage, align 4, !tbaa !5
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 63
  store i32 %22, ptr %23, align 4, !tbaa !20
  %24 = load i32, ptr @BotNextConsoleMessage, align 4, !tbaa !5
  %25 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 62
  store i32 %24, ptr %25, align 4, !tbaa !21
  %26 = load i32, ptr @BotNumConsoleMessages, align 4, !tbaa !5
  %27 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 61
  store i32 %26, ptr %27, align 4, !tbaa !22
  %28 = load i32, ptr @BotInitialChat, align 4, !tbaa !5
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 60
  store i32 %28, ptr %29, align 4, !tbaa !23
  %30 = load i32, ptr @BotNumInitialChats, align 4, !tbaa !5
  %31 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 59
  store i32 %30, ptr %31, align 4, !tbaa !24
  %32 = load i32, ptr @BotReplyChat, align 4, !tbaa !5
  %33 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 58
  store i32 %32, ptr %33, align 4, !tbaa !25
  %34 = load i32, ptr @BotChatLength, align 4, !tbaa !5
  %35 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 57
  store i32 %34, ptr %35, align 4, !tbaa !26
  %36 = load i32, ptr @BotEnterChat, align 4, !tbaa !5
  %37 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 56
  store i32 %36, ptr %37, align 4, !tbaa !27
  %38 = load i32, ptr @BotGetChatMessage, align 4, !tbaa !5
  %39 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 55
  store i32 %38, ptr %39, align 4, !tbaa !28
  %40 = load i32, ptr @StringContains, align 4, !tbaa !5
  %41 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 54
  store i32 %40, ptr %41, align 4, !tbaa !29
  %42 = load i32, ptr @BotFindMatch, align 4, !tbaa !5
  %43 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 53
  store i32 %42, ptr %43, align 4, !tbaa !30
  %44 = load i32, ptr @BotMatchVariable, align 4, !tbaa !5
  %45 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 52
  store i32 %44, ptr %45, align 4, !tbaa !31
  %46 = load i32, ptr @UnifyWhiteSpaces, align 4, !tbaa !5
  %47 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 51
  store i32 %46, ptr %47, align 4, !tbaa !32
  %48 = load i32, ptr @BotReplaceSynonyms, align 4, !tbaa !5
  %49 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 50
  store i32 %48, ptr %49, align 4, !tbaa !33
  %50 = load i32, ptr @BotLoadChatFile, align 4, !tbaa !5
  %51 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 49
  store i32 %50, ptr %51, align 4, !tbaa !34
  %52 = load i32, ptr @BotSetChatGender, align 4, !tbaa !5
  %53 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 48
  store i32 %52, ptr %53, align 4, !tbaa !35
  %54 = load i32, ptr @BotSetChatName, align 4, !tbaa !5
  %55 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 47
  store i32 %54, ptr %55, align 4, !tbaa !36
  %56 = load i32, ptr @BotResetGoalState, align 4, !tbaa !5
  %57 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 46
  store i32 %56, ptr %57, align 4, !tbaa !37
  %58 = load i32, ptr @BotResetAvoidGoals, align 4, !tbaa !5
  %59 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 45
  store i32 %58, ptr %59, align 4, !tbaa !38
  %60 = load i32, ptr @BotRemoveFromAvoidGoals, align 4, !tbaa !5
  %61 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 44
  store i32 %60, ptr %61, align 4, !tbaa !39
  %62 = load i32, ptr @BotPushGoal, align 4, !tbaa !5
  %63 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 43
  store i32 %62, ptr %63, align 4, !tbaa !40
  %64 = load i32, ptr @BotPopGoal, align 4, !tbaa !5
  %65 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 42
  store i32 %64, ptr %65, align 4, !tbaa !41
  %66 = load i32, ptr @BotEmptyGoalStack, align 4, !tbaa !5
  %67 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 41
  store i32 %66, ptr %67, align 4, !tbaa !42
  %68 = load i32, ptr @BotDumpAvoidGoals, align 4, !tbaa !5
  %69 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 40
  store i32 %68, ptr %69, align 4, !tbaa !43
  %70 = load i32, ptr @BotDumpGoalStack, align 4, !tbaa !5
  %71 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 39
  store i32 %70, ptr %71, align 4, !tbaa !44
  %72 = load i32, ptr @BotGoalName, align 4, !tbaa !5
  %73 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 38
  store i32 %72, ptr %73, align 4, !tbaa !45
  %74 = load i32, ptr @BotGetTopGoal, align 4, !tbaa !5
  %75 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 37
  store i32 %74, ptr %75, align 4, !tbaa !46
  %76 = load i32, ptr @BotGetSecondGoal, align 4, !tbaa !5
  %77 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 36
  store i32 %76, ptr %77, align 4, !tbaa !47
  %78 = load i32, ptr @BotChooseLTGItem, align 4, !tbaa !5
  %79 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 35
  store i32 %78, ptr %79, align 4, !tbaa !48
  %80 = load i32, ptr @BotChooseNBGItem, align 4, !tbaa !5
  %81 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 34
  store i32 %80, ptr %81, align 4, !tbaa !49
  %82 = load i32, ptr @BotTouchingGoal, align 4, !tbaa !5
  %83 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 33
  store i32 %82, ptr %83, align 4, !tbaa !50
  %84 = load i32, ptr @BotItemGoalInVisButNotVisible, align 4, !tbaa !5
  %85 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 32
  store i32 %84, ptr %85, align 4, !tbaa !51
  %86 = load i32, ptr @BotGetLevelItemGoal, align 4, !tbaa !5
  %87 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 31
  store i32 %86, ptr %87, align 4, !tbaa !52
  %88 = load i32, ptr @BotGetNextCampSpotGoal, align 4, !tbaa !5
  %89 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 30
  store i32 %88, ptr %89, align 4, !tbaa !53
  %90 = load i32, ptr @BotGetMapLocationGoal, align 4, !tbaa !5
  %91 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 29
  store i32 %90, ptr %91, align 4, !tbaa !54
  %92 = load i32, ptr @BotAvoidGoalTime, align 4, !tbaa !5
  %93 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 28
  store i32 %92, ptr %93, align 4, !tbaa !55
  %94 = load i32, ptr @BotInitLevelItems, align 4, !tbaa !5
  %95 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 27
  store i32 %94, ptr %95, align 4, !tbaa !56
  %96 = load i32, ptr @BotUpdateEntityItems, align 4, !tbaa !5
  %97 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 26
  store i32 %96, ptr %97, align 4, !tbaa !57
  %98 = load i32, ptr @BotLoadItemWeights, align 4, !tbaa !5
  %99 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 25
  store i32 %98, ptr %99, align 4, !tbaa !58
  %100 = load i32, ptr @BotFreeItemWeights, align 4, !tbaa !5
  %101 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 24
  store i32 %100, ptr %101, align 4, !tbaa !59
  %102 = load i32, ptr @BotInterbreedGoalFuzzyLogic, align 4, !tbaa !5
  %103 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 23
  store i32 %102, ptr %103, align 4, !tbaa !60
  %104 = load i32, ptr @BotSaveGoalFuzzyLogic, align 4, !tbaa !5
  %105 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 22
  store i32 %104, ptr %105, align 4, !tbaa !61
  %106 = load i32, ptr @BotMutateGoalFuzzyLogic, align 4, !tbaa !5
  %107 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 21
  store i32 %106, ptr %107, align 4, !tbaa !62
  %108 = load i32, ptr @BotAllocGoalState, align 4, !tbaa !5
  %109 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 20
  store i32 %108, ptr %109, align 4, !tbaa !63
  %110 = load i32, ptr @BotFreeGoalState, align 4, !tbaa !5
  %111 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 19
  store i32 %110, ptr %111, align 4, !tbaa !64
  %112 = load i32, ptr @BotResetMoveState, align 4, !tbaa !5
  %113 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 18
  store i32 %112, ptr %113, align 4, !tbaa !65
  %114 = load i32, ptr @BotMoveToGoal, align 4, !tbaa !5
  %115 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 17
  store i32 %114, ptr %115, align 4, !tbaa !66
  %116 = load i32, ptr @BotMoveInDirection, align 4, !tbaa !5
  %117 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 16
  store i32 %116, ptr %117, align 4, !tbaa !67
  %118 = load i32, ptr @BotResetAvoidReach, align 4, !tbaa !5
  %119 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 15
  store i32 %118, ptr %119, align 4, !tbaa !68
  %120 = load i32, ptr @BotResetLastAvoidReach, align 4, !tbaa !5
  %121 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 14
  store i32 %120, ptr %121, align 4, !tbaa !69
  %122 = load i32, ptr @BotReachabilityArea, align 4, !tbaa !5
  %123 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 13
  store i32 %122, ptr %123, align 4, !tbaa !70
  %124 = load i32, ptr @BotMovementViewTarget, align 4, !tbaa !5
  %125 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 12
  store i32 %124, ptr %125, align 4, !tbaa !71
  %126 = load i32, ptr @BotPredictVisiblePosition, align 4, !tbaa !5
  %127 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 11
  store i32 %126, ptr %127, align 4, !tbaa !72
  %128 = load i32, ptr @BotAllocMoveState, align 4, !tbaa !5
  %129 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 10
  store i32 %128, ptr %129, align 4, !tbaa !73
  %130 = load i32, ptr @BotFreeMoveState, align 4, !tbaa !5
  %131 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 9
  store i32 %130, ptr %131, align 4, !tbaa !74
  %132 = load i32, ptr @BotInitMoveState, align 4, !tbaa !5
  %133 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 8
  store i32 %132, ptr %133, align 4, !tbaa !75
  %134 = load i32, ptr @BotInitAvoidReach, align 4, !tbaa !5
  %135 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 7
  store i32 %134, ptr %135, align 4, !tbaa !76
  %136 = load i32, ptr @BotChooseBestFightWeapon, align 4, !tbaa !5
  %137 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 6
  store i32 %136, ptr %137, align 4, !tbaa !77
  %138 = load i32, ptr @BotGetWeaponInfo, align 4, !tbaa !5
  %139 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 5
  store i32 %138, ptr %139, align 4, !tbaa !78
  %140 = load i32, ptr @BotLoadWeaponWeights, align 4, !tbaa !5
  %141 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  store i32 %140, ptr %141, align 4, !tbaa !79
  %142 = load i32, ptr @BotAllocWeaponState, align 4, !tbaa !5
  %143 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  store i32 %142, ptr %143, align 4, !tbaa !80
  %144 = load i32, ptr @BotFreeWeaponState, align 4, !tbaa !5
  %145 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store i32 %144, ptr %145, align 4, !tbaa !81
  %146 = load i32, ptr @BotResetWeaponState, align 4, !tbaa !5
  %147 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 %146, ptr %147, align 4, !tbaa !82
  %148 = load i32, ptr @GeneticParentsAndChildSelection, align 4, !tbaa !5
  store i32 %148, ptr %0, align 4, !tbaa !83
  ret void
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
!9 = !{!10, !6, i64 292}
!10 = !{!"TYPE_3__", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292}
!11 = !{!10, !6, i64 288}
!12 = !{!10, !6, i64 284}
!13 = !{!10, !6, i64 280}
!14 = !{!10, !6, i64 276}
!15 = !{!10, !6, i64 272}
!16 = !{!10, !6, i64 268}
!17 = !{!10, !6, i64 264}
!18 = !{!10, !6, i64 260}
!19 = !{!10, !6, i64 256}
!20 = !{!10, !6, i64 252}
!21 = !{!10, !6, i64 248}
!22 = !{!10, !6, i64 244}
!23 = !{!10, !6, i64 240}
!24 = !{!10, !6, i64 236}
!25 = !{!10, !6, i64 232}
!26 = !{!10, !6, i64 228}
!27 = !{!10, !6, i64 224}
!28 = !{!10, !6, i64 220}
!29 = !{!10, !6, i64 216}
!30 = !{!10, !6, i64 212}
!31 = !{!10, !6, i64 208}
!32 = !{!10, !6, i64 204}
!33 = !{!10, !6, i64 200}
!34 = !{!10, !6, i64 196}
!35 = !{!10, !6, i64 192}
!36 = !{!10, !6, i64 188}
!37 = !{!10, !6, i64 184}
!38 = !{!10, !6, i64 180}
!39 = !{!10, !6, i64 176}
!40 = !{!10, !6, i64 172}
!41 = !{!10, !6, i64 168}
!42 = !{!10, !6, i64 164}
!43 = !{!10, !6, i64 160}
!44 = !{!10, !6, i64 156}
!45 = !{!10, !6, i64 152}
!46 = !{!10, !6, i64 148}
!47 = !{!10, !6, i64 144}
!48 = !{!10, !6, i64 140}
!49 = !{!10, !6, i64 136}
!50 = !{!10, !6, i64 132}
!51 = !{!10, !6, i64 128}
!52 = !{!10, !6, i64 124}
!53 = !{!10, !6, i64 120}
!54 = !{!10, !6, i64 116}
!55 = !{!10, !6, i64 112}
!56 = !{!10, !6, i64 108}
!57 = !{!10, !6, i64 104}
!58 = !{!10, !6, i64 100}
!59 = !{!10, !6, i64 96}
!60 = !{!10, !6, i64 92}
!61 = !{!10, !6, i64 88}
!62 = !{!10, !6, i64 84}
!63 = !{!10, !6, i64 80}
!64 = !{!10, !6, i64 76}
!65 = !{!10, !6, i64 72}
!66 = !{!10, !6, i64 68}
!67 = !{!10, !6, i64 64}
!68 = !{!10, !6, i64 60}
!69 = !{!10, !6, i64 56}
!70 = !{!10, !6, i64 52}
!71 = !{!10, !6, i64 48}
!72 = !{!10, !6, i64 44}
!73 = !{!10, !6, i64 40}
!74 = !{!10, !6, i64 36}
!75 = !{!10, !6, i64 32}
!76 = !{!10, !6, i64 28}
!77 = !{!10, !6, i64 24}
!78 = !{!10, !6, i64 20}
!79 = !{!10, !6, i64 16}
!80 = !{!10, !6, i64 12}
!81 = !{!10, !6, i64 8}
!82 = !{!10, !6, i64 4}
!83 = !{!10, !6, i64 0}

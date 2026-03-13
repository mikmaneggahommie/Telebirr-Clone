.class public Lcom/android/systemui/multiwindow/SplitRecentsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SplitRecentsFragment.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
.implements Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
.implements Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;
.implements Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;
    }
.end annotation


# static fields
.field public static final EDM_FALSE:I = 0x0

.field public static final EDM_NULL:I = -0x1

.field public static final EDM_TRUE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Recents_SplitRecentsFragment"


# instance fields
.field mAfterPauseRunnable:Ljava/lang/Runnable;

.field private mAppListShadowDistance:F

.field private mAppListShadowOpacity:F

.field private mAppListStrokeOpacity:F

.field mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mDebugOverlayStub:Landroid/view/ViewStub;

.field final mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field mFinishLaunchHomeRunnable:Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

.field private mHandler:Landroid/os/Handler;

.field mLastTabKeyEventTime:J

.field private mMainLayout:Landroid/view/View;

.field mNeedDarkFont:Z

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

.field mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemReceiverFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mHandler:Landroid/os/Handler;

    .line 130
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemReceiverFlag:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mNeedDarkFont:Z

    .line 188
    new-instance v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    new-instance v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$2;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v0, Lcom/android/systemui/recents/misc/DebugTrigger;

    new-instance v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$3;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/DebugTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    return-void
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1115
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1116
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1117
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1119
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1120
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    const/4 v0, 0x1

    .line 1127
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1130
    :goto_0
    return v0

    .line 1123
    :cond_0
    const/4 v0, 0x0

    .line 1127
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1125
    :catch_0
    move-exception v0

    .line 1127
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1130
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1127
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getResizeTaskDebugDialog()Lcom/android/systemui/recents/RecentsResizeTaskDialog;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    return-object v0
.end method

.method private updateStackByReload()V
    .locals 17

    .prologue
    .line 1057
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v6

    .line 1058
    .local v6, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    const/4 v7, 0x0

    .line 1059
    .local v7, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v7, :cond_0

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v7

    .line 1064
    :cond_0
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1065
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    invoke-virtual {v6, v7, v14}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 1067
    :cond_1
    new-instance v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 1069
    .local v5, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    const/4 v14, 0x0

    iput-boolean v14, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 1071
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    iput v14, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 1072
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    iput v14, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 1073
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    iput v14, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v6, v14, v7, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 1078
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    .line 1080
    const/4 v14, 0x1

    new-array v8, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "true"

    aput-object v15, v8, v14

    .line 1081
    .local v8, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "content://com.sec.knox.provider2/KioskMode"

    const-string v16, "isTaskManagerAllowed"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v8}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1083
    .local v3, "isKioskMode":I
    const/4 v14, -0x1

    if-eq v3, v14, :cond_4

    const/4 v14, 0x1

    if-eq v3, v14, :cond_4

    .line 1093
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1094
    .local v12, "taskStackCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    .line 1095
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v12, :cond_6

    .line 1096
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/TaskStack;

    .line 1097
    .local v9, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    .line 1098
    .local v13, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1099
    .local v11, "taskCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v11, :cond_3

    .line 1100
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    .line 1101
    .local v10, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v14, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v14, v14, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v15, v15, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    if-ne v14, v15, :cond_5

    .line 1102
    const/4 v14, 0x1

    iput-boolean v14, v10, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 1095
    .end local v10    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1086
    .end local v1    # "i":I
    .end local v4    # "j":I
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v11    # "taskCount":I
    .end local v12    # "taskStackCount":I
    .end local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    .line 1087
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1099
    .restart local v1    # "i":I
    .restart local v4    # "j":I
    .restart local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v10    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v11    # "taskCount":I
    .restart local v12    # "taskStackCount":I
    .restart local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1109
    .end local v1    # "i":I
    .end local v4    # "j":I
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v10    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "taskCount":I
    .end local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/TaskStack;

    .line 1110
    .restart local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lcom/android/systemui/recents/model/TaskStack;->filterSplitTasks(Z)V

    goto :goto_3

    .line 1112
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_7
    return-void
.end method


# virtual methods
.method addSearchBarAppWidgetView()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method bindSearchBarAppWidget()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public clearDeferSurfaceDestroyFlag()V
    .locals 0

    .prologue
    .line 1141
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    .line 941
    const-string v2, "Recents_SplitRecentsFragment"

    const-string v3, "dismiss is getting called "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .line 944
    .local v0, "activity":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finishActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    .end local v0    # "activity":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    :goto_0
    return-void

    .line 945
    :catch_0
    move-exception v1

    .line 946
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Recents_SplitRecentsFragment"

    const-string v3, "Activity is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dismissRecentsToFocusedTaskOrHome(Z)Z
    .locals 1
    .param p1, "checkFilteredStackState"    # Z

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method dismissRecentsToHome(Z)Z
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method dismissRecentsToHomeRaw(Z)V
    .locals 0
    .param p1, "animated"    # Z

    .prologue
    .line 478
    return-void
.end method

.method dismissRecentsToHomeWithoutTransitionAnimation()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public dismissToApp(Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1137
    return-void
.end method

.method inflateDebugOverlay()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public onAllTaskViewsDismissed()V
    .locals 0

    .prologue
    .line 917
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 822
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onBackPressed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 829
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0
.end method

.method public onCloseAllButtonClicked()V
    .locals 0

    .prologue
    .line 935
    return-void
.end method

.method onConfigurationChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 585
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 588
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    .line 595
    :goto_0
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 596
    .local v0, "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 597
    return-void

    .line 591
    .end local v0    # "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 504
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 508
    const-string v1, "Recents_SplitRecentsFragment"

    const-string v2, "onCreate is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 511
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 512
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 520
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowDistance:F

    .line 521
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowOpacity:F

    .line 522
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListStrokeOpacity:F

    .line 524
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 531
    const v0, 0x7f04007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    .line 532
    iput-object p3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 533
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    const v1, 0x7f0f0263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 534
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    .line 535
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    const v1, 0x7f0f0264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 539
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    const v1, 0x7f0f0265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlayStub:Landroid/view/ViewStub;

    .line 540
    new-instance v0, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 541
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->inflateDebugOverlay()V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateNoRecentTaskViews(Z)Z

    .line 546
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->setMultiWindowActivity(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    .line 549
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    .line 551
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onConfigurationChange()V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    return-object v0
.end method

.method public onDebugModeTriggered()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 834
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v0, :cond_1

    .line 835
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "debugModeEnabled"

    invoke-static {v0, v1, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 838
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "debugModeEnabled"

    invoke-static {v0, v1}, Lcom/android/systemui/Prefs;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 840
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->inflateDebugOverlay()V

    .line 841
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->disable()V

    .line 853
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug mode ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->DebugModeVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_3

    const-string v0, "Enabled"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", please restart Recents now"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 857
    :cond_1
    return-void

    .line 846
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "debugModeEnabled"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 847
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 848
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->inflateDebugOverlay()V

    .line 849
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->enable()V

    goto :goto_0

    .line 853
    :cond_3
    const-string v0, "Disabled"

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 724
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 726
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onDestroy is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 716
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    .line 718
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return-void
.end method

.method public onEnterAnimationTriggered()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 740
    new-instance v1, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 741
    .local v1, "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 742
    .local v0, "ctx":Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 763
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V

    .line 764
    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startExitRecentsAnimation()V

    .line 884
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 777
    sparse-switch p1, :sswitch_data_0

    .line 806
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/misc/DebugTrigger;->onKeyEvent(I)V

    .line 809
    :cond_0
    :goto_0
    return v2

    .line 779
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mLastTabKeyEventTime:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    move v1, v2

    .line 781
    .local v1, "hasRepKeyTimeElapsed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v1, :cond_0

    .line 783
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 784
    .local v0, "backward":Z
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-nez v0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    .line 785
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mLastTabKeyEventTime:J

    goto :goto_0

    .end local v0    # "backward":Z
    .end local v1    # "hasRepKeyTimeElapsed":Z
    :cond_3
    move v1, v3

    .line 779
    goto :goto_1

    .line 790
    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 794
    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 799
    :sswitch_3
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->dismissFocusedTask()V

    goto :goto_0

    .line 777
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x3d -> :sswitch_0
        0x43 -> :sswitch_3
        0x70 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 675
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 676
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAfterPauseRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAfterPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAfterPauseRunnable:Ljava/lang/Runnable;

    .line 680
    :cond_0
    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 980
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 664
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 665
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onResume is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 671
    :cond_0
    return-void
.end method

.method public onScreenPinningRequest(Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 926
    return-void
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 985
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 615
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 617
    const-string v2, "Recents_SplitRecentsFragment"

    const-string v3, "Inside onStart()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 619
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    .line 624
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .line 625
    .local v0, "activity":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    invoke-virtual {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->registerCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V

    .line 628
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 645
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 648
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateRecentsTasks()V

    .line 652
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-eqz v2, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onEnterAnimationTriggered()V

    .line 656
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-nez v2, :cond_1

    .line 657
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->disableLayersForOneFrame()V

    .line 659
    :cond_1
    return-void

    .line 621
    .end local v0    # "activity":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .end local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 685
    const-string v1, "Recents_SplitRecentsFragment"

    const-string v2, "onStop is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->unregisterCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V

    .line 690
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    .line 694
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 695
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 702
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 710
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    .line 711
    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 0

    .prologue
    .line 910
    return-void
.end method

.method public onTaskResize(Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 876
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 6
    .param p1, "tv"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 889
    const-string v1, "Recents_SplitRecentsFragment"

    const-string v2, "onTaskViewClicked is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-object v0, v1

    .line 891
    .local v0, "activity":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/multiwindow/SplitRecentsFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$4;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 902
    return-void

    .line 890
    .end local v0    # "activity":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTaskViewFocusSwitched(IZ)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "onlyFocusChange"    # Z

    .prologue
    .line 957
    return-void
.end method

.method public onTaskViewMoved()V
    .locals 0

    .prologue
    .line 954
    return-void
.end method

.method public refreshSearchWidgetView()V
    .locals 0

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->bindSearchBarAppWidget()V

    .line 972
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->addSearchBarAppWidgetView()V

    .line 973
    return-void
.end method

.method public requestUpdateRecentsLayout()V
    .locals 0

    .prologue
    .line 964
    return-void
.end method

.method public runAfterPause(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAfterPauseRunnable:Ljava/lang/Runnable;

    .line 931
    return-void
.end method

.method public updateNoRecentTaskViews(Z)Z
    .locals 8
    .param p1, "noRecentTasks"    # Z

    .prologue
    const/high16 v4, -0x1000000

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1020
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    if-nez v2, :cond_1

    :cond_0
    move v6, v7

    .line 1051
    :goto_0
    return v6

    .line 1023
    :cond_1
    if-eqz p1, :cond_5

    .line 1024
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 1025
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    .line 1027
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    const v5, 0x7f0f0276

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1028
    .local v0, "emptyTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "need_dark_font"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_3

    move v2, v6

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mNeedDarkFont:Z

    .line 1030
    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mNeedDarkFont:Z

    if-eqz v2, :cond_4

    .line 1031
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c00ab

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1032
    const/4 v2, -0x1

    iget v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListStrokeOpacity:F

    invoke-virtual {v0, v3, v2, v4}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 1033
    iget v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowDistance:F

    const/4 v4, -0x1

    iget v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowOpacity:F

    sub-float v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 1039
    .end local v0    # "emptyTextView":Landroid/widget/TextView;
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto :goto_0

    .restart local v0    # "emptyTextView":Landroid/widget/TextView;
    :cond_3
    move v2, v7

    .line 1028
    goto :goto_1

    .line 1035
    :cond_4
    iget v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListStrokeOpacity:F

    invoke-virtual {v0, v3, v4, v2}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 1036
    iget v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowDistance:F

    iget v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowOpacity:F

    sub-float v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto :goto_2

    .line 1042
    .end local v0    # "emptyTextView":Landroid/widget/TextView;
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 1043
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->hasValidSearchBar()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1046
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto/16 :goto_0

    .line 1048
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->addSearchBarAppWidgetView()V

    goto/16 :goto_0
.end method

.method updateRecentsTasks()V
    .locals 27

    .prologue
    .line 245
    const-string v24, "Recents_SplitRecentsFragment"

    const-string v25, "updateRecentsTasks is getting called"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    .line 256
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v10

    .line 257
    .local v10, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v12

    .line 258
    .local v12, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v12, :cond_0

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v12

    .line 263
    :cond_0
    invoke-virtual {v12}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v24

    if-nez v24, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v10, v12, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 266
    :cond_1
    new-instance v9, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 267
    .local v9, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v9, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v9, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v9, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 271
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v9, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0, v12, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 275
    invoke-virtual {v12}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v16

    .line 276
    .local v16, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v25, v0

    invoke-virtual {v12}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v24

    if-nez v24, :cond_4

    const/16 v24, 0x1

    :goto_0
    move/from16 v0, v24

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 279
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    .line 280
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    .line 281
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v14, v0, [Ljava/lang/String;

    const/16 v24, 0x0

    const-string v25, "true"

    aput-object v25, v14, v24

    .line 282
    .local v14, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, "content://com.sec.knox.provider2/KioskMode"

    const-string v26, "isTaskManagerAllowed"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2, v14}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 284
    .local v7, "isKioskMode":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v7, v0, :cond_5

    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v7, v0, :cond_5

    .line 309
    :cond_2
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 310
    .local v21, "taskStackCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 311
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    move/from16 v0, v21

    if-ge v3, v0, :cond_7

    .line 312
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/TaskStack;

    .line 313
    .local v15, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v22

    .line 314
    .local v22, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 315
    .local v20, "taskCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 316
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/model/Task;

    .line 317
    .local v17, "t":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 318
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 311
    .end local v17    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 276
    .end local v3    # "i":I
    .end local v7    # "isKioskMode":I
    .end local v8    # "j":I
    .end local v14    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v20    # "taskCount":I
    .end local v21    # "taskStackCount":I
    .end local v22    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 288
    .restart local v7    # "isKioskMode":I
    .restart local v14    # "selectionArgs":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 315
    .restart local v3    # "i":I
    .restart local v8    # "j":I
    .restart local v15    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v17    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v20    # "taskCount":I
    .restart local v21    # "taskStackCount":I
    .restart local v22    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 349
    .end local v3    # "i":I
    .end local v8    # "j":I
    .end local v15    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v17    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v20    # "taskCount":I
    .end local v22    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    const-string v25, "multiwindow_facade"

    invoke-virtual/range {v24 .. v25}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v25, 0xa

    const/16 v26, 0x7

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v13

    .line 352
    .local v13, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v18, 0x0

    .line 353
    .local v18, "targetTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/TaskStack;

    .line 354
    .restart local v15    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v22

    .line 355
    .restart local v22    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/model/Task;

    .line 356
    .local v19, "task":Lcom/android/systemui/recents/model/Task;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 357
    .local v23, "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 359
    move-object/from16 v18, v19

    .line 360
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->filterExcludeTask(Lcom/android/systemui/recents/model/Task;Z)V

    .line 364
    .end local v23    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_a
    if-eqz v18, :cond_8

    .line 366
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v19    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_b
    const/16 v18, 0x0

    .line 367
    goto :goto_4

    .line 369
    .end local v15    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v22    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_c
    const/4 v11, 0x1

    .line 370
    .local v11, "noRecentTasks":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/TaskStack;

    .line 371
    .restart local v15    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/android/systemui/recents/model/TaskStack;->filterSplitTasks(Z)V

    .line 372
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-eqz v24, :cond_d

    .line 373
    const/4 v11, 0x0

    goto :goto_5

    .line 377
    .end local v15    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateNoRecentTaskViews(Z)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-boolean v11, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 381
    :cond_f
    return-void
.end method

.method public updateSelectedPackageName(Landroid/util/Pair;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 992
    .local p1, "selectedPackageInfoPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateStackByReload()V

    .line 994
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack;

    .line 995
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_1

    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 996
    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->unfilterExcludeTask()V

    goto :goto_0

    .line 999
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 1000
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 1001
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v6, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v6, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v7, v6, :cond_3

    .line 1002
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/systemui/recents/model/TaskStack;->filterExcludeTask(Lcom/android/systemui/recents/model/Task;Z)V

    goto :goto_0

    .line 1007
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    const/4 v2, 0x1

    .line 1008
    .local v2, "noRecentTasks":Z
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack;

    .line 1009
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_5

    .line 1010
    const/4 v2, 0x0

    goto :goto_1

    .line 1014
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateNoRecentTaskViews(Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1015
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 1017
    :cond_7
    return-void
.end method

.method public updateSwitchAppsVisibility(Ljava/lang/String;I)I
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "visibility"    # I

    .prologue
    .line 960
    const/4 v0, -0x1

    return v0
.end method

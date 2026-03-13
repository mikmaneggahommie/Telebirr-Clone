.class public abstract Lcom/android/systemui/recents/RecentsSynchronizerActivity;
.super Landroid/app/Activity;
.source "RecentsSynchronizerActivity.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_FOLDING_STATE_CHANGED_INTENT:Ljava/lang/String; = "com.samsung.android.dualscreen.action.FOLDING_STATE_CHANGED"

.field private static final DEBUG:Z = false

.field public static final EXTRA_FOLDING_STATE:Ljava/lang/String; = "com.samsung.android.dualscreen.extra.FOLDING_STATE"

.field public static final HIDE_REASON_FOLDING:Ljava/lang/String; = "folding"

.field public static final HIDE_REASON_INITIALIZING:Ljava/lang/String; = "init"

.field public static final HIDE_REASON_LAUNCHED_FROM_COUPLEDTASK:Ljava/lang/String; = "launchedFromCoupledTask"

.field public static final HIDE_REASON_LAUNCHED_FROM_HOME:Ljava/lang/String; = "launchedFromHome"

.field public static final HIDE_REASON_NO_RECENT_TASKS:Ljava/lang/String; = "noRecentTasks"

.field public static final HIDE_REASON_SCROLLING:Ljava/lang/String; = "scrolling"

.field public static final HIDE_REASON_TASK_DISMISSED:Ljava/lang/String; = "topTaskDismissed"

.field public static final HIDE_REASON_TASK_VISIBLERANGE:Ljava/lang/String; = "visibleRange"

.field protected static final LAUNCH_EXPAND_HOME:I = 0x0

.field protected static final LAUNCH_TASK:I = 0x1

.field public static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "Recents_SynchronizerActivity"

.field private static mFoldingReceiver:Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;

.field private static mIsFolding:Z

.field private static mIsTaskViewSnapped:Z

.field private static mRecentsActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/RecentsSynchronizerActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static mSwitchAppsHideRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsOrientationRequested:Z

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->SAFE_DEBUG:Z

    .line 48
    sput-boolean v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsFolding:Z

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mSwitchAppsHideRequesters:Ljava/util/ArrayList;

    .line 512
    sput-boolean v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsTaskViewSnapped:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    .line 58
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsFolding:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 33
    sput-boolean p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsFolding:Z

    return p0
.end method

.method protected static registerRecentsActivity(ILcom/android/systemui/recents/RecentsSynchronizerActivity;)V
    .locals 2
    .param p0, "displayId"    # I
    .param p1, "instance"    # Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .prologue
    .line 97
    sget-object v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private requestOrientation(ILandroid/app/Activity;)V
    .locals 1
    .param p1, "mainRot"    # I
    .param p2, "target"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x1

    .line 141
    packed-switch p1, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 146
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 149
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 152
    :pswitch_3
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected static unregisterRecentsActivity(I)V
    .locals 2
    .param p0, "displayId"    # I

    .prologue
    .line 103
    sget-object v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 105
    monitor-exit v1

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected clearSwitchAppsCondition(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 573
    sget-object v2, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mSwitchAppsHideRequesters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 574
    sget-object v2, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mSwitchAppsHideRequesters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 575
    .local v1, "reason":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    sget-object v2, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mSwitchAppsHideRequesters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 573
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 579
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsTaskViewSnapped:Z

    .line 580
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performDismiss()V

    .line 399
    return-void
.end method

.method protected dismissRecentsToFocusedTaskOrHome(Z)Z
    .locals 1
    .param p1, "checkFilteredStackState"    # Z

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->dismissRecentsToFocusedTaskOrHome(ZZ)Z

    move-result v0

    return v0
.end method

.method protected dismissRecentsToFocusedTaskOrHome(ZZ)Z
    .locals 1
    .param p1, "checkFilteredStackState"    # Z
    .param p2, "blockToEnterFocusedTask"    # Z

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performDismissRecentsToFocusedTaskOrHome(ZZZ)Z

    move-result v0

    return v0
.end method

.method protected finishByCloseAllButton()V
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performDismissRecentsToCloseAll(Z)V

    .line 481
    return-void
.end method

.method isAllTaskRemoved()Z
    .locals 14

    .prologue
    .line 300
    sget-object v12, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v12

    .line 301
    :try_start_0
    sget-object v11, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v11, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_2

    .line 302
    const-string v11, "display"

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 303
    .local v4, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 304
    .local v3, "displays":[Landroid/view/Display;
    move-object v1, v3

    .local v1, "arr$":[Landroid/view/Display;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v2, v1, v6

    .line 305
    .local v2, "display":Landroid/view/Display;
    sget-object v11, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 306
    .local v0, "activity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-eqz v0, :cond_1

    .line 307
    check-cast v0, Lcom/android/systemui/recents/RecentsActivity;

    .end local v0    # "activity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    iget-object v10, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    .line 308
    .local v10, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    if-eqz v10, :cond_1

    .line 309
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 310
    .local v8, "numStacks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v8, :cond_1

    .line 311
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/TaskStack;

    .line 312
    .local v9, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-eqz v11, :cond_0

    .line 313
    const/4 v11, 0x0

    monitor-exit v12

    .line 320
    .end local v1    # "arr$":[Landroid/view/Display;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displays":[Landroid/view/Display;
    .end local v4    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "numStacks":I
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    :goto_2
    return v11

    .line 310
    .restart local v1    # "arr$":[Landroid/view/Display;
    .restart local v2    # "display":Landroid/view/Display;
    .restart local v3    # "displays":[Landroid/view/Display;
    .restart local v4    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v5    # "i":I
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "numStacks":I
    .restart local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 304
    .end local v5    # "i":I
    .end local v8    # "numStacks":I
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "arr$":[Landroid/view/Display;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displays":[Landroid/view/Display;
    .end local v4    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    const/4 v11, 0x1

    monitor-exit v12

    goto :goto_2

    .line 321
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method protected moveTaskToBack(ZZ)Z
    .locals 1
    .param p1, "nonRoot"    # Z
    .param p2, "needToSync"    # Z

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->moveTaskToBack(Z)Z

    move-result v0

    return v0
.end method

.method protected abstract moveTopTask()V
.end method

.method protected notifyLaunchingState(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "currentDisplayId"    # I

    .prologue
    .line 193
    return-void
.end method

.method public onAllTaskViewsDismissed()V
    .locals 0

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performAllTaskViewsDismissed()V

    .line 297
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "tv"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performTaskViewClicked()V

    .line 267
    return-void
.end method

.method public onTaskViewFocusSwitched(IZ)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "onlyFocusChanged"    # Z

    .prologue
    .line 440
    return-void
.end method

.method public onTaskViewMoved()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method protected abstract performAllTaskViewsDismissed()V
.end method

.method protected abstract performDismiss()V
.end method

.method protected abstract performDismissRecentsToCloseAll(Z)V
.end method

.method protected abstract performDismissRecentsToFocusedTaskOrHome(ZZ)Z
.end method

.method protected abstract performDismissRecentsToFocusedTaskOrHome(ZZZ)Z
.end method

.method protected abstract performTaskViewClicked()V
.end method

.method protected registerFoldingReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    sget-object v2, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 77
    :try_start_0
    sget-object v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mFoldingReceiver:Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;-><init>(Lcom/android/systemui/recents/RecentsSynchronizerActivity;)V

    sput-object v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mFoldingReceiver:Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.dualscreen.action.FOLDING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mFoldingReceiver:Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit v2

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract requestFocusNextTask()V
.end method

.method protected requestOrientationSync(ILcom/android/systemui/recents/RecentsSynchronizerActivity;)V
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "instance"    # Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 109
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    if-nez v6, :cond_0

    const-string v6, "window"

    invoke-virtual {p2, v6}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    .line 110
    :cond_0
    if-eqz p1, :cond_2

    .line 111
    sget-object v6, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 112
    .local v3, "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-eqz v3, :cond_1

    .line 115
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    iget v4, v6, Landroid/content/res/Configuration;->orientation:I

    .line 116
    .local v4, "mainOrienation":I
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    iget v5, v6, Landroid/content/res/Configuration;->orientation:I

    .line 117
    .local v5, "subOrientation":I
    if-eq v4, v5, :cond_1

    .line 118
    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    .line 119
    iget-object v6, v3, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-direct {p0, v6, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->requestOrientation(ILandroid/app/Activity;)V

    .line 137
    .end local v3    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    .end local v4    # "mainOrienation":I
    .end local v5    # "subOrientation":I
    :cond_1
    return-void

    .line 122
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 123
    sget-object v6, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 125
    .local v0, "N":I
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    iget v4, v6, Landroid/content/res/Configuration;->orientation:I

    .line 126
    .restart local v4    # "mainOrienation":I
    move v5, v4

    .line 127
    .restart local v5    # "subOrientation":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 128
    sget-object v6, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    sget-object v7, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 130
    .local v1, "activity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    iget v5, v6, Landroid/content/res/Configuration;->orientation:I

    .line 131
    if-eq v4, v5, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 132
    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    .line 133
    iget-object v6, p2, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->requestOrientation(ILandroid/app/Activity;)V

    .line 127
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method requestUpdateRecentsLayout(I)V
    .locals 22
    .param p1, "screenState"    # I

    .prologue
    .line 325
    sget-object v21, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v21

    .line 326
    :try_start_0
    const-string v19, "display"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/DisplayManager;

    .line 327
    .local v8, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v7

    .line 328
    .local v7, "displays":[Landroid/view/Display;
    const/4 v4, 0x1

    .line 329
    .local v4, "allTaskRemoved":Z
    const/4 v13, 0x1

    .line 330
    .local v13, "mainTaskRemoved":Z
    const/16 v18, 0x1

    .line 332
    .local v18, "subTaskRemoved":Z
    move-object v5, v7

    .local v5, "arr$":[Landroid/view/Display;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_3

    aget-object v6, v5, v10

    .line 333
    .local v6, "display":Landroid/view/Display;
    sget-object v19, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 334
    .local v3, "activity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-eqz v3, :cond_2

    .line 335
    check-cast v3, Lcom/android/systemui/recents/RecentsActivity;

    .end local v3    # "activity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    iget-object v0, v3, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 336
    .local v16, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    if-eqz v16, :cond_2

    .line 337
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 338
    .local v14, "numStacks":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v14, :cond_2

    .line 339
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/TaskStack;

    .line 340
    .local v15, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v19

    if-eqz v19, :cond_0

    .line 341
    const/4 v4, 0x0

    .line 342
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v19

    if-nez v19, :cond_1

    .line 343
    const/4 v13, 0x0

    .line 338
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 344
    :cond_1
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 345
    const/16 v18, 0x0

    goto :goto_2

    .line 332
    .end local v9    # "i":I
    .end local v14    # "numStacks":I
    .end local v15    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v16    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 357
    .end local v6    # "display":Landroid/view/Display;
    :cond_3
    sget-object v19, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 358
    .local v12, "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    sget-object v19, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    .line 359
    .local v17, "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 360
    if-eqz v12, :cond_5

    .line 361
    check-cast v12, Lcom/android/systemui/recents/RecentsActivity;

    .end local v12    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-nez v4, :cond_4

    if-eqz v13, :cond_7

    :cond_4
    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_3
    if-nez v4, :cond_8

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsLayout(ZZ)V

    .line 363
    :cond_5
    if-eqz v17, :cond_6

    .line 364
    check-cast v17, Lcom/android/systemui/recents/RecentsActivity;

    .end local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-nez v4, :cond_9

    if-eqz v18, :cond_9

    const/16 v19, 0x1

    :goto_5
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsLayout(ZZ)V

    .line 375
    :cond_6
    :goto_6
    monitor-exit v21

    .line 376
    return-void

    .line 361
    .restart local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    :cond_7
    const/16 v19, 0x0

    move/from16 v20, v19

    goto :goto_3

    :cond_8
    const/16 v19, 0x0

    goto :goto_4

    .line 364
    .end local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    :cond_9
    const/16 v19, 0x0

    goto :goto_5

    .line 366
    .restart local v12    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    .restart local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    :cond_a
    if-nez p1, :cond_c

    .line 367
    if-eqz v12, :cond_6

    .line 368
    check-cast v12, Lcom/android/systemui/recents/RecentsActivity;

    .end local v12    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-nez v13, :cond_b

    const/16 v19, 0x1

    :goto_7
    move/from16 v0, v19

    invoke-virtual {v12, v13, v0}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsLayout(ZZ)V

    goto :goto_6

    .line 375
    .end local v4    # "allTaskRemoved":Z
    .end local v5    # "arr$":[Landroid/view/Display;
    .end local v7    # "displays":[Landroid/view/Display;
    .end local v8    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "mainTaskRemoved":Z
    .end local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    .end local v18    # "subTaskRemoved":Z
    :catchall_0
    move-exception v19

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 368
    .restart local v4    # "allTaskRemoved":Z
    .restart local v5    # "arr$":[Landroid/view/Display;
    .restart local v7    # "displays":[Landroid/view/Display;
    .restart local v8    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "mainTaskRemoved":Z
    .restart local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    .restart local v18    # "subTaskRemoved":Z
    :cond_b
    const/16 v19, 0x0

    goto :goto_7

    .line 370
    .restart local v12    # "mainActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    :cond_c
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 371
    if-eqz v17, :cond_6

    .line 372
    :try_start_1
    check-cast v17, Lcom/android/systemui/recents/RecentsActivity;

    .end local v17    # "subActivity":Lcom/android/systemui/recents/RecentsSynchronizerActivity;
    if-nez v18, :cond_d

    const/16 v19, 0x1

    :goto_8
    invoke-virtual/range {v17 .. v19}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsLayout(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_d
    const/16 v19, 0x0

    goto :goto_8
.end method

.method protected resetRequestedOrientationIfNeeded()V
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    .line 160
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->setRequestedOrientation(I)V

    .line 162
    :cond_0
    return-void
.end method

.method protected abstract setSwitchAppsVisibility(I)V
.end method

.method protected abstract startSwitchAppsAnimation()V
.end method

.method protected switchAppsClicked()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method protected unregisterFoldingReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    sget-object v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mFoldingReceiver:Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mFoldingReceiver:Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mFoldingReceiver:Lcom/android/systemui/recents/RecentsSynchronizerActivity$FoldingReceiver;

    .line 92
    :cond_0
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSwitchAppsVisibility(Ljava/lang/String;I)I
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "visibility"    # I

    .prologue
    .line 569
    const/16 v0, 0x8

    return v0
.end method

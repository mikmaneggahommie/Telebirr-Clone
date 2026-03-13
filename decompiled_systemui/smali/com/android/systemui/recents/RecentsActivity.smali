.class public Lcom/android/systemui/recents/RecentsActivity;
.super Lcom/android/systemui/recents/RecentsSynchronizerActivity;
.source "RecentsActivity.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
.implements Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
.implements Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;
    }
.end annotation


# static fields
.field private static final ANDROID_INTERNAL_PKGNAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final DELAY_TRIM_MEMORY:I = 0x1388

.field static final PREFERENCE_HELP_DIALOG_CHECKED:Ljava/lang/String; = "recent_menukey_dialog_do_not_show"

.field static final PREFERENCE_RECENTS_NAME:Ljava/lang/String; = "preference_recents"

.field private static mScreenPinningRequestDialog:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

.field private static mScreenPinningRequestSubDialog:Lcom/android/systemui/recents/ScreenPinningRequestDialog;


# instance fields
.field private BASE_THUMBNAIL_SIZE_DP:I

.field private DELAY_SHOW_HELP_DIALOG:I

.field public TAG:Ljava/lang/String;

.field mAfterPauseRunnable:Ljava/lang/Runnable;

.field private mAnimationStartedRunnable:Ljava/lang/Runnable;

.field mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mDebugOverlayStub:Landroid/view/ViewStub;

.field final mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

.field private mDensityDpi:I

.field public mDisplayId:I

.field private mEmptyTextShadowDistance:F

.field private mEmptyTextShadowOpacity:F

.field private mEmptyTextShadowSize:F

.field private mEmptyTextStrokeOpacity:F

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field mFinishByCloseAllRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

.field mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

.field private mForceAnimation:Z

.field private mHandler:Landroid/os/Handler;

.field private mHelpDialog:Landroid/app/AlertDialog;

.field private mHelpShowRunnable:Ljava/lang/Runnable;

.field private mIsLaunchingExpandHome:Z

.field private mIsLaunchingTask:Z

.field mLastTabKeyEventTime:J

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowSettingObserver:Landroid/database/ContentObserver;

.field final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field mPrevSystemRendererDisabled:Z

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

.field mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field mSearchWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

.field mSearchWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field protected mSwitchAppsButton:Landroid/widget/ImageView;

.field private mSwitchAppsMargin:I

.field private mSwitchAppsSmallestWidth:I

.field private mSwitchAppsWidth:I

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mThumbnailSizeDp:I

.field private mTrimMemoryRunnable:Ljava/lang/Runnable;

.field private muPowerSavingModeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;-><init>()V

    .line 125
    const-string v0, "Recents_RecentsActivity"

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    .line 169
    const/16 v0, 0xc0

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->BASE_THUMBNAIL_SIZE_DP:I

    .line 173
    iput v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayId:I

    .line 174
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsLaunchingExpandHome:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsLaunchingTask:Z

    .line 187
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    .line 192
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    .line 193
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 194
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    .line 199
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->DELAY_SHOW_HELP_DIALOG:I

    .line 203
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrevSystemRendererDisabled:Z

    .line 334
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 396
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 439
    new-instance v0, Lcom/android/systemui/recents/misc/DebugTrigger;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/DebugTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    .line 1801
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$12;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    .line 1807
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$13;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAnimationStartedRunnable:Ljava/lang/Runnable;

    .line 1817
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$14;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpShowRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceAnimation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/recents/RecentsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/RecentsActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAnimationStartedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/RecentsActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getResizeTaskDebugDialog()Lcom/android/systemui/recents/RecentsResizeTaskDialog;
    .locals 2

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    if-nez v0, :cond_0

    .line 1432
    new-instance v0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;-><init>(Landroid/app/FragmentManager;Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    return-object v0
.end method

.method private isKnoxLauncherMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1908
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1909
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1910
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1912
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1913
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1914
    const/4 v3, 0x1

    .line 1916
    :cond_0
    return v3
.end method

.method private makeHelpDialog()V
    .locals 9

    .prologue
    const/16 v7, 0x8

    .line 1865
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v6, "makeHelpDialog"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1868
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0400cd

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1869
    .local v3, "mRecentPanelLayout":Landroid/view/View;
    const v4, 0x10302d2

    .line 1870
    .local v4, "theme":I
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0591

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1872
    .local v0, "helpTitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1873
    const v5, 0x7f0f03f0

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1874
    const v5, 0x7f0f03f1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1877
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    .line 1882
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0597

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/RecentsActivity$15;

    invoke-direct {v8, p0}, Lcom/android/systemui/recents/RecentsActivity$15;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1894
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1896
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 1897
    .local v2, "kgm":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1898
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1902
    :goto_0
    return-void

    .line 1900
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1614
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 1615
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$9;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$9;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    .line 1628
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1629
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "multi_window_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1638
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 1639
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$10;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$10;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    .line 1645
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1646
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1651
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_2

    .line 1652
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$11;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$11;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 1664
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1665
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1669
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_2
    return-void
.end method

.method private setStacks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1740
    .local p1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    .line 1741
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1672
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1676
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 1677
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1678
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    .line 1683
    :cond_0
    if-eqz v0, :cond_2

    .line 1684
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 1685
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1686
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->muPowerSavingModeObserver:Landroid/database/ContentObserver;

    .line 1689
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    .line 1690
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1691
    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 1694
    :cond_2
    return-void
.end method


# virtual methods
.method public clearDeferSurfaceDestroyFlag()V
    .locals 3

    .prologue
    .line 852
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v2, "clearWindowFlag is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v1, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 855
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    xor-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 856
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 858
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 2

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 1862
    :cond_0
    :goto_0
    return-void

    .line 1853
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismissHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1859
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method dismissRecentsToHome(Z)Z
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    .line 822
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissRecentsToHome, animated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 825
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 828
    const/4 v1, 0x1

    .line 830
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHomeRaw(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    .line 792
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissRecentsToHomeRaw, animated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissHelpDialog()V

    .line 796
    if-eqz p1, :cond_1

    .line 798
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableGatheredAnimToHome:Z

    if-eqz v1, :cond_0

    .line 799
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    .line 800
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0, p0, v4, v4, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 801
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 812
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 805
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v0, p0, v4, v1, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 807
    .restart local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    goto :goto_0

    .line 810
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method dismissRecentsToHomeWithoutTransitionAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 816
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 817
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/recents/RecentsActivity;->overridePendingTransition(II)V

    .line 818
    return-void
.end method

.method dismissRecentsToPreviousAppRaw(Lcom/android/systemui/recents/model/Task;)V
    .locals 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v3, 0x0

    .line 836
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v2, "dismissRecentsToPreviousAppRaw is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_0

    .line 838
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0, p0, v3, v3, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 839
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/recents/views/RecentsView;->startExitToPreviousAppAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;Lcom/android/systemui/recents/model/Task;)V

    .line 842
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :cond_0
    return-void
.end method

.method public dismissToApp(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismissToApp is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToPreviousAppRaw(Lcom/android/systemui/recents/model/Task;)V

    .line 848
    return-void
.end method

.method protected getOppositeLaunchingState(I)Z
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 1736
    const/4 v0, 0x0

    return v0
.end method

.method inflateDebugOverlay()V
    .locals 0

    .prologue
    .line 1042
    return-void
.end method

.method protected moveTopTask()V
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->moveTopTask()V

    .line 1745
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1030
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onAttachedToWindow()V

    .line 1031
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->twSetDrawDuringWindowsAnimating(Z)V

    .line 1034
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->UseRecentsSeparatedProcess:Z

    if-nez v0, :cond_0

    .line 1035
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrevSystemRendererDisabled:Z

    sput-boolean v0, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    .line 1037
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1399
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0
.end method

.method public onCloseAllButtonClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1519
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCloseAllButtonClicked is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllAnimation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1527
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v0, p0, v3, v1, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1529
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startCloseAllRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    .line 1534
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 1532
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 864
    invoke-super {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 865
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    .line 871
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    .line 873
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mDensityDpi:I

    .line 874
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mThumbnailSizeDp:I

    .line 885
    invoke-static {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 886
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 887
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v8}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 890
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 891
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x400

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 892
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 895
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v9, v9, 0x42

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 904
    sget-boolean v9, Lcom/android/systemui/recents/Constants$Features;->UseRecentsSeparatedProcess:Z

    if-nez v9, :cond_0

    .line 905
    sget-boolean v9, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrevSystemRendererDisabled:Z

    .line 906
    sput-boolean v11, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    .line 907
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x1000000

    or-int/2addr v9, v10

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 908
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 913
    const-string v9, "multiwindow_facade"

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 918
    new-instance v9, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    sget v10, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    .line 932
    new-instance v9, Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;-><init>(Landroid/content/Context;)V

    sput-object v9, Lcom/android/systemui/recents/RecentsActivity;->mScreenPinningRequestDialog:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    .line 937
    const v9, 0x7f040074

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    .line 938
    const v9, 0x7f0f0263

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 939
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9, p0}, Lcom/android/systemui/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    .line 940
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v10, 0x700

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 943
    const v9, 0x7f0f0264

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 962
    const v9, 0x7f0f0265

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlayStub:Landroid/view/ViewStub;

    .line 963
    new-instance v9, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 964
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 967
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v8, p0, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getOrBindSearchAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 970
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 971
    .local v0, "appListShadowDistance":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a04a5

    invoke-virtual {v9, v10, v0, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 972
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowDistance:F

    .line 974
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 975
    .local v1, "appListShadowOpacity":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a04a6

    invoke-virtual {v9, v10, v1, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 976
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowOpacity:F

    .line 978
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 979
    .local v2, "appListShadowSize":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0513

    invoke-virtual {v9, v10, v2, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 980
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowSize:F

    .line 982
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 983
    .local v3, "appListStrokeOpacity":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a04a4

    invoke-virtual {v9, v10, v3, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 984
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextStrokeOpacity:F

    .line 987
    new-instance v9, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v9, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 988
    new-instance v9, Lcom/android/systemui/recents/RecentsActivity$7;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/RecentsActivity$7;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 1000
    sget-boolean v9, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsButtonsLayout:Z

    if-eqz v9, :cond_1

    .line 1001
    const v9, 0x7f0f0267

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1002
    .local v4, "buttonContainer":Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9, v4}, Lcom/android/systemui/recents/views/RecentsView;->setRecentsBottomContainerView(Landroid/view/ViewGroup;)V

    .line 1005
    .end local v4    # "buttonContainer":Landroid/view/ViewGroup;
    :cond_1
    sget-boolean v9, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-eqz v9, :cond_2

    .line 1006
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1007
    .local v7, "pkgFilter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1008
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1009
    const-string v9, "package"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1010
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v7}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1015
    .end local v7    # "pkgFilter":Landroid/content/IntentFilter;
    :cond_2
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1016
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1018
    const/16 v9, 0x3ea

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1020
    const-string v9, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1021
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v5}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1023
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->registerContentObserver()V

    .line 1025
    return-void
.end method

.method public onDebugModeTriggered()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v0, :cond_1

    .line 1405
    const-string v0, "debugModeEnabled"

    invoke-static {p0, v0, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1407
    const-string v0, "debugModeEnabled"

    invoke-static {p0, v0}, Lcom/android/systemui/Prefs;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 1409
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->disable()V

    .line 1422
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Debug mode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/recents/Constants$Values$App;->DebugModeVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_3

    const-string v0, "Enabled"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", please restart Recents now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1426
    :cond_1
    return-void

    .line 1415
    :cond_2
    const-string v0, "debugModeEnabled"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1416
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 1417
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 1418
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->enable()V

    goto :goto_0

    .line 1422
    :cond_3
    const-string v0, "Disabled"

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1282
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onDestroy()V

    .line 1283
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1288
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterContentObserver()V

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->stopListening()V

    .line 1300
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1304
    :cond_0
    return-void
.end method

.method public onEnterAnimationTriggered()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1308
    new-instance v2, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v2, p0, v3, v3, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1309
    .local v2, "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1310
    .local v1, "ctx":Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 1312
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_0

    .line 1313
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1316
    .local v0, "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    iget-object v3, v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v4, Lcom/android/systemui/recents/RecentsActivity$8;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/recents/RecentsActivity$8;-><init>(Lcom/android/systemui/recents/RecentsActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 1329
    .end local v0    # "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V

    .line 1330
    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startExitRecentsAnimation()V

    .line 1448
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1342
    sparse-switch p1, :sswitch_data_0

    .line 1383
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/misc/DebugTrigger;->onKeyEvent(I)V

    .line 1384
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .line 1344
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v1, v2

    .line 1346
    .local v1, "hasRepKeyTimeElapsed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_2

    if-eqz v1, :cond_1

    .line 1348
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 1349
    .local v0, "backward":Z
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-nez v0, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    .line 1350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    goto :goto_0

    .end local v0    # "backward":Z
    .end local v1    # "hasRepKeyTimeElapsed":Z
    :cond_4
    move v1, v3

    .line 1344
    goto :goto_1

    .line 1365
    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/RecentsView;->onKeyDown(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1373
    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->dismissFocusedTask()V

    .line 1375
    const-string v4, "overview_task_dismissed_source"

    invoke-static {p0, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1342
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x3d -> :sswitch_0
        0x43 -> :sswitch_2
        0x70 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1054
    invoke-super {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->setIntent(Landroid/content/Intent;)V

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->clear()V

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 1071
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1206
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onPause()V

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAfterPauseRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mAfterPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 1211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAfterPauseRunnable:Ljava/lang/Runnable;

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 1218
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v0, :cond_1

    .line 1219
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->removeExitAnimationHandler()V

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 1224
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 1228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceAnimation:Z

    .line 1229
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mAnimationStartedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1231
    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 1604
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/high16 v5, 0x100000

    const/4 v4, 0x0

    .line 1142
    iget v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDensityDpi:I

    const/16 v2, 0x1e0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mThumbnailSizeDp:I

    iget v2, p0, Lcom/android/systemui/recents/RecentsActivity;->BASE_THUMBNAIL_SIZE_DP:I

    if-le v1, v2, :cond_0

    .line 1144
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thumbnail size is too big"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mThumbnailSizeDp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const-string v1, "Thumbnail size is too big"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1150
    :cond_0
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v1, :cond_1

    .line 1151
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1152
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1153
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1156
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onResume()V

    .line 1157
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    .line 1173
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 1176
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->uPowerSavingModeEnabled:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isKnoxLauncherMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1177
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 1182
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 1184
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    if-eqz v1, :cond_3

    .line 1185
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 1186
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks()V

    .line 1189
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->showHelpDialog()V

    .line 1192
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mAfterPauseRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 1193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mAfterPauseRunnable:Ljava/lang/Runnable;

    .line 1198
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mAnimationStartedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1199
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mAnimationStartedRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1201
    return-void

    .line 1179
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public onScreenPinningRequest(Lcom/android/systemui/recents/model/Task;)V
    .locals 7
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/high16 v6, 0x800000

    const/4 v4, 0x1

    .line 1480
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 1481
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 1485
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 1486
    .local v3, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v3, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1487
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v5, "onScreenPinningRequest - topActivity is Recents"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :goto_0
    return-void

    .line 1492
    :cond_0
    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    move v0, v4

    .line 1504
    .local v0, "isExcluded":Z
    :goto_1
    sget-object v5, Lcom/android/systemui/recents/RecentsActivity;->mScreenPinningRequestDialog:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->showPrompt(Ljava/lang/String;Z)V

    .line 1508
    const-string v5, "overview_screen_pinned"

    invoke-static {p0, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1492
    .end local v0    # "isExcluded":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 1609
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1075
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onStart()V

    .line 1076
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v6, "onStart"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/16 v5, 0xe0

    invoke-static {p0, v5}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 1079
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 1080
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 1081
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v2, v3}, Lcom/android/systemui/recents/Recents;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 1084
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1089
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v5, Lcom/android/systemui/recents/RecentsConfiguration;->isScreenOff:Z

    .line 1106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1107
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v5, "action_hide_recents_activity"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1108
    const-string v5, "action_toggle_recents_activity"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1112
    const-string v5, "action_start_enter_animation"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1117
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1120
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p0, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 1123
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks()V

    .line 1128
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-nez v5, :cond_3

    .line 1129
    .local v3, "wasLaunchedByAm":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationTriggered()V

    .line 1133
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-nez v4, :cond_2

    .line 1134
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->disableLayersForOneFrame()V

    .line 1136
    :cond_2
    return-void

    .end local v3    # "wasLaunchedByAm":Z
    :cond_3
    move v3, v4

    .line 1128
    goto :goto_0
.end method

.method protected onStop()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1235
    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onStop()V

    .line 1236
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v3, "onStop"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/16 v2, 0xe0

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 1239
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1240
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 1241
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v1, v4}, Lcom/android/systemui/recents/Recents;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 1244
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 1247
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 1248
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 1249
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1253
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1256
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    .line 1268
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 1271
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissHelpDialog()V

    .line 1278
    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 1

    .prologue
    .line 1464
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 1465
    return-void
.end method

.method public onTaskResize(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResizeTaskDebugDialog()Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->showResizeTaskDialog(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/RecentsView;)V

    .line 1440
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1334
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1335
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 1338
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->onUserInteraction()V

    .line 1390
    return-void
.end method

.method public performAllTaskViewsDismissed()V
    .locals 2

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onAllTaskViewsDismissed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    .line 1476
    return-void
.end method

.method public performDismiss()V
    .locals 2

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->moveTaskToBack(Z)Z

    .line 1552
    return-void
.end method

.method public performDismissRecentsToCloseAll(Z)V
    .locals 4
    .param p1, "toRight"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1562
    const/4 v0, 0x0

    .line 1563
    .local v0, "blockFinishRunnableAnim":Z
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1564
    const/4 v0, 0x1

    .line 1567
    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v2, :cond_1

    .line 1568
    new-instance v1, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v1, p0, v3, v2, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1570
    .local v1, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v3, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;

    invoke-direct {v3, v1, p1}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->startCloseAllRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    .line 1575
    .end local v1    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 1573
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method public performDismissRecentsToFocusedTaskOrHome(ZZ)Z
    .locals 1
    .param p1, "checkFilteredStackState"    # Z
    .param p2, "forceLaunch"    # Z

    .prologue
    .line 718
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/RecentsActivity;->performDismissRecentsToFocusedTaskOrHome(ZZZ)Z

    move-result v0

    return v0
.end method

.method public performDismissRecentsToFocusedTaskOrHome(ZZZ)Z
    .locals 10
    .param p1, "checkFilteredStackState"    # Z
    .param p2, "forceLaunch"    # Z
    .param p3, "blockToEnterFocusedTask"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 724
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v8, "dismissRecentsToFocusedTaskOrHome"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 727
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayId:I

    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p2, :cond_1

    .line 730
    :cond_0
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/RecentsView;->unfilterFilteredStacks()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 787
    :cond_1
    :goto_0
    return v5

    .line 743
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    goto :goto_0

    .line 746
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowSettingEnabled:Z

    if-eqz v7, :cond_5

    .line 748
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v8, 0xa

    const/16 v9, 0xb

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v4

    .line 751
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 752
    .local v2, "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v7, :cond_4

    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 753
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/RecentsActivity;->moveTaskToBack(Z)Z

    move v5, v6

    .line 754
    goto :goto_0

    .line 761
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v7, :cond_6

    .line 762
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    move v5, v6

    .line 763
    goto :goto_0

    .line 768
    :cond_6
    new-instance v1, Landroid/util/MutableBoolean;

    invoke-direct {v1, v5}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 769
    .local v1, "launchedFromMW":Landroid/util/MutableBoolean;
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7, v1}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask(Landroid/util/MutableBoolean;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 775
    iget-boolean v7, v1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v7, :cond_7

    .line 776
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/RecentsActivity;->moveTaskToBack(Z)Z

    :cond_7
    move v5, v6

    .line 780
    goto :goto_0

    .line 784
    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    move v5, v6

    .line 785
    goto :goto_0
.end method

.method public performTaskViewClicked()V
    .locals 2

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissHelpDialog()V

    .line 1459
    return-void
.end method

.method public refreshSearchWidgetView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1582
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_0

    .line 1583
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 1584
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v2, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSearchAppWidgetId(Landroid/content/Context;)I

    move-result v1

    .line 1585
    .local v1, "searchWidgetId":I
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, p0, v1, v4}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    .line 1587
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1588
    .local v0, "opts":Landroid/os/Bundle;
    const-string v3, "appWidgetCategory"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1590
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 1592
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v3, v5, v5, v5, v5}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->setPadding(IIII)V

    .line 1593
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBar(Lcom/android/systemui/recents/RecentsAppWidgetHostView;)V

    .line 1597
    .end local v0    # "opts":Landroid/os/Bundle;
    .end local v1    # "searchWidgetId":I
    .end local v2    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :goto_0
    return-void

    .line 1595
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBar(Lcom/android/systemui/recents/RecentsAppWidgetHostView;)V

    goto :goto_0
.end method

.method protected requestFocusNextTask()V
    .locals 0

    .prologue
    .line 1705
    return-void
.end method

.method public requestUpdateRecentsLayout()V
    .locals 2

    .prologue
    .line 1794
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 1796
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getMultipleScreenState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->requestUpdateRecentsLayout(I)V

    .line 1797
    return-void
.end method

.method public runAfterPause(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity;->mAfterPauseRunnable:Ljava/lang/Runnable;

    .line 1514
    return-void
.end method

.method protected setOppositeLaunchingState(IZ)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "isLaunching"    # Z

    .prologue
    .line 1719
    return-void
.end method

.method protected setSwitchAppsVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 1783
    return-void
.end method

.method public showHelpDialog()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1829
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1846
    :cond_0
    :goto_0
    return-void

    .line 1834
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1838
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const-string v2, "preference_recents"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1839
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "recent_menukey_dialog_do_not_show"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1843
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->makeHelpDialog()V

    .line 1844
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1845
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpShowRunnable:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/systemui/recents/RecentsActivity;->DELAY_SHOW_HELP_DIALOG:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected startSwitchAppsAnimation()V
    .locals 0

    .prologue
    .line 1790
    return-void
.end method

.method updateRecentsLayout(ZZ)V
    .locals 2
    .param p1, "showEmptyText"    # Z
    .param p2, "showCloseAll"    # Z

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 704
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/RecentsView;->updateCloseAllButtonVisibility(Z)V

    .line 710
    :cond_2
    return-void

    .line 704
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method updateRecentsTasks()V
    .locals 22

    .prologue
    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "updateRecentsTasks"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    .line 456
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v14

    .line 464
    .local v14, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v15

    .line 467
    .local v15, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v15, :cond_0

    .line 468
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v15

    .line 472
    :cond_0
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v3

    if-nez v3, :cond_1

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v4

    invoke-virtual {v14, v15, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZI)V

    .line 482
    :cond_1
    new-instance v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 483
    .local v13, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    iput v3, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    iput v3, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    iput v3, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 486
    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 488
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v17

    .line 490
    .local v17, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->setStacks(Ljava/util/ArrayList;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v15}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v3, :cond_2

    .line 494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    .line 498
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v9, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 518
    .local v9, "homeIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const/high16 v3, 0x10200000

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 524
    const/4 v8, 0x0

    .line 525
    .local v8, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    sget-boolean v3, Lcom/android/systemui/recents/Constants$Features;->EnableGatheredAnimToHome:Z

    if-eqz v3, :cond_3

    .line 526
    new-instance v8, Lcom/android/systemui/recents/RecentsActivity$5;

    .end local v8    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/systemui/recents/RecentsActivity$5;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    .line 543
    .restart local v8    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_3
    new-instance v5, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    if-eqz v3, :cond_6

    const v3, 0x7f05008a

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    if-eqz v4, :cond_7

    const v4, 0x7f05008b

    :goto_2
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v6, v8}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v9, v3}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    .line 552
    new-instance v3, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    const v4, 0x7f050085

    const v5, 0x7f050088

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9, v4}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    .line 559
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 560
    .local v20, "taskStackCount":I
    const/4 v12, 0x0

    .line 561
    .local v12, "launchTaskIndexInStack":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    .line 562
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move/from16 v0, v20

    if-ge v10, v0, :cond_9

    .line 563
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/recents/model/TaskStack;

    .line 564
    .local v16, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v21

    .line 565
    .local v21, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 566
    .local v19, "taskCount":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    move/from16 v0, v19

    if-ge v11, v0, :cond_4

    .line 567
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/model/Task;

    .line 568
    .local v18, "t":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    if-ne v3, v4, :cond_8

    .line 569
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 570
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v11

    add-int/lit8 v12, v3, -0x1

    .line 562
    .end local v18    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 492
    .end local v8    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v9    # "homeIntent":Landroid/content/Intent;
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v12    # "launchTaskIndexInStack":I
    .end local v16    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v19    # "taskCount":I
    .end local v20    # "taskStackCount":I
    .end local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 543
    .restart local v8    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .restart local v9    # "homeIntent":Landroid/content/Intent;
    :cond_6
    const v3, 0x7f050084

    goto/16 :goto_1

    :cond_7
    const v4, 0x7f050087

    goto :goto_2

    .line 566
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v12    # "launchTaskIndexInStack":I
    .restart local v16    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v18    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v19    # "taskCount":I
    .restart local v20    # "taskStackCount":I
    .restart local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 612
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v16    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v18    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v19    # "taskCount":I
    .end local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v3, :cond_d

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "launched with no recent tasks"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-nez v3, :cond_a

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    .line 623
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const v4, 0x7f0f0276

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 636
    .local v2, "emptyTextView":Landroid/widget/TextView;
    if-eqz v2, :cond_b

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->needDarkFont:Z

    if-eqz v3, :cond_c

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 640
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 641
    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowDistance:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowSize:F

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowOpacity:F

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 668
    .end local v2    # "emptyTextView":Landroid/widget/TextView;
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->onToggleRecentsBottomContainer(Z)V

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation()V

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    if-eqz v3, :cond_10

    .line 676
    const-string v3, "overview_trigger_alttab"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 681
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v3, :cond_11

    .line 682
    const-string v3, "overview_source_app"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 684
    const-string v3, "overview_source_app_index"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v12}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 689
    :goto_7
    const/16 v19, 0x0

    .line 690
    .restart local v19    # "taskCount":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_12

    .line 691
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/recents/model/TaskStack;

    .line 692
    .restart local v16    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    add-int v19, v19, v3

    .line 690
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 644
    .end local v10    # "i":I
    .end local v16    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v19    # "taskCount":I
    .restart local v2    # "emptyTextView":Landroid/widget/TextView;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 646
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 647
    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowDistance:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowSize:F

    const/high16 v6, -0x1000000

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyTextShadowOpacity:F

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto :goto_5

    .line 653
    .end local v2    # "emptyTextView":Landroid/widget/TextView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_e

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 656
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->hasValidSearchBar()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto/16 :goto_5

    .line 659
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->refreshSearchWidgetView()V

    goto/16 :goto_5

    .line 678
    :cond_10
    const-string v3, "overview_trigger_nav_btn"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 686
    :cond_11
    const-string v3, "overview_source_home"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 694
    .restart local v10    # "i":I
    .restart local v19    # "taskCount":I
    :cond_12
    const-string v3, "overview_task_count"

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 695
    return-void
.end method

.method protected updateSwitchAppsLayout()V
    .locals 0

    .prologue
    .line 1777
    return-void
.end method

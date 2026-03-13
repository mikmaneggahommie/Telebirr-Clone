.class public Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"


# static fields
.field private static final HIDE_TIMING_CORRECTION_MS:J = -0x30L

.field private static final NAV_BAR_SHOW_DELAY_BOUNCER:J = 0x140L

.field private static TAG:Ljava/lang/String; = null

.field private static final USE_SEC_BOUNCER_CONCEPT:Z = true


# instance fields
.field private mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

.field private mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mDeferScrimFadeOut:Z

.field private mDeviceInteractive:Z

.field private mDeviceWillWakeUp:Z

.field private mFirstUpdate:Z

.field private mIsBootCompleted:Z

.field private mIsWaitingForBootComplete:Z

.field private mLastBouncerDismissible:Z

.field private mLastBouncerShowing:Z

.field private mLastDeferScrimFadeOut:Z

.field private mLastOccluded:Z

.field private mLastShowing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

.field private mNeedAnimation:Z

.field private mOccluded:Z

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private mScreenTurnedOn:Z

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mShowing:Z

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mSubPhoneStatusBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

.field private mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

.field private mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mWakeAndUnlocking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "StatusBarKeyguardViewManager"

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 117
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 118
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsWaitingForBootComplete:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsBootCompleted:Z

    .line 122
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 679
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    .line 839
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNeedAnimation:Z

    .line 239
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    .line 240
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 241
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 243
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerMascotReceiver()V

    .line 248
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsWaitingForBootComplete:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsWaitingForBootComplete:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    return-object v0
.end method

.method private animateScrimControllerKeyguardFadingOut(JJ)V
    .locals 7
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 576
    const-wide/16 v0, 0x8

    const-string v2, "Fading out"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 577
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateKeyguardFadingOut(JJLjava/lang/Runnable;)V

    .line 590
    return-void
.end method

.method private executeAfterKeyguardGoneAction()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 597
    :cond_0
    return-void
.end method

.method private getNavBarShowDelay()J
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    .line 675
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x140

    goto :goto_0
.end method

.method private registerMascotReceiver()V
    .locals 5

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 223
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private showBouncer()V
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 340
    return-void
.end method

.method private showBouncerOrKeyguard()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showKeyguard()V

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    .line 333
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    goto :goto_0
.end method

.method private unregisterMascotReceiver()V
    .locals 4

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneStatusBar.unregisterReceiver(): exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateStates()V
    .locals 14

    .prologue
    .line 687
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v8

    .line 688
    .local v8, "vis":I
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 689
    .local v6, "showing":Z
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 690
    .local v5, "occluded":Z
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v1

    .line 691
    .local v1, "bouncerShowing":Z
    const/4 v0, 0x0

    .line 692
    .local v0, "bouncerDismissible":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeferScrimFadeOut:Z

    .line 694
    .local v2, "deferScrimFadeOut":Z
    if-nez v0, :cond_0

    if-nez v6, :cond_10

    :cond_0
    const/4 v9, 0x1

    :goto_0
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-nez v10, :cond_11

    :cond_1
    const/4 v10, 0x1

    :goto_1
    if-ne v9, v10, :cond_2

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v9, :cond_4

    .line 696
    :cond_2
    if-nez v0, :cond_3

    if-nez v6, :cond_12

    .line 697
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const v10, -0x400001

    and-int/2addr v10, v8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 705
    :cond_4
    :goto_2
    if-nez v2, :cond_13

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    if-eqz v1, :cond_13

    :cond_5
    const/4 v4, 0x1

    .line 706
    .local v4, "navBarVisible":Z
    :goto_3
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDeferScrimFadeOut:Z

    if-nez v9, :cond_14

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v9, :cond_6

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-eqz v9, :cond_14

    :cond_6
    const/4 v3, 0x1

    .line 708
    .local v3, "lastNavBarVisible":Z
    :goto_4
    if-ne v4, v3, :cond_7

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v9, :cond_8

    .line 709
    :cond_7
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 710
    if-eqz v4, :cond_15

    .line 711
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getNavBarShowDelay()J

    move-result-wide v12

    invoke-virtual {v9, v10, v12, v13}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 720
    :cond_8
    :goto_5
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v1, v9, :cond_9

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v9, :cond_a

    .line 721
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBouncerShowing(Z)V

    .line 722
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBouncerShowing(Z)V

    .line 723
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setBouncerShowing(Z)V

    .line 726
    :cond_a
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    .line 727
    .local v7, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    if-eqz v6, :cond_16

    if-nez v5, :cond_16

    const/4 v9, 0x1

    :goto_6
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v10, :cond_17

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v10, :cond_17

    const/4 v10, 0x1

    :goto_7
    if-ne v9, v10, :cond_b

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v9, :cond_c

    .line 728
    :cond_b
    if-eqz v6, :cond_18

    if-nez v5, :cond_18

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {v7, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardVisibilityChanged(Z)V

    .line 730
    :cond_c
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v1, v9, :cond_d

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v9, :cond_e

    .line 731
    :cond_d
    invoke-virtual {v7, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardBouncerChanged(Z)V

    .line 734
    :cond_e
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 735
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    .line 736
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    .line 737
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDeferScrimFadeOut:Z

    .line 739
    if-eqz v5, :cond_f

    .line 740
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNeedAnimationFlag(Z)V

    .line 742
    :cond_f
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    .line 743
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    .line 746
    return-void

    .line 694
    .end local v3    # "lastNavBarVisible":Z
    .end local v4    # "navBarVisible":Z
    .end local v7    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 699
    :cond_12
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const/high16 v10, 0x400000

    or-int/2addr v10, v8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto/16 :goto_2

    .line 705
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 706
    .restart local v4    # "navBarVisible":Z
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 714
    .restart local v3    # "lastNavBarVisible":Z
    :cond_15
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 715
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibility(I)V

    goto :goto_5

    .line 727
    .restart local v7    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_16
    const/4 v9, 0x0

    goto :goto_6

    :cond_17
    const/4 v10, 0x0

    goto :goto_7

    .line 728
    :cond_18
    const/4 v9, 0x0

    goto :goto_8
.end method


# virtual methods
.method public animateCollapsePanels(F)V
    .locals 0
    .param p1, "speedUpFactor"    # F

    .prologue
    .line 795
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceWillWakeUp:Z

    if-eqz v0, :cond_1

    .line 604
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer()V

    .line 606
    :cond_1
    return-void
.end method

.method public dismissIfInsecure()V
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    if-eqz v0, :cond_1

    .line 807
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dismissIfInsecure()V

    .line 810
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 812
    :cond_1
    return-void
.end method

.method public dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZ)V
    .locals 2
    .param p1, "r"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;
    .param p3, "afterKeyguardGone"    # Z
    .param p4, "dismissIfInsecure"    # Z

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 345
    if-nez p3, :cond_2

    .line 346
    if-eqz p4, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dismissIfInsecureWithDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V

    .line 360
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 361
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showWithDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 352
    :cond_2
    if-eqz p4, :cond_3

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dismissIfInsecure()V

    .line 357
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    goto :goto_0

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    goto :goto_1
.end method

.method public hide(JJ)V
    .locals 11
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 504
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 507
    .local v8, "uptimeMillis":J
    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x30

    add-long/2addr v6, p1

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 509
    .local v2, "delay":J
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInLaunchTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 572
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setKeyguardShowing(ZZ)V

    .line 573
    return-void

    .line 537
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v1, :cond_2

    .line 539
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideKeyguard(Z)Z

    move-result v0

    .line 540
    .local v0, "staying":Z
    if-nez v0, :cond_1

    .line 542
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v6, 0x0

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateKeyguardFadingOut(JJLjava/lang/Runnable;)V

    .line 559
    .end local v0    # "staying":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    .line 563
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 564
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardGone()V

    .line 565
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    .line 566
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    goto :goto_0

    .line 550
    .restart local v0    # "staying":Z
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setKeyguardFadingAway(JJ)V

    .line 551
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateGoingToFullShade(JJ)V

    .line 552
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishKeyguardFadingAway()V

    goto :goto_1

    .line 555
    .end local v0    # "staying":Z
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideKeyguard(Z)Z

    goto :goto_1
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isFmmLock()Z
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v0

    return v0
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isGoingToNotificationShade()Z

    move-result v0

    return v0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public isOccluded()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    return v0
.end method

.method public isPasswordLock()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isPasswordLockMode()Z

    move-result v0

    return v0
.end method

.method public isPatternLock()Z
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isPersoLock()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isPersoLockMode()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    return v0
.end method

.method public keyguardGoingAway()V
    .locals 0

    .prologue
    .line 788
    return-void
.end method

.method public needsFullscreenBouncer()Z
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 819
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v0

    .line 822
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz v1, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsShowClockandNotifications()Z

    move-result v0

    goto :goto_0
.end method

.method public notifyDeviceWakeUpRequested()V
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceWillWakeUp:Z

    .line 431
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyKeyguardAuthenticated()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->notifyKeyguardAuthenticated()V

    .line 803
    return-void
.end method

.method public onActivityDrawn()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 767
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 649
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateStackScrollerState(Z)V

    .line 651
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 657
    const/4 v0, 0x1

    .line 659
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onFinishedGoingToSleep()V
    .locals 2

    .prologue
    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onScreenTurnedOff()V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mSubPhoneStatusBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mSubPhoneStatusBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->onScreenTurnedOff()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onScreenTurnedOff()V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setScreenOnCallback(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;)Z

    .line 398
    return-void
.end method

.method protected onKeyguardPause()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onScreenTurnedOff()V

    .line 427
    return-void
.end method

.method protected onKeyguardResume()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onScreenTurnedOn()V

    .line 423
    return-void
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onMenuPressed()Z

    move-result v0

    return v0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenTurnedOn:Z

    .line 419
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenTurnedOn:Z

    .line 409
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWakeAndUnlocking:Z

    .line 410
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeferScrimFadeOut:Z

    if-eqz v0, :cond_0

    .line 411
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeferScrimFadeOut:Z

    .line 412
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xc8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJ)V

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 415
    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceWillWakeUp:Z

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onScreenTurnedOn()V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onScreenTurnedOn()V

    .line 405
    return-void
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 6
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "statusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p4, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 254
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    .line 255
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 256
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 257
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 259
    return-void
.end method

.method public registerSubStatusBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)V
    .locals 0
    .param p1, "subPhoneStatusBar"    # Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
    .param p2, "subStatusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    .prologue
    .line 263
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    .line 264
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mSubPhoneStatusBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    .line 265
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 367
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "reset() mShowing = true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 371
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 373
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_1

    .line 374
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "reset() mOccluded = true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideKeyguard(Z)Z

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 383
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 385
    :cond_0
    return-void

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerOrKeyguard()V

    goto :goto_0
.end method

.method public setNeedAnimationFlag(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 842
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNeedAnimationFlag...  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNeedAnimation:Z

    .line 844
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardNeedsInput(Z)V

    .line 439
    return-void
.end method

.method public setOccluded(Z)V
    .locals 3
    .param p1, "occluded"    # Z

    .prologue
    const/4 v0, 0x1

    .line 446
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInLaunchTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardOccluded(Z)V

    .line 471
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 476
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setKeyguardShowing(ZZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setWakeAndUnlocking()V
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWakeAndUnlocking:Z

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeAndUnlocking()V

    .line 853
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    :cond_0
    return-void
.end method

.method public shouldDisableWindowAnimationsForUnlock()Z
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInLaunchTransition()Z

    move-result v0

    return v0
.end method

.method public show(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 272
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 273
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 283
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getPreviewContainer()Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    move-result-object v0

    .line 285
    .local v0, "container":Lcom/android/keyguard/sec/KeyguardPreviewContainer;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->refreshPreviewIfNeeded()V

    .line 290
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v2, :cond_4

    .line 292
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "StatusBarKeyguardViewManager.show() : show()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsBootCompleted:Z

    if-eqz v2, :cond_5

    .line 294
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v2, :cond_2

    .line 295
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    .line 302
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "StatusBarKeyguardViewManager.show() : bindService IScreenLockService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, "screenLockServiceIntent":Landroid/content/Intent;
    const-string v2, "com.nttdocomo.android.screenlockservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 306
    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "StatusBarKeyguardViewManager.show() : can\'t connect IScreenLockService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v1    # "screenLockServiceIntent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 298
    :cond_5
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsWaitingForBootComplete:Z

    goto :goto_0
.end method

.method public showUnlockAffordance()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showUnlockAffordance()V

    .line 832
    :cond_0
    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    if-eqz p1, :cond_0

    .line 496
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public updateCMASText(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateCMASText(Z)V

    .line 836
    return-void
.end method

.method public updateKeyguardClockandNotifications(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardClockandNotifications(Z)V

    .line 443
    return-void
.end method

.method public verifyUnlock()V
    .locals 0

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 435
    return-void
.end method

.method public wasOccludedAndNeedAnimation()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNeedAnimation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

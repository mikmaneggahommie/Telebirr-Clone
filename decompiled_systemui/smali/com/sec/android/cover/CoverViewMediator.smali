.class public Lcom/sec/android/cover/CoverViewMediator;
.super Ljava/lang/Object;
.source "CoverViewMediator.java"


# static fields
.field private static final ACTION_CLEAR_COVER_REMOTEVIEWS_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field private static final MOBILE_CARE_SCREEN_ON_TIMEOUT:I = 0x1388

.field private static final MSG_UPDATE_COVERSTATE:I = 0x2711

.field private static final MSG_UPDATE_MINI_COVERSTATE:I = 0x2712

.field private static final TAG:Ljava/lang/String; = "CoverViewMediator"

.field private static final TYPE_SVIEW:I = 0x1

.field private static final TYPE_SVIEW_CHARGER:I = 0x3

.field private static mTimer:Ljava/util/Timer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mSHealthIntent:Landroid/content/Intent;

.field private mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

.field private mSViewMiniCover:Lcom/sec/android/sviewcover/SViewCoverMiniView;

.field private mTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/widget/FrameLayout;
    .param p3, "previewRootView"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v1, Lcom/sec/android/cover/CoverViewMediator$1;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/CoverViewMediator$1;-><init>(Lcom/sec/android/cover/CoverViewMediator;)V

    iput-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    new-instance v1, Lcom/sec/android/cover/CoverViewMediator$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/cover/CoverViewMediator$2;-><init>(Lcom/sec/android/cover/CoverViewMediator;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    if-nez v1, :cond_1

    .line 128
    const-string v1, "CoverViewMediator"

    const-string v2, "Start inflating view"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_view:I

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/sviewcover/SViewCoverView;

    iput-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 131
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mSHealthIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 135
    const-string v1, "CoverViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::::::::BroadcastReceiver : send() : shealth :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator;->mSHealthIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator;->mSHealthIntent:Landroid/content/Intent;

    const-string v3, "com.sec.android.sviewcover.ACCESS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 139
    iput-object v4, p0, Lcom/sec/android/cover/CoverViewMediator;->mSHealthIntent:Landroid/content/Intent;

    .line 142
    :cond_1
    const-string v1, "CoverViewMediator"

    const-string v2, "CoverViewMediator()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sec/android/cover/CoverViewMediator;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/CoverViewMediator;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/cover/CoverViewMediator;->mSHealthIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/sviewcover/SViewCoverView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/CoverViewMediator;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/sviewcover/SViewCoverMiniView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/CoverViewMediator;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mSViewMiniCover:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/CoverViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/CoverViewMediator;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/cover/CoverViewMediator;->requestDumpUpload()Z

    move-result v0

    return v0
.end method

.method private checkMCTimer(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .line 151
    .local v1, "isCoverOpen":Z
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    .line 153
    .local v0, "coverType":I
    invoke-virtual {p0}, Lcom/sec/android/cover/CoverViewMediator;->stopMCScreenOnTimer()V

    .line 155
    if-eqz v1, :cond_1

    .line 156
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/CoverViewMediator;->startMCScreenOnTimer()V

    .line 160
    :cond_1
    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 187
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private requestDumpUpload()Z
    .locals 3

    .prologue
    .line 196
    const-string v1, "com.samsung.mobilecare"

    invoke-direct {p0, v1}, Lcom/sec/android/cover/CoverViewMediator;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "CoverViewMediator"

    const-string v2, "requestDumpUpload : Requesting dump upload to MC..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cover.intent.action.MOBILE_CARE_UPLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    const/4 v1, 0x1

    .line 204
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 202
    :cond_0
    const-string v1, "CoverViewMediator"

    const-string v2, "requestDumpUpload : MC is not installed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method checkPermission()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onCoverAppCovered(Z)V
    .locals 0
    .param p1, "covered"    # Z

    .prologue
    .line 254
    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 0
    .param p1, "statusBarState"    # I

    .prologue
    .line 239
    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 251
    return-void
.end method

.method public showCoverOpenPopup()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public showCoverOpenPopup(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 248
    return-void
.end method

.method public startMCScreenOnTimer()V
    .locals 4

    .prologue
    .line 163
    const-string v0, "CoverViewMediator"

    const-string v1, "startMCScreenOnTimer count = 5000"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Lcom/sec/android/cover/CoverViewMediator$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverViewMediator$3;-><init>(Lcom/sec/android/cover/CoverViewMediator;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mTask:Ljava/util/TimerTask;

    .line 171
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/sec/android/cover/CoverViewMediator;->mTimer:Ljava/util/Timer;

    .line 173
    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 174
    return-void
.end method

.method public stopMCScreenOnTimer()V
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "CoverViewMediator"

    const-string v1, "stopMCScreenOnTimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 180
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/cover/CoverViewMediator;->mTimer:Ljava/util/Timer;

    .line 182
    :cond_0
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 224
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 227
    :cond_0
    const-string v1, "CoverViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cover BaseService updateCoverState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0, p1}, Lcom/sec/android/cover/CoverViewMediator;->checkMCTimer(Lcom/samsung/android/cover/CoverState;)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 235
    .local v0, "msgStateUpdate":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public userActivity()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

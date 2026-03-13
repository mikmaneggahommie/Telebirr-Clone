.class public Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "SubPhoneStatusBar.java"


# static fields
.field private static final AUTOHIDE_TIMEOUT_MS:J = 0xbb8L

.field public static final DEBUG:Z

.field public static final DEBUG_WINDOW_STATE:Z = false

.field private static final STATUS_OR_NAV_TRANSIENT:I = 0xc000000

.field static final TAG:Ljava/lang/String; = "SubPhoneStatusBar"


# instance fields
.field private mAutoHidePending:Z

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field mDisabled:I

.field mExpandedVisible:Z

.field private mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

.field private mFloatingKeyFromCoupledTaskIntent:Z

.field private mFloatingKeyFromHideNav:Z

.field private mFloatingKeyFromSystemUiVisibilityNavUnhide:Z

.field private mFloatingKeyFromVisibilityIntent:Z

.field private mInteractingWindows:I

.field private mIsFloatingKeyVisible:Z

.field private mKeyguardEffectController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

.field mNaturalBarHeight:I

.field private mNavigationBarMode:I

.field private mScreenOn:Ljava/lang/Boolean;

.field mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mStatusBarMode:I

.field private mStatusBarWindowState:I

.field mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

.field private mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

.field mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

.field mSystemUiVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    .line 76
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBarWindowState:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNaturalBarHeight:I

    .line 84
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mDisabled:I

    .line 87
    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    .line 272
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 312
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    .line 595
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 679
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromVisibilityIntent:Z

    .line 685
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromCoupledTaskIntent:Z

    .line 686
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromHideNav:Z

    .line 687
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromSystemUiVisibilityNavUnhide:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->notifyUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->checkBarModes()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromVisibilityIntent:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromCoupledTaskIntent:Z

    return p1
.end method

.method private addSubStatusBarWindow()V
    .locals 3

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeSubStatusBarView()V

    .line 509
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->add(Landroid/view/View;I)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->setSubStatusBarWindowManager(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)V

    .line 512
    return-void
.end method

.method private barMode(III)I
    .locals 1
    .param p1, "vis"    # I
    .param p2, "transientFlag"    # I
    .param p3, "translucentFlag"    # I

    .prologue
    .line 236
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int v0, p1, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutohide()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohideSuspended:Z

    .line 308
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method private checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "windowState"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 251
    const/4 v0, 0x1

    .line 256
    .local v0, "anim":Z
    const/4 v1, 0x1

    invoke-virtual {p3, p1, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 257
    return-void
.end method

.method private checkBarModes()V
    .locals 3

    .prologue
    .line 244
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 245
    return-void
.end method

.method private computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I
    .locals 2
    .param p1, "oldVis"    # I
    .param p2, "newVis"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;
    .param p4, "transientFlag"    # I
    .param p5, "translucentFlag"    # I

    .prologue
    .line 226
    invoke-direct {p0, p1, p4, p5}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->barMode(III)I

    move-result v1

    .line 227
    .local v1, "oldMode":I
    invoke-direct {p0, p2, p4, p5}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->barMode(III)I

    move-result v0

    .line 229
    .local v0, "newMode":I
    if-ne v1, v0, :cond_0

    .line 230
    const/4 v0, -0x1

    .line 232
    .end local v0    # "newMode":I
    :cond_0
    return v0
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 2
    .param p1, "vis"    # I

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->statusBarVisibilityChangedToDisplay(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->scheduleAutohide()V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    :cond_0
    return-void
.end method

.method private scheduleAutohide()V
    .locals 4

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->cancelAutohide()V

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    return-void
.end method

.method private startSubKeyguard()V
    .locals 2

    .prologue
    .line 587
    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 588
    .local v0, "keyguardViewMediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerSubStatusBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)V

    .line 589
    return-void
.end method

.method private suspendAutohide()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    .line 302
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v2, 0xc000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohideSuspended:Z

    .line 304
    return-void
.end method


# virtual methods
.method public addFloatingBackKey()V
    .locals 11

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 690
    const-string v4, "SubPhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Floating back visibility is :  : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getUserSetup()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v10

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromVisibilityIntent:Z

    if-nez v2, :cond_5

    move v2, v10

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromCoupledTaskIntent:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromHideNav:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromSystemUiVisibilityNavUnhide:Z

    if-nez v2, :cond_6

    move v2, v10

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getUserSetup()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromVisibilityIntent:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromCoupledTaskIntent:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromHideNav:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromSystemUiVisibilityNavUnhide:Z

    if-eqz v4, :cond_2

    :cond_1
    move v3, v10

    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->setFloatingKeyVisibility(Z)V

    .line 703
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getUserSetup()Z

    move-result v2

    if-nez v2, :cond_7

    .line 704
    const-string v1, "SubPhoneStatusBar"

    const-string v2, "user setup is not completed..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    if-eqz v1, :cond_3

    .line 707
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->disappear()V

    .line 748
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v2, v3

    .line 690
    goto/16 :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    .line 709
    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromVisibilityIntent:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromCoupledTaskIntent:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromHideNav:Z

    if-eqz v2, :cond_9

    :cond_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromSystemUiVisibilityNavUnhide:Z

    if-nez v2, :cond_9

    .line 713
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    if-eqz v1, :cond_3

    .line 714
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->disappear()V

    goto :goto_3

    .line 717
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    if-nez v2, :cond_3

    .line 718
    const-string v2, "SubPhoneStatusBar"

    const-string v3, "Adding mFloatingBackKey..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x800328

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 730
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 731
    const-string v1, "Floating Back Key"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 734
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManagerImpl;

    .line 736
    .local v9, "wm":Landroid/view/WindowManagerImpl;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v7

    .line 737
    .local v7, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual {v7, v10}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 739
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v9, v6}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v9

    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v9, v1, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 743
    :catch_0
    move-exception v8

    .line 744
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string v1, "SubPhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFloatingBackKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 111
    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 124
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 144
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public animateExpandSettingsPanel()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 0

    .prologue
    .line 765
    return-void
.end method

.method public appTransitionPending()V
    .locals 0

    .prologue
    .line 771
    return-void
.end method

.method public appTransitionStarting(JJ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    .line 768
    return-void
.end method

.method public buzzBeepBlinked()V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method protected createAndAddWindows()V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addSubStatusBarWindow()V

    .line 504
    return-void
.end method

.method public disable(IIZ)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public enableSignals(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 563
    return-void
.end method

.method protected getMaxKeyguardNotifications()I
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 444
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 515
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 517
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNaturalBarHeight:I

    .line 520
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNaturalBarHeight:I

    return v1
.end method

.method public getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    return-object v0
.end method

.method public getSubStatusBarWindowView()Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    return-object v0
.end method

.method protected haltTicker()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 346
    const-string v0, "SubPhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExpandedInvisible: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    if-nez v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->setStatusBarExpanded(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->setFocusable(Z)V

    .line 386
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->dismissPopups()V

    .line 389
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->setInteracting(IZ)V

    .line 394
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    if-eqz v0, :cond_0

    .line 395
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method makeExpandedVisible(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x1

    .line 321
    const-string v0, "SubPhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExpandedVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 330
    :cond_2
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->updateExpandedViewPos(I)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->setStatusBarExpanded(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->setFocusable(Z)V

    .line 337
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->visibilityChanged(Z)V

    .line 340
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->setInteracting(IZ)V

    goto :goto_0
.end method

.method protected makeSubStatusBarView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    .line 627
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0400bd

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    .line 629
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iput-object p0, v2, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    .line 631
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    const v3, 0x7f0f03c9

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    .line 632
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V

    .line 634
    const v2, 0x7f04001b

    invoke-static {v0, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .line 636
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addFloatingBackKey()V

    .line 637
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->setSubBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V

    .line 638
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->setFloatingBackKey(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    .line 640
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .line 641
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    const v4, 0x7f0f03d4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setSubEffectLayout(Landroid/view/View;)V

    .line 646
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 647
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    const-string v2, "com.sec.android.action.FLOATING_BACK_KEY_VISIBILITY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    const-string v2, "com.sec.android.action.NOTIFY_COUPLEDTASK_RESUMED_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 652
    return-void
.end method

.method public notificationLightOff()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 0
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 439
    return-void
.end method

.method public notifyRecentPanelVisiblity(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 557
    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 537
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p2, "timeOut"    # Z

    .prologue
    .line 541
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedInvisible()V

    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onMenuPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 751
    const-string v0, "SubPhoneStatusBar"

    const-string v1, "SUB - onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedInvisible()V

    .line 753
    return-void
.end method

.method panelsEnabled()Z
    .locals 3

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 583
    .local v0, "shouldBeDisabled":Z
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mDisabled:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected refreshLayout(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 533
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 120
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 132
    return-void
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method public scheduleHeadsUpClose()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public scheduleHeadsUpEscalation()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public scheduleHeadsUpOpen()V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public setCallBackground(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 549
    return-void
.end method

.method public setFloatingKeyVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z

    .line 682
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 419
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 2
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 281
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mInteractingWindows:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mInteractingWindows:I

    .line 284
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mInteractingWindows:I

    if-eqz v0, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->suspendAutohide()V

    .line 289
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->checkBarModes()V

    .line 290
    return-void

    .line 281
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mInteractingWindows:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->resumeSuspendedAutohide()V

    goto :goto_1
.end method

.method public setMultiWindowBg(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 553
    return-void
.end method

.method public setOtherBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 568
    check-cast p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .end local p1    # "bar":Lcom/android/systemui/statusbar/BaseStatusBar;
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 569
    return-void
.end method

.method public setSubStatusBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    if-nez v0, :cond_0

    .line 763
    :goto_0
    return-void

    .line 758
    :cond_0
    if-eqz p1, :cond_1

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->setVisibility(I)V

    goto :goto_0

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSystemUiVisibility(II)V
    .locals 12
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 148
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    .line 149
    .local v1, "oldVal":I
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v1

    and-int v3, p1, p2

    or-int v2, v0, v3

    .line 150
    .local v2, "newVal":I
    xor-int v7, v2, v1

    .line 151
    .local v7, "diff":I
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SubPhoneStatusBar"

    const-string v3, "SUB - setSystemUiVisibility vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    if-eqz v7, :cond_8

    .line 159
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, 0x4000

    if-lez v0, :cond_9

    const/4 v10, 0x1

    .line 161
    .local v10, "wasRecentsVisible":Z
    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x4000000

    const/high16 v5, 0x40000000    # 2.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v8

    .line 181
    .local v8, "sbMode":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_a

    const/4 v9, 0x1

    .line 182
    .local v9, "sbModeChanged":Z
    :goto_1
    const/4 v6, 0x0

    .line 183
    .local v6, "checkBarModes":Z
    if-eqz v9, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBarMode:I

    if-eq v8, v0, :cond_1

    .line 184
    iput v8, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBarMode:I

    .line 185
    const/4 v6, 0x1

    .line 187
    :cond_1
    if-eqz v6, :cond_2

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->checkBarModes()V

    .line 190
    :cond_2
    if-eqz v9, :cond_3

    .line 192
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBarMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_b

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->scheduleAutohide()V

    .line 200
    :cond_3
    :goto_2
    const/high16 v0, 0x10000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 201
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    const v3, -0x10000001

    and-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    .line 204
    :cond_4
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_5

    .line 205
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    const v3, -0x20000001

    and-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    .line 208
    :cond_5
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromSystemUiVisibilityNavUnhide:Z

    .line 210
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_6

    .line 211
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromHideNav:Z

    .line 212
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addFloatingBackKey()V

    .line 215
    if-eqz v10, :cond_7

    .line 216
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    .line 220
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 222
    .end local v6    # "checkBarModes":Z
    .end local v8    # "sbMode":I
    .end local v9    # "sbModeChanged":Z
    .end local v10    # "wasRecentsVisible":Z
    :cond_8
    return-void

    .line 159
    :cond_9
    const/4 v10, 0x0

    goto :goto_0

    .line 181
    .restart local v8    # "sbMode":I
    .restart local v10    # "wasRecentsVisible":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_1

    .line 195
    .restart local v6    # "checkBarModes":Z
    .restart local v9    # "sbModeChanged":Z
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->cancelAutohide()V

    goto :goto_2

    .line 208
    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 211
    :cond_d
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setWindowState(II)V
    .locals 0
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 427
    return-void
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public showScreenPinningRequest()V
    .locals 0

    .prologue
    .line 545
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->startSubKeyguard()V

    .line 108
    return-void
.end method

.method public startActivityAndDismiss(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 668
    const/high16 v1, 0x14000000

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 670
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 672
    const-string v1, "SubPhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching intent : intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedInvisible()V

    .line 677
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "SubPhoneStatusBar"

    const-string v2, "activity not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected tick(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 0
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "firstTime"    # Z

    .prologue
    .line 461
    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .param p1, "showMenu"    # Z

    .prologue
    .line 403
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 404
    const-string v1, "SubPhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string v0, "showing"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " the MENU button"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->setMenuVisible(Z)V

    .line 414
    :cond_1
    return-void

    .line 404
    :cond_2
    const-string v0, "hiding"

    goto :goto_0
.end method

.method protected updateExpandedViewPos(I)V
    .locals 0
    .param p1, "expandedPosition"    # I

    .prologue
    .line 465
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 116
    return-void
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 128
    return-void
.end method

.method protected updateNotifications()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

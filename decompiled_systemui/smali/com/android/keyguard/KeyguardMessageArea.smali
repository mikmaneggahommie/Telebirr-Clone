.class public Lcom/android/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;,
        Lcom/android/keyguard/KeyguardMessageArea$Helper;
    }
.end annotation


# static fields
.field private static final ANNOUNCEMENT_DELAY:J = 0xfaL

.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;

.field protected static final FADE_DURATION:I = 0x2ee

.field static final SECURITY_MESSAGE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "KeyguardMessageArea"

.field private static mKeyguardShowing:Z


# instance fields
.field private final BATTERY_LOW_ICON:I

.field private final CHARGING_ICON:I

.field private final MODE_CAMERA_SHORTCUT:I

.field protected mBatteryCharged:Z

.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field protected mBatteryIsFastCharging:Z

.field protected mBatteryIsFastWirelessCharging:Z

.field protected mBatteryIsLow:Z

.field protected mBatteryIsWirelessCharging:Z

.field private mBatteryLevel:I

.field private mCached:Z

.field private mCharging:Z

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field mClearShortcutReleasedLayoutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mIcon:I

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKnoxCustomLockScreenState:I

.field private mKnoxObserver:Landroid/database/ContentObserver;

.field private mKnoxURI:Landroid/net/Uri;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMessage:Ljava/lang/CharSequence;

.field mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSeparator:Ljava/lang/CharSequence;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mShadowColor:I

.field mShorcutMessage:Ljava/lang/CharSequence;

.field private mShowingBatteryInfo:Z

.field mShowingBouncer:Z

.field mShowingMessage:Z

.field private mTextColor:I

.field mTimeout:J

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUseBlackTextOnWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardMessageArea;->mKeyguardShowing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 347
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 350
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->MODE_CAMERA_SHORTCUT:I

    .line 85
    iput v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->CHARGING_ICON:I

    .line 86
    iput v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->BATTERY_LOW_ICON:I

    .line 88
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    .line 92
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    .line 94
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsFastCharging:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsWirelessCharging:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsFastWirelessCharging:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 110
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 114
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 125
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUseBlackTextOnWhiteWallpaper:Z

    .line 126
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShadowColor:I

    .line 127
    iput v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTextColor:I

    .line 133
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearShortcutReleasedLayoutRunnable:Ljava/lang/Runnable;

    .line 312
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$3;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 408
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCached:Z

    .line 409
    iput v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxCustomLockScreenState:I

    .line 410
    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxURI:Landroid/net/Uri;

    .line 411
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$4;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardMessageArea$4;-><init>(Lcom/android/keyguard/KeyguardMessageArea;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxObserver:Landroid/database/ContentObserver;

    .line 351
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setLayerType(ILandroid/graphics/Paint;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 354
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v2, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 355
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    .line 359
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUseBlackTextOnWhiteWallpaper:Z

    .line 360
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowColor()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShadowColor:I

    .line 361
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTextColor:I

    .line 363
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 366
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 367
    return-void

    :cond_0
    move v0, v1

    .line 359
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardMessageArea;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->hideMessage(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->resetShortcutReleasedLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardMessageArea;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->setShortcutReleasedLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardMessageArea;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->showMessage(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardMessageArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/KeyguardMessageArea;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/keyguard/KeyguardMessageArea;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 72
    sput-boolean p0, Lcom/android/keyguard/KeyguardMessageArea;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCached:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/keyguard/KeyguardMessageArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method private clearMessage()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 521
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    return-void
.end method

.method private varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "args"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    .local v0, "b":Ljava/lang/StringBuilder;
    aget-object v3, p1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 677
    aget-object v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 679
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 680
    aget-object v2, p1, v1

    .line 681
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 682
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 683
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 685
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 679
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 400
    sget v1, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    .line 402
    .local v0, "messageArea":Lcom/android/keyguard/KeyguardMessageArea;
    if-nez v0, :cond_0

    .line 403
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find keyguard_message_area in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_0
    return-object v0
.end method

.method private getChargeInfo(Landroid/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "icon"    # Landroid/util/MutableInt;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 566
    const/4 v2, 0x0

    .line 568
    .local v2, "string":Ljava/lang/CharSequence;
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_4

    .line 572
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCached:Z

    if-nez v4, :cond_0

    .line 573
    iput-boolean v9, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCached:Z

    .line 574
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxURI:Landroid/net/Uri;

    const-string v5, "getLockScreenHiddenItems"

    iget-object v6, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxCustomLockScreenState:I

    .line 577
    :cond_0
    iget v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxCustomLockScreenState:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 578
    iget v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxCustomLockScreenState:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 628
    .end local v2    # "string":Ljava/lang/CharSequence;
    .local v3, "string":Ljava/lang/CharSequence;
    :goto_0
    return-object v3

    .line 584
    .end local v3    # "string":Ljava/lang/CharSequence;
    .restart local v2    # "string":Ljava/lang/CharSequence;
    :cond_1
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    if-eqz v4, :cond_9

    .line 586
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    if-eqz v4, :cond_5

    .line 587
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->keyguard_charged:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 600
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 601
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getChargeTimeRemaining()J

    move-result-wide v0

    .line 602
    .local v0, "chargingTimeRemaining":J
    const-string v4, "KeyguardMessageArea"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChargeInfo( chargingTimeRemaining = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 604
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->lockscreen_charging_remaining_time:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v7, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 610
    .end local v0    # "chargingTimeRemaining":J
    :cond_2
    iput v8, p1, Landroid/util/MutableInt;->value:I

    .line 617
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 618
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    if-eqz v4, :cond_b

    .line 619
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    if-eqz v4, :cond_a

    sget v4, Lcom/android/keyguard/R$string;->lockscreen_charged_nexti:I

    :goto_3
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_4
    move-object v3, v2

    .line 628
    .end local v2    # "string":Ljava/lang/CharSequence;
    .restart local v3    # "string":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 588
    .end local v3    # "string":Ljava/lang/CharSequence;
    .restart local v2    # "string":Ljava/lang/CharSequence;
    :cond_5
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsWirelessCharging:Z

    if-eqz v4, :cond_7

    .line 589
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsFastWirelessCharging:Z

    if-eqz v4, :cond_6

    .line 590
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->keyguard_fast_charging_in_wireless:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 593
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->keyguard_charging_in_wireless:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 595
    :cond_7
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsFastCharging:Z

    if-eqz v4, :cond_8

    .line 596
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->keyguard_high_voltage_plugged_in:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 598
    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->keyguard_plugged_in:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 611
    :cond_9
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    if-eqz v4, :cond_3

    .line 613
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->keyguard_low_battery:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 614
    iput v8, p1, Landroid/util/MutableInt;->value:I

    goto/16 :goto_2

    .line 619
    :cond_a
    sget v4, Lcom/android/keyguard/R$string;->lockscreen_plugged_in_nexti:I

    goto :goto_3

    .line 623
    :cond_b
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    if-eqz v4, :cond_4

    .line 624
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->lockscreen_low_battery_nexti:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4
.end method

.method private getChargeTimeRemaining()J
    .locals 4

    .prologue
    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 640
    :goto_0
    return-wide v2

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardMessageArea"

    const-string v2, "Error calling IBatteryStats: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private hideMessage(IZ)V
    .locals 5
    .param p1, "duration"    # I
    .param p2, "thenUpdate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 654
    if-lez p1, :cond_2

    .line 655
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 656
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 657
    if-eqz p2, :cond_0

    .line 658
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$6;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 665
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 672
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    :goto_0
    return-void

    .line 667
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 668
    if-eqz p2, :cond_1

    .line 669
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    goto :goto_0
.end method

.method private resetShortcutReleasedLayout()V
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setSingleLine(Z)V

    .line 714
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setGravity(I)V

    .line 715
    return-void
.end method

.method private securityMessageChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 435
    return-void
.end method

.method private setShortcutReleasedLayout()V
    .locals 8

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    .line 692
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setSingleLine(Z)V

    .line 693
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "set_shortcuts_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 695
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setGravity(I)V

    .line 704
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearShortcutReleasedLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 705
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearShortcutReleasedLayoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 710
    return-void

    .line 696
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_3

    .line 699
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setGravity(I)V

    goto :goto_0

    .line 701
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setGravity(I)V

    goto :goto_0
.end method

.method private showMessage(I)V
    .locals 5
    .param p1, "duration"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 644
    if-lez p1, :cond_0

    .line 645
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 646
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 647
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 651
    .end local v0    # "anim":Landroid/animation/Animator;
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method getCurrentMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 457
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 458
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 461
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$5;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardMessageArea$5;-><init>(Lcom/android/keyguard/KeyguardMessageArea;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 476
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxURI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 478
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 482
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 483
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 490
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 421
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 422
    .local v0, "screenOn":Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(F)V

    .line 428
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setSingleLine(Z)V

    .line 430
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 431
    return-void
.end method

.method public securityMessageChanged()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 493
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 494
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 496
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCached:Z

    if-nez v0, :cond_0

    .line 497
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCached:Z

    .line 498
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxURI:Landroid/net/Uri;

    const-string v1, "getLockScreenHiddenItems"

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxCustomLockScreenState:I

    .line 501
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxCustomLockScreenState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 502
    iget v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mKnoxCustomLockScreenState:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 510
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 511
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 517
    return-void
.end method

.method public setMessage(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "important"    # Z

    .prologue
    .line 378
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 380
    .local v0, "message":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    .line 384
    .end local v0    # "message":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    goto :goto_0
.end method

.method public varargs setMessage(IZ[Ljava/lang/Object;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "important"    # Z
    .param p3, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 387
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "message":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    .line 393
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "important"    # Z

    .prologue
    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 371
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    goto :goto_0
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    .line 158
    return-void
.end method

.method public setTimeout(I)V
    .locals 2
    .param p1, "timeoutMs"    # I

    .prologue
    .line 396
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 397
    return-void
.end method

.method update()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 533
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_0

    .line 536
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    .line 539
    :cond_0
    new-instance v1, Landroid/util/MutableInt;

    invoke-direct {v1, v6}, Landroid/util/MutableInt;-><init>(I)V

    .line 540
    .local v1, "icon":Landroid/util/MutableInt;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->getChargeInfo(Landroid/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 541
    .local v2, "status":Ljava/lang/CharSequence;
    iget v3, v1, Landroid/util/MutableInt;->value:I

    if-eqz v3, :cond_2

    .line 542
    iget v3, v1, Landroid/util/MutableInt;->value:I

    invoke-virtual {p0, v3, v6, v6, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 547
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPoorPerformanceModel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 550
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 551
    .local v0, "fadeIn":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 552
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setAnimation(Landroid/view/animation/Animation;)V

    .line 553
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->startAnimation(Landroid/view/animation/Animation;)V

    .line 555
    .end local v0    # "fadeIn":Landroid/view/animation/Animation;
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->updateBlackTextOnWhiteWallpaper()V

    .line 556
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->invalidate()V

    .line 557
    return-void

    .line 545
    :cond_2
    iget v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    invoke-virtual {p0, v3, v6, v6, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$color;->theme_keyguard_message_area_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTextColor(I)V

    .line 440
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDy()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setShadowLayer(FFFI)V

    .line 453
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_1

    .line 444
    const v0, -0xbbbbbc

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTextColor(I)V

    .line 445
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDy()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$color;->theme_keyguard_message_area_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTextColor(I)V

    .line 449
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getShadowDy()F

    move-result v2

    iget v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShadowColor:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

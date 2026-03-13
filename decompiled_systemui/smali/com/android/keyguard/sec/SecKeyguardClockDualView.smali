.class public Lcom/android/keyguard/sec/SecKeyguardClockDualView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardClockDualView.java"


# static fields
.field private static final ATT_ROAMING_TEXT:Ljava/lang/String; = ""

.field protected static final MARGIN_RATIO_FOR_NUM45_LEFT:F = 15.0f

.field private static final MSG_CONTENT_UPDATED:I = 0x67

.field private static final MSG_DUAL_CLOCK_SETTINGS_CHANGED:I = 0x66

.field private static final MSG_DUAL_DATE_ON_SETTINGS_CHANGED:I = 0x64

.field private static final MSG_DUAL_SHOW_CLOCK_DATE_ON_SETTINGS_CHANGED:I = 0x65

.field public static mBatteryLevel:I


# instance fields
.field private mAmpmKorTypeface:Landroid/graphics/Typeface;

.field private mAmpmOpenTypeface:Landroid/graphics/Typeface;

.field private mClockThemeTypeface:Landroid/graphics/Typeface;

.field private mClockTypeface:Landroid/graphics/Typeface;

.field private mDualClockHomeContainer:Landroid/view/View;

.field private mDualClockRoamingContainer:Landroid/view/View;

.field private mDualClockSettingsObserver:Landroid/database/ContentObserver;

.field private mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeLocale:Landroid/widget/TextView;

.field private mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingLocale:Landroid/widget/TextView;

.field private mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private final mHandler:Landroid/os/Handler;

.field private mLocale:Ljava/util/Locale;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBlackTextOnWhiteCoverWallpaper:Z

.field private mUseBlackTextOnWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x64

    sput v0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mBatteryLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    .line 63
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mLocale:Ljava/util/Locale;

    .line 64
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockThemeTypeface:Landroid/graphics/Typeface;

    .line 76
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->handleDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->handleShowClockDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockContentDesciption()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;
    .param p1, "x1"    # Landroid/graphics/Typeface;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockThemeTypeface:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addTextChangedListenerForClockTimeMargin()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-nez v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 467
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardClockDualView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView$6;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private handleDateOnSettngsChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_0

    .line 426
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 429
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 426
    goto :goto_0

    :cond_3
    move v1, v2

    .line 428
    goto :goto_1
.end method

.method private handleShowClockDateOnSettngsChanged()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockRoamingContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setVisibility(I)V

    .line 434
    :cond_0
    return-void

    .line 433
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setClockContentDesciption()V
    .locals 5

    .prologue
    .line 393
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_0

    const-string v3, "ko"

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 394
    .local v2, "isKorean":Z
    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 395
    .local v1, "dualRAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 397
    .local v0, "dualHAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockRoamingContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V

    .line 398
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockHomeContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V

    .line 399
    return-void

    .line 393
    .end local v0    # "dualHAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .end local v1    # "dualRAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .end local v2    # "isKorean":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 394
    .restart local v2    # "isKorean":Z
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_1

    .line 395
    .restart local v1    # "dualRAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_2
.end method

.method private setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "time"    # Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .param p3, "ampm"    # Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .param p4, "isKorean"    # Z

    .prologue
    .line 403
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 404
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 405
    .local v6, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;ZLandroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    .end local v6    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method


# virtual methods
.method public changeTextColorOnWhiteWallaper()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 496
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isCovered()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isCovered()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    if-eqz v4, :cond_3

    :cond_1
    move v1, v3

    .line 498
    .local v1, "shouldBlackText":Z
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    .line 499
    .local v0, "isThemeApplied":Z
    if-eqz v1, :cond_4

    .line 500
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v4, v5, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 501
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v4, v5, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 502
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v4, v5, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 503
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v4, v5, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 504
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v4, v5, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 505
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v4, v5, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 506
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v4, v5, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 507
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v4, v5, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 508
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-static {v4, v5, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 509
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-static {v4, v5, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 510
    if-nez v0, :cond_2

    .line 511
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 512
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v2, v3, v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const v4, -0xbbbbbc

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 530
    :cond_2
    :goto_1
    return-void

    .end local v0    # "isThemeApplied":Z
    .end local v1    # "shouldBlackText":Z
    :cond_3
    move v1, v2

    .line 496
    goto :goto_0

    .line 516
    .restart local v0    # "isThemeApplied":Z
    .restart local v1    # "shouldBlackText":Z
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v3, v4, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 517
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v3, v4, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 518
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v3, v4, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 519
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v3, v4, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 520
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v3, v4, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 521
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v3, v4, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 522
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v3, v4, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 523
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-static {v3, v4, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 524
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-static {v3, v4, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 525
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-static {v3, v4, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 526
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 527
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v2, v3, v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 205
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 207
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockDualView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_cover_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_date_and_year"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_clock_size"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 259
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v2, 0x67

    .line 102
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mLocale:Ljava/util/Locale;

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 268
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_roaming_clock_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockRoamingContainer:Landroid/view/View;

    .line 156
    sget v0, Lcom/android/keyguard/R$id;->roaming_locale:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingLocale:Landroid/widget/TextView;

    .line 157
    sget v0, Lcom/android/keyguard/R$id;->roaming_time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 158
    sget v0, Lcom/android/keyguard/R$id;->roaming_ampm:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 159
    sget v0, Lcom/android/keyguard/R$id;->roaming_ampm_kor:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 160
    sget v0, Lcom/android/keyguard/R$id;->roaming_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 161
    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_home_clock_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockHomeContainer:Landroid/view/View;

    .line 162
    sget v0, Lcom/android/keyguard/R$id;->home_locale:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    .line 163
    sget v0, Lcom/android/keyguard/R$id;->home_time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 164
    sget v0, Lcom/android/keyguard/R$id;->home_ampm:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 165
    sget v0, Lcom/android/keyguard/R$id;->home_ampm_kor:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 166
    sget v0, Lcom/android/keyguard/R$id;->home_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "white_cover_wallpaper"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    .line 169
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    const-string v0, "/system/fonts/SamsungNeoNumCond-3T.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockTypeface:Landroid/graphics/Typeface;

    .line 171
    const-string v0, "/system/fonts/SECRobotoLight-Bold.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    .line 179
    :goto_2
    const-string v0, "/system/fonts/SamsungSans-Light.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mLocale:Ljava/util/Locale;

    .line 183
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$drawable;->lock_ic_home:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockStyle()V

    .line 188
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockContentDesciption()V

    .line 195
    :goto_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->addTextChangedListenerForClockTimeMargin()V

    .line 197
    const-string v0, "iw"

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockRoamingContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockHomeContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 201
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 167
    goto :goto_0

    :cond_3
    move v1, v2

    .line 168
    goto :goto_1

    .line 172
    :cond_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    const-string v0, "/system/fonts/SamsungNeoNumCond-3T.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockTypeface:Landroid/graphics/Typeface;

    .line 174
    const-string v0, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    goto :goto_2

    .line 176
    :cond_5
    const-string v0, "/system/fonts/SamsungNeoNum-3T.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockTypeface:Landroid/graphics/Typeface;

    .line 177
    const-string v0, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    goto :goto_2

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockRoamingContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualClockHomeContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_3
.end method

.method protected setClockStyle()V
    .locals 12

    .prologue
    const/4 v8, 0x4

    const/high16 v11, 0x41700000    # 15.0f

    const/16 v10, 0x8

    const/4 v7, 0x0

    .line 272
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockThemeTypeface:Landroid/graphics/Typeface;

    if-eqz v6, :cond_7

    .line 273
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockThemeTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 274
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockThemeTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 282
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    if-eqz v6, :cond_1

    .line 283
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 284
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 287
    :cond_1
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    if-eqz v6, :cond_2

    .line 288
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 289
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 292
    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 293
    .local v4, "lpRoaming":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 295
    .local v3, "lpHome":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDualClockSize(Landroid/content/Context;)I

    move-result v1

    .line 297
    .local v1, "fontSize":I
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateTimeFormat()V

    .line 298
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 299
    int-to-float v6, v1

    div-float/2addr v6, v11

    float-to-int v6, v6

    neg-int v6, v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 303
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v9, v1

    invoke-virtual {v6, v7, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    .line 306
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateTimeFormat()V

    .line 307
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 308
    int-to-float v6, v1

    div-float/2addr v6, v11

    float-to-int v6, v6

    neg-int v6, v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 312
    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v9, v1

    invoke-virtual {v6, v7, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    .line 315
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->is24HourModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 316
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 317
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 318
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 319
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 338
    :goto_3
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 341
    .local v2, "homeCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 343
    .local v5, "roamingCalendar":Ljava/util/Calendar;
    if-eqz v0, :cond_d

    .line 344
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 345
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 346
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 347
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_3

    .line 348
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 350
    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_4

    .line 351
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 353
    :cond_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "Asia/Seoul"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 354
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/keyguard/R$string;->keyguard_dualclock_home_Seoul:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 364
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 365
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/keyguard/R$string;->keyguard_dualclock_roaming_Korea:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :goto_5
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_5

    .line 373
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_10

    move v6, v7

    :goto_6
    invoke-virtual {v9, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 375
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 380
    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_6

    .line 381
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_11

    :goto_7
    invoke-virtual {v6, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 383
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 389
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->changeTextColorOnWhiteWallaper()V

    .line 390
    return-void

    .line 276
    .end local v0    # "autoHomeTimeZoneId":Ljava/lang/String;
    .end local v1    # "fontSize":I
    .end local v2    # "homeCalendar":Ljava/util/Calendar;
    .end local v3    # "lpHome":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "lpRoaming":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "roamingCalendar":Ljava/util/Calendar;
    :cond_7
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockTypeface:Landroid/graphics/Typeface;

    if-eqz v6, :cond_0

    .line 277
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 278
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 301
    .restart local v1    # "fontSize":I
    .restart local v3    # "lpHome":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "lpRoaming":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 310
    :cond_9
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 321
    :cond_a
    const-string v6, "ko"

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 322
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 323
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 324
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 325
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 326
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    .line 327
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    goto/16 :goto_3

    .line 329
    :cond_b
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 330
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v10}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 331
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 332
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 333
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    .line 334
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    goto/16 :goto_3

    .line 356
    .restart local v0    # "autoHomeTimeZoneId":Ljava/lang/String;
    .restart local v2    # "homeCalendar":Ljava/util/Calendar;
    .restart local v5    # "roamingCalendar":Ljava/util/Calendar;
    :cond_c
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/keyguard/R$string;->keyguard_dualclock_home:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 359
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 360
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/keyguard/R$string;->keyguard_dualclock_home:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 366
    :cond_e
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isRoamingTextNotAllowedOnDualClock()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 367
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingLocale:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 369
    :cond_f
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/keyguard/R$string;->keyguard_dualclock_roaming:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_10
    move v6, v8

    .line 373
    goto/16 :goto_6

    :cond_11
    move v7, v8

    .line 381
    goto/16 :goto_7
.end method

.class public Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
.super Landroid/widget/FrameLayout;
.source "AdaptiveEventContainerSmall.java"

# interfaces
.implements Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;


# static fields
.field private static final MARGIN_LEFT_RIGHT_CENTER_CONTAINER:I = 0xf

.field static final TAG:Ljava/lang/String; = "AdaptiveEventContainerSmall"

.field private static final TEST_WEATHER:Z = false

.field private static final UPDATE_PEDO_MESSAGE:I = 0x132f

.field private static final UPDATE_WEATHER_MESSAGE:I = 0x1330

.field private static final WEATHER_CURRENT_CITY_ID:Ljava/lang/String; = "cityId:current"

.field private static mIsPedoShowing:Z


# instance fields
.field private mAdaptiveInfoArea:Landroid/widget/LinearLayout;

.field private mChinaHighTemperature:Landroid/widget/TextView;

.field private mChinaLowTemperature:Landroid/widget/TextView;

.field private mCityIcon:Landroid/widget/ImageView;

.field private mCityName:Landroid/widget/TextView;

.field mContentObserver:Landroid/database/ContentObserver;

.field private mIcon:Landroid/widget/ImageView;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIs4DigitClock:Z

.field private mIsDualClock:Z

.field private mIsHighLowTempModeEnable:Z

.field private mIsWeatherShowing:Z

.field private mLatteHighTemperature:Landroid/widget/TextView;

.field private mLatteLowTemperature:Landroid/widget/TextView;

.field private mLifeDustIcon:Landroid/widget/ImageView;

.field private mLifeDustLayout:Landroid/widget/LinearLayout;

.field private mLifeDustText:Landroid/widget/TextView;

.field private mPedContainer:Landroid/widget/LinearLayout;

.field private mSeparatorText:Landroid/widget/TextView;

.field private mSmallWeather:Landroid/view/View;

.field private mTemperature:Landroid/widget/TextView;

.field private mUnit:Landroid/widget/ImageView;

.field private mUnitLow:Landroid/widget/ImageView;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUseBlackTextOnWhiteWallpaper:Z

.field private mWeatherContainer:Landroid/widget/LinearLayout;

.field private mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

.field private mWeatherLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitClock:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsDualClock:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    .line 83
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    .line 131
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 128
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getCPName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/WeatherImageArchiveFactory;->make(Ljava/lang/String;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handlePedoUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
    .param p1, "x1"    # Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleWeatherUpdate(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->changeTextColorOnWhiteWallaper()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Lcom/android/keyguard/sec/AbstractWeatherImageArchive;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
    .param p1, "x1"    # Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getCPName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private changeTextColorOnWhiteWallaper()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, -0xbbbbbc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 835
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-nez v1, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    .line 838
    .local v0, "isThemeApplied":Z
    iget-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v1, :cond_3

    .line 839
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 840
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 841
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 842
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 843
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 844
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 845
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 846
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 847
    if-nez v0, :cond_0

    .line 848
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 849
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 850
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 854
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 855
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 856
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 857
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 858
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 859
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 860
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 861
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 862
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 863
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 864
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0
.end method

.method private findAndSetViews()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-nez v0, :cond_0

    .line 832
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    .line 816
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIcon:Landroid/widget/ImageView;

    .line 817
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_temp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    .line 818
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_unit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    .line 819
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_city_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    .line 820
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_city_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    .line 821
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_latte_high_temp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    .line 822
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_latte_low_temp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    .line 824
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_high_temp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    .line 825
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_low_temp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    .line 826
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_Separator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    .line 827
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_low_unit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnitLow:Landroid/widget/ImageView;

    .line 829
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_life_dust_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustLayout:Landroid/widget/LinearLayout;

    .line 830
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_life_dust:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    .line 831
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_dust_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustIcon:Landroid/widget/ImageView;

    goto/16 :goto_0
.end method

.method private getCPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCPName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEmergencyModeEnabled()Z
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getKidsModeEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 740
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kids_home_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getLastSelLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getLastSelLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 723
    :goto_0
    return-object v0

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isOwnerUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getLastSelLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPedoEnabled()Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isPedoEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getPedoEnabledForPhone()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 696
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "shealth_pedometer_view_step_count"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getProfileEnabled()Z
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isProfileOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getSettingDBAdaptiveEventEnabled()Z
    .locals 1

    .prologue
    .line 729
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalInfoEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 732
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private getTemperatureUnit(I)I
    .locals 2
    .param p1, "scale"    # I

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    const/4 v0, 0x0

    .line 593
    .local v0, "resource":I
    :goto_0
    return v0

    .line 583
    .end local v0    # "resource":I
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 589
    sget v0, Lcom/android/keyguard/R$drawable;->weather_events_c:I

    .restart local v0    # "resource":I
    goto :goto_0

    .line 585
    .end local v0    # "resource":I
    :pswitch_0
    sget v0, Lcom/android/keyguard/R$drawable;->weather_events_f:I

    .line 586
    .restart local v0    # "resource":I
    goto :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getTemperatureUnitText(I)Ljava/lang/String;
    .locals 4
    .param p1, "scale"    # I

    .prologue
    .line 597
    const-string v1, "AdaptiveEventContainerSmall"

    const-string v2, "getTemperatureUnitText()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    packed-switch p1, :pswitch_data_0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->tts_temperature:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->tts_temp_celsius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 601
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->tts_temperature:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->tts_temp_fahrenheit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getValidTemp(F)Ljava/lang/String;
    .locals 4
    .param p1, "temp"    # F

    .prologue
    .line 679
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "results":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    :cond_0
    const-string v1, "AdaptiveEventContainerSmall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v0, "-"

    .line 686
    .end local v0    # "results":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getWeatherCityIconImageResources()I
    .locals 3

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getLastSelLocation()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "cityId":Ljava/lang/String;
    const-string v2, "cityId:current"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getSystemLocation()I

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    sget v1, Lcom/android/keyguard/R$drawable;->icon_location:I

    .line 628
    .local v1, "resource":I
    :goto_0
    return v1

    .line 624
    .end local v1    # "resource":I
    :cond_0
    sget v1, Lcom/android/keyguard/R$drawable;->icon_location_unable:I

    .restart local v1    # "resource":I
    goto :goto_0

    .line 626
    .end local v1    # "resource":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "resource":I
    goto :goto_0
.end method

.method private getWeatherEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 705
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 706
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 711
    :cond_0
    :goto_0
    return v0

    .line 708
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isOwnerUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 709
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 711
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getShowLockAndCover()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handlePedoUpdate()V
    .locals 12

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 331
    const-string v7, "AdaptiveEventContainerSmall"

    const-string v10, "handlePedoUpdate()"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getPedometerEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    move-result-object v5

    .line 333
    .local v5, "pedoEvent":Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    if-nez v5, :cond_1

    .line 334
    const-string v7, "AdaptiveEventContainerSmall"

    const-string v8, "pedoEvent == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 336
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v6

    .line 341
    .local v6, "view":Landroid/view/View;
    if-nez v6, :cond_2

    .line 342
    const-string v7, "AdaptiveEventContainerSmall"

    const-string v8, "pedoEvent view == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 347
    :cond_2
    if-eqz v6, :cond_0

    .line 348
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 349
    .local v4, "parent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_3

    .line 350
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 354
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getSettingDBAdaptiveEventEnabled()Z

    move-result v3

    .line 355
    .local v3, "isSettingDBAdaptiveEventEnabled":Z
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getPedoEnabled()Z

    move-result v1

    .line 356
    .local v1, "isPedoEnabled":Z
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getPedoEnabledForPhone()Z

    move-result v2

    .line 357
    .local v2, "isPedoEnabledForPhone":Z
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v0

    .line 358
    .local v0, "hasCocktailbar":Z
    const-string v7, "AdaptiveEventContainerSmall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlePedoUpdate Show: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",   isPedoEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isPedoEnabledForPhone:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    const/4 v7, 0x1

    :goto_1
    sput-boolean v7, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    .line 361
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    sget-boolean v7, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    if-eqz v7, :cond_5

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    invoke-virtual {v6, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 363
    invoke-virtual {v6, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 364
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 365
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    move v7, v8

    .line 359
    goto :goto_1

    :cond_5
    move v7, v9

    .line 361
    goto :goto_2
.end method

.method private handleWeatherUpdate(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 24
    .param p1, "info"    # Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    .prologue
    .line 370
    const-string v20, "AdaptiveEventContainerSmall"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleWeatherUpdate() : mSmallWeather= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 559
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findAndSetViews()V

    .line 390
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateLifeDustInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getIconNumber()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherIconImageResources(I)I

    move-result v10

    .line 393
    .local v10, "img":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 394
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 396
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentTemperature()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 414
    .local v17, "tempInt":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, "curLanguage":Ljava/lang/String;
    const-string v20, "ar"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    const-string v20, "fa"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 417
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->toDigitString(I)Ljava/lang/String;

    move-result-object v18

    .line 421
    .local v18, "tempText":Ljava/lang/String;
    :goto_2
    const-string v20, "-"

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentTemperature()F

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 422
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    .line 426
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentCityName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getHighTemperature()F

    move-result v8

    .line 431
    .local v8, "highTemp":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getLowTemperature()F

    move-result v14

    .line 432
    .local v14, "lowTemp":F
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "StrHigh":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "StrLow":Ljava/lang/String;
    const-string v20, "AdaptiveEventContainerSmall"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleWeatherUpdate() High/Low only mode [high, low] = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\u00b0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnitLow:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnit(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 445
    const-string v20, "-"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/high16 v22, 0x42100000    # 36.0f

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/high16 v22, 0x41f00000    # 30.0f

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/high16 v22, 0x42100000    # 36.0f

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 471
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnitLow:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\u00b0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 516
    .end local v3    # "StrHigh":Ljava/lang/String;
    .end local v4    # "StrLow":Ljava/lang/String;
    .end local v8    # "highTemp":F
    .end local v14    # "lowTemp":F
    :goto_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    move/from16 v20, v0

    if-nez v20, :cond_15

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 520
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getHighTemperature()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 521
    .local v9, "highTempInt":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getLowTemperature()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 522
    .local v15, "lowTempInt":I
    const-string v20, "ar"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "fa"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 523
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->toDigitString(I)Ljava/lang/String;

    move-result-object v11

    .line 524
    .local v11, "latteHighTempText":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->toDigitString(I)Ljava/lang/String;

    move-result-object v12

    .line 529
    .local v12, "latteLowTempText":Ljava/lang/String;
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 530
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u00b0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 531
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u00b0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 534
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    .end local v9    # "highTempInt":I
    .end local v11    # "latteHighTempText":Ljava/lang/String;
    .end local v12    # "latteLowTempText":Ljava/lang/String;
    .end local v15    # "lowTempInt":I
    :cond_6
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->changeTextColorOnWhiteWallaper()V

    .line 558
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateTemperatureFont()V

    goto/16 :goto_0

    .line 379
    .end local v6    # "curLanguage":Ljava/lang/String;
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .end local v10    # "img":I
    .end local v17    # "tempInt":I
    .end local v18    # "tempText":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherEnabled()Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getIconNumber()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getWidgetCount()I

    move-result v20

    if-eqz v20, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getLastSelLocation()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_8

    const/16 v20, 0x1

    :goto_9
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    .line 383
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    goto/16 :goto_0

    .line 379
    :cond_8
    const/16 v20, 0x0

    goto :goto_9

    .line 400
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "img":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherCityIconImageResources()I

    move-result v5

    .line 401
    .local v5, "cityIconRes":I
    if-eqz v5, :cond_a

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 407
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitClock:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsDualClock:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setWidthWeatherCityName(ZZ)V

    goto/16 :goto_1

    .line 405
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 419
    .end local v5    # "cityIconRes":I
    .restart local v6    # "curLanguage":Ljava/lang/String;
    .restart local v17    # "tempInt":I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentTemperature()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "tempText":Ljava/lang/String;
    goto/16 :goto_2

    .line 424
    :cond_c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    goto/16 :goto_3

    .line 441
    .restart local v3    # "StrHigh":Ljava/lang/String;
    .restart local v4    # "StrLow":Ljava/lang/String;
    .restart local v8    # "highTemp":F
    .restart local v14    # "lowTemp":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 450
    :cond_e
    const/16 v19, 0x14

    .line 451
    .local v19, "textSize":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v21

    add-int v16, v20, v21

    .line 452
    .local v16, "strLength":I
    const/16 v20, 0x5

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_f

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/android/keyguard/R$dimen;->kg_weather_high_low_temp_font_small_size:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 456
    .local v13, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .end local v13    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 459
    .restart local v13    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    .end local v13    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 466
    mul-int/lit8 v20, v19, 0x3

    div-int/lit8 v19, v20, 0x4

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    .line 462
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/android/keyguard/R$dimen;->kg_weather_high_low_temp_font_normal_size:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    goto :goto_b

    .line 484
    .end local v16    # "strLength":I
    .end local v19    # "textSize":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 491
    .end local v3    # "StrHigh":Ljava/lang/String;
    .end local v4    # "StrLow":Ljava/lang/String;
    .end local v8    # "highTemp":F
    .end local v14    # "lowTemp":F
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 492
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u00b0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 494
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnit(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnitLow:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 511
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 526
    .restart local v9    # "highTempInt":I
    .restart local v15    # "lowTempInt":I
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getHighTemperature()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v11

    .line 527
    .restart local v11    # "latteHighTempText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getLowTemperature()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "latteLowTempText":Ljava/lang/String;
    goto/16 :goto_7

    .line 541
    .end local v9    # "highTempInt":I
    .end local v11    # "latteHighTempText":Ljava/lang/String;
    .end local v12    # "latteLowTempText":Ljava/lang/String;
    .end local v15    # "lowTempInt":I
    :cond_15
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnitLow:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method private inflateWeatherView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 562
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->sec_adaptive_weather_small:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    .line 563
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 564
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 565
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    const-string v1, "com.android.keyguard.sec.AdaptiveEventManager.Weather"

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEvent(Ljava/lang/String;Landroid/view/View;)V

    .line 566
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    .line 568
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$4;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->post(Ljava/lang/Runnable;)Z

    .line 576
    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    .line 154
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJProject()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 155
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isHProject()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getProfileEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 159
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getSettingDBAdaptiveEventEnabled()Z

    move-result v5

    .line 164
    .local v5, "isSettingDBAdaptiveEventEnabled":Z
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getEmergencyModeEnabled()Z

    move-result v3

    .line 165
    .local v3, "isEmergencyModeEnabled":Z
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getKidsModeEnabled()Z

    move-result v4

    .line 167
    .local v4, "isKidsMode":Z
    const-string v9, "AdaptiveEventContainerSmall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init() : isSettingDBAdaptiveEventEnabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isEmergencyModeEnabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isKidsMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz v5, :cond_10

    if-nez v3, :cond_10

    if-nez v4, :cond_10

    .line 171
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    .line 173
    .local v2, "hasCocktailbar":Z
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_c

    .line 174
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v2, :cond_7

    :cond_3
    const/4 v9, 0x0

    :goto_1
    iput-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    .line 175
    const-string v9, "AdaptiveEventContainerSmall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getWeatherEnabled()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 178
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTrusted()Z

    move-result v6

    .line 179
    .local v6, "isTrustInfo":Z
    iget-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-eqz v9, :cond_8

    if-eqz v6, :cond_8

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCheckCurrentCityLocation(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    .line 182
    const-string v9, "AdaptiveEventContainerSmall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mWeatherContainer.setVisibility("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v11

    iget-object v12, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCheckCurrentCityLocation(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v6    # "isTrustInfo":Z
    :goto_3
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->sendAdaptiveEventWeatherClockCallback()V

    .line 195
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    iget-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-nez v9, :cond_4

    .line 197
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->inflateWeatherView()V

    .line 204
    :cond_4
    :goto_5
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_f

    .line 205
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getPedoEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getPedoEnabledForPhone()Z

    move-result v9

    if-eqz v9, :cond_d

    if-nez v2, :cond_d

    const/4 v9, 0x1

    :goto_6
    sput-boolean v9, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    .line 206
    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isPedometerExist()Z

    move-result v9

    if-eqz v9, :cond_e

    sget-boolean v9, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    if-eqz v9, :cond_e

    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    sget-boolean v9, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    if-eqz v9, :cond_5

    .line 209
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updatePedoContainer()V

    .line 214
    :cond_5
    :goto_8
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    .end local v2    # "hasCocktailbar":Z
    :cond_6
    :goto_9
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isClockMovedByWeatherVisiblity()Z

    move-result v9

    if-nez v9, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->density:F

    .line 230
    .local v1, "density":F
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 231
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 232
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 233
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 234
    .local v0, "aclp":Landroid/widget/FrameLayout$LayoutParams;
    float-to-int v9, v1

    mul-int/lit8 v9, v9, 0xf

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 235
    float-to-int v9, v1

    mul-int/lit8 v9, v9, 0xf

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 236
    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 237
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 239
    .local v8, "weatherlp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 240
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 241
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 243
    .local v7, "pedolp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 244
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 245
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "aclp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "density":F
    .end local v7    # "pedolp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "weatherlp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "hasCocktailbar":Z
    :cond_7
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 179
    .restart local v6    # "isTrustInfo":Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 185
    .end local v6    # "isTrustInfo":Z
    :cond_9
    iget-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getIconNumber()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getWidgetCount()I

    move-result v9

    if-eqz v9, :cond_a

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getLastSelLocation()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_a
    iput-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    .line 189
    const-string v9, "AdaptiveEventContainerSmall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mWeatherContainer.setVisibility("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getLastSelLocation()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 185
    :cond_a
    const/4 v9, 0x0

    goto :goto_a

    .line 195
    :cond_b
    const/16 v9, 0x8

    goto/16 :goto_4

    .line 200
    :cond_c
    const-string v9, "AdaptiveEventContainerSmall"

    const-string v10, "mWeatherView == null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 205
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 206
    :cond_e
    const/16 v9, 0x8

    goto/16 :goto_7

    .line 212
    :cond_f
    const-string v9, "AdaptiveEventContainerSmall"

    const-string v10, "mPedoView == null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 216
    .end local v2    # "hasCocktailbar":Z
    :cond_10
    const-string v9, "AdaptiveEventContainerSmall"

    const-string v10, "mAdaptiveInfoArea.setVisibility(View.GONE);"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_11

    .line 219
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    .line 220
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 222
    :cond_11
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_6

    .line 223
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_9
.end method

.method private setContentObservers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_additional_steps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_additional_weather"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_show_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_additional_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kids_home_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 328
    return-void
.end method

.method private updateLifeDustInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 772
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJapanFeature()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 774
    .local v1, "isSupportLiftDustInfo":Z
    :goto_0
    if-nez v1, :cond_3

    .line 806
    :cond_1
    :goto_1
    return-void

    .end local v1    # "isSupportLiftDustInfo":Z
    :cond_2
    move v1, v3

    .line 772
    goto :goto_0

    .line 776
    .restart local v1    # "isSupportLiftDustInfo":Z
    :cond_3
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 777
    invoke-virtual {p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentLifeDust()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_4

    .line 780
    invoke-virtual {p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentLifeDust()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 791
    :pswitch_0
    sget v2, Lcom/android/keyguard/R$drawable;->weather_widget_dust_plenty:I

    .line 792
    .local v2, "res":I
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_weather_fine_dust_4_bad:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "dustText":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 796
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 798
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 782
    .end local v0    # "dustText":Ljava/lang/String;
    .end local v2    # "res":I
    :pswitch_1
    sget v2, Lcom/android/keyguard/R$drawable;->weather_widget_dust_little:I

    .line 783
    .restart local v2    # "res":I
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_weather_fine_dust_3_some_bad:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 784
    .restart local v0    # "dustText":Ljava/lang/String;
    goto :goto_2

    .line 786
    .end local v0    # "dustText":Ljava/lang/String;
    .end local v2    # "res":I
    :pswitch_2
    sget v2, Lcom/android/keyguard/R$drawable;->weather_widget_dust_veryhigh:I

    .line 787
    .restart local v2    # "res":I
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_weather_fine_dust_5_very_bad:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 788
    .restart local v0    # "dustText":Ljava/lang/String;
    goto :goto_2

    .line 801
    .end local v0    # "dustText":Ljava/lang/String;
    .end local v2    # "res":I
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 802
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 803
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateTemperatureFont()V
    .locals 4

    .prologue
    .line 749
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getClockThemeFont()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "clockThemeFont":Ljava/lang/String;
    const/4 v1, 0x0

    .line 751
    .local v1, "tf":Landroid/graphics/Typeface;
    if-eqz v0, :cond_1

    .line 752
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 756
    :goto_0
    if-nez v1, :cond_2

    .line 769
    :cond_0
    :goto_1
    return-void

    .line 754
    :cond_1
    const-string v2, "samsung-neo-num3L"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 758
    :cond_2
    iget-boolean v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    if-eqz v2, :cond_5

    .line 759
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 760
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 761
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 762
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 763
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 764
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 766
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 767
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1
.end method

.method private useUniCodeTemperatureUnit()Z
    .locals 1

    .prologue
    .line 745
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getWeatherIconImageResources(I)I
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;->getImage(I)I

    move-result v0

    return v0
.end method

.method public isShowingWeatherInfo()Z
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 254
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setContentObservers()V

    .line 255
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 263
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 142
    const-string v0, "AdaptiveEventContainerSmall"

    const-string v3, "onFinishInflate()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget v0, Lcom/android/keyguard/R$id;->adaptive_info_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    .line 145
    sget v0, Lcom/android/keyguard/R$id;->weather_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    .line 146
    sget v0, Lcom/android/keyguard/R$id;->ped_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    .line 151
    return-void

    :cond_0
    move v0, v2

    .line 148
    goto :goto_0
.end method

.method public setWidthWeatherCityName(ZZ)V
    .locals 3
    .param p1, "is4DigitClock"    # Z
    .param p2, "isDualClock"    # Z

    .prologue
    .line 632
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v1

    if-nez v1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitClock:Z

    .line 635
    iput-boolean p2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsDualClock:Z

    .line 636
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherCityIconImageResources()I

    move-result v1

    if-eqz v1, :cond_4

    .line 639
    iget-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsDualClock:Z

    if-eqz v1, :cond_2

    .line 640
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_dual_clock_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 653
    .local v0, "width":I
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 641
    .end local v0    # "width":I
    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitClock:Z

    if-eqz v1, :cond_3

    .line 642
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_min_width_4digit_clock_zero:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "width":I
    goto :goto_1

    .line 644
    .end local v0    # "width":I
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_max_width_3digit_clock_zero:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "width":I
    goto :goto_1

    .line 646
    .end local v0    # "width":I
    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsDualClock:Z

    if-eqz v1, :cond_5

    .line 647
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_dual_clock_width_without_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "width":I
    goto :goto_1

    .line 648
    .end local v0    # "width":I
    :cond_5
    iget-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitClock:Z

    if-eqz v1, :cond_6

    .line 649
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_min_width_4digit_clock_zero_without_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "width":I
    goto :goto_1

    .line 651
    .end local v0    # "width":I
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_max_width_3digit_clock_zero_without_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "width":I
    goto :goto_1
.end method

.method public toDigitString(I)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # I

    .prologue
    .line 662
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 663
    .local v3, "lengthSize":I
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 664
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-lez v3, :cond_0

    .line 668
    const-string v2, ""

    .line 669
    .local v2, "formatter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .end local v2    # "formatter":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 672
    :cond_0
    const-string v4, "%d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public updateAdaptiveContainer(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 274
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 276
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updatePedoContainer()V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateContainer(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateAdaptiveContainer(I)V

    .line 309
    return-void
.end method

.method protected updatePedoContainer()V
    .locals 3

    .prologue
    const/16 v2, 0x132f

    .line 266
    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "C updatePedoContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 271
    return-void
.end method

.method public updateWeatherContainerVisible(Z)V
    .locals 0
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    .line 304
    return-void
.end method

.method public updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    .prologue
    const/16 v2, 0x1330

    .line 286
    if-nez p1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-nez v0, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

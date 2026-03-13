.class public Lcom/sec/android/sviewcover/SViewCoverMiniView;
.super Landroid/widget/FrameLayout;
.source "SViewCoverMiniView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;,
        Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_REMOTEVIEWS_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final ACTION_COVER_EVENT_FINISHED:Ljava/lang/String; = "com.sec.android.cover.notification.COVER_EVENT_FINISHED"

.field private static final COVER_TYPE_FLIP_WALLET:I = 0x0

.field private static final COVER_TYPE_NONE:I = 0x2

.field private static final COVER_TYPE_SVIEW:I = 0x1

.field private static final COVER_TYPE_SVIEW_CHARGER:I = 0x3

.field private static final DEBUG:Z = true

.field private static final MGS_HIDE_SET_VISIBILITY_VIEW:I = 0x9

.field private static final MGS_SHOW_SET_VISIBILITY_VIEW:I = 0x8

.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final MSG_ADD_VIEW_TO_WINDOWMANAGER:I = 0x7

.field private static final MSG_BACKGROUND_COLOR_UPDATED:I = 0x6

.field private static final MSG_UPDATE_REMOTEVIEWS:I = 0x3

.field private static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field private static final PICK_UP_MOTION:Ljava/lang/String; = "com.android.server.NotificationManagerService.PickupMotionArrived"

.field private static final SPEN_STATE:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field private static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final SVIEW_BACKGROUND_CUSTOM:I = 0x0

.field private static final SVIEW_BACKGROUND_RANDOM:I = 0x1

.field private static final SVIEW_COVER_DIM_TIMEOUT_DEFAULT:I = 0x0

.field private static final SVIEW_COVER_DISPLAY_TIMEOUT_DEFAULT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "SViewCoverMiniView"

.field private static final TPHONE_PKG_NAME:Ljava/lang/String; = "com.skt.prod.dialer"

.field private static mCoverOpen:Z

.field public static mIsNotSCover1:Z


# instance fields
.field private final INVALID_ID:I

.field private final KEYGUARD_PACKAGE:Ljava/lang/String;

.field private final KEY_DEFAULT_WALLPAPER_RES_ID:Ljava/lang/String;

.field private mBackgroundOption:I

.field private mBatteryContainer:Landroid/widget/FrameLayout;

.field private mBatteryRemoteView:Landroid/view/View;

.field private mCalendarRemoteView:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

.field mCoverOpenedIntent:Landroid/content/Intent;

.field private mCurrentCoverBackgroundColor:I

.field private mCurrentCoverType:I

.field private mCurrntColor:I

.field private mHandler:Landroid/os/Handler;

.field private mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

.field private mHomeWidget:Landroid/view/View;

.field private mIsAddedMissedEventWidget:Z

.field private mIsSmartAlertNeedToBeChecked:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field mMissedCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

.field private mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

.field private mMissedEventWidgetLayout:Landroid/view/View;

.field private mMusicContatiner:Landroid/widget/FrameLayout;

.field private mMusicRemoteView:Landroid/view/View;

.field private mNeedToAddMissedEventWidget:Z

.field private mPMS:Landroid/os/PowerManager;

.field private mPhoneState:I

.field private mSHealthContainer:Landroid/widget/FrameLayout;

.field private mSViewCoverBackground:Landroid/widget/ImageView;

.field private mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

.field private mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

.field private mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

.field private mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

.field private mSVoiceRemoteView:Landroid/view/View;

.field private mSettingPage:Landroid/view/View;

.field private mShealthRemoteView:Landroid/view/View;

.field private mShortcuts:Landroid/view/View;

.field private mShowingCoverUI:Z

.field private mSuppressCoverUI:Z

.field mUnlockAreaLevel:I

.field private mVolumeRemoteView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field mWindowManagerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverOpen:Z

    .line 175
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsNotSCover1:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 340
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->init()V

    .line 341
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 345
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->init()V

    .line 346
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 349
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrentCoverType:I

    .line 95
    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBackgroundOption:I

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShowingCoverUI:Z

    .line 99
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mNeedToAddMissedEventWidget:Z

    .line 100
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsAddedMissedEventWidget:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsSmartAlertNeedToBeChecked:Z

    .line 139
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSuppressCoverUI:Z

    .line 141
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mPhoneState:I

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mWindowManagerHandler:Landroid/os/Handler;

    .line 147
    const-string v0, "keyguard_default_wallpaper_res_id"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->KEY_DEFAULT_WALLPAPER_RES_ID:Ljava/lang/String;

    .line 148
    const-string v0, "com.android.keyguard"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->KEYGUARD_PACKAGE:Ljava/lang/String;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->INVALID_ID:I

    .line 151
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mUnlockAreaLevel:I

    .line 177
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .line 207
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;-><init>(Lcom/sec/android/sviewcover/SViewCoverMiniView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHandler:Landroid/os/Handler;

    .line 351
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    .line 353
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->init()V

    .line 354
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Lcom/sec/android/sviewcover/SViewCoverPager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->moveToHomePage()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/sviewcover/SViewCoverMiniView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mNeedToAddMissedEventWidget:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/sviewcover/SViewCoverMiniView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrentCoverType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/sviewcover/SViewCoverMiniView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateSViewCoverUnlockArea(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mPMS:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/sviewcover/SViewCoverMiniView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mPhoneState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/sviewcover/SViewCoverMiniView;Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;
    .param p1, "x1"    # Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->handleRemoteView(Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateMissedEventWidget()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->makeSViewMeasureSpec()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShortcuts:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Lcom/sec/android/sviewcover/SViewCoverColorSelector;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateBatteryContainer()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsSmartAlertNeedToBeChecked:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/sviewcover/SViewCoverMiniView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMiniView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsSmartAlertNeedToBeChecked:Z

    return p1
.end method

.method private getBackgroundOption()I
    .locals 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_random"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getRandomBackgroundColor()I
    .locals 7

    .prologue
    .line 742
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 743
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    const/high16 v6, -0x1000000

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 749
    .local v0, "currentColor":I
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 750
    .local v1, "date":Ljava/util/Date;
    const-string v4, "dd"

    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 751
    .local v2, "day":I
    const/4 v3, -0x1

    .line 753
    .local v3, "newColor":I
    rem-int/lit8 v4, v2, 0xa

    if-nez v4, :cond_1

    .line 754
    sget-object v4, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/16 v5, 0x9

    aget v3, v4, v5

    .line 758
    :goto_1
    const-string v4, "SViewCoverMiniView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRandomBackgroundColor( day = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) , newColor : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentColor :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    if-eq v3, v0, :cond_2

    .line 762
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 766
    .end local v3    # "newColor":I
    :goto_2
    return v3

    .line 746
    .end local v0    # "currentColor":I
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "day":I
    :cond_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    const v6, -0xd1e5f3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "currentColor":I
    goto :goto_0

    .line 756
    .restart local v1    # "date":Ljava/util/Date;
    .restart local v2    # "day":I
    .restart local v3    # "newColor":I
    :cond_1
    sget-object v4, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    rem-int/lit8 v5, v2, 0xa

    add-int/lit8 v5, v5, -0x1

    aget v3, v4, v5

    goto :goto_1

    :cond_2
    move v3, v0

    .line 766
    goto :goto_2
.end method

.method private getSViewCoverSystemFeatureLevel()V
    .locals 4

    .prologue
    .line 396
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 397
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 398
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mUnlockAreaLevel:I

    .line 399
    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mUnlockAreaLevel:I

    .line 400
    const-string v1, "SViewCoverMiniView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this Cover app level is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mUnlockAreaLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    return-void
.end method

.method private handleRemoteView(Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;)V
    .locals 7
    .param p1, "coverRemoteViews"    # Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 655
    const-string v4, "SViewCoverMiniView"

    const-string v5, "handleUpdateRemoteView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v1, p1, Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;->type:Ljava/lang/String;

    .line 657
    .local v1, "type":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;->visibility:Z

    .line 658
    .local v2, "visibility":Z
    iget-object v0, p1, Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;->remoteViews:Landroid/widget/RemoteViews;

    .line 660
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    const-string v4, "shealth"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 661
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSHealthContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    .line 662
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSHealthContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShealthRemoteView:Landroid/view/View;

    .line 664
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateSHealthContainer()V

    .line 701
    :cond_2
    :goto_0
    return-void

    .line 666
    :cond_3
    const-string v4, "music"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 667
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMusicContatiner:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_5

    .line 668
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMusicContatiner:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_4
    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMusicRemoteView:Landroid/view/View;

    .line 670
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateMusicContainer()V

    goto :goto_0

    .line 672
    :cond_6
    const-string v4, "battery"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 673
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_8

    .line 674
    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_7
    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryRemoteView:Landroid/view/View;

    .line 676
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateBatteryContainer()V

    goto :goto_0

    .line 678
    :cond_9
    const-string v4, "svoice"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 679
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_b

    .line 680
    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_a
    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSVoiceRemoteView:Landroid/view/View;

    .line 682
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateBatteryContainer()V

    .line 683
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->moveToHomePage()V

    .line 684
    invoke-direct {p0, v6}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateSViewCoverUnlockArea(Z)V

    goto :goto_0

    .line 686
    :cond_c
    const-string v4, "calendar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 687
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_e

    .line 688
    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_d
    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCalendarRemoteView:Landroid/view/View;

    .line 690
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateBatteryContainer()V

    goto :goto_0

    .line 692
    :cond_f
    const-string v4, "volume"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 693
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_2

    .line 694
    if-eqz v2, :cond_10

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_10
    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mVolumeRemoteView:Landroid/view/View;

    .line 696
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateBatteryContainer()V

    .line 697
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->moveToHomePage()V

    .line 698
    invoke-direct {p0, v6}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateSViewCoverUnlockArea(Z)V

    goto/16 :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 358
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverOpenedIntent:Landroid/content/Intent;

    .line 360
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v1, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v1, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v1, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v1, "com.android.server.NotificationManagerService.PickupMotionArrived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverMiniView$4;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/sviewcover/SViewCoverMiniView$4;-><init>(Lcom/sec/android/sviewcover/SViewCoverMiniView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContentObserver:Landroid/database/ContentObserver;

    .line 384
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_background_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 388
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->getBackgroundOption()I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBackgroundOption:I

    .line 390
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->getSViewCoverSystemFeatureLevel()V

    .line 392
    return-void
.end method

.method public static isCoverOpen()Z
    .locals 1

    .prologue
    .line 1014
    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverOpen:Z

    return v0
.end method

.method private makeSViewMeasureSpec()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 926
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_0

    .line 930
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 932
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 934
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v3, v4, v5

    .line 936
    .local v3, "width":I
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 938
    .local v0, "height":I
    const-string v4, "SViewCoverMiniView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeSViewMeasureSpec width :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/sviewcover/SViewCoverPager;->measure(II)V

    .line 943
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method private moveToHomePage()V
    .locals 3

    .prologue
    .line 946
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHomeWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 948
    .local v0, "home_index":I
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/sviewcover/SViewCoverPager;->setCurrentPage(I)V

    .line 950
    .end local v0    # "home_index":I
    :cond_0
    return-void
.end method

.method private onSViewCoverHide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 593
    const-string v0, "SViewCoverMiniView"

    const-string v1, "handleHide()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsNotSCover1:Z

    if-eqz v0, :cond_0

    .line 595
    const-string v0, "SViewCoverMiniView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SViewPager Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->setStatusBarDisable(I)V

    .line 599
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 601
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShowingCoverUI:Z

    if-eqz v0, :cond_1

    .line 602
    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateSViewCoverUnlockArea(Z)V

    .line 603
    iput-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShowingCoverUI:Z

    .line 604
    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsNotSCover1:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverOpen:Z

    if-eqz v0, :cond_1

    .line 605
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->moveToHomePage()V

    .line 608
    :cond_1
    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsNotSCover1:Z

    if-eqz v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShortcuts:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShortcuts:Landroid/view/View;

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v0, v4}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->setMarquee(Z)V

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mPMS:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 617
    const-string v0, "SViewCoverMiniView"

    const-string v1, "userActivity at handleHide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_3
    return-void
.end method

.method private onSViewCoverShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 552
    const-string v0, "SViewCoverMiniView"

    const-string v1, "SViewCoverView : onSViewCoverShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverOpen:Z

    if-eqz v0, :cond_0

    .line 555
    const-string v0, "SViewCoverMiniView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShow( not show SViewCover) mCoverOpen ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :goto_0
    return-void

    .line 563
    :cond_0
    const-string v0, "SViewCoverMiniView"

    const-string v1, "onSViewCoverShow()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 566
    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsNotSCover1:Z

    if-eqz v0, :cond_1

    .line 567
    const-string v0, "SViewCoverMiniView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SViewPager Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->makeSViewMeasureSpec()V

    .line 569
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShortcuts:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShortcuts:Landroid/view/View;

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v0, v3}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->setMarquee(Z)V

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrntColor:I

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->updateCurrentCoverColor(I)V

    .line 580
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->moveToHomePage()V

    .line 581
    invoke-direct {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateSViewCoverUnlockArea(Z)V

    .line 584
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->updateMissedEvents()V

    .line 587
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShowingCoverUI:Z

    .line 589
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->setStatusBarDisable(I)V

    goto :goto_0

    .line 578
    :cond_3
    const-string v0, "SViewCoverMiniView"

    const-string v1, "mSViewCoverColorSelector is null, not yet ready "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendCoverEventProcessingFinishedNotification()V
    .locals 5

    .prologue
    .line 917
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->isCoverOpen()Z

    move-result v0

    .line 918
    .local v0, "coverOpened":Z
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cover.notification.COVER_EVENT_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 919
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "coverOpen"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 920
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 922
    const-string v2, "SViewCoverMiniView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cover event processing notification sent : coverOpened = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return-void
.end method

.method private sendCoverStateBroadCastAsUser()V
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverOpenedIntent:Landroid/content/Intent;

    const-string v1, "coverOpen"

    sget-boolean v2, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverOpen:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    const-string v0, "SViewCoverMiniView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cover open = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , broadcasted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverOpenedIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 643
    return-void
.end method

.method private setKeyguardDefaultWallpaper(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 518
    if-nez p1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v4

    .line 521
    :cond_1
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 522
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 524
    .local v1, "keyguardRes":Landroid/content/res/Resources;
    :try_start_0
    const-string v5, "com.android.keyguard"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 529
    if-eqz v1, :cond_0

    .line 532
    const/4 v3, -0x1

    .line 534
    .local v3, "resourceId":I
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "keyguard_default_wallpaper_res_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 540
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 543
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 544
    const/4 v4, 0x1

    goto :goto_0

    .line 525
    .end local v3    # "resourceId":I
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 536
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "resourceId":I
    :catch_1
    move-exception v0

    .line 537
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setStatusBarDisable(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 624
    const-string v1, "SViewCoverMiniView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatusBar Disable state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 628
    .local v0, "statusMgr":Landroid/app/StatusBarManager;
    invoke-virtual {v0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 630
    .end local v0    # "statusMgr":Landroid/app/StatusBarManager;
    :cond_0
    return-void
.end method

.method private declared-synchronized updateBatteryContainer()V
    .locals 5

    .prologue
    .line 771
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 772
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 774
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mVolumeRemoteView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 775
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mVolumeRemoteView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 776
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 777
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mVolumeRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mVolumeRemoteView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 783
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryRemoteView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 784
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryRemoteView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 785
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 786
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 788
    :cond_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryRemoteView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 771
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 792
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSVoiceRemoteView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 793
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSVoiceRemoteView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 794
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_5

    .line 795
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSVoiceRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 797
    :cond_5
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSVoiceRemoteView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 801
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_6
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    if-eqz v1, :cond_8

    .line 802
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getMissedEventCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 803
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 804
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_7

    .line 805
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 807
    :cond_7
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 809
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateSViewCoverUnlockArea(Z)V

    goto :goto_0

    .line 813
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_8
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCalendarRemoteView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCalendarRemoteView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 815
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_9

    .line 816
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCalendarRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 818
    :cond_9
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCalendarRemoteView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private updateMissedEventWidget()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 844
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    .line 845
    .local v0, "isSecureLock":Z
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_1

    .line 846
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mNeedToAddMissedEventWidget:Z

    if-nez v1, :cond_3

    .line 847
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsAddedMissedEventWidget:Z

    if-eqz v1, :cond_1

    .line 848
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidgetLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    .line 849
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsAddedMissedEventWidget:Z

    .line 850
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mUnlockAreaLevel:I

    if-ne v1, v4, :cond_2

    .line 851
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->hideNotiPageButton()V

    .line 871
    :cond_1
    :goto_0
    return-void

    .line 852
    :cond_2
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mUnlockAreaLevel:I

    if-ne v1, v5, :cond_1

    goto :goto_0

    .line 859
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mNeedToAddMissedEventWidget:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsAddedMissedEventWidget:Z

    if-nez v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidgetLayout:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 861
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsAddedMissedEventWidget:Z

    .line 862
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mUnlockAreaLevel:I

    if-ne v1, v4, :cond_4

    .line 863
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->showNotiPageButton()V

    goto :goto_0

    .line 864
    :cond_4
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mUnlockAreaLevel:I

    if-ne v1, v5, :cond_1

    goto :goto_0
.end method

.method private updateMusicContainer()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 826
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMusicContatiner:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMusicContatiner:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 828
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMusicRemoteView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMusicContatiner:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMusicRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 832
    :cond_0
    return-void
.end method

.method private updateSHealthContainer()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 835
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSHealthContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSHealthContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 837
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShealthRemoteView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSHealthContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShealthRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 841
    :cond_0
    return-void
.end method

.method private updateSViewCoverUnlockArea(Z)V
    .locals 9
    .param p1, "visibility"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 957
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-nez v5, :cond_1

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHomeWidget:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/sec/android/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 962
    .local v0, "homeIndex":I
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v5

    if-ne v5, v0, :cond_2

    .line 963
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mUnlockAreaLevel:I

    if-ne v5, v8, :cond_2

    .line 964
    if-eqz p1, :cond_4

    .line 965
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->handleShow()V

    .line 977
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSVoiceRemoteView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-ne v5, v7, :cond_5

    move v1, v3

    .line 979
    .local v1, "isSVoiceRemoteViewExist":Z
    :goto_2
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mVolumeRemoteView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-ne v5, v7, :cond_6

    move v2, v3

    .line 981
    .local v2, "isVolumeRemoteViewExist":Z
    :goto_3
    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mUnlockAreaLevel:I

    if-ne v3, v8, :cond_8

    .line 982
    if-nez v1, :cond_3

    if-eqz v2, :cond_7

    .line 983
    :cond_3
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->handleHideIconsOnly()V

    goto :goto_0

    .line 967
    .end local v1    # "isSVoiceRemoteViewExist":Z
    .end local v2    # "isVolumeRemoteViewExist":Z
    :cond_4
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->handleHide()V

    goto :goto_1

    :cond_5
    move v1, v4

    .line 977
    goto :goto_2

    .restart local v1    # "isSVoiceRemoteViewExist":Z
    :cond_6
    move v2, v4

    .line 979
    goto :goto_3

    .line 985
    .restart local v2    # "isVolumeRemoteViewExist":Z
    :cond_7
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->handleShowIconsOnly()V

    goto :goto_0

    .line 988
    :cond_8
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public addPagerView(Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;)V
    .locals 2
    .param p1, "page"    # Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_0

    .line 876
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;->SETTING_PAGE:Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    if-ne p1, v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSettingPage:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 878
    const-string v0, "SViewCoverMiniView"

    const-string v1, "mSViewPager.addView(mSettingPage)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;->MUSIC_PAGE:Lcom/sec/android/sviewcover/SViewCoverMiniView$SubPage;

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1019
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1020
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1028
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1022
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mPMS:Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    .line 1023
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 997
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    const-string v0, "mSViewCoverDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 999
    const-string v0, "mSViewPager="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1001
    const-string v0, "mCurrentContextualWidget="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1002
    const-string v0, " mSuppressCoverUI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1003
    const-string v0, " mShowingCoverUI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1005
    const-string v0, " mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    return-void
.end method

.method protected handleBackgroundColorUpdated()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x1000000

    .line 704
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->getBackgroundOption()I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBackgroundOption:I

    .line 706
    const-string v1, "SViewCoverMiniView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SVIEW_BACKGROUND_RANDOM complete : color "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBackgroundOption : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBackgroundOption:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBackgroundOption:I

    if-ne v1, v5, :cond_3

    .line 710
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->getRandomBackgroundColor()I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrentCoverBackgroundColor:I

    .line 721
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 722
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverBackground:Landroid/widget/ImageView;

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 723
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrentCoverBackgroundColor:I

    if-ne v1, v4, :cond_5

    .line 724
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 730
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 731
    .local v0, "WallpaperTest":Z
    if-ne v0, v5, :cond_2

    .line 732
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->setKeyguardDefaultWallpaper(Landroid/content/Context;)Z

    .line 734
    :cond_2
    return-void

    .line 711
    .end local v0    # "WallpaperTest":Z
    :cond_3
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBackgroundOption:I

    if-nez v1, :cond_0

    .line 712
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 713
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_background_color"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrentCoverBackgroundColor:I

    goto :goto_0

    .line 716
    :cond_4
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_background_color"

    const v3, -0xd1e5f3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrentCoverBackgroundColor:I

    goto :goto_0

    .line 726
    :cond_5
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 647
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 650
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v6, -0x1000000

    const/4 v5, 0x0

    .line 406
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 407
    const-string v0, "SViewCoverMiniView"

    const-string v2, "onFinishInflate()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mPMS:Landroid/os/PowerManager;

    .line 409
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 416
    const-string v0, "SViewCoverMiniView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new File(PATH_FILE_COVER_COLOR).exists() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 420
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "s_vew_cover_background_color"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrentCoverBackgroundColor:I

    .line 427
    :goto_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_background:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverBackground:Landroid/widget/ImageView;

    .line 429
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverPager;->removeAllViews()V

    .line 431
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_pager:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverPager;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    .line 432
    const-string v0, "SViewCoverMiniView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSViewPager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsNotSCover1:Z

    .line 456
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_3

    .line 457
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsAddedMissedEventWidget:Z

    .line 458
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverBackground:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 460
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrentCoverBackgroundColor:I

    if-ne v0, v6, :cond_6

    .line 461
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 466
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_home_widget:I

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHomeWidget:Landroid/view/View;

    .line 467
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHomeWidget:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->missed_event_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    .line 469
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHomeWidget:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_shealth_contatiner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSHealthContainer:Landroid/widget/FrameLayout;

    .line 471
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHomeWidget:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_battery_contatiner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mBatteryContainer:Landroid/widget/FrameLayout;

    .line 473
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_missed_event_layout:I

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidgetLayout:Landroid/view/View;

    .line 475
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidgetLayout:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_event:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .line 477
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->setCallbacks(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;)V

    .line 479
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->registerObserverAndReceiver()V

    .line 480
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->updateMissedEvents()V

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_shortcuts:I

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShortcuts:Landroid/view/View;

    .line 483
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mShortcuts:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcuts_music_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mMusicContatiner:Landroid/widget/FrameLayout;

    .line 485
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_page_navigation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    .line 486
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setPager(Lcom/sec/android/sviewcover/SViewCoverPager;)V

    .line 488
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_selector:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .line 489
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setControlView(Landroid/view/View;)V

    .line 494
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHomeWidget:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 512
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->moveToHomePage()V

    .line 514
    :cond_3
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 515
    return-void

    .line 423
    :cond_4
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "s_vew_cover_background_color"

    const v3, -0xd1e5f3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrentCoverBackgroundColor:I

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 433
    goto/16 :goto_1

    .line 463
    :cond_6
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto/16 :goto_2
.end method

.method public onSystemReady()V
    .locals 0

    .prologue
    .line 1011
    return-void
.end method

.method public updateCoverState(ZII)V
    .locals 3
    .param p1, "isCoverOpen"    # Z
    .param p2, "coverType"    # I
    .param p3, "coverColor"    # I

    .prologue
    .line 888
    const-string v0, "SViewCoverMiniView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SViewCoverView : updateCoverState  isCoverOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " coverType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " coverColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    sput-boolean p1, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCoverOpen:Z

    .line 894
    iput p3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mCurrntColor:I

    .line 898
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 899
    :cond_0
    if-eqz p1, :cond_1

    .line 900
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->onSViewCoverHide()V

    .line 903
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->sendCoverStateBroadCastAsUser()V

    .line 913
    :goto_1
    return-void

    .line 902
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->onSViewCoverShow()V

    goto :goto_0

    .line 906
    :cond_2
    const-string v0, "SViewCoverMiniView"

    const-string v1, "this is not SView Cover stopState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->onSViewCoverHide()V

    goto :goto_1
.end method

.method public updateSupressCover(Z)V
    .locals 0
    .param p1, "isSupress"    # Z

    .prologue
    .line 953
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mSuppressCoverUI:Z

    .line 954
    return-void
.end method

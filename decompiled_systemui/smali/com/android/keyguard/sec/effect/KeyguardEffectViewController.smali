.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
.super Ljava/lang/Object;
.source "KeyguardEffectViewController.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LaunchTransitionCallback;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;
    }
.end annotation


# static fields
.field private static final ACTION_IMAGES_CHANGED:Ljava/lang/String; = "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

.field public static final ACTION_LOCKSCREEN_IMAGE_CHANGED:Ljava/lang/String; = "com.sec.android.gallery3d.LOCKSCREEN_IMAGE_CHANGED"

.field public static final EFFECT_ABSTRACTTILE:I = 0xb

.field public static final EFFECT_AUTUMN:I = 0x53

.field public static final EFFECT_BLIND:I = 0x5

.field public static final EFFECT_BRILLIANTCUT:I = 0x9

.field public static final EFFECT_BRILLIANTRING:I = 0x8

.field public static final EFFECT_COLOURDROPLET:I = 0xf

.field public static final EFFECT_GEOMETRICMOSAIC:I = 0xc

.field public static final EFFECT_HOME:I = -0x2

.field public static final EFFECT_JUST_LOCK_LIVE_WALLPAPER:I = 0x64

.field public static final EFFECT_LIGHT:I = 0x2

.field public static final EFFECT_LIQUID:I = 0xd

.field public static final EFFECT_LIVEWALLPAPER:I = -0x1

.field public static final EFFECT_MASS_RIPPLE:I = 0x7

.field public static final EFFECT_MASS_TENSION:I = 0x6

.field public static final EFFECT_MONTBLANC:I = 0xa

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_PARTICLE:I = 0xe

.field public static final EFFECT_POPPING_COLOR:I = 0x3

.field public static final EFFECT_RIPPLE:I = 0x1

.field public static final EFFECT_SEASONAL:I = 0x55

.field public static final EFFECT_SPRING:I = 0x51

.field public static final EFFECT_SUMMER:I = 0x52

.field public static final EFFECT_TILT:I = 0x65

.field public static final EFFECT_WATERCOLOR:I = 0x4

.field public static final EFFECT_WINTER:I = 0x54

.field public static final EFFECT_ZOOM_PANNING:I = 0x50

.field private static final EMPTY_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/keyguard_empty_image.jpg"

.field public static final KEYGUARD_DEFAULT_WALLPAPER_TYPE_BRILLIANT:I = 0x1

.field public static final KEYGUARD_WALLPAPER_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardWallpaperService"

.field public static final KEYGUARD_WALLPAPER_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field public static final LOCK_SOUND_AUTUMN:Ljava/lang/String; = "/system/media/audio/ui/autumn_lock.ogg"

.field public static final LOCK_SOUND_NONE:Ljava/lang/String; = "/system/media/audio/ui/Lock_none_effect.ogg"

.field public static final LOCK_SOUND_SPRING:Ljava/lang/String; = "/system/media/audio/ui/spring_lock.ogg"

.field public static final LOCK_SOUND_SUMMER:Ljava/lang/String; = "/system/media/audio/ui/summer_lock.ogg"

.field public static final LOCK_SOUND_WINTER:Ljava/lang/String; = "/system/media/audio/ui/winter_lock.ogg"

.field private static final MSG_CHARGE_STATE_CHANGED:I = 0x12f4

.field private static final MSG_LIVEWEATHER_DELETE_NOTIFICATION:I = 0x12f5

.field private static final MSG_WALLPAPER_FILE_CHANGED:I = 0x12f2

.field private static final MSG_WALLPAPER_PATH_CHANGED:I = 0x12f1

.field private static final MSG_WALLPAPER_PRELOAD_CHANGED:I = 0x12f3

.field public static final MSG_WALLPAPER_TYPE_CHANGED:I = 0x12f0

.field private static final RICH_LOCK_CATEGORIES_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

.field private static final RICH_LOCK_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator"

.field public static final SETTING_KEYGUARD_DEFAULT_WALLPAPER_TYPE_FOR_EFFECT:Ljava/lang/String; = "keyguard_default_wallpaper_type_for_effect"

.field public static final SETTING_KEYGUARD_SET_DEFAULT_WALLPAPER:Ljava/lang/String; = "keyguard_set_default_wallpaper"

.field public static final SETTING_LOCKSCREEN_MONTBLANC_WALLPAPER:Ljava/lang/String; = "lockscreen_montblanc_wallpaper"

.field public static final SLIDING_INTERNAL_EVERY_12HOUR:I = 0x2

.field public static final SLIDING_INTERNAL_EVERY_1HOUR:I = 0x1

.field public static final SLIDING_INTERNAL_EVERY_24HOUR:I = 0x3

.field public static final SLIDING_INTERNAL_SCREENOFF:I = 0x0

.field public static final SlidingWallpaperPath:Ljava/lang/String; = "com.sec.android.slidingGallery"

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewController"

.field public static final UNLOCK_SOUND_AUTUMN:Ljava/lang/String; = "/system/media/audio/ui/autumn_unlock.ogg"

.field public static final UNLOCK_SOUND_NONE:Ljava/lang/String; = "/system/media/audio/ui/Unlock_none_effect.ogg"

.field public static final UNLOCK_SOUND_SPRING:Ljava/lang/String; = "/system/media/audio/ui/spring_unlock.ogg"

.field public static final UNLOCK_SOUND_SUMMER:Ljava/lang/String; = "/system/media/audio/ui/summer_unlock.ogg"

.field public static final UNLOCK_SOUND_WINTER:Ljava/lang/String; = "/system/media/audio/ui/winter_unlock.ogg"

.field private static displayHeight:I

.field private static displayWidth:I

.field private static mOrientation:I

.field private static mSlidingHour:I

.field private static mSlidingInterval:I

.field private static mSlidingMin:I

.field private static mSlidingScreenOffTime:J

.field private static mSlidingTime:J

.field private static mSlidingTotalCount:I

.field private static mSlidingWallpaperIndex:I

.field private static sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

.field public static uriArray:Ljava/util/ArrayList;
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
.field private final mAdminReceiver:Landroid/content/BroadcastReceiver;

.field private mAffordanceRect:Landroid/graphics/Rect;

.field private mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

.field private mBackgroundRootLayout:Landroid/widget/FrameLayout;

.field private mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mBgHasAddChargeView:Z

.field private mBootCompleted:Z

.field private mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mCurrentUserId:I

.field private mEmergencyModeStateChanged:Z

.field private mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

.field private mFestivalEffectEnabled:Z

.field private mFileObserver:Landroid/os/FileObserver;

.field private mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mForegroundCircleViewSub:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mForegroundRootLayout:Landroid/widget/FrameLayout;

.field private mForegroundRootLayoutSub:Landroid/widget/FrameLayout;

.field private mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private final mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowing:Z

.field private mIsVisible:Z

.field private mIsWallpaperServiceBound:Z

.field private mKeyguardUnlockViewSub:Lcom/android/keyguard/sec/KeyguardUnlockViewSub;

.field private final mKeyguardWallpaperConnection:Landroid/content/ServiceConnection;

.field private mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

.field private mMusicBackgroundSet:Z

.field private mNeedTwoCircleView:Z

.field private mNeedUpdateEffectScreen:Z

.field private mNotificationPanel:Landroid/widget/FrameLayout;

.field private mOldEffect:I

.field private mOldPrimaryEffect:Ljava/lang/String;

.field mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

.field private mRegisterReceiver:Z

.field private mResetPreviewRunnable:Ljava/lang/Runnable;

.field private mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

.field private mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

.field private mStatusBarGradationView:Landroid/view/View;

.field private mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserSwitching:Z

.field private mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

.field private mVisibleNotificationBottom:I

.field protected mWallpaperPath:Ljava/lang/String;

.field private mWallpaperProcessSeparated:Z

.field private mWallpaperShowCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;

.field private mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 250
    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    .line 251
    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTotalCount:I

    .line 252
    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    .line 253
    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    .line 254
    sput-wide v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    .line 255
    sput-wide v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    .line 257
    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    .line 258
    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    .line 165
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    .line 166
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    .line 167
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 169
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 170
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 171
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 172
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .line 173
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    .line 174
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    .line 175
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 176
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 178
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    .line 184
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsVisible:Z

    .line 190
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    .line 196
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUserSwitching:Z

    .line 215
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    .line 216
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    .line 224
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBootCompleted:Z

    .line 231
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    .line 259
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z

    .line 261
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedTwoCircleView:Z

    .line 282
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayoutSub:Landroid/widget/FrameLayout;

    .line 283
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleViewSub:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 288
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    .line 316
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 358
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 366
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    .line 384
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    .line 437
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    .line 438
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    .line 440
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    .line 492
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperShowCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;

    .line 494
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperConnection:Landroid/content/ServiceConnection;

    .line 2353
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$10;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$10;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mResetPreviewRunnable:Ljava/lang/Runnable;

    .line 394
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    .line 395
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 397
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lockscreen_wallpaper_path"

    const/4 v7, -0x2

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    .line 401
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v6, "com.sec.android.slidingGallery"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    .line 404
    const-string v3, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyguardEffectViewMain SlidingWallpaperPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    new-instance v2, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v2, p1}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    .line 407
    .local v2, "mSThemeManager":Lcom/samsung/android/theme/SThemeManager;
    const-string v3, "2"

    invoke-virtual {v2, v4}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 408
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    .line 412
    :goto_0
    new-instance v3, Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p1, v6}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    .line 413
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPowerManager:Landroid/os/PowerManager;

    .line 415
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperContentObservers()V

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayWidth:I

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayHeight:I

    .line 421
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    .line 422
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v3, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    .line 427
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 428
    .local v0, "borderCircleLock":I
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border_shortcut:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 430
    .local v1, "borderShortcut":I
    if-eq v0, v1, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedTwoCircleView:Z

    .line 431
    return-void

    .line 410
    .end local v0    # "borderCircleLock":I
    .end local v1    # "borderShortcut":I
    :cond_2
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    goto :goto_0

    .restart local v0    # "borderCircleLock":I
    .restart local v1    # "borderShortcut":I
    :cond_3
    move v3, v5

    .line 430
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperImageChanged()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->chenckSlidingWallpaperByScreenon()V

    return-void
.end method

.method static synthetic access$1202(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 106
    sput-wide p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    return-wide p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .param p1, "x1"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .param p1, "x1"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleSetGradationLayer()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperShowCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mResetPreviewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleChargeStateChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->makeLiveWeatherDeleteNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUserSwitching:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V

    return-void
.end method

.method private static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "orientationDegree"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1787
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1788
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1791
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1795
    :goto_0
    return-object v7

    .line 1793
    :catch_0
    move-exception v0

    .line 1795
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private chenckSlidingWallpaperByScreenon()V
    .locals 5

    .prologue
    const/16 v4, 0x12f2

    .line 1572
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1573
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1574
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1575
    const-string v2, "com.sec.android.gallery3d.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1577
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1578
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    .line 1580
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1582
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1583
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1584
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1586
    :cond_2
    return-void
.end method

.method private createEffectInstance(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    .locals 7
    .param p1, "nameOfClass"    # Ljava/lang/String;

    .prologue
    .line 2517
    const/4 v1, 0x0

    .line 2518
    .local v1, "createdEffect":Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    if-eqz p1, :cond_0

    .line 2521
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 2539
    :cond_0
    :goto_0
    return-object v1

    .line 2523
    :catch_0
    move-exception v2

    .line 2524
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ClassNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2525
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 2526
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NoSuchMethodException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2527
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 2528
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SecurityException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2529
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 2530
    .local v2, "e":Ljava/lang/InstantiationException;
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " InstantiationException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2531
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v2

    .line 2532
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IllegalAccessException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2533
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v2

    .line 2534
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2535
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v2

    .line 2536
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " InvocationTargetException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getCounterEffectName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "nameOfClass"    # Ljava/lang/String;

    .prologue
    .line 2569
    const/4 v1, 0x0

    .line 2571
    .local v1, "className":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2573
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2574
    .local v4, "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getCounterEffectName"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2575
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 2592
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v1

    .line 2577
    :catch_0
    move-exception v2

    .line 2578
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ClassNotFoundException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2579
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 2580
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NoSuchMethodException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2581
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 2582
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SecurityException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2583
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 2584
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IllegalAccessException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2585
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 2586
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IllegalArgumentException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2587
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v2

    .line 2588
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " InvocationTargetException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getCurrentSeasonEffect()I
    .locals 14

    .prologue
    .line 2132
    const/4 v3, 0x0

    .line 2133
    .local v3, "season":I
    new-instance v6, Landroid/text/format/Time;

    const-string v9, "GMT+8"

    invoke-direct {v6, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2134
    .local v6, "time":Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 2136
    iget v8, v6, Landroid/text/format/Time;->year:I

    .line 2137
    .local v8, "year":I
    iget v9, v6, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v9, 0x1

    .line 2138
    .local v2, "month":I
    iget v1, v6, Landroid/text/format/Time;->monthDay:I

    .line 2140
    .local v1, "day":I
    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x400ef5c28f5c28f6L    # 3.87

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v4, v10

    .line 2141
    .local v4, "springday":I
    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x4016147ae147ae14L    # 5.52

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v5, v10

    .line 2142
    .local v5, "summerday":I
    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x401e000000000000L    # 7.5

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v0, v10

    .line 2143
    .local v0, "autumnday":I
    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x401dc083126e978dL    # 7.438

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v7, v10

    .line 2144
    .local v7, "winterday":I
    const/4 v9, 0x2

    if-ne v2, v9, :cond_2

    .line 2145
    if-lt v1, v4, :cond_1

    .line 2146
    const/16 v3, 0x51

    .line 2178
    :cond_0
    :goto_0
    const-string v9, "KeyguardEffectViewController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CurrentSeason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    return v3

    .line 2148
    :cond_1
    const/16 v3, 0x54

    goto :goto_0

    .line 2150
    :cond_2
    const/4 v9, 0x2

    if-ge v9, v2, :cond_3

    const/4 v9, 0x5

    if-ge v2, v9, :cond_3

    .line 2151
    const/16 v3, 0x51

    goto :goto_0

    .line 2152
    :cond_3
    const/4 v9, 0x5

    if-ne v2, v9, :cond_5

    .line 2153
    if-lt v1, v5, :cond_4

    .line 2154
    const/16 v3, 0x52

    goto :goto_0

    .line 2156
    :cond_4
    const/16 v3, 0x51

    goto :goto_0

    .line 2158
    :cond_5
    const/4 v9, 0x5

    if-ge v9, v2, :cond_6

    const/16 v9, 0x8

    if-ge v2, v9, :cond_6

    .line 2159
    const/16 v3, 0x52

    goto :goto_0

    .line 2160
    :cond_6
    const/16 v9, 0x8

    if-ne v2, v9, :cond_8

    .line 2161
    if-lt v1, v0, :cond_7

    .line 2162
    const/16 v3, 0x53

    goto :goto_0

    .line 2164
    :cond_7
    const/16 v3, 0x52

    goto :goto_0

    .line 2166
    :cond_8
    const/16 v9, 0x8

    if-ge v9, v2, :cond_9

    const/16 v9, 0xb

    if-ge v2, v9, :cond_9

    .line 2167
    const/16 v3, 0x53

    goto :goto_0

    .line 2168
    :cond_9
    const/16 v9, 0xb

    if-ne v2, v9, :cond_b

    .line 2169
    if-lt v1, v7, :cond_a

    .line 2170
    const/16 v3, 0x54

    goto :goto_0

    .line 2172
    :cond_a
    const/16 v3, 0x53

    goto :goto_0

    .line 2174
    :cond_b
    const/16 v9, 0xb

    if-gt v2, v9, :cond_c

    const/4 v9, 0x2

    if-ge v2, v9, :cond_0

    .line 2175
    :cond_c
    const/16 v3, 0x54

    goto :goto_0
.end method

.method private getDataFromSlideshow(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1667
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "emergency_mode"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v4, 0x1

    .line 1671
    .local v4, "isEmergencyMode":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "ultra_powersaving_mode"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v5, 0x1

    .line 1674
    .local v5, "isUltraPowerSavingMode":Z
    :goto_1
    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EMMode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",UPSMode :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    if-nez v4, :cond_0

    if-eqz v5, :cond_4

    .line 1676
    :cond_0
    const/4 v10, 0x0

    sput-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    .line 1713
    :cond_1
    :goto_2
    return-void

    .line 1667
    .end local v4    # "isEmergencyMode":Z
    .end local v5    # "isUltraPowerSavingMode":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1671
    .restart local v4    # "isEmergencyMode":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1679
    .restart local v5    # "isUltraPowerSavingMode":Z
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1680
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string v10, "content://com.samsung.slidinggallery"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1681
    .local v8, "uri":Landroid/net/Uri;
    const-string v10, "getData"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v10, v11, v12}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1683
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_6

    .line 1684
    const-string v10, "interval"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    .line 1685
    const-string v10, "imgCount"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTotalCount:I

    .line 1686
    const-string v10, "time"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    .line 1687
    const-string v10, "hour"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    .line 1688
    const-string v10, "minute"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    .line 1689
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1690
    .local v1, "calendar":Ljava/util/Calendar;
    sget-wide v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1691
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "HH"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1692
    .local v2, "hourText":Ljava/lang/String;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "mm"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1693
    .local v6, "minuteText":Ljava/lang/String;
    sget v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 1694
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "hh"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1696
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    .line 1697
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    .line 1698
    const-string v10, "uriArray"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    sput-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    .line 1700
    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "interval: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "imgCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTotalCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mSlidingTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,Hour :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,Min:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    sget-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    .line 1706
    sget-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1707
    .local v9, "uriStr":Ljava/lang/String;
    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uriStr: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1711
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v2    # "hourText":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "minuteText":Ljava/lang/String;
    .end local v9    # "uriStr":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    sput-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    goto/16 :goto_2
.end method

.method private getEffectClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nameOfEffect"    # Ljava/lang/String;

    .prologue
    .line 2494
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2495
    :cond_0
    const/4 v0, 0x0

    .line 2512
    :goto_0
    return-object v0

    .line 2497
    :cond_1
    const-string v0, "LiveWallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.keyguard.sec.rich.KeyguardEffectView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2499
    :cond_2
    const-string v0, "OpenTheme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2500
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->isRecreateNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2501
    :cond_3
    new-instance v0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    .line 2503
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->getNameOfClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2504
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->getNameOfClass()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2506
    :cond_5
    const-string v0, "com.android.keyguard.sec.effect.KeyguardEffectViewNone"

    goto :goto_0

    .line 2508
    :cond_6
    const-string v0, "Spring"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Summer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Autumn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Winter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Seasonal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2510
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getFestivalEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2512
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.keyguard.sec.effect.KeyguardEffectView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getEffectName(I)Ljava/lang/String;
    .locals 3
    .param p1, "effect"    # I

    .prologue
    const/4 v0, 0x1

    .line 2396
    const/4 v1, 0x0

    .line 2398
    .local v1, "nameOfEffect":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isZoomPanningEffectEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2400
    const-string v2, "ZoomPanning"

    .line 2490
    :goto_0
    return-object v2

    .line 2404
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isOpenThemeWallpaperEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2408
    .local v0, "isOpenThemeEnabled":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 2409
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v2, :cond_2

    .line 2410
    const-string v2, "None"

    goto :goto_0

    .line 2404
    .end local v0    # "isOpenThemeEnabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2412
    .restart local v0    # "isOpenThemeEnabled":Z
    :cond_2
    const-string v2, "OpenTheme"

    goto :goto_0

    .line 2415
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 2487
    const-string v1, "None"

    :goto_2
    move-object v2, v1

    .line 2490
    goto :goto_0

    .line 2418
    :sswitch_0
    const/4 v1, 0x0

    .line 2419
    goto :goto_2

    .line 2421
    :sswitch_1
    const-string v1, "None"

    .line 2422
    goto :goto_2

    .line 2424
    :sswitch_2
    const-string v1, "RippleInk"

    .line 2425
    goto :goto_2

    .line 2427
    :sswitch_3
    const-string v1, "LensFlare"

    .line 2428
    goto :goto_2

    .line 2430
    :sswitch_4
    const-string v1, "ParticleSpace"

    .line 2431
    goto :goto_2

    .line 2433
    :sswitch_5
    const-string v1, "WaterColor"

    .line 2434
    goto :goto_2

    .line 2436
    :sswitch_6
    const-string v1, "Blind"

    .line 2437
    goto :goto_2

    .line 2439
    :sswitch_7
    const-string v1, "MassTension"

    .line 2440
    goto :goto_2

    .line 2442
    :sswitch_8
    const-string v1, "MassRipple"

    .line 2443
    goto :goto_2

    .line 2445
    :sswitch_9
    const-string v1, "BrilliantRing"

    .line 2446
    goto :goto_2

    .line 2448
    :sswitch_a
    const-string v1, "BrilliantCut"

    .line 2449
    goto :goto_2

    .line 2451
    :sswitch_b
    const-string v1, "IndigoDiffusion"

    .line 2452
    goto :goto_2

    .line 2454
    :sswitch_c
    const-string v1, "AbstractTile"

    .line 2455
    goto :goto_2

    .line 2457
    :sswitch_d
    const-string v1, "GeometricMosaic"

    .line 2458
    goto :goto_2

    .line 2460
    :sswitch_e
    const-string v1, "WaterDroplet"

    .line 2461
    goto :goto_2

    .line 2463
    :sswitch_f
    const-string v1, "SparklingBubbles"

    .line 2464
    goto :goto_2

    .line 2466
    :sswitch_10
    const-string v1, "ColourDroplet"

    .line 2467
    goto :goto_2

    .line 2469
    :sswitch_11
    const-string v1, "Spring"

    .line 2470
    goto :goto_2

    .line 2472
    :sswitch_12
    const-string v1, "Summer"

    .line 2473
    goto :goto_2

    .line 2475
    :sswitch_13
    const-string v1, "Autumn"

    .line 2476
    goto :goto_2

    .line 2478
    :sswitch_14
    const-string v1, "Winter"

    .line 2479
    goto :goto_2

    .line 2481
    :sswitch_15
    const-string v1, "Seasonal"

    .line 2482
    goto :goto_2

    .line 2484
    :sswitch_16
    const-string v1, "LiveWallpaper"

    .line 2485
    goto :goto_2

    .line 2415
    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x51 -> :sswitch_11
        0x52 -> :sswitch_12
        0x53 -> :sswitch_13
        0x54 -> :sswitch_14
        0x55 -> :sswitch_15
        0x64 -> :sswitch_16
    .end sparse-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 540
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .line 542
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** KeyguardEffectView create instance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    return-object v0
.end method

.method public static getInstanceIfExists(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 549
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** KeyguardEffectView getInstanceIfExists ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    return-object v0
.end method

.method public static getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1716
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSlidingWallpaperPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1718
    .local v8, "tempPath":Ljava/lang/String;
    const-string v9, "KeyguardEffectViewController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getScaledBitmapDrawable Path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const/4 v3, 0x0

    .line 1721
    .local v3, "sis":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 1722
    .local v5, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 1724
    .local v6, "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const-string v9, "/system/wallpaper/keyguard_empty_image.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1725
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 1726
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v6, v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .restart local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v7, v6

    .line 1759
    .end local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v7, "tempBitmapDrawable":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 1731
    .end local v7    # "tempBitmapDrawable":Ljava/lang/Object;
    .restart local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1732
    .local v1, "mdmFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    .end local v3    # "sis":Ljava/io/InputStream;
    .local v4, "sis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v8}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSlidingWallpaperDegree(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOrientation:I

    .line 1734
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1735
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x4

    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1736
    const/4 v9, 0x0

    invoke-static {v4, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1737
    sget v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOrientation:I

    if-lez v9, :cond_1

    .line 1738
    sget v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOrientation:I

    invoke-static {v5, v9}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1741
    :cond_1
    const-string v9, "KeyguardEffectViewController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getScaledBitmapDrawable File = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,canRead() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tempBitmap:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1744
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 1745
    .end local v4    # "sis":Ljava/io/InputStream;
    .restart local v3    # "sis":Ljava/io/InputStream;
    :try_start_2
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1749
    :goto_1
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1755
    .end local v1    # "mdmFile":Ljava/io/File;
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    move-object v7, v6

    .line 1759
    .restart local v7    # "tempBitmapDrawable":Ljava/lang/Object;
    goto/16 :goto_0

    .line 1747
    .end local v3    # "sis":Ljava/io/InputStream;
    .end local v7    # "tempBitmapDrawable":Ljava/lang/Object;
    .restart local v1    # "mdmFile":Ljava/io/File;
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "sis":Ljava/io/InputStream;
    :cond_3
    :try_start_4
    sget v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayWidth:I

    sget v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayHeight:I

    const/4 v11, 0x1

    invoke-static {v5, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    move-object v3, v4

    .end local v4    # "sis":Ljava/io/InputStream;
    .restart local v3    # "sis":Ljava/io/InputStream;
    goto :goto_1

    .line 1750
    .end local v1    # "mdmFile":Ljava/io/File;
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 1751
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 1752
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v6, v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .restart local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_2

    .line 1756
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1757
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1750
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "sis":Ljava/io/InputStream;
    .restart local v1    # "mdmFile":Ljava/io/File;
    .restart local v4    # "sis":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "sis":Ljava/io/InputStream;
    .restart local v3    # "sis":Ljava/io/InputStream;
    goto :goto_4
.end method

.method private getSeasonalLockSoundPath(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "season"    # I
    .param p2, "isLock"    # Z

    .prologue
    .line 2186
    packed-switch p1, :pswitch_data_0

    .line 2216
    const/4 v0, 0x0

    .line 2219
    .local v0, "path":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2188
    .end local v0    # "path":Ljava/lang/String;
    :pswitch_0
    if-eqz p2, :cond_0

    .line 2189
    const-string v0, "/system/media/audio/ui/spring_lock.ogg"

    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2191
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    const-string v0, "/system/media/audio/ui/spring_unlock.ogg"

    .line 2193
    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2195
    .end local v0    # "path":Ljava/lang/String;
    :pswitch_1
    if-eqz p2, :cond_1

    .line 2196
    const-string v0, "/system/media/audio/ui/summer_lock.ogg"

    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2198
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    const-string v0, "/system/media/audio/ui/summer_unlock.ogg"

    .line 2200
    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2202
    .end local v0    # "path":Ljava/lang/String;
    :pswitch_2
    if-eqz p2, :cond_2

    .line 2203
    const-string v0, "/system/media/audio/ui/autumn_lock.ogg"

    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2205
    .end local v0    # "path":Ljava/lang/String;
    :cond_2
    const-string v0, "/system/media/audio/ui/autumn_unlock.ogg"

    .line 2207
    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2209
    .end local v0    # "path":Ljava/lang/String;
    :pswitch_3
    if-eqz p2, :cond_3

    .line 2210
    const-string v0, "/system/media/audio/ui/winter_lock.ogg"

    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2212
    .end local v0    # "path":Ljava/lang/String;
    :cond_3
    const-string v0, "/system/media/audio/ui/winter_unlock.ogg"

    .line 2214
    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_0

    .line 2186
    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getSlidingWallpaperDegree(Ljava/lang/String;)I
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1763
    const/4 v0, 0x0

    .line 1765
    .local v0, "degree":I
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1766
    .local v2, "exifInterface":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1767
    .local v3, "orientation":I
    packed-switch v3, :pswitch_data_0

    .line 1781
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :goto_0
    :pswitch_0
    return v0

    .line 1769
    .restart local v2    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 1770
    goto :goto_0

    .line 1772
    :pswitch_2
    const/16 v0, 0xb4

    .line 1773
    goto :goto_0

    .line 1775
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 1778
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :catch_0
    move-exception v1

    .line 1779
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1767
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getSlidingWallpaperPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1550
    const/4 v2, 0x0

    .line 1551
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1553
    .local v1, "path":Ljava/lang/String;
    sget-object v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1554
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlidingWallpaperIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , uriArray.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget-object v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 1557
    const/4 v3, 0x0

    sput v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    .line 1560
    :cond_0
    sget-object v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    sget v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ret":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1561
    .restart local v2    # "ret":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1562
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1563
    const-string v2, "/system/wallpaper/keyguard_empty_image.jpg"

    .line 1567
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSlidingWallpaperPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    return-object v2

    .line 1565
    :cond_2
    const-string v2, "/system/wallpaper/keyguard_empty_image.jpg"

    goto :goto_0
.end method

.method private handleChargeStateChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 854
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 855
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    if-ne v0, v2, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 857
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    .line 858
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getChargeEffectView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 861
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_2

    .line 863
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 867
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    .line 876
    :cond_1
    :goto_1
    return-void

    .line 865
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 870
    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    if-ne v0, v2, :cond_1

    .line 871
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 872
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    .line 873
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_1
.end method

.method private handleFestivalEffect()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 719
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isCommonDayShowFestivalWallpaper()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 720
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    .line 721
    .local v1, "isUltraPowerSavingEnabled":Z
    if-eqz v1, :cond_2

    .line 753
    .end local v1    # "isUltraPowerSavingEnabled":Z
    :cond_1
    :goto_0
    return v2

    .line 725
    .restart local v1    # "isUltraPowerSavingEnabled":Z
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getFestivalView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    .line 726
    .local v0, "festivalView":Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    if-eqz v0, :cond_1

    .line 727
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eq v3, v0, :cond_3

    .line 728
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 729
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFestivalEffect mIsShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    .line 734
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isUnlockEffectEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 735
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getUnlockEffectView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 736
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 737
    const/16 v2, 0x55

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    .line 738
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    .line 749
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 746
    :cond_4
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    .line 747
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_1
.end method

.method private handleSetGradationLayer()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 2223
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 2224
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 2228
    .local v0, "isPreloadedWallpaper":Z
    :goto_0
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreloadedWallpaper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncherWithoutSecure(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2231
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 2232
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    .line 2233
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    sget v2, Lcom/android/keyguard/R$drawable;->gradation_indi_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2234
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2238
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 2239
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 2252
    .end local v0    # "isPreloadedWallpaper":Z
    :cond_3
    :goto_1
    return-void

    .line 2224
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 2243
    .restart local v0    # "isPreloadedWallpaper":Z
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_1

    .line 2246
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 2247
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2248
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    goto :goto_1
.end method

.method private handleWallpaperImageChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1021
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1028
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_zoom_panning_effect"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1032
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->shouldShowAttributionInfoView()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1033
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isZoomPanningEffectEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1034
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleShowSlideEffect()V

    .line 1042
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1043
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->changeEffectType()V

    .line 1046
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    .line 1047
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateMontblancEffectType()V

    .line 1048
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_0

    .line 1036
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperSlider(Z)V

    goto :goto_1

    .line 1039
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperSlider(Z)V

    goto :goto_1
.end method

.method private handleWallpaperTypeChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v1, 0x0

    .line 757
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    .line 847
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    .line 764
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v2, :cond_1

    .line 766
    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 768
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedTwoCircleView:Z

    if-eqz v2, :cond_2

    .line 769
    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 792
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDefaultWallpaperTypeForEffect()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperType:I

    .line 794
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleFestivalEffect()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 795
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    goto :goto_0

    .line 799
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    .line 802
    .local v0, "wallpaperType":I
    if-eq v5, v0, :cond_4

    .line 803
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 804
    const-string v2, "KeyguardEffectViewController"

    const-string v3, "Remove whiteLockscreenWallpaper value due to !WALLPAPER_TYPE_FILE."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 831
    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v3, :cond_6

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 836
    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleSetGradationLayer()V

    .line 838
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldEffect:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    if-eq v1, v2, :cond_5

    .line 839
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldEffect:I

    .line 840
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->reloadLockSound()V

    .line 843
    :cond_5
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->makeEffectViews(I)V

    .line 845
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setLayerAndBitmapForPoppingColorEffect()V

    .line 846
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateAttributionInfoView()V

    goto :goto_0

    .line 818
    :pswitch_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    .line 819
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 822
    :pswitch_2
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    .line 823
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 826
    :pswitch_3
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    .line 827
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 831
    :cond_6
    const/high16 v1, -0x1000000

    goto :goto_1

    .line 816
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isBackgroundEffect(Ljava/lang/String;)Z
    .locals 7
    .param p1, "nameOfClass"    # Ljava/lang/String;

    .prologue
    .line 2543
    const/4 v2, 0x0

    .line 2544
    .local v2, "retValue":Z
    if-eqz p1, :cond_0

    .line 2546
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2547
    .local v3, "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "isBackgroundEffect"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2548
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v2

    .line 2565
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v2

    .line 2550
    :catch_0
    move-exception v0

    .line 2551
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ClassNotFoundException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2552
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 2553
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NoSuchMethodException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2554
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 2555
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SecurityException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2556
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 2557
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IllegalAccessException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2558
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 2559
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IllegalArgumentException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2560
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 2561
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " InvocationTargetException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isLockScreenEffect(I)Z
    .locals 2
    .param p0, "effectType"    # I

    .prologue
    const/4 v0, 0x1

    .line 555
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0x50

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/16 v1, 0x64

    if-eq p0, v1, :cond_0

    const/16 v1, 0x65

    if-eq p0, v1, :cond_0

    const/16 v1, 0x51

    if-eq p0, v1, :cond_0

    const/16 v1, 0x52

    if-eq p0, v1, :cond_0

    const/16 v1, 0x53

    if-eq p0, v1, :cond_0

    const/16 v1, 0x54

    if-eq p0, v1, :cond_0

    const/16 v1, 0x55

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    const/16 v1, 0xf

    if-ne p0, v1, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeEffectViews(I)V
    .locals 11
    .param p1, "effect"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 2596
    const/4 v3, 0x0

    .line 2597
    .local v3, "primaryEffect":Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    const/4 v4, 0x0

    .line 2598
    .local v4, "secondaryEffect":Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    const/4 v2, 0x0

    .line 2600
    .local v2, "nameOfClass":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isOpenThemeWallpaperEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v0, :cond_4

    .line 2605
    .local v0, "isOpenThemeEnabled":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectName(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2608
    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    if-nez v2, :cond_16

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    if-eqz v7, :cond_16

    .line 2611
    :cond_1
    iget-boolean v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v7, :cond_9

    .line 2612
    const/4 v5, 0x0

    .line 2614
    .local v5, "tempClassName":Ljava/lang/String;
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    .line 2617
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    const-string v7, "LiveWallpaper"

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "None"

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2620
    :cond_2
    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2621
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    .line 2622
    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2623
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    .line 2624
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2747
    .end local v5    # "tempClassName":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .end local v0    # "isOpenThemeEnabled":Z
    :cond_4
    move v0, v8

    .line 2600
    goto :goto_0

    .line 2628
    .restart local v0    # "isOpenThemeEnabled":Z
    .restart local v5    # "tempClassName":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isBackgroundEffect(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2629
    const/4 v1, 0x1

    .line 2630
    .local v1, "isPrimaryBackground":Z
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCounterEffectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2636
    :goto_2
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->createEffectInstance(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v3

    .line 2637
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2639
    if-eqz v1, :cond_7

    .line 2640
    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2646
    :goto_3
    const-string v7, "KeyguardEffectViewController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUnlockEffectView = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    goto :goto_1

    .line 2632
    .end local v1    # "isPrimaryBackground":Z
    :cond_6
    const/4 v1, 0x0

    .line 2633
    .restart local v1    # "isPrimaryBackground":Z
    move-object v5, v2

    goto :goto_2

    .line 2641
    :cond_7
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v7, :cond_8

    .line 2642
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_3

    .line 2644
    :cond_8
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_3

    .line 2652
    .end local v1    # "isPrimaryBackground":Z
    .end local v5    # "tempClassName":Ljava/lang/String;
    :cond_9
    if-eqz v0, :cond_a

    .line 2653
    iput v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    .line 2654
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2665
    :goto_4
    if-nez v3, :cond_c

    .line 2666
    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    .line 2667
    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2668
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    .line 2669
    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2670
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    .line 2671
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_1

    .line 2655
    :cond_a
    const-string v7, "None"

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2657
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_4

    .line 2659
    :cond_b
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->createEffectInstance(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v3

    goto :goto_4

    .line 2675
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isBackgroundEffect(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2676
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2677
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    .line 2678
    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v7

    if-nez v7, :cond_e

    .line 2679
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2683
    :goto_5
    const-string v7, "KeyguardEffectViewController"

    const-string v9, "Sets backgound view first"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    :goto_6
    if-eqz v0, :cond_12

    .line 2697
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->getOpenThemeWallpaperView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 2699
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->getOpenThemeWallpaperView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v6

    .line 2700
    .local v6, "themeView":Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eq v7, v6, :cond_d

    .line 2701
    const-string v7, "KeyguardOpenThemeEffect"

    const-string v9, "change OpenTheme"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    iput-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2703
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    .line 2704
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    .line 2705
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2706
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    .line 2707
    iput-boolean v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUserSwitching:Z

    .line 2709
    :cond_d
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    goto/16 :goto_1

    .line 2681
    .end local v6    # "themeView":Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    :cond_e
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_5

    .line 2685
    :cond_f
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eq v3, v7, :cond_10

    .line 2686
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2690
    :goto_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    .line 2691
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2692
    const-string v7, "KeyguardEffectViewController"

    const-string v9, "Sets foreground view first"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2688
    :cond_10
    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_7

    .line 2712
    :cond_11
    const-string v7, "None"

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2716
    :cond_12
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCounterEffectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->createEffectInstance(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v4

    .line 2718
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-ne v7, v3, :cond_15

    .line 2719
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2720
    const-string v7, "KeyguardEffectViewController"

    const-string v9, "Sets foreground view later"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :goto_8
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v7, :cond_14

    .line 2727
    const-string v7, "KeyguardEffectViewController"

    const-string v9, "mBackgroundView is not null"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v7, v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    if-eqz v7, :cond_13

    .line 2731
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDefaultWallpaperTypeForEffect()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    .line 2734
    :cond_13
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    .line 2735
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->updateAfterCreation()V

    .line 2737
    :cond_14
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    .line 2739
    iput-boolean v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUserSwitching:Z

    goto/16 :goto_1

    .line 2722
    :cond_15
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2723
    const-string v7, "KeyguardEffectViewController"

    const-string v9, "Sets background view later"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2741
    :cond_16
    iget-boolean v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v7, :cond_3

    .line 2742
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v7, :cond_17

    .line 2743
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    .line 2745
    :cond_17
    iput-boolean v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUserSwitching:Z

    goto/16 :goto_1
.end method

.method private makeLiveWeatherDeleteNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 994
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 995
    .local v2, "notiManager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.wallpaperchooser"

    const-string v6, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 998
    .local v0, "liveweatherIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v8, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1001
    .local v3, "pIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_liveweather_delete_title_text:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_liveweather_delete_main_text:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$drawable;->stat_notify_image:I

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$string;->kg_liveweather_delete_title_text:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$string;->kg_liveweather_delete_main_text:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_liveweather_delete_buttion_text:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1015
    .local v1, "notiBuilder":Landroid/app/Notification$Builder;
    monitor-enter v1

    .line 1016
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1017
    monitor-exit v1

    .line 1018
    return-void

    .line 1017
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private setBackground()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 954
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    .line 957
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 959
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    .line 960
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 961
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleSetGradationLayer()V

    .line 964
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 966
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    if-nez v1, :cond_2

    .line 967
    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    .line 969
    :cond_2
    const-string v1, "KeyguardEffectViewController"

    const-string v3, "Apply BlendedFilter from setBackground()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    invoke-virtual {v1, v3, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 973
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lockscreen_wallpaper_transparent"

    const/4 v4, -0x2

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v0, v2

    .line 975
    .local v0, "isPreloadedWallpaper":Z
    :goto_0
    if-nez v0, :cond_6

    .line 976
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->applyBlendedFilter(Landroid/graphics/Bitmap;)V

    .line 982
    .end local v0    # "isPreloadedWallpaper":Z
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->shouldShowAttributionInfoView()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperSlider(Z)V

    .line 984
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 985
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getChargeEffectView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 986
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    .line 987
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 988
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    .line 991
    :cond_4
    return-void

    .line 973
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 978
    .restart local v0    # "isPreloadedWallpaper":Z
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->resetBlendedFilter()V

    goto :goto_1
.end method

.method private setForeground()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 910
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 913
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    .line 914
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 916
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 917
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 926
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 929
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public static setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1588
    const/4 v12, 0x0

    .line 1590
    .local v12, "results":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1592
    .local v0, "action":Ljava/lang/String;
    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mSlidingInterval = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , mSlidingWallpaperIndex:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    const-wide/16 v8, 0x0

    .line 1594
    .local v8, "minuteThreshold":J
    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    packed-switch v13, :pswitch_data_0

    .line 1655
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    .line 1656
    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    .line 1657
    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget v14, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTotalCount:I

    if-lt v13, v14, :cond_1

    .line 1658
    const/4 v13, 0x0

    sput v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    .line 1661
    :cond_1
    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "results = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , mSlidingWallpaperIndex:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    return v12

    .line 1596
    :pswitch_0
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1597
    const/4 v12, 0x1

    goto :goto_0

    .line 1601
    :pswitch_1
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_2

    .line 1602
    const-wide/16 v8, 0x3c

    .line 1605
    :cond_2
    :pswitch_2
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_3

    .line 1606
    const-wide/16 v8, 0x2d0

    .line 1609
    :cond_3
    :pswitch_3
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_4

    .line 1610
    const-wide/16 v8, 0x5a0

    .line 1612
    :cond_4
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v8

    const-wide/16 v16, 0x3e8

    mul-long v8, v14, v16

    .line 1613
    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-wide v16, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    .line 1615
    .local v10, "minutesCount":J
    sget-wide v14, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v16, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    cmp-long v13, v14, v16

    if-lez v13, :cond_5

    .line 1616
    sget-wide v14, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v16, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    rem-long/2addr v14, v8

    add-long/2addr v10, v14

    .line 1620
    :goto_1
    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(minutesCount "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " minuteThreshold "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    cmp-long v13, v10, v8

    if-ltz v13, :cond_0

    .line 1622
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1618
    :cond_5
    sget-wide v14, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v16, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    rem-long/2addr v14, v8

    sub-long v14, v8, v14

    add-long/2addr v10, v14

    goto :goto_1

    .line 1624
    .end local v10    # "minutesCount":J
    :cond_6
    const-string v13, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1625
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1626
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1628
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "HH"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1629
    .local v2, "hourText":Ljava/lang/String;
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "hh"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1630
    .local v3, "hourTextBy12":Ljava/lang/String;
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "mm"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1631
    .local v7, "minuteText":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1632
    .local v4, "mHour":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1633
    .local v5, "mHour12":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1634
    .local v6, "mMinute":I
    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",  :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 1637
    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    if-ne v6, v13, :cond_0

    .line 1638
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1640
    :cond_7
    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    .line 1641
    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    if-ne v5, v13, :cond_0

    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    if-ne v6, v13, :cond_0

    .line 1642
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1644
    :cond_8
    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 1645
    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    if-ne v4, v13, :cond_0

    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    if-ne v6, v13, :cond_0

    .line 1646
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final setWallpaperContentObservers()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 590
    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    .line 644
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 646
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 648
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 650
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package_open_theme"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 652
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 654
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path_2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 656
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mdm_wallpaper_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 658
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 660
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 662
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_zoom_panning_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 665
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V

    .line 667
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 668
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    .line 671
    return-void
.end method

.method private setWallpaperFileObserver()V
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    .line 676
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMDMWallpaperEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    const-string v0, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    .line 679
    :cond_0
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 716
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v1, "com.sec.android.slidingGallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_3

    .line 688
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    .line 692
    :cond_3
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$7;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$7;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    .line 715
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0
.end method


# virtual methods
.method public bindWallpaperService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 447
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    if-nez v1, :cond_1

    .line 448
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 449
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.keyguard.KeyguardWallpaperService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    .line 453
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "*** Keyguard: can\'t bind to com.android.systemui.keyguard.KeyguardWallpaperService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 456
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    .line 457
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentUserId:I

    .line 458
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "*** Keyguard wallpaper service started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "*** Keyguard wallpaper service already started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeEffectType()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 1875
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "changeEffectType()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    if-eqz v1, :cond_0

    .line 1878
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    .line 1893
    :goto_0
    return-void

    .line 1882
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_set_default_wallpaper"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1885
    .local v0, "changedDefaultWallpaperType":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    if-eqz v1, :cond_1

    .line 1887
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    .line 1890
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_default_wallpaper_type_for_effect"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public changeWallpaperByScreenOff()V
    .locals 4

    .prologue
    const/16 v3, 0x12f2

    .line 1896
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "changeWallpaperByScreenOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "com.sec.android.slidingGallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1899
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1900
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "change sliding wallpaper()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1902
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1903
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1905
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1908
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 1177
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetShowState(Z)V

    .line 1180
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    .line 1187
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    .line 1189
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    .line 1190
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    .line 1192
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_4

    .line 1193
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    .line 1196
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_5

    .line 1197
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->cleanUp()V

    .line 1199
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1200
    return-void
.end method

.method public getBackgroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCircleView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    .locals 1

    .prologue
    .line 2254
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedTwoCircleView:Z

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 2257
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_0
.end method

.method public getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1521
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultWallpaperTypeForEffect()I
    .locals 4

    .prologue
    .line 1865
    const/4 v0, 0x1

    .line 1869
    .local v0, "defaultType":I
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_default_wallpaper_type_for_effect"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getForegroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getIsShowing()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    return v0
.end method

.method public getPreviewContainer()Lcom/android/keyguard/sec/KeyguardPreviewContainer;
    .locals 1

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    return-object v0
.end method

.method public getUnlockDelay()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1321
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    .line 1322
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v2

    .line 1333
    :cond_0
    :goto_0
    return-wide v2

    .line 1324
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    .line 1326
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->getUnlockDelay()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "KeyguardEffectViewController"

    const-string v4, "RemoteException occured while handing getUnlockDelay()"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1503
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleSensorEvent(Landroid/hardware/SensorEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 1525
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    if-eqz v0, :cond_0

    .line 1533
    :cond_0
    return v1
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1464
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v2, :cond_0

    .line 1472
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v2, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1484
    :goto_0
    return v2

    .line 1475
    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v2, :cond_1

    .line 1477
    :try_start_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1478
    .local v0, "dup":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->sendTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    .end local v0    # "dup":Landroid/view/MotionEvent;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1479
    :catch_0
    move-exception v1

    .line 1480
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "KeyguardEffectViewController"

    const-string v3, "RemoteException occured while handing handleTouchEvent()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1493
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1447
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    .line 1448
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    .line 1453
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->handleUnlock(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing handleUnlock()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1082
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateKeyguardMusicBackground(): bmp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    .line 1087
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->setContextualWallpaper(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    .line 1096
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v1, :cond_1

    .line 1110
    :goto_1
    return-void

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while setContextualWallpaper()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1100
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateAttributionInfoView()V

    .line 1109
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 1517
    const/4 v0, 0x0

    return v0
.end method

.method public isCategoriesWallpaper()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 895
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 906
    :goto_0
    return v4

    .line 899
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v6, "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 900
    .local v0, "isCategoriesWallpaper":Z
    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    move v2, v3

    .line 901
    .local v2, "isLiveWallpaper":Z
    :goto_1
    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_2

    move v1, v3

    .line 903
    .local v1, "isHomeWallpaper":Z
    :goto_2
    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCategoriesWallpaper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isLiveWallpaper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isHomeWallpaper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    :goto_3
    move v4, v3

    goto :goto_0

    .end local v1    # "isHomeWallpaper":Z
    .end local v2    # "isLiveWallpaper":Z
    :cond_1
    move v2, v4

    .line 900
    goto :goto_1

    .restart local v2    # "isLiveWallpaper":Z
    :cond_2
    move v1, v4

    .line 901
    goto :goto_2

    .restart local v1    # "isHomeWallpaper":Z
    :cond_3
    move v3, v4

    .line 906
    goto :goto_3
.end method

.method public isFestivalActivated()Z
    .locals 3

    .prologue
    .line 2124
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFestivalActivated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2126
    const/4 v0, 0x1

    .line 2128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJustLockLiveEnabled()Z
    .locals 2

    .prologue
    .line 850
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMusicBackgroundSet()Z
    .locals 1

    .prologue
    .line 1911
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    return v0
.end method

.method public isRichLockWallpaper()Z
    .locals 4

    .prologue
    .line 883
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 884
    const/4 v0, 0x0

    .line 891
    :goto_0
    return v0

    .line 887
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "/data/data/com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 889
    .local v0, "isRichLock":Z
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRichLockWallpaper() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isZoomPanningEffectEnabled()Z
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isZoomPanningEffectEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public playLockSound()V
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->playLockSound()V

    .line 1341
    :cond_0
    return-void
.end method

.method public reloadLockSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2046
    const-string v2, "KeyguardEffectViewController"

    const-string v3, "reloadLockSound()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2050
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    packed-switch v2, :pswitch_data_0

    .line 2057
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2118
    .local v0, "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

    if-eqz v2, :cond_0

    .line 2119
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

    invoke-interface {v2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;->reloadLockSound(Lcom/android/keyguard/sec/effect/LockSoundInfo;)V

    .line 2121
    :cond_0
    return-void

    .line 2052
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCurrentSeasonEffect()I

    move-result v1

    .line 2053
    .local v1, "season":I
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    invoke-direct {p0, v1, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2061
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .end local v1    # "season":I
    :cond_1
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    sparse-switch v2, :sswitch_data_0

    .line 2113
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2063
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_0
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewLensFlare;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2064
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2068
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_1
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2069
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2071
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_2
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2072
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2074
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_3
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2075
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2077
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_4
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2078
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2080
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_5
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2081
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2083
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_6
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2084
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2086
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_7
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewAbstractTile;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2087
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2089
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_8
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2090
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2095
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_9
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-direct {p0, v2, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2099
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_a
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCurrentSeasonEffect()I

    move-result v1

    .line 2100
    .restart local v1    # "season":I
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    invoke-direct {p0, v1, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2104
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .end local v1    # "season":I
    :sswitch_b
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2105
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2107
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_c
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2108
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto :goto_0

    .line 2110
    .end local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    :sswitch_d
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    .line 2111
    .restart local v0    # "info":Lcom/android/keyguard/sec/effect/LockSoundInfo;
    goto/16 :goto_0

    .line 2050
    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    .line 2061
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_4
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_1
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_1
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x51 -> :sswitch_9
        0x52 -> :sswitch_9
        0x53 -> :sswitch_9
        0x54 -> :sswitch_9
        0x55 -> :sswitch_a
    .end sparse-switch
.end method

.method public removeMusicWallpaper()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1838
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v2, :cond_0

    .line 1840
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v2, :cond_0

    .line 1841
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->setContextualWallpaper(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    .line 1849
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateAttributionInfoView()V

    .line 1851
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v2, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    if-eqz v2, :cond_1

    .line 1852
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->removeMusicWallpaper()V

    .line 1854
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDefaultWallpaperTypeForEffect()I

    move-result v0

    .line 1862
    .local v0, "changedDefaultWallpaperType":I
    return-void

    .line 1843
    .end local v0    # "changedDefaultWallpaperType":I
    :catch_0
    move-exception v1

    .line 1844
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "KeyguardEffectViewController"

    const-string v3, "RemoteException occured while setContextualWallpaper()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1204
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "reset()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    .line 1208
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    .line 1209
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    .line 1211
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    .line 1220
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    .line 1222
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    .line 1223
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    .line 1225
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_3

    .line 1226
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    .line 1228
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    .line 1229
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    .line 1248
    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z

    if-eqz v1, :cond_9

    .line 1250
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "Update screen by User change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_5

    .line 1252
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    .line 1254
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_6

    .line 1255
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    .line 1257
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_7

    .line 1258
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    .line 1260
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_8

    .line 1261
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    .line 1263
    :cond_8
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z

    .line 1265
    :cond_9
    return-void

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing screenTurnedOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetPreviewView()V
    .locals 2

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-eqz v0, :cond_0

    .line 2371
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mResetPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2372
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->resetPreviewView()V

    .line 2374
    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1346
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    .line 1347
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    .line 1349
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetScreenState(Z)V

    .line 1358
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    .line 1359
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    .line 1361
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    .line 1362
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    .line 1364
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_3

    .line 1365
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    .line 1367
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    .line 1368
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    .line 1370
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_5

    .line 1371
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    .line 1374
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v1, :cond_6

    .line 1375
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->screenTurnedOff()V

    .line 1391
    :cond_6
    return-void

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing screenTurnedOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 4

    .prologue
    .line 1270
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    .line 1272
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetScreenState(Z)V

    .line 1281
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    .line 1282
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    .line 1284
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    .line 1285
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    .line 1287
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_3

    .line 1288
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    .line 1290
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    .line 1291
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    .line 1293
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1294
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_5

    .line 1295
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    .line 1296
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    .line 1300
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v1, :cond_6

    .line 1301
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->screenTurnedOn()V

    .line 1317
    :cond_6
    return-void

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing screenTurnedOn()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAttributionInfoView(Lcom/android/keyguard/sec/SecAttributionInfoView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/keyguard/sec/SecAttributionInfoView;

    .prologue
    .line 1925
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    .line 1926
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateAttributionInfoView()V

    .line 1927
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1514
    return-void
.end method

.method public setEffectLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "background"    # Landroid/view/View;
    .param p2, "foreground"    # Landroid/view/View;
    .param p3, "panel"    # Landroid/view/View;
    .param p4, "previewContainer"    # Landroid/view/View;

    .prologue
    .line 1937
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "background":Landroid/view/View;
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    .line 1938
    check-cast p2, Landroid/widget/FrameLayout;

    .end local p2    # "foreground":Landroid/view/View;
    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    .line 1939
    check-cast p3, Landroid/widget/FrameLayout;

    .end local p3    # "panel":Landroid/view/View;
    iput-object p3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    .line 1941
    if-eqz p4, :cond_0

    .line 1942
    check-cast p4, Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    .end local p4    # "previewContainer":Landroid/view/View;
    iput-object p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    .line 1946
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    .line 1947
    return-void
.end method

.method public setFestivalKeyguardShowing(ZI)V
    .locals 6
    .param p1, "showing"    # Z
    .param p2, "visibility"    # I

    .prologue
    .line 2019
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFestivalKeyguardShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2033
    :cond_0
    :goto_0
    return-void

    .line 2022
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v3, :cond_0

    .line 2023
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v2, Landroid/view/ViewGroup;

    .line 2024
    .local v2, "convertedView":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "childIdx":I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2025
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2026
    .local v1, "childView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 2024
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2028
    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2030
    .end local v1    # "childView":Landroid/view/View;
    :cond_3
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2031
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 5
    .param p1, "isHidden"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1800
    const-string v2, "KeyguardEffectViewController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHidden = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 1804
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v2, :cond_0

    .line 1806
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1814
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v2, :cond_1

    .line 1815
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    .line 1817
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v2, :cond_2

    .line 1818
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    .line 1820
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v2, :cond_3

    .line 1821
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    .line 1823
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v2, :cond_4

    .line 1824
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    .line 1826
    :cond_4
    if-nez p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsVisible:Z

    .line 1827
    return-void

    .line 1807
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "KeyguardEffectViewController"

    const-string v3, "RemoteException occured while handing setHidden(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setKeyguardShowing(ZZ)V
    .locals 9
    .param p1, "isActuallyShowing"    # Z
    .param p2, "isShowing"    # Z

    .prologue
    const/16 v2, 0x8

    const/16 v8, 0x12f5

    const/4 v3, 0x0

    .line 1950
    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setKeyguardShowing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    if-eqz p1, :cond_0

    move v2, v3

    .line 1953
    .local v2, "visibility":I
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1954
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1961
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isLiveWeatherSettingValue()Z

    move-result v1

    .line 1962
    .local v1, "isliveweatherSet":Z
    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    .line 1963
    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->setLiveWeatherSettingValue(Z)V

    .line 1964
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1965
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1966
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1969
    :cond_2
    if-eqz p1, :cond_5

    .line 1970
    iget-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    if-eqz v4, :cond_4

    .line 1971
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->reset()V

    .line 1977
    :goto_0
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v3, :cond_3

    .line 1978
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v3, :cond_3

    .line 1980
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2014
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    .line 2015
    invoke-virtual {p0, p1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setFestivalKeyguardShowing(ZI)V

    .line 2016
    return-void

    .line 1973
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->show()V

    .line 1974
    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setHidden(Z)V

    goto :goto_0

    .line 1982
    :catch_0
    move-exception v0

    .line 1983
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "KeyguardEffectViewController"

    const-string v4, "RemoteException occured while COMMAND_SET_WINDOW_ANIM"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1990
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_5
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v3, :cond_7

    .line 1991
    if-eqz p2, :cond_8

    .line 1992
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v3, :cond_6

    .line 1994
    :try_start_1
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1999
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    .line 2011
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->cleanUp()V

    goto :goto_1

    .line 1995
    :catch_1
    move-exception v0

    .line 1996
    .restart local v0    # "ex":Landroid/os/RemoteException;
    const-string v3, "KeyguardEffectViewController"

    const-string v4, "RemoteException occured while handing screenTurnedOff()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2001
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    if-eqz v3, :cond_7

    .line 2002
    const-string v3, "KeyguardEffectViewController"

    const-string v4, "setKeyguardShowing: **** SHOWN CALLED to turn on forcingly ****"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    invoke-interface {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;->screenOn()V

    goto :goto_3
.end method

.method public setLayerAndBitmapForPoppingColorEffect()V
    .locals 2

    .prologue
    .line 1830
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    if-eqz v1, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    .line 1832
    .local v0, "effectViewZoomPanning":Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->setLayers(Landroid/view/View;)V

    .line 1834
    .end local v0    # "effectViewZoomPanning":Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;
    :cond_0
    return-void
.end method

.method public setLiveWallpaperBg(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    .line 1056
    .local v0, "wallpaperType":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1058
    :cond_0
    const-string v2, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLiveWallpaperBg = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    check-cast v1, Lcom/android/keyguard/sec/effect/EffectBehindView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/effect/EffectBehindView;->setLiveWallpaperBg(Landroid/graphics/Bitmap;)V

    .line 1061
    :cond_1
    return-void

    .line 1058
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLockSoundChangeCallback(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

    .prologue
    .line 2036
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

    .line 2037
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->reloadLockSound()V

    .line 2038
    return-void
.end method

.method public setPreviewView(Z)V
    .locals 1
    .param p1, "isRight"    # Z

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-eqz v0, :cond_0

    .line 2364
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setPreviewView(Z)V

    .line 2366
    :cond_0
    return-void
.end method

.method public setScreenOnCallback(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    .prologue
    const/4 v1, 0x0

    .line 2266
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v2, :cond_0

    .line 2267
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isKeyguardEffectViewWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2281
    :cond_0
    :goto_0
    return v1

    .line 2271
    :cond_1
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    .line 2272
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_2

    .line 2274
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperShowCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->setKeyguardWallpaperShowCallback(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2279
    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2275
    :catch_0
    move-exception v0

    .line 2276
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while setKeyguardWallpaperShowCallback()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setSubEffectLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "foreground"    # Landroid/view/View;

    .prologue
    .line 2751
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "foreground":Landroid/view/View;
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayoutSub:Landroid/widget/FrameLayout;

    .line 2752
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/ViewMediatorCallback;

    .prologue
    .line 2755
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 2756
    return-void
.end method

.method public setVisibleNotificationBottom(I)V
    .locals 0
    .param p1, "visibleNotificationBottom"    # I

    .prologue
    .line 2261
    iput p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    .line 2262
    return-void
.end method

.method public setWallpaperSlider(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    const/4 v2, -0x1

    .line 1064
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_1

    .line 1065
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-nez v0, :cond_0

    .line 1066
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "add WallpaperSlider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .line 1068
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1069
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->notifyWallpaperStateChanged()V

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_0

    .line 1073
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "remove WallpaperSlider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1075
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .line 1076
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->notifyWallpaperStateChanged()V

    goto :goto_0
.end method

.method public shouldShowAttributionInfoView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1915
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1921
    :cond_0
    :goto_0
    return v0

    .line 1918
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1919
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1134
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "show()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1138
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    .line 1139
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    .line 1140
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    .line 1141
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    .line 1143
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetShowState(Z)V

    .line 1153
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    .line 1154
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    .line 1156
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    .line 1157
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    .line 1159
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_3

    .line 1160
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    .line 1162
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    .line 1163
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    .line 1165
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->GetScreenState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1166
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_5

    .line 1167
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    .line 1170
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    .line 1173
    :cond_5
    return-void

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing screenTurnedOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 7
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1421
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMovableAffordance()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    if-lez v1, :cond_0

    .line 1422
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnlockAffordance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 1427
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_1

    .line 1428
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1429
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_1

    .line 1431
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->showUnlockAffordance(JLandroid/graphics/Rect;I)V

    .line 1432
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    .line 1441
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 1443
    :cond_2
    return-void

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing showUnlockAffordance()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPreviewAnimation(Z)V
    .locals 4
    .param p1, "isRight"    # Z

    .prologue
    .line 2316
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-eqz v1, :cond_1

    .line 2317
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "startPreviewAnimation()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    .line 2320
    :try_start_0
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "COMMAND_REMOVE_WINDOW_ANIM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2326
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->startAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    .line 2351
    :cond_1
    return-void

    .line 2322
    :catch_0
    move-exception v0

    .line 2323
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while COMMAND_REMOVE_WINDOW_ANIM"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized unbindWallpaperService()V
    .locals 2

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    .line 470
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** Keyguard wallpaper service unbounded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :goto_0
    monitor-exit p0

    return-void

    .line 472
    :cond_0
    :try_start_1
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** Keyguard wallpaper service already unbounded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update()V
    .locals 4

    .prologue
    .line 1396
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    .line 1398
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    .line 1406
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    .line 1408
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    .line 1409
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    .line 1411
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_3

    .line 1412
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    .line 1414
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    .line 1415
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    .line 1417
    :cond_4
    return-void

    .line 1399
    :catch_0
    move-exception v0

    .line 1400
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing update()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 1509
    return-void
.end method

.method public updateAttributionInfoView()V
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    if-nez v0, :cond_0

    .line 1934
    :goto_0
    return-void

    .line 1933
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->update()V

    goto :goto_0
.end method

.method public updateIsAdminWallpaper()V
    .locals 2

    .prologue
    .line 2382
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$11;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$11;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2390
    return-void
.end method

.method public updateMontblancEffectType()V
    .locals 6

    .prologue
    .line 1113
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v2, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    if-eqz v2, :cond_1

    .line 1114
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_montblanc_wallpaper"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1118
    .local v0, "montblancWallpaperInkType":I
    const/4 v1, 0x0

    .line 1119
    .local v1, "type":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1120
    const/4 v1, 0x1

    .line 1123
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->settingsForImageType(I)V

    .line 1125
    .end local v0    # "montblancWallpaperInkType":I
    .end local v1    # "type":I
    :cond_1
    return-void
.end method

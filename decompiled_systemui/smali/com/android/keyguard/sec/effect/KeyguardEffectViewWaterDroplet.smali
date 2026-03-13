.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewWaterDroplet.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;
    }
.end annotation


# static fields
.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_waterdroplet_lock.ogg"

.field private static final MSG_REGISTER_ACCELROMETER:I = 0x3e7

.field private static final TAP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_waterdroplet_tap.ogg"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_waterdroplet_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field private final SCREEN_ON_BACKGROUND_SCALE:F

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMinValue:I

.field private dummyIv:Landroid/widget/ImageView;

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;

.field private mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

.field private mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field protected mMsg:Landroid/os/Message;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTouchFlagForMobileKeyboard:Z

.field private mWallpaperPath:Ljava/lang/String;

.field private prevOrientation:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private useCPUMinClock:Z

.field private useGPUMaxClock:Z

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_waterdroplet_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_waterdroplet_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v0, "WaterDroplet_Keyguard"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->TAG:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mWallpaperPath:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    .line 78
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    .line 79
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 80
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchDownTime:J

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchMoveDiffTime:J

    .line 83
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->leftVolumeMax:F

    .line 84
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->rightVolumeMax:F

    .line 85
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_TAB:I

    .line 86
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_UNLOCK:I

    .line 88
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->DBG:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 94
    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->prevOrientation:I

    .line 95
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    .line 96
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    .line 101
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    .line 103
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    .line 105
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    .line 110
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    .line 111
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    .line 116
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    .line 123
    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mDisplayId:I

    .line 126
    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SCREEN_ON_BACKGROUND_SCALE:F

    .line 127
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 128
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->dummyIv:Landroid/widget/ImageView;

    .line 129
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;

    .line 142
    invoke-direct {p0, p1, v2, v4, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v0, "WaterDroplet_Keyguard"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->TAG:Ljava/lang/String;

    .line 72
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mWallpaperPath:Ljava/lang/String;

    .line 77
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    .line 78
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    .line 79
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 80
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchDownTime:J

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchMoveDiffTime:J

    .line 83
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->leftVolumeMax:F

    .line 84
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->rightVolumeMax:F

    .line 85
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_TAB:I

    .line 86
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_UNLOCK:I

    .line 88
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->DBG:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 94
    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->prevOrientation:I

    .line 95
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    .line 96
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    .line 101
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    .line 105
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    .line 110
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    .line 111
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    .line 116
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    .line 123
    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mDisplayId:I

    .line 126
    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SCREEN_ON_BACKGROUND_SCALE:F

    .line 127
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 128
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->dummyIv:Landroid/widget/ImageView;

    .line 129
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;

    .line 147
    invoke-direct {p0, p1, p2, v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v0, "WaterDroplet_Keyguard"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->TAG:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mWallpaperPath:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    .line 78
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    .line 79
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 80
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchDownTime:J

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchMoveDiffTime:J

    .line 83
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->leftVolumeMax:F

    .line 84
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->rightVolumeMax:F

    .line 85
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_TAB:I

    .line 86
    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_UNLOCK:I

    .line 88
    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->DBG:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 94
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->prevOrientation:I

    .line 95
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    .line 96
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    .line 101
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    .line 103
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    .line 105
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    .line 110
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    .line 111
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    .line 116
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    .line 123
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mDisplayId:I

    .line 126
    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SCREEN_ON_BACKGROUND_SCALE:F

    .line 127
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 128
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->dummyIv:Landroid/widget/ImageView;

    .line 129
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->update(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->dummyIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->dummyIv:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->registerAccelrometer()V

    return-void
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 571
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const v10, 0x9c40

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x3f866666    # 1.05f

    const/16 v6, 0xc

    .line 156
    const-string v3, "WaterDroplet_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardEffectViewWaterDroplet Constructor mWallpaperProcessSeparated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v3, "WaterDroplet_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardEffectViewWaterDroplet displayId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    .line 159
    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .line 160
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mDisplayId:I

    .line 163
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;

    if-nez v3, :cond_0

    .line 165
    const-string v3, "WaterDroplet_Keyguard"

    const-string v4, "new EffectHandler()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;

    .line 169
    :cond_0
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 196
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->dummyIv:Landroid/widget/ImageView;

    .line 197
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->dummyIv:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 199
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 200
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 201
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 202
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 203
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 205
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const-string v5, "WaterDroplet_Keyguard"

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    .line 207
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->keyguardManager:Landroid/app/KeyguardManager;

    .line 208
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 209
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 210
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 211
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    .line 212
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    .line 214
    if-eqz p3, :cond_5

    .line 215
    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->setEffect(I)V

    .line 219
    :goto_0
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 220
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    invoke-virtual {v0, v6}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 221
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    iput v4, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->windowWidth:I

    .line 222
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    iput v4, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->windowHeight:I

    .line 223
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 224
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    sget v4, Lcom/android/keyguard/R$drawable;->normal_low_z_256:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->resNormal:Landroid/graphics/Bitmap;

    .line 225
    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x2d0

    if-lt v3, v4, :cond_6

    .line 226
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    sget v4, Lcom/android/keyguard/R$drawable;->edge_density_720:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->resEdgeDensity:Landroid/graphics/Bitmap;

    .line 230
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 232
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    .line 233
    iput-boolean v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    .line 234
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v3, :cond_1

    const-string v3, "389000000"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->gpuMaxValue:I

    .line 236
    :cond_1
    iput-boolean v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    .line 237
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v3, :cond_2

    const-string v3, "1574400"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->cpuMinValue:I

    .line 239
    :cond_2
    const-string v3, "WaterDroplet_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useGPUMaxClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gpuMaxValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->gpuMaxValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v3, "WaterDroplet_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useCPUMinClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cpuMinValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->cpuMinValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const/16 v4, 0x11

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->gpuMaxValue:I

    invoke-static {v3, v4, v5, v10}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 242
    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->cpuMinValue:I

    invoke-static {v3, v6, v4, v10}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 244
    :cond_4
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    .line 245
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    .line 247
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->dummyIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->addView(Landroid/view/View;)V

    .line 248
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->addView(Landroid/view/View;)V

    .line 249
    return-void

    .line 217
    .end local v0    # "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    :cond_5
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->setEffect(I)V

    goto/16 :goto_0

    .line 228
    .restart local v0    # "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    :cond_6
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    sget v4, Lcom/android/keyguard/R$drawable;->edge_density_360:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->resEdgeDensity:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "res"    # I

    .prologue
    .line 458
    const/4 v2, 0x0

    .line 461
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 462
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 463
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 464
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-object v2

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->stopReleaseSound()V

    .line 475
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 479
    const-string v1, "WaterDroplet_Keyguard"

    const-string v2, "sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 484
    .local v0, "attr":Landroid/media/AudioAttributes;
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    .line 486
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_waterdroplet_tap.ogg"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 489
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 497
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 523
    const-string v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound() -  mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound() - soundId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 528
    :cond_0
    return-void
.end method

.method private registerAccelrometer()V
    .locals 3

    .prologue
    .line 310
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "registerAccelrometer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 315
    :cond_0
    return-void
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 508
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 519
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 520
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 438
    const-string v3, "WaterDroplet_Keyguard"

    const-string v4, "setBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, "pBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mDisplayId:I

    invoke-static {v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 442
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 443
    const-string v3, "WaterDroplet_Keyguard"

    const-string v4, "newBitmapDrawable  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 453
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .local v2, "pBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 446
    .end local v2    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 447
    if-nez v1, :cond_1

    .line 448
    const-string v3, "WaterDroplet_Keyguard"

    const-string v4, "pBitmap  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 449
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "pBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 452
    .end local v2    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const-string v3, "WaterDroplet_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pBitmap.width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pBitmap.height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 453
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "pBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 504
    :cond_0
    return-void
.end method

.method private unregisterAccelrometer()V
    .locals 2

    .prologue
    .line 318
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "unregisterAccelrometer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;->removeMessages(I)V

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 325
    :cond_0
    return-void
.end method

.method private update(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "mode"    # I

    .prologue
    .line 299
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 303
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "Mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 307
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 273
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->stopReleaseSound()V

    .line 275
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSound()V

    .line 276
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 283
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    .line 287
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 363
    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 383
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    if-eqz v1, :cond_1

    .line 385
    :cond_0
    const-string v1, "WaterDroplet_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent return : isUnlocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return v4

    .line 389
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 391
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 393
    const-string v1, "WaterDroplet_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOWN, mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v1, "WaterDroplet_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->stopReleaseSound()V

    .line 396
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    .line 398
    const-string v1, "WaterDroplet_Keyguard"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeSound()V

    .line 401
    :cond_2
    const-string v1, "WaterDroplet_Keyguard"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->playSound(I)V

    .line 412
    :cond_3
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    .line 404
    :cond_4
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 407
    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 368
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 373
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    .line 374
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 568
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 553
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onAttachedToWindow()V

    .line 554
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 546
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    .line 547
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    .line 549
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 559
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 560
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "CustomEvent"

    const-string v2, "SensorEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v1, "EventObject"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const/16 v1, 0x63

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 563
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 612
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/visualeffect/EffectView;->onSizeChanged(IIII)V

    .line 613
    const-string v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldh ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 532
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 533
    const-string v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : hasWindowFocus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-nez p1, :cond_2

    .line 536
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 537
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 539
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    .line 541
    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->clearScreen()V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 267
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 268
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 269
    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 342
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 346
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    .line 350
    return-void
.end method

.method public screenTurnedOn()V
    .locals 4

    .prologue
    .line 329
    const-string v1, "WaterDroplet_Keyguard"

    const-string v2, "screenTurnedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 331
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 332
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 336
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 337
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$EffectHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 338
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 581
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-nez p1, :cond_0

    .line 585
    const-string v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bmp is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_0
    return-void

    .line 589
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 592
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 596
    :cond_1
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->update(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 3
    .param p1, "isHidden"    # Z

    .prologue
    .line 428
    const-string v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHidden() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-nez p1, :cond_0

    .line 432
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "setHidden() - call screenTurnedOn() cause by SHOW_WHEN_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->screenTurnedOn()V

    .line 435
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->clearScreen()V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 258
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeSound()V

    .line 259
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 354
    const-string v1, "WaterDroplet_Keyguard"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 356
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 359
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 292
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "update(0)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->update(Landroid/graphics/Bitmap;I)V

    .line 294
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->update()V

    .line 577
    return-void
.end method

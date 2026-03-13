.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewColourDroplet.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;
    }
.end annotation


# static fields
.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_colourdroplet_lock.ogg"

.field private static final MSG_REGISTER_ACCELROMETER:I = 0x3e7

.field private static final TAP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_colourdroplet_tap.ogg"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_colourdroplet_unlock.ogg"

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

.field private mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

.field private mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

.field private mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field protected mMsg:Landroid/os/Message;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTouchFlagForMobileKeyboard:Z

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private useCPUMinClock:Z

.field private useGPUMaxClock:Z

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_colourdroplet_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_colourdroplet_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v0, "KeyguardEffectViewColourDroplet"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->TAG:Ljava/lang/String;

    .line 79
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    .line 80
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->sounds:[I

    .line 81
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 82
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    .line 83
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->leftVolumeMax:F

    .line 84
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->rightVolumeMax:F

    .line 85
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SOUND_ID_TAB:I

    .line 86
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SOUND_ID_UNLOCK:I

    .line 89
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->DBG:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    .line 92
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    .line 93
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    .line 98
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->hasWindowFocus:Z

    .line 107
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    .line 108
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensor:Landroid/hardware/Sensor;

    .line 113
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mDisplayId:I

    .line 123
    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SCREEN_ON_BACKGROUND_SCALE:F

    .line 124
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 125
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->dummyIv:Landroid/widget/ImageView;

    .line 128
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    .line 138
    invoke-direct {p0, p1, v3, v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v0, "KeyguardEffectViewColourDroplet"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->TAG:Ljava/lang/String;

    .line 79
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    .line 80
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->sounds:[I

    .line 81
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 82
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    .line 83
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->leftVolumeMax:F

    .line 84
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->rightVolumeMax:F

    .line 85
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SOUND_ID_TAB:I

    .line 86
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SOUND_ID_UNLOCK:I

    .line 89
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->DBG:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    .line 92
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    .line 93
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    .line 98
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->hasWindowFocus:Z

    .line 107
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    .line 108
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensor:Landroid/hardware/Sensor;

    .line 113
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mDisplayId:I

    .line 123
    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SCREEN_ON_BACKGROUND_SCALE:F

    .line 124
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 125
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->dummyIv:Landroid/widget/ImageView;

    .line 128
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    .line 143
    invoke-direct {p0, p1, p2, v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v0, "KeyguardEffectViewColourDroplet"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->TAG:Ljava/lang/String;

    .line 79
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    .line 80
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->sounds:[I

    .line 81
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 82
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    .line 83
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->leftVolumeMax:F

    .line 84
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->rightVolumeMax:F

    .line 85
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SOUND_ID_TAB:I

    .line 86
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SOUND_ID_UNLOCK:I

    .line 89
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->DBG:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    .line 92
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    .line 93
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    .line 98
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->hasWindowFocus:Z

    .line 107
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    .line 108
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensor:Landroid/hardware/Sensor;

    .line 113
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mDisplayId:I

    .line 123
    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SCREEN_ON_BACKGROUND_SCALE:F

    .line 124
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 125
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->dummyIv:Landroid/widget/ImageView;

    .line 128
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->update(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->dummyIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->dummyIv:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->registerAccelrometer()V

    return-void
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 564
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/16 v10, 0x11

    const/16 v9, 0x10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x3f866666    # 1.05f

    .line 152
    const-string v3, "KeyguardEffectViewColourDroplet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardEffectViewColourDroplet Constructor mWallpaperProcessSeparated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v3, "KeyguardEffectViewColourDroplet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardEffectViewColourDroplet displayId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    .line 156
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    const-string v5, "KeyguardEffectViewColourDroplet"

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    .line 158
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    if-nez v3, :cond_0

    .line 160
    const-string v3, "KeyguardEffectViewColourDroplet"

    const-string v4, "new EffectHandler()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    .line 164
    :cond_0
    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .line 165
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mDisplayId:I

    .line 166
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 193
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->dummyIv:Landroid/widget/ImageView;

    .line 194
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->dummyIv:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 196
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 197
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 198
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 199
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 200
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 202
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->keyguardManager:Landroid/app/KeyguardManager;

    .line 203
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 204
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 205
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 206
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    .line 207
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    .line 209
    if-eqz p3, :cond_5

    .line 210
    invoke-virtual {p0, v9}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->setEffect(I)V

    .line 214
    :goto_0
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 215
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    invoke-virtual {v0, v9}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 216
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    iput v4, v3, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;->windowWidth:I

    .line 217
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    iput v4, v3, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;->windowHeight:I

    .line 218
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 219
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    sget v4, Lcom/android/keyguard/R$drawable;->normal_low_z_256:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;->resNormal:Landroid/graphics/Bitmap;

    .line 221
    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x2d0

    if-lt v3, v4, :cond_6

    .line 222
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    sget v4, Lcom/android/keyguard/R$drawable;->edge_density_720:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;->resEdgeDensity:Landroid/graphics/Bitmap;

    .line 226
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 228
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->sounds:[I

    .line 229
    iput-boolean v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    .line 230
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v3, :cond_1

    const-string v3, "389000000"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->gpuMaxValue:I

    .line 232
    :cond_1
    iput-boolean v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    .line 233
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v3, :cond_2

    const-string v3, "1574400"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->cpuMinValue:I

    .line 235
    :cond_2
    const-string v3, "KeyguardEffectViewColourDroplet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useGPUMaxClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gpuMaxValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->gpuMaxValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v3, "KeyguardEffectViewColourDroplet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useCPUMinClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cpuMinValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->cpuMinValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->gpuMaxValue:I

    const v5, 0x9c40

    invoke-static {v3, v10, v4, v5}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 238
    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    const/16 v4, 0xc

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->cpuMinValue:I

    const v6, 0x9c40

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 240
    :cond_4
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    .line 241
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensor:Landroid/hardware/Sensor;

    .line 243
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->dummyIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->addView(Landroid/view/View;)V

    .line 244
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->addView(Landroid/view/View;)V

    .line 245
    return-void

    .line 212
    .end local v0    # "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    :cond_5
    invoke-virtual {p0, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->setEffect(I)V

    goto/16 :goto_0

    .line 224
    .restart local v0    # "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    :cond_6
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    sget v4, Lcom/android/keyguard/R$drawable;->edge_density_360:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;->resEdgeDensity:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x1

    return v0
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "res"    # I

    .prologue
    .line 452
    const/4 v2, 0x0

    .line 455
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 456
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 457
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 458
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return-object v2

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->stopReleaseSound()V

    .line 469
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 473
    const-string v1, "KeyguardEffectViewColourDroplet"

    const-string v2, "sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
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

    .line 478
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

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    .line 480
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_colourdroplet_tap.ogg"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 483
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 491
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 517
    const-string v0, "KeyguardEffectViewColourDroplet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound() -  mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 519
    const-string v0, "KeyguardEffectViewColourDroplet"

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

    .line 520
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 522
    :cond_0
    return-void
.end method

.method private registerAccelrometer()V
    .locals 3

    .prologue
    .line 306
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "registerAccelrometer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 311
    :cond_0
    return-void
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 502
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 513
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 432
    const-string v3, "KeyguardEffectViewColourDroplet"

    const-string v4, "setBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v1, 0x0

    .line 434
    .local v1, "pBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mDisplayId:I

    invoke-static {v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 436
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 437
    const-string v3, "KeyguardEffectViewColourDroplet"

    const-string v4, "newBitmapDrawable  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 447
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .local v2, "pBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 440
    .end local v2    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 441
    if-nez v1, :cond_1

    .line 442
    const-string v3, "KeyguardEffectViewColourDroplet"

    const-string v4, "pBitmap  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 443
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "pBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 446
    .end local v2    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const-string v3, "KeyguardEffectViewColourDroplet"

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

    .line 447
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "pBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 498
    :cond_0
    return-void
.end method

.method private unregisterAccelrometer()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "unregisterAccelrometer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->removeMessages(I)V

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 321
    :cond_0
    return-void
.end method

.method private update(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "mode"    # I

    .prologue
    .line 295
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v1, "Mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 303
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 269
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->stopReleaseSound()V

    .line 271
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSound()V

    .line 272
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    .line 279
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 280
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 282
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->unregisterAccelrometer()V

    .line 283
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 359
    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 379
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    if-eqz v1, :cond_1

    .line 381
    :cond_0
    const-string v1, "KeyguardEffectViewColourDroplet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent return : isUnlocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_0
    return v4

    .line 384
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 386
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 388
    const-string v1, "KeyguardEffectViewColourDroplet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOWN, mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->stopReleaseSound()V

    .line 390
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    .line 392
    const-string v1, "KeyguardEffectViewColourDroplet"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->makeSound()V

    .line 395
    :cond_2
    const-string v1, "KeyguardEffectViewColourDroplet"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->playSound(I)V

    .line 406
    :cond_3
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    .line 398
    :cond_4
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 401
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
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 364
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    .line 369
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->unregisterAccelrometer()V

    .line 370
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 561
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 546
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onAttachedToWindow()V

    .line 547
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 539
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    .line 540
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->unregisterAccelrometer()V

    .line 542
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 552
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 553
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "CustomEvent"

    const-string v2, "SensorEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v1, "EventObject"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const/16 v1, 0x63

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 556
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 604
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/visualeffect/EffectView;->onSizeChanged(IIII)V

    .line 605
    const-string v0, "KeyguardEffectViewColourDroplet"

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

    .line 626
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 526
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 527
    const-string v0, "KeyguardEffectViewColourDroplet"

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

    .line 528
    if-nez p1, :cond_2

    .line 530
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 531
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 533
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->unregisterAccelrometer()V

    .line 535
    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->clearScreen()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    .line 263
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 264
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 265
    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 338
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    .line 342
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 343
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->unregisterAccelrometer()V

    .line 346
    return-void
.end method

.method public screenTurnedOn()V
    .locals 4

    .prologue
    .line 325
    const-string v1, "KeyguardEffectViewColourDroplet"

    const-string v2, "screenTurnedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 327
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->hasWindowFocus:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 328
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->hasWindowFocus:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 332
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 333
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 334
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 574
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-nez p1, :cond_0

    .line 578
    const-string v0, "KeyguardEffectViewColourDroplet"

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

    .line 592
    :goto_0
    return-void

    .line 582
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 585
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 589
    :cond_1
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->update(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 3
    .param p1, "isHidden"    # Z

    .prologue
    .line 422
    const-string v0, "KeyguardEffectViewColourDroplet"

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

    .line 425
    if-nez p1, :cond_0

    .line 426
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "setHidden() - call screenTurnedOn() cause by SHOW_WHEN_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->screenTurnedOn()V

    .line 429
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 250
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->clearScreen()V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    .line 254
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->makeSound()V

    .line 255
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 350
    const-string v1, "KeyguardEffectViewColourDroplet"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 352
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 355
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 288
    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "update(0)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->update(Landroid/graphics/Bitmap;I)V

    .line 290
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->update()V

    .line 570
    return-void
.end method

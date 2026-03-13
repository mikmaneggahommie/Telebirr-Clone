.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewBrilliantCut.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$EffectHandler;
    }
.end annotation


# static fields
.field private static final DRAG_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_brilliantcut_drag.ogg"

.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_brilliantcut_lock.ogg"

.field private static final SILENCE_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_silence.ogg"

.field private static final TAB_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_brilliantcut_tap.ogg"

.field private static final TAG:Ljava/lang/String; = "BrilliantCut_Keyguard"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_brilliantcut_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private cpuMaxValue:I

.field private dragSoudMinusOffset:F

.field private dragSoudVolume:F

.field private dragStreamID:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private imageType:I

.field private isFadeOutSound:Z

.field private isUnlocked:Z

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$EffectHandler;

.field private mImageView:Landroid/widget/ImageView;

.field private mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

.field mLongPressTime:J

.field protected mMsg:Landroid/os/Message;

.field private mSoundPool:Landroid/media/SoundPool;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private useCPUMaxClock:Z

.field private useGPUMaxClock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_brilliantcut_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_brilliantcut_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    .line 47
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->sounds:[I

    .line 48
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 49
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->UNLOCK_SOUND_PLAY_TIME:J

    .line 50
    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->touchDownTime:J

    .line 51
    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->touchMoveDiffTime:J

    .line 52
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->SOUND_ID_TAB:I

    .line 53
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->SOUND_ID_DRAG:I

    .line 54
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->leftVolumeMax:F

    .line 55
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->rightVolumeMax:F

    .line 56
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragStreamID:I

    .line 57
    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mLongPressTime:J

    .line 58
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    .line 59
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudMinusOffset:F

    .line 60
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isFadeOutSound:Z

    .line 62
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->imageType:I

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isUnlocked:Z

    .line 65
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->hasWindowFocus:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useGPUMaxClock:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useCPUMaxClock:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mDisplayId:I

    .line 88
    invoke-direct {p0, p1, v4, v3, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    .line 47
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->sounds:[I

    .line 48
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 49
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->UNLOCK_SOUND_PLAY_TIME:J

    .line 50
    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->touchDownTime:J

    .line 51
    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->touchMoveDiffTime:J

    .line 52
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->SOUND_ID_TAB:I

    .line 53
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->SOUND_ID_DRAG:I

    .line 54
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->leftVolumeMax:F

    .line 55
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->rightVolumeMax:F

    .line 56
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragStreamID:I

    .line 57
    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mLongPressTime:J

    .line 58
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    .line 59
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudMinusOffset:F

    .line 60
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isFadeOutSound:Z

    .line 62
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->imageType:I

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isUnlocked:Z

    .line 65
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->hasWindowFocus:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useGPUMaxClock:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useCPUMaxClock:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mDisplayId:I

    .line 92
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    .line 47
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->sounds:[I

    .line 48
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 49
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->UNLOCK_SOUND_PLAY_TIME:J

    .line 50
    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->touchDownTime:J

    .line 51
    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->touchMoveDiffTime:J

    .line 52
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->SOUND_ID_TAB:I

    .line 53
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->SOUND_ID_DRAG:I

    .line 54
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->leftVolumeMax:F

    .line 55
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->rightVolumeMax:F

    .line 56
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragStreamID:I

    .line 57
    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mLongPressTime:J

    .line 58
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    .line 59
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudMinusOffset:F

    .line 60
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isFadeOutSound:Z

    .line 62
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->imageType:I

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isUnlocked:Z

    .line 65
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->hasWindowFocus:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useGPUMaxClock:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useCPUMaxClock:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mDisplayId:I

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$EffectHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$EffectHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->fadeOutSound()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method private fadeOutSound()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 476
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isFadeOutSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 479
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragStreamID:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 484
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 485
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudMinusOffset:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    .line 493
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$5;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 487
    :cond_3
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "SOUND STOP because UP or Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->stopReleaseSound()V

    .line 489
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSound()V

    goto :goto_0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 502
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const v4, 0x9c40

    const/4 v3, -0x1

    .line 102
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "KeyguardEffectViewBrilliantCut Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    .line 104
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mDisplayId:I

    .line 105
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    const-string v2, "BrilliantCut_Keyguard"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    .line 106
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->setEffect(I)V

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->sounds:[I

    .line 116
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->gpuMaxValue:I

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->cpuMaxValue:I

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 119
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mImageView:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->addView(Landroid/view/View;II)V

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$EffectHandler;

    if-nez v0, :cond_2

    .line 125
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "new SoundHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$EffectHandler;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$EffectHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$EffectHandler;

    .line 129
    :cond_2
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V

    .line 145
    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 406
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->stopReleaseSound()V

    .line 408
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 412
    const-string v1, "BrilliantCut_Keyguard"

    const-string v2, "sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
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

    .line 418
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

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    .line 423
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_brilliantcut_tap.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 424
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/ve_brilliantcut_drag.ogg"

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 426
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 434
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 460
    const-string v0, "BrilliantCut_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound() -  mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "BrilliantCut_Keyguard"

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

    .line 464
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->rightVolumeMax:F

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragStreamID:I

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->rightVolumeMax:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 445
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 456
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "originBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 209
    return-void
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 441
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 167
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->stopReleaseSound()V

    .line 169
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->releaseSound()V

    .line 170
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 177
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 178
    :cond_1
    return-void
.end method

.method public getUnlockDelay()J
    .locals 4

    .prologue
    .line 245
    const/16 v0, 0x190

    .line 246
    .local v0, "returnValue":I
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->imageType:I

    if-nez v1, :cond_0

    .line 247
    const/16 v0, 0xc8

    .line 248
    :cond_0
    int-to-long v2, v0

    return-wide v2
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 280
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isUnlocked:Z

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "BrilliantCut_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent isUnlocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    return v6

    .line 285
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 287
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 289
    const-string v1, "BrilliantCut_Keyguard"

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

    .line 290
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    .line 291
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isFadeOutSound:Z

    .line 292
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->stopReleaseSound()V

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->touchDownTime:J

    .line 295
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 297
    const-string v1, "BrilliantCut_Keyguard"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->makeSound()V

    .line 301
    :cond_1
    const-string v1, "BrilliantCut_Keyguard"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->playSound(I)V

    .line 303
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragStreamID:I

    if-eqz v1, :cond_3

    .line 304
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragStreamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 306
    :cond_2
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragStreamID:I

    .line 335
    :cond_3
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    .line 309
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 311
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragStreamID:I

    if-nez v1, :cond_3

    .line 313
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->touchDownTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->touchMoveDiffTime:J

    .line 315
    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->touchMoveDiffTime:J

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mLongPressTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->touchDownTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 317
    const-string v1, "BrilliantCut_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOUND PLAY SOUND_ID_DRAG touchMoveDiff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->touchMoveDiffTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->playSound(I)V

    goto :goto_1

    .line 323
    :cond_5
    if-eq v0, v6, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 326
    :cond_6
    const-string v1, "BrilliantCut_Keyguard"

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

    .line 327
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragStreamID:I

    if-eqz v1, :cond_3

    .line 329
    const v1, 0x3d1fbe77    # 0.039f

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudMinusOffset:F

    .line 330
    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isFadeOutSound:Z

    .line 331
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->fadeOutSound()V

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 254
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isUnlocked:Z

    .line 257
    const v0, 0x3d71a9fc    # 0.059f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudMinusOffset:F

    .line 258
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isFadeOutSound:Z

    .line 259
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->fadeOutSound()V

    .line 261
    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->imageType:I

    if-nez v0, :cond_1

    .line 263
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "handleUnlock, but return because imageType is Normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "handleUnlock, do it because imageType is Special"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 379
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    .line 380
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$EffectHandler;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$EffectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$EffectHandler;->removeMessages(I)V

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$EffectHandler;

    .line 386
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 357
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->hasWindowFocus:Z

    .line 358
    const-string v0, "BrilliantCut_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 360
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 362
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isUnlocked:Z

    if-nez v0, :cond_2

    .line 364
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragStreamID:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isUnlocked:Z

    if-nez v0, :cond_2

    .line 366
    const v0, 0x3d1fbe77    # 0.039f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudMinusOffset:F

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isFadeOutSound:Z

    .line 368
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->fadeOutSound()V

    .line 374
    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isUnlocked:Z

    .line 161
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->clearScreen()V

    .line 162
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->clearScreen()V

    .line 226
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 227
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 228
    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isUnlocked:Z

    .line 216
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->clearScreen()V

    .line 217
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 218
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->hasWindowFocus:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 219
    :cond_1
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 512
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-nez p1, :cond_1

    .line 516
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "bmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 521
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 523
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 347
    return-void
.end method

.method public settingsForImageType(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 391
    const-string v3, "BrilliantCut_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "settingsForImageType type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-array v1, v6, [I

    aput v6, v1, v7

    .line 393
    .local v1, "nums":[I
    new-array v2, v6, [F

    int-to-float v3, p1

    aput v3, v2, v7

    .line 395
    .local v2, "values":[F
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v3, "Nums"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v3, "Values"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const/16 v3, 0x63

    invoke-virtual {p0, v3, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 400
    iput p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->imageType:I

    .line 401
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->makeSound()V

    .line 152
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->clearScreen()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isUnlocked:Z

    .line 154
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 233
    const-string v1, "BrilliantCut_Keyguard"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->isUnlocked:Z

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 241
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 183
    const-string v2, "BrilliantCut_Keyguard"

    const-string v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mDisplayId:I

    invoke-static {v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 187
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_1

    .line 188
    const-string v2, "BrilliantCut_Keyguard"

    const-string v3, "newBitmapDrawable  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 192
    .local v1, "originBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 194
    const-string v2, "BrilliantCut_Keyguard"

    const-string v3, "originBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->update()V

    .line 508
    return-void
.end method

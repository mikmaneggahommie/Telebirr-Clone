.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewParticleSpace.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final DRAG_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_poppingcolours_drag.ogg"

.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_poppingcolours_lock.ogg"

.field private static final TAP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_poppingcolours_tap.ogg"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_poppingcolours_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field final DRAG_SOUND_COUNT_INTERVAL:I

.field final DRAG_SOUND_COUNT_START_POINT:I

.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMinValue:I

.field private dragSoundCount:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isUnlocking:Z

.field private lastPlayedIdBeforeUnlock:I

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

.field private mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mWindowManager:Landroid/view/WindowManager;

.field private rightVolumeMax:F

.field private sounds:[I

.field private useCPUMinClock:Z

.field private useGPUMaxClock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_poppingcolours_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_poppingcolours_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->TAG:Ljava/lang/String;

    .line 39
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DBG:Z

    .line 46
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 47
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    .line 48
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    .line 49
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->UNLOCK_SOUND_PLAY_TIME:J

    .line 50
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    .line 51
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 52
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 53
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_START_POINT:I

    .line 54
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_TAB:I

    .line 55
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_DRAG:I

    .line 57
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useGPUMaxClock:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useCPUMinClock:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mDisplayId:I

    .line 74
    invoke-direct {p0, p1, v4, v3, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v4, 0x0

    const v1, 0x3e99999a    # 0.3f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->TAG:Ljava/lang/String;

    .line 39
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DBG:Z

    .line 46
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 47
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    .line 48
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    .line 49
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->UNLOCK_SOUND_PLAY_TIME:J

    .line 50
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    .line 51
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 52
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 53
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_START_POINT:I

    .line 54
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_TAB:I

    .line 55
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_DRAG:I

    .line 57
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useGPUMaxClock:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useCPUMinClock:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mDisplayId:I

    .line 78
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->TAG:Ljava/lang/String;

    .line 39
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DBG:Z

    .line 46
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 47
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    .line 48
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    .line 49
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->UNLOCK_SOUND_PLAY_TIME:J

    .line 50
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    .line 51
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 52
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 53
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_START_POINT:I

    .line 54
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_TAB:I

    .line 55
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_DRAG:I

    .line 57
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useGPUMaxClock:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useCPUMinClock:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mDisplayId:I

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    .line 87
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardWindowCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    .line 90
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mDisplayId:I

    .line 91
    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .line 92
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mWindowManager:Landroid/view/WindowManager;

    .line 93
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    const-string v2, "VisualEffectParticleEffect"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    .line 95
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->setEffect(I)V

    .line 106
    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 113
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 117
    const-string v1, "VisualEffectParticleEffect"

    const-string v2, "new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    .line 120
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

    .line 124
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

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 126
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_poppingcolours_tap.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 127
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/ve_poppingcolours_drag.ogg"

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 130
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound() -  mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "VisualEffectParticleEffect"

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

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->lastPlayedIdBeforeUnlock:I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "releaseSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 139
    :cond_0
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "originBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "BGBitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 194
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->clearScreen()V

    .line 168
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->releaseSound()V

    .line 171
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 304
    :cond_0
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 224
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 245
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 247
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->makeSound()V

    .line 250
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->playSound(I)V

    .line 259
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 261
    return v3

    .line 251
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 252
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 253
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_1

    .line 254
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->playSound(I)V

    .line 255
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 229
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 232
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 233
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 277
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    .line 278
    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewParticleSpace : onWindowFocusChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public playLockSound()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->clearScreen()V

    .line 210
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v0, 0x63

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 202
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 317
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    if-nez p1, :cond_0

    .line 319
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "bmp  is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 324
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 272
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->clearScreen()V

    .line 156
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->makeSound()V

    .line 157
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 5
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 214
    const-string v1, "VisualEffectParticleEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardEffectViewParticleSpace : showUnlockAffordance, startDelay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v0, "hm1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 220
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 176
    const-string v2, "VisualEffectParticleEffect"

    const-string v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mDisplayId:I

    invoke-static {v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 180
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_1

    .line 181
    const-string v2, "VisualEffectParticleEffect"

    const-string v3, "newBitmapDrawable  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 185
    .local v1, "originBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 187
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->update()V

    .line 313
    return-void
.end method

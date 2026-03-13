.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewBlind.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;
    }
.end annotation


# static fields
.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_blind_lock.ogg"

.field private static final SILENCE_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_silence.ogg"

.field private static final TOUCH_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_blind_touch.ogg"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_blind_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field final DRAG_SOUND_COUNT_INTERVAL:I

.field final DRAG_SOUND_COUNT_START_POINT:I

.field final DRAG_SOUNT_DISTANCE_THRESHOLD:I

.field final SOUND_ID_TAB:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private affordanceDelay:J

.field private affordanceRect:Landroid/graphics/Rect;

.field private blindEffect:Lcom/samsung/android/visualeffect/EffectView;

.field private data:Lcom/samsung/android/visualeffect/EffectDataObj;

.field private initBlind:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

.field private isAsyncPostExecuted:Z

.field private isCleanUp:Z

.field private isHandleUnlock:Z

.field private isOnConfigurationChanged:Z

.field private isShow:Z

.field private isShowUnlockAffordance:Z

.field private isUpdate:Z

.field private isWindowFocused:Z

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mImageView:Landroid/widget/ImageView;

.field private mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mWindowManager:Landroid/view/WindowManager;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_blind_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_blind_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DBG:Z

    .line 45
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    .line 51
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    .line 52
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->leftVolumeMax:F

    .line 53
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->rightVolumeMax:F

    .line 54
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->UNLOCK_SOUND_PLAY_TIME:J

    .line 55
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 56
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    .line 57
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    .line 58
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_START_POINT:I

    .line 59
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUNT_DISTANCE_THRESHOLD:I

    .line 61
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->SOUND_ID_TAB:I

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mDisplayId:I

    .line 84
    invoke-direct {p0, p1, v3, v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DBG:Z

    .line 45
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    .line 51
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    .line 52
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->leftVolumeMax:F

    .line 53
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->rightVolumeMax:F

    .line 54
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->UNLOCK_SOUND_PLAY_TIME:J

    .line 55
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 56
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    .line 57
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    .line 58
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_START_POINT:I

    .line 59
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUNT_DISTANCE_THRESHOLD:I

    .line 61
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->SOUND_ID_TAB:I

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mDisplayId:I

    .line 89
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/4 v4, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DBG:Z

    .line 45
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    .line 51
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    .line 52
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->leftVolumeMax:F

    .line 53
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->rightVolumeMax:F

    .line 54
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->UNLOCK_SOUND_PLAY_TIME:J

    .line 55
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 56
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    .line 57
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    .line 58
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_START_POINT:I

    .line 59
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUNT_DISTANCE_THRESHOLD:I

    .line 61
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->SOUND_ID_TAB:I

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mDisplayId:I

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceDelay:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Lcom/samsung/android/visualeffect/EffectView;)Lcom/samsung/android/visualeffect/EffectView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Lcom/samsung/android/visualeffect/EffectView;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectDataObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->data:Lcom/samsung/android/visualeffect/EffectDataObj;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Lcom/samsung/android/visualeffect/EffectDataObj;)Lcom/samsung/android/visualeffect/EffectDataObj;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Lcom/samsung/android/visualeffect/EffectDataObj;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->data:Lcom/samsung/android/visualeffect/EffectDataObj;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    return v0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 465
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    .line 98
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewBlind displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    .line 101
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mDisplayId:I

    .line 102
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    const-string v2, "BlindEffect"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    .line 103
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mWindowManager:Landroid/view/WindowManager;

    .line 104
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mImageView:Landroid/widget/ImageView;

    .line 106
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->initBlind:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    .line 107
    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->initBlind:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    .line 110
    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method private makeSound()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->stopReleaseSound()V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 155
    const-string v0, "BlindEffect"

    const-string v1, "new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    .line 157
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/ve_blind_touch.ogg"

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v4

    .line 164
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 190
    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound() -  mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "BlindEffect"

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

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 195
    :cond_0
    return-void
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 168
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 119
    const-string v9, "BlindEffect"

    const-string v10, "setBackground"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v6, 0x0

    .line 123
    .local v6, "pBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v9, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mDisplayId:I

    invoke-static {v9, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    .line 125
    .local v5, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v5, :cond_1

    .line 126
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 127
    const-string v9, "BlindEffect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pBitmap.height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v12, :cond_1

    .line 129
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    if-gt v4, v12, :cond_0

    .line 130
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    mul-int/2addr v9, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x3

    mul-int/2addr v10, v4

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 131
    .local v7, "pixel":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 132
    .local v8, "redValue":I
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 133
    .local v0, "blueValue":I
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 134
    .local v2, "greenValue":I
    const-string v9, "BlindEffect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.getPixel("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    mul-int/2addr v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    mul-int/2addr v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    .end local v0    # "blueValue":I
    .end local v2    # "greenValue":I
    .end local v7    # "pixel":I
    .end local v8    # "redValue":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v6
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 231
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 236
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->stopReleaseSound()V

    .line 237
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSound()V

    .line 238
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 290
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 327
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-nez v0, :cond_1

    .line 328
    const-string v0, "BlindEffect"

    const-string v1, "isAsyncPostExecuted=false (handleTouchEvent)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    :goto_0
    return v2

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 334
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->stopReleaseSound()V

    .line 336
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_2

    .line 337
    const-string v0, "BlindEffect"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->makeSound()V

    .line 340
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->playSound(I)V

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 295
    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : handleUnlock (exit xml animation removed)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v1, :cond_0

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "unlock"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 318
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    return-void

    .line 317
    :cond_0
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 200
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    if-eqz v1, :cond_0

    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v1, :cond_1

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "onConfigurationChanged"

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 209
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    return-void

    .line 208
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 348
    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewBlind : onWindowFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    .line 350
    return-void
.end method

.method public playLockSound()V
    .locals 2

    .prologue
    .line 322
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 226
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public screenTurnedOff()V
    .locals 3

    .prologue
    .line 263
    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : screenTurnedOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v1, :cond_0

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "initAnimationValue"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 268
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 270
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 476
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 457
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 213
    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : show"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v1, :cond_0

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "show"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 221
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->makeSound()V

    .line 222
    return-void

    .line 220
    :cond_0
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 5
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    .line 274
    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v1, :cond_0

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 286
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 282
    :cond_0
    iput-wide p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceDelay:J

    .line 283
    iput-object p3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceRect:Landroid/graphics/Rect;

    .line 284
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    goto :goto_0
.end method

.method public update()V
    .locals 3

    .prologue
    .line 242
    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : setImageBitmap mImageView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v1, :cond_1

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "background"

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 254
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    :goto_0
    return-void

    .line 253
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

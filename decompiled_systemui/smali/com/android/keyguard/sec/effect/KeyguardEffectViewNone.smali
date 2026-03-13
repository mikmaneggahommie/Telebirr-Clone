.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewNone.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_none_lock.ogg"

.field public static final TYPE_SHORTCUT:I = 0x1

.field public static final TYPE_UNLOCK:I = 0x0

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_none_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private touchHashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_none_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_none_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 51
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 65
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v4, 0x1

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 69
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p4, "mWallpaperProcessSeparated"    # Z
    .param p5, "displayId"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 74
    invoke-virtual/range {p0 .. p5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, v2

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 60
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->reloadResForOpenTheme()V

    return-void
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    const-string v0, "Wallpaper"

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method private reloadResForOpenTheme()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "reloadResForOpenTheme"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/16 v1, 0x63

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 194
    return-void
.end method

.method private setOuterCircleType(Z)V
    .locals 3
    .param p1, "isStroke"    # Z

    .prologue
    .line 177
    const-string v1, "VisualEffectCircleUnlockEffect"

    const-string v2, "KeyguardEffectViewNone : setOuterCircleType"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "setOuterCircleType"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/16 v1, 0x63

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 181
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 246
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 251
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 253
    return-void
.end method

.method public init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p4, "mWallpaperProcessSeparated"    # Z
    .param p5, "displayId"    # I

    .prologue
    .line 79
    const-string v11, "VisualEffectCircleUnlockEffect"

    const-string v12, "KeyguardEffectViewNone : Constructor"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    .line 81
    move/from16 v0, p5

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 82
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 83
    .local v3, "dm":Landroid/util/DisplayMetrics;
    iget v9, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 84
    .local v9, "screenWidth":I
    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 86
    .local v8, "screenHeight":I
    if-ge v9, v8, :cond_4

    move v10, v9

    .line 87
    .local v10, "smallestWidth":I
    :goto_0
    int-to-float v11, v10

    const/high16 v12, 0x44870000    # 1080.0f

    div-float v7, v11, v12

    .line 89
    .local v7, "ratio":F
    const-string v11, "VisualEffectCircleUnlockEffect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "screenWidth : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v11, "VisualEffectCircleUnlockEffect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "screenHeight : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v11, "VisualEffectCircleUnlockEffect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ratio : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->touchHashmap:Ljava/util/HashMap;

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "circleUnlockMaxWidth":I
    if-nez p2, :cond_5

    .line 105
    iget-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    mul-int/lit8 v1, v11, 0x2

    .line 109
    :cond_0
    :goto_1
    const/high16 v11, 0x40800000    # 4.0f

    mul-float/2addr v11, v7

    float-to-int v6, v11

    .line 110
    .local v6, "outerStrokeWidth":I
    const/high16 v11, 0x40c00000    # 6.0f

    mul-float/2addr v11, v7

    float-to-int v4, v11

    .line 111
    .local v4, "innerStrokeWidth":I
    const/16 v11, 0x1e

    new-array v5, v11, [I

    const/4 v11, 0x0

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_01:I

    aput v12, v5, v11

    const/4 v11, 0x1

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_02:I

    aput v12, v5, v11

    const/4 v11, 0x2

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_03:I

    aput v12, v5, v11

    const/4 v11, 0x3

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_04:I

    aput v12, v5, v11

    const/4 v11, 0x4

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_05:I

    aput v12, v5, v11

    const/4 v11, 0x5

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_06:I

    aput v12, v5, v11

    const/4 v11, 0x6

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_07:I

    aput v12, v5, v11

    const/4 v11, 0x7

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_08:I

    aput v12, v5, v11

    const/16 v11, 0x8

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_09:I

    aput v12, v5, v11

    const/16 v11, 0x9

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_10:I

    aput v12, v5, v11

    const/16 v11, 0xa

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_11:I

    aput v12, v5, v11

    const/16 v11, 0xb

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_12:I

    aput v12, v5, v11

    const/16 v11, 0xc

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_13:I

    aput v12, v5, v11

    const/16 v11, 0xd

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_14:I

    aput v12, v5, v11

    const/16 v11, 0xe

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_15:I

    aput v12, v5, v11

    const/16 v11, 0xf

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_16:I

    aput v12, v5, v11

    const/16 v11, 0x10

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_17:I

    aput v12, v5, v11

    const/16 v11, 0x11

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_18:I

    aput v12, v5, v11

    const/16 v11, 0x12

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_19:I

    aput v12, v5, v11

    const/16 v11, 0x13

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_20:I

    aput v12, v5, v11

    const/16 v11, 0x14

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_21:I

    aput v12, v5, v11

    const/16 v11, 0x15

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_22:I

    aput v12, v5, v11

    const/16 v11, 0x16

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_23:I

    aput v12, v5, v11

    const/16 v11, 0x17

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_24:I

    aput v12, v5, v11

    const/16 v11, 0x18

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_25:I

    aput v12, v5, v11

    const/16 v11, 0x19

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_26:I

    aput v12, v5, v11

    const/16 v11, 0x1a

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_27:I

    aput v12, v5, v11

    const/16 v11, 0x1b

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_28:I

    aput v12, v5, v11

    const/16 v11, 0x1c

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_29:I

    aput v12, v5, v11

    const/16 v11, 0x1d

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_30:I

    aput v12, v5, v11

    .line 129
    .local v5, "lockSequenceImageId":[I
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setEffect(I)V

    .line 131
    new-instance v2, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v2}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 132
    .local v2, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 133
    iget-object v11, v2, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v1, v11, Lcom/samsung/android/visualeffect/lock/data/CircleData;->circleUnlockMaxWidth:I

    .line 134
    iget-object v11, v2, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v6, v11, Lcom/samsung/android/visualeffect/lock/data/CircleData;->outerStrokeWidth:I

    .line 135
    iget-object v11, v2, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v4, v11, Lcom/samsung/android/visualeffect/lock/data/CircleData;->innerStrokeWidth:I

    .line 136
    iget-object v11, v2, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput-object v5, v11, Lcom/samsung/android/visualeffect/lock/data/CircleData;->lockSequenceImageId:[I

    .line 137
    iget-object v11, v2, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_arrow:I

    iput v12, v11, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowId:I

    .line 138
    iget-object v11, v2, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v12

    iput-boolean v12, v11, Lcom/samsung/android/visualeffect/lock/data/CircleData;->hasNoOuterCircle:Z

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 140
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 141
    :cond_1
    iget-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/keyguard/R$dimen;->keyguard_shortcut_min_width_offset:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p0, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setMinWidthOffset(I)V

    .line 142
    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_shortcut_arrow:I

    invoke-virtual {p0, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setArrowForButton(I)V

    .line 144
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestShortcutEffect()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 145
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setOuterCircleType(Z)V

    .line 146
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->showSwipeCircleEffect(Z)V

    .line 148
    :cond_3
    return-void

    .end local v1    # "circleUnlockMaxWidth":I
    .end local v2    # "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    .end local v4    # "innerStrokeWidth":I
    .end local v5    # "lockSequenceImageId":[I
    .end local v6    # "outerStrokeWidth":I
    .end local v7    # "ratio":F
    .end local v10    # "smallestWidth":I
    :cond_4
    move v10, v8

    .line 86
    goto/16 :goto_0

    .line 106
    .restart local v1    # "circleUnlockMaxWidth":I
    .restart local v7    # "ratio":F
    .restart local v10    # "smallestWidth":I
    :cond_5
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 107
    iget-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border_shortcut:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    mul-int/lit8 v1, v11, 0x2

    goto/16 :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onAttachedToWindow()V

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 154
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 160
    return-void
.end method

.method public playLockSound()V
    .locals 2

    .prologue
    .line 257
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->clearScreen()V

    .line 213
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 227
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method public setArrowForButton(I)V
    .locals 2
    .param p1, "arrowForButtonId"    # I

    .prologue
    .line 184
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 185
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 186
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowForButtonId:I

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 188
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 286
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->clearScreen()V

    .line 267
    return-void
.end method

.method public setMinWidthOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 163
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 164
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 165
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/CircleData;->minWidthOffset:I

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 167
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->clearScreen()V

    .line 207
    return-void
.end method

.method public showSwipeCircleEffect(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 170
    const-string v1, "VisualEffectCircleUnlockEffect"

    const-string v2, "KeyguardEffectViewNone : showSwipeCircleEffect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "showSwipeCircleEffect"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/16 v1, 0x63

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 174
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 237
    const-string v1, "VisualEffectCircleUnlockEffect"

    const-string v2, "KeyguardEffectViewNone : showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 242
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.class public Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;
.super Ljava/lang/Object;
.source "KeyguardUnlockEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static SHORTCUT_LAUNCH_ON_RELEASE:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardUnlockEventHandler"


# instance fields
.field private mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

.field private mDistance:D

.field private mFirstBorder:I

.field private mIsIgnoreTouch:Z

.field private mIsKeyguardDismissing:Z

.field private mIsMultiTouch:Z

.field private mIsUnlockStarted:Z

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field mTempRect:Landroid/graphics/Rect;

.field private mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->shortcutLaunchOnRelease()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->SHORTCUT_LAUNCH_ON_RELEASE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    .param p2, "unlockView"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    .line 30
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    .line 32
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    .line 33
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 34
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    .line 35
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 67
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 68
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    .line 70
    check-cast p1, Landroid/view/View;

    .end local p1    # "callback":Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mFirstBorder:I

    .line 72
    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_second_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->launch()V

    return-void
.end method

.method private isUSAShortcutView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/keyguard/sec/SecGMSSmartLockCircleView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launch()V
    .locals 3

    .prologue
    .line 257
    const-string v0, "KeyguardUnlockEventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch() - mIsKeyguardDismissing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockExecuted()V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    instance-of v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    .line 270
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    const-string v0, "KeyguardUnlockEventHandler"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 283
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    .line 284
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    const-string v14, "KeyguardUnlockEventHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mIsUnlockStarted - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 78
    .local v2, "action":I
    and-int/lit16 v8, v2, 0xff

    .line 79
    .local v8, "maskedAction":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    if-eqz v14, :cond_0

    .line 80
    const/4 v14, 0x1

    .line 253
    :goto_0
    return v14

    .line 84
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->isUSAShortcutView(Landroid/view/View;)Z

    move-result v7

    .line 86
    .local v7, "isUSAShortcutView":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    if-eqz v14, :cond_5

    .line 87
    const/4 v14, 0x1

    if-eq v2, v14, :cond_1

    const/4 v14, 0x3

    if-ne v2, v14, :cond_2

    .line 88
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 89
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v14, :cond_2

    .line 91
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v14}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v14, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    .line 99
    .local v12, "touchedEventX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    .line 101
    .local v13, "touchedEventY":F
    packed-switch v8, :pswitch_data_0

    .line 253
    :cond_6
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v14, :cond_7

    if-eqz v7, :cond_17

    :cond_7
    const/4 v14, 0x0

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x2

    if-lt v14, v15, :cond_8

    .line 104
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 105
    const-string v14, "KeyguardUnlockEventHandler"

    const-string v15, "mIsMultiTouch true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz p1, :cond_6

    .line 107
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 108
    .local v9, "me":Landroid/view/MotionEvent;
    const/4 v14, 0x3

    invoke-virtual {v9, v14}, Landroid/view/MotionEvent;->setAction(I)V

    .line 110
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 112
    const-string v14, "KeyguardUnlockEventHandler"

    const-string v15, "mIsMultiTouch false"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    .end local v9    # "me":Landroid/view/MotionEvent;
    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 116
    const-string v14, "KeyguardUnlockEventHandler"

    const-string v15, "mIsMultiTouch false"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 120
    :pswitch_2
    if-nez p1, :cond_9

    .line 121
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    .line 122
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    .line 130
    :goto_2
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v14, :cond_6

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v14}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewPressed()V

    goto :goto_1

    .line 124
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    goto :goto_2

    .line 138
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v14, :cond_a

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v14}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->userActivity()V

    .line 142
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    sub-float v14, v12, v14

    float-to-int v3, v14

    .line 143
    .local v3, "diffX":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    sub-float v14, v13, v14

    float-to-int v6, v14

    .line 145
    .local v6, "diffY":I
    int-to-double v14, v3

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    int-to-double v0, v6

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    .line 148
    if-eqz p1, :cond_b

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-double v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-wide/from16 v16, v0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_e

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v14, :cond_b

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    .line 160
    :cond_b
    :goto_3
    if-eqz p1, :cond_c

    sget-boolean v14, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->SHORTCUT_LAUNCH_ON_RELEASE:Z

    if-nez v14, :cond_6

    :cond_c
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    if-nez v14, :cond_6

    .line 162
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    .line 164
    const-wide/16 v4, 0x0

    .line 165
    .local v4, "delay":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v14, :cond_d

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 168
    if-nez p1, :cond_d

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v14}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v4

    .line 173
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v14, :cond_6

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    check-cast v14, Landroid/view/View;

    new-instance v15, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V

    invoke-virtual {v14, v15, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 154
    .end local v4    # "delay":J
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v14, :cond_b

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    goto :goto_3

    .line 189
    .end local v3    # "diffX":I
    .end local v6    # "diffY":I
    :pswitch_4
    const v14, 0xff00

    and-int/2addr v14, v2

    shr-int/lit8 v11, v14, 0x8

    .line 190
    .local v11, "pointer_index":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 191
    .local v10, "pointer_id":I
    if-nez v10, :cond_f

    .line 192
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 196
    .end local v10    # "pointer_id":I
    .end local v11    # "pointer_index":I
    :cond_f
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x1

    if-gt v14, v15, :cond_10

    .line 197
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 198
    const-string v14, "KeyguardUnlockEventHandler"

    const-string v15, "mIsMultiTouch false"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v14, :cond_11

    const/4 v14, 0x3

    if-ne v8, v14, :cond_11

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v14}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 204
    :cond_11
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    .line 205
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v14}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->setHelpText()V

    goto/16 :goto_1

    .line 208
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v14, :cond_12

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v14}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 212
    :cond_12
    const-string v14, "KeyguardUnlockEventHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ACTION_UP mDistance: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mFirstBorder:I

    int-to-double v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-wide/from16 v16, v0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_16

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpg-double v14, v14, v16

    if-ltz v14, :cond_13

    sget-boolean v14, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->SHORTCUT_LAUNCH_ON_RELEASE:Z

    if-eqz v14, :cond_16

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    if-nez v14, :cond_16

    .line 217
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    .line 218
    const-wide/16 v4, 0x0

    .line 220
    .restart local v4    # "delay":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v14, :cond_14

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 224
    if-nez p1, :cond_14

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v14}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v4

    .line 229
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v14, :cond_15

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    check-cast v14, Landroid/view/View;

    new-instance v15, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V

    invoke-virtual {v14, v15, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    .end local v4    # "delay":J
    :cond_15
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x1

    if-gt v14, v15, :cond_6

    .line 245
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 246
    const-string v14, "KeyguardUnlockEventHandler"

    const-string v15, "mIsMultiTouch false"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 241
    :cond_16
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v14}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->setHelpText()V

    goto :goto_4

    .line 253
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    const-string v0, "KeyguardUnlockEventHandler"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    .line 275
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    .line 277
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    .line 278
    return-void
.end method

.class public Lcom/android/systemui/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_QUIESCENT_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "StatusBar.KeyButtonView"


# instance fields
.field private mAnimateToQuiescent:Landroid/animation/Animator;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mDownTime:J

.field private mDrawingAlpha:F

.field private mIsFloatingKey:Z

.field private mIsLongClicked:Z

.field private mQuiescentAlpha:F

.field private mSupportsLongpress:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    .line 70
    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    .line 71
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsLongClicked:Z

    .line 75
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    .line 77
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 100
    sget-object v1, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 105
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 107
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsFloatingKey:Z

    .line 108
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsFloatingKey:Z

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setLongClickable(Z)V

    .line 111
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setClickable(Z)V

    .line 116
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    .line 117
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    .line 118
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsFloatingKey:Z

    if-nez v1, :cond_1

    .line 119
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsLongClicked:Z

    return p1
.end method

.method private animateToQuiescent()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 174
    const-string v0, "drawingAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    return v0
.end method

.method public getQuiescentAlpha()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 125
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0x20

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 194
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 251
    :cond_0
    :goto_0
    return v5

    .line 197
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    .line 198
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 199
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_1

    .line 200
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v4, v4, v6, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 205
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v6, :cond_0

    .line 206
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsLongClicked:Z

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    goto :goto_1

    .line 212
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 213
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 214
    .local v3, "y":I
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v3, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    goto :goto_0

    .line 220
    .end local v2    # "x":I
    .end local v3    # "y":I
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 221
    iget v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v4, :cond_3

    .line 222
    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 224
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 225
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 229
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v1

    .line 230
    .local v1, "doIt":Z
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 231
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_6

    .line 232
    if-eqz v1, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsLongClicked:Z

    if-nez v6, :cond_5

    .line 233
    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 234
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 235
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 245
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 246
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 237
    :cond_5
    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_2

    .line 241
    :cond_6
    if-eqz v1, :cond_4

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performClick()Z

    goto :goto_2

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->jumpDrawablesToCurrentState()V

    .line 140
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 144
    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v1, :cond_0

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 146
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 148
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 156
    :goto_0
    return v0

    .line 150
    :cond_0
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v1, :cond_1

    .line 151
    const/16 v1, 0x80

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 152
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 153
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 2
    .param p1, "soundConstant"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 256
    return-void
.end method

.method public sendEvent(II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "flags"    # I

    .prologue
    .line 259
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 260
    return-void
.end method

.method sendEvent(IIJ)V
    .locals 17
    .param p1, "action"    # I
    .param p2, "flags"    # I
    .param p3, "when"    # J

    .prologue
    .line 263
    move/from16 v0, p2

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    const/4 v10, 0x1

    .line 266
    .local v10, "repeatCount":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsFloatingKey:Z

    if-eqz v3, :cond_1

    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v6, p2, 0x8

    or-int/lit8 v14, v6, 0x40

    const/16 v15, 0x101

    const/16 v16, 0x1

    move-wide/from16 v6, p3

    move/from16 v8, p1

    invoke-direct/range {v3 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    move-object v2, v3

    .line 275
    .local v2, "ev":Landroid/view/KeyEvent;
    :goto_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 277
    return-void

    .line 263
    .end local v2    # "ev":Landroid/view/KeyEvent;
    .end local v10    # "repeatCount":I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 266
    .restart local v10    # "repeatCount":I
    :cond_1
    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v6, p2, 0x8

    or-int/lit8 v14, v6, 0x40

    const/16 v15, 0x101

    move-wide/from16 v6, p3

    move/from16 v8, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v2, v3

    goto :goto_1
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 186
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setImageAlpha(I)V

    .line 187
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    .line 188
    return-void
.end method

.method public setQuiescentAlpha(FZ)V
    .locals 2
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 161
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 162
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 163
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    .line 165
    if-eqz p2, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->animateToQuiescent()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 169
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    goto :goto_0
.end method

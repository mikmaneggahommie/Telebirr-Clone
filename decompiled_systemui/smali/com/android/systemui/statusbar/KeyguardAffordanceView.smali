.class public Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.super Landroid/widget/ImageView;
.source "KeyguardAffordanceView.java"


# static fields
.field private static final CIRCLE_APPEAR_DURATION:J = 0x50L

.field private static final CIRCLE_DISAPPEAR_MAX_DURATION:J = 0xc8L

.field public static final MAX_ICON_SCALE_AMOUNT:F = 1.5f

.field public static final MIN_ICON_SCALE_AMOUNT:F = 0.8f

.field private static final NORMAL_ANIMATION_DURATION:J = 0xc8L


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCenterX:I

.field private mCenterY:I

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleColor:I

.field private mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:F

.field private mCircleStartRadius:F

.field private mCircleStartValue:F

.field private mCircleWillBeHidden:Z

.field private mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mColorInterpolator:Landroid/animation/ArgbEvaluator;

.field private final mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mFinishing:Z

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHwCenterX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCenterY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCirclePaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCircleRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mImageScale:F

.field private final mInverseColor:I

.field private mIsLeft:Z

.field private mMaxCircleSize:F

.field private final mMinBackgroundRadius:I

.field private final mNormalColor:I

.field private mPreviewClipper:Landroid/animation/Animator;

.field private mPreviewView:Landroid/view/View;

.field private mRestingAlpha:F

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSupportHardware:Z

.field private mTempPoint:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, -0x1

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    .line 79
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mRestingAlpha:F

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$2;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 100
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$4;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    .line 134
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mInverseColor:I

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a035b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 141
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    .line 142
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 143
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFinishing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    return p1
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 367
    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 370
    :cond_0
    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 179
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 180
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFinishing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mSupportHardware:Z

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 181
    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 182
    .local v0, "displayListCanvas":Landroid/view/DisplayListCanvas;
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterX:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 189
    .end local v0    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateCircleColor()V

    .line 186
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getAnimatorToRadius(F)Landroid/animation/ValueAnimator;
    .locals 5
    .param p1, "circleRadius"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    aput v4, v3, v2

    aput p1, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 351
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 352
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartValue:F

    .line 353
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    .line 354
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 362
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 363
    return-object v0

    :cond_0
    move v1, v2

    .line 353
    goto :goto_0
.end method

.method private getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 484
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$10;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$10;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getMaxCircleSize()F
    .locals 8

    .prologue
    .line 267
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLocationInWindow([I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 269
    .local v1, "rootWidth":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    add-int/2addr v3, v4

    int-to-float v2, v3

    .line 270
    .local v2, "width":F
    sub-float v3, v1, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 271
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    add-int/2addr v3, v4

    int-to-float v0, v3

    .line 272
    .local v0, "height":F
    float-to-double v4, v2

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method private getRtAnimatorToRadius(F)Landroid/animation/Animator;
    .locals 2
    .param p1, "circleRadius"    # F

    .prologue
    .line 254
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    invoke-direct {v0, v1, p1}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 255
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 256
    return-object v0
.end method

.method private initHwProperties()V
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterX:Landroid/graphics/CanvasProperty;

    .line 261
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCenterY:Landroid/graphics/CanvasProperty;

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    .line 264
    return-void
.end method

.method private setCircleRadius(FZZ)V
    .locals 14
    .param p1, "circleRadius"    # F
    .param p2, "slowAnimation"    # Z
    .param p3, "noAnimation"    # Z

    .prologue
    .line 291
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    if-nez v10, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-nez v10, :cond_3

    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    :cond_1
    const/4 v7, 0x1

    .line 293
    .local v7, "radiusHidden":Z
    :goto_0
    const/4 v10, 0x0

    cmpl-float v10, p1, v10

    if-nez v10, :cond_4

    const/4 v6, 0x1

    .line 294
    .local v6, "nowHidden":Z
    :goto_1
    if-eq v7, v6, :cond_5

    if-nez p3, :cond_5

    const/4 v8, 0x1

    .line 295
    .local v8, "radiusNeedsAnimation":Z
    :goto_2
    if-nez v8, :cond_7

    .line 296
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-nez v10, :cond_6

    .line 297
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    .line 300
    if-eqz v6, :cond_2

    .line 301
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v10, :cond_2

    .line 302
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :cond_2
    :goto_3
    return-void

    .line 291
    .end local v6    # "nowHidden":Z
    .end local v7    # "radiusHidden":Z
    .end local v8    # "radiusNeedsAnimation":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 293
    .restart local v7    # "radiusHidden":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 294
    .restart local v6    # "nowHidden":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 305
    .restart local v8    # "radiusNeedsAnimation":Z
    :cond_6
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    if-nez v10, :cond_2

    .line 308
    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v10, v10

    sub-float v1, p1, v10

    .line 309
    .local v1, "diff":F
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 310
    .local v9, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartValue:F

    add-float/2addr v13, v1

    aput v13, v11, v12

    const/4 v12, 0x1

    aput p1, v11, v12

    invoke-virtual {v10, v11}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 311
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v11, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_3

    .line 314
    .end local v1    # "diff":F
    .end local v9    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 315
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 316
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 317
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/4 v10, 0x0

    cmpl-float v10, p1, v10

    if-nez v10, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 320
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    :goto_4
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 321
    const-wide/16 v2, 0xfa

    .line 322
    .local v2, "duration":J
    if-nez p2, :cond_8

    .line 323
    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 325
    .local v4, "durationFactor":F
    const/high16 v10, 0x42a00000    # 80.0f

    mul-float/2addr v10, v4

    float-to-long v2, v10

    .line 326
    const-wide/16 v10, 0xc8

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 328
    .end local v4    # "durationFactor":F
    :cond_8
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 329
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 330
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2

    .line 331
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLeft()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getTop()I

    move-result v12

    iget v13, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    invoke-static {v10, v11, v12, v13, p1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 335
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v10, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v10, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 337
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v11, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 338
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    new-instance v11, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 344
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    goto/16 :goto_3

    .line 317
    .end local v2    # "duration":J
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_4
.end method

.method private startRtCircleFadeOut(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 245
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 247
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 248
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 250
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 251
    return-void
.end method

.method private updateCircleColor()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 192
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v5

    add-float v2, v5, v3

    .line 194
    .local v2, "fraction":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 195
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartRadius:F

    sub-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMaxCircleSize:F

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartRadius:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    sub-float v1, v7, v3

    .line 197
    .local v1, "finishingFraction":F
    mul-float/2addr v2, v1

    .line 199
    .end local v1    # "finishingFraction":F
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 202
    .local v0, "color":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    return-void
.end method

.method private updateIconColor()V
    .locals 6

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 172
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 173
    .local v0, "alpha":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 174
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mInverseColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 175
    .local v1, "color":I
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 176
    return-void
.end method


# virtual methods
.method public finishAnimation(FLjava/lang/Runnable;)V
    .locals 10
    .param p1, "velocity"    # F
    .param p2, "mAnimationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 208
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFinishing:Z

    .line 209
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartRadius:F

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getMaxCircleSize()F

    move-result v3

    .line 212
    .local v3, "maxCircleSize":F
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mSupportHardware:Z

    if-eqz v0, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->initHwProperties()V

    .line 214
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRtAnimatorToRadius(F)Landroid/animation/Animator;

    move-result-object v1

    .line 218
    .local v1, "animatorToRadius":Landroid/animation/Animator;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    move v4, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 220
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLeft()I

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getTop()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    invoke-static {v0, v2, v4, v5, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 234
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    move v7, v3

    move v8, p1

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 238
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mSupportHardware:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->startRtCircleFadeOut(J)V

    .line 242
    :cond_0
    return-void

    .line 216
    .end local v1    # "animatorToRadius":Landroid/animation/Animator;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .restart local v1    # "animatorToRadius":Landroid/animation/Animator;
    goto :goto_0
.end method

.method public getCircleRadius()F
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    return v0
.end method

.method public getRestingAlpha()F
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mRestingAlpha:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mSupportHardware:Z

    .line 156
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 158
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 159
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 161
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 147
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMaxCircleSize:F

    .line 151
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCircleRadius(F)V
    .locals 1
    .param p1, "circleRadius"    # F

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V

    .line 277
    return-void
.end method

.method public setCircleRadius(FZ)V
    .locals 1
    .param p1, "circleRadius"    # F
    .param p2, "slowAnimation"    # Z

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V

    .line 281
    return-void
.end method

.method public setCircleRadiusWithoutAnimation(F)V
    .locals 2
    .param p1, "circleRadius"    # F

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 285
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V

    .line 286
    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 8
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 431
    const-wide/16 v4, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method public setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    .line 445
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 446
    mul-float v5, p1, v8

    float-to-int v4, v5

    .line 447
    .local v4, "endAlpha":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 448
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_1

    .line 449
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 450
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(I)V

    .line 481
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getImageAlpha()I

    move-result v2

    .line 453
    .local v2, "currentAlpha":I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 454
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 455
    new-instance v5, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 463
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    if-nez p5, :cond_2

    .line 465
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-nez v5, :cond_5

    iget-object p5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 469
    :cond_2
    :goto_1
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 470
    const-wide/16 v6, -0x1

    cmp-long v5, p3, v6

    if-nez v5, :cond_3

    .line 471
    sub-int v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v8

    .line 472
    .local v3, "durationFactor":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 473
    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v3

    float-to-long p3, v5

    .line 475
    .end local v3    # "durationFactor":F
    :cond_3
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 476
    if-eqz p6, :cond_4

    .line 477
    invoke-direct {p0, p6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    :cond_4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 465
    :cond_5
    iget-object p5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method public setImageScale(FZ)V
    .locals 7
    .param p1, "imageScale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 373
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    .line 374
    return-void
.end method

.method public setImageScale(FZJLandroid/view/animation/Interpolator;)V
    .locals 5
    .param p1, "imageScale"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 387
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 388
    if-nez p2, :cond_0

    .line 389
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    .line 417
    :goto_0
    return-void

    .line 392
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 393
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 394
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardAffordanceView$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$8;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 401
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 402
    if-nez p5, :cond_1

    .line 403
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    iget-object p5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 407
    :cond_1
    :goto_1
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 408
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    .line 409
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3e4ccccc    # 0.19999999f

    div-float v1, v2, v3

    .line 411
    .local v1, "durationFactor":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 412
    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, v1

    float-to-long p3, v2

    .line 414
    .end local v1    # "durationFactor":F
    :cond_2
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 415
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 403
    :cond_3
    iget-object p5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method public setPreviewView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_0
    return-void
.end method

.method public setRestingAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 420
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mRestingAlpha:F

    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 424
    return-void
.end method

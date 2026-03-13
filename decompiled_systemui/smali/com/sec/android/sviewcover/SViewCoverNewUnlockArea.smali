.class public Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
.super Landroid/widget/LinearLayout;
.source "SViewCoverNewUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SViewCoverNewUnlockArea"


# instance fields
.field private final IN_ANIMATION_DURATION:I

.field private final MAKE_TARGET_DURATION:I

.field private final OUT_ANIMATION_DURATION:I

.field private circleAnimationMax:F

.field private circleAnimationMin:F

.field private dragAnimationValue:F

.field private fillAnimationValueMax:F

.field private mArrowCamera:Landroid/widget/ImageView;

.field private mArrowNoti:Landroid/widget/ImageView;

.field private mArrowSetting:Landroid/widget/ImageView;

.field private mCameraBgPressed:Landroid/widget/ImageView;

.field private mCameraButton:Landroid/widget/ImageView;

.field private mCameraCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

.field private mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mCameraContainer:Landroid/widget/RelativeLayout;

.field private mCircleNotiNormal:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDistance:D

.field private mIsFirstNoti:Z

.field private mIsMultiTouched:Z

.field private mNotiBgPressed:Landroid/widget/ImageView;

.field private mNotiCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

.field private mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mNotiContainer:Landroid/widget/RelativeLayout;

.field private mNotiMultiContainer:Landroid/widget/LinearLayout;

.field private mNotiMultiMissedCallCount:Landroid/widget/TextView;

.field private mNotiMultiMissedCallImage:Landroid/widget/ImageView;

.field private mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

.field private mNotiMultiUnreadMessageImage:Landroid/widget/ImageView;

.field private mNotiSingleContainer:Landroid/widget/LinearLayout;

.field private mNotiSingleEventCount:Landroid/widget/TextView;

.field private mNotiSingleEventImage:Landroid/widget/ImageView;

.field private mNotiStartX:F

.field private mNotiStartY:F

.field private mPM:Landroid/os/PowerManager;

.field private mRatio:F

.field private mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

.field private mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

.field private mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

.field private mSecondBorder:D

.field private mSettingBgPressed:Landroid/widget/ImageView;

.field private mSettingButton:Landroid/widget/ImageView;

.field private mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

.field private mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mSettingContainer:Landroid/widget/RelativeLayout;

.field private mShortcutStartX:F

.field private mShortcutStartY:F

.field private mTouchCorrectionArea:I

.field private mTouchedShortcut:Ljava/lang/String;

.field private mUnlockLayout:Landroid/view/View;

.field private strokeAnimationValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    .line 88
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->MAKE_TARGET_DURATION:I

    .line 101
    iput v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    .line 102
    iput v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    .line 104
    iput v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMin:F

    .line 106
    const/16 v0, 0x29a

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->IN_ANIMATION_DURATION:I

    .line 107
    const/16 v0, 0x14d

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->OUT_ANIMATION_DURATION:I

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    .line 110
    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    .line 111
    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    .line 112
    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    .line 122
    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 130
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mPM:Landroid/os/PowerManager;

    .line 131
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->isUsimDownloadTopActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;
    .param p3, "x3"    # [Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->resetCircleAnimator()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAllAnimator()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mRatio:F

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mRatio:F

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchCorrectionArea:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->isInLockTaskMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
    .param p2, "x2"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->updateDragCircle(Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;F)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    return v0
.end method

.method static synthetic access$3302(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    return p1
.end method

.method static synthetic access$3400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMin:F

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setAlphaAndVisibility(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMax:F

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    return v0
.end method

.method static synthetic access$3702(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->fillAnimationValueMax:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$702(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;D)D
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # D

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    return-wide p1
.end method

.method static synthetic access$800(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    return-object v0
.end method

.method private cancelAllAnimator()V
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1054
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1055
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1056
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1057
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1058
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1059
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1062
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 1065
    :cond_0
    return-void
.end method

.method private closeCircleEffect(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "outAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1011
    if-nez p1, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1015
    :cond_0
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMax:F

    .line 1016
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->fillAnimationValueMax:F

    .line 1017
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private initCircleEffect()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    .line 833
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 834
    .local v7, "dm":Landroid/util/DisplayMetrics;
    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 835
    .local v10, "screenWidth":I
    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 837
    .local v9, "screenHeight":I
    if-ge v10, v9, :cond_0

    move v11, v10

    .line 838
    .local v11, "smallestWidth":I
    :goto_0
    int-to-float v0, v11

    const/high16 v1, 0x44870000    # 1080.0f

    div-float v8, v0, v1

    .line 840
    .local v8, "ratio":F
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v8

    float-to-int v4, v0

    .line 841
    .local v4, "outerStrokeWidth":I
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, v8

    float-to-int v5, v0

    .line 843
    .local v5, "innerStrokeWidth":I
    iget-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v12

    double-to-int v2, v0

    .line 844
    .local v2, "circleMaxWidth":I
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_circle_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sub-int v3, v0, v5

    .line 848
    .local v3, "circleMinWidth":I
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_circle_camera_point_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    .line 851
    .local v6, "pointX":I
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_touch_correction:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchCorrectionArea:I

    .line 853
    const-string v0, "SViewCoverNewUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "center is "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", maxwidth : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ",  minWidth : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    .line 858
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    .line 860
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    .line 863
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v14}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v14}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v14}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 868
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 869
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 871
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setAllAnimator()V

    .line 872
    return-void

    .end local v2    # "circleMaxWidth":I
    .end local v3    # "circleMinWidth":I
    .end local v4    # "outerStrokeWidth":I
    .end local v5    # "innerStrokeWidth":I
    .end local v6    # "pointX":I
    .end local v8    # "ratio":F
    .end local v11    # "smallestWidth":I
    :cond_0
    move v11, v9

    .line 837
    goto/16 :goto_0
.end method

.method private isGuestMode()Z
    .locals 3

    .prologue
    .line 701
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 702
    const-string v0, "SViewCoverNewUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityManager.getCurrentUser() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInLockTaskMode()Z
    .locals 3

    .prologue
    .line 1111
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1113
    .local v0, "mAm":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    .line 1116
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRTL()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 1102
    .local v0, "value":B
    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 1106
    :cond_1
    return v1
.end method

.method private isUsimDownloadTopActivity()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1080
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1082
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1083
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 1084
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1085
    .local v2, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.phone.UsimDownload"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1089
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private varargs playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    .locals 8
    .param p1, "isPlay"    # Z
    .param p2, "side"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;
    .param p3, "otherViews"    # [Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    .line 760
    if-ne p1, v7, :cond_0

    .line 761
    move-object v0, p3

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 762
    .local v3, "view":Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    .end local v0    # "arr$":[Landroid/view/View;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p3

    .restart local v0    # "arr$":[Landroid/view/View;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 766
    .restart local v3    # "view":Landroid/view/View;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 770
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    sget-object v6, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    if-ne p2, v6, :cond_3

    .line 771
    if-ne p1, v7, :cond_2

    :goto_2
    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setAlphaRightSideButtons(F)V

    .line 775
    :goto_3
    return-void

    :cond_2
    move v4, v5

    .line 771
    goto :goto_2

    .line 773
    :cond_3
    if-ne p1, v7, :cond_4

    :goto_4
    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setAlphaLeftSideButtons(F)V

    goto :goto_3

    :cond_4
    move v4, v5

    goto :goto_4
.end method

.method private resetCircleAnimator()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x29a

    const-wide/16 v4, 0x14d

    const-wide/16 v2, 0x0

    .line 1021
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1022
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1023
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1024
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1026
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1027
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1028
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1029
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1031
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1032
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1033
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1034
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1036
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1037
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1038
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1039
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1041
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1042
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1043
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1044
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1046
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1047
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1048
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1049
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1050
    return-void
.end method

.method private setAllAnimator()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 876
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    .line 877
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 887
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    .line 888
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$6;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$6;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 898
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    .line 899
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$7;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$7;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 910
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    .line 911
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 921
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$9;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$9;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 940
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    .line 941
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$10;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$10;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$11;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$11;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 970
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    .line 971
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$12;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$12;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 982
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$13;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$13;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1000
    return-void

    .line 876
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 887
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 898
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 910
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 940
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 970
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setAlphaAndVisibility(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    const/16 v0, 0x8

    .line 1068
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_2

    .line 1069
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1070
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    :cond_1
    :goto_0
    return-void

    .line 1073
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1074
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setAlphaLeftSideButtons(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 785
    :cond_1
    return-void
.end method

.method private setAlphaRightSideButtons(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 788
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 791
    :cond_0
    return-void
.end method

.method private updateDragCircle(Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;F)V
    .locals 0
    .param p1, "circleEffect"    # Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
    .param p2, "ratio"    # F

    .prologue
    .line 1003
    if-nez p1, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 1007
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->dragAnimationUpdate(F)V

    goto :goto_0
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 750
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 756
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 757
    return-void
.end method

.method public handleHideIconsOnly()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    :cond_0
    return-void
.end method

.method public handleShow()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 740
    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 742
    iput-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    .line 743
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v3}, Lcom/sec/android/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 744
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Right:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 745
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 746
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 747
    return-void
.end method

.method public handleShowIconsOnly()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 737
    :cond_0
    return-void
.end method

.method public handleUnlock(Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;)V
    .locals 5
    .param p1, "moveToPage"    # Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 559
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mPM:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 562
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0, p1, v4}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_3

    .line 574
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 576
    :cond_3
    return-void
.end method

.method public hideNotiPageButton()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 714
    return-void
.end method

.method public hideSettingPageButton()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 725
    return-void
.end method

.method public initMultiTouched()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1093
    iput-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    .line 1094
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    .line 1095
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    .line 1096
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V

    .line 1097
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Right:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    invoke-direct {p0, v4, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 1098
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 555
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 556
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 136
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_thrid_level_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_thrid_level_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    .line 141
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_single_event_image:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    .line 143
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_missed_call_image:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallImage:Landroid/widget/ImageView;

    .line 145
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_unread_message_image:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageImage:Landroid/widget/ImageView;

    .line 148
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_single_event_count:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    .line 150
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_missed_call_count:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    .line 152
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_unread_message_count:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    .line 155
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    .line 156
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_camera_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    .line 158
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_noti_bg_normal:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCircleNotiNormal:Landroid/widget/ImageView;

    .line 161
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_thrid_level_right:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    .line 163
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_thrid_level_left:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;

    .line 164
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_setting:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;

    .line 165
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_camera_bg_pressed:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    .line 167
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_noti_bg_pressed:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;

    .line 168
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_bg_pressed:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;

    .line 170
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->initCircleEffect()V

    .line 172
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_camera_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    .line 173
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$1;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 280
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_single_event_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    .line 282
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$2;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 366
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_multi_event_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    .line 368
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$3;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$3;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 452
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    .line 453
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 537
    return-void
.end method

.method public setCameraContainerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 813
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 816
    :cond_0
    return-void
.end method

.method public setCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 795
    return-void
.end method

.method public setNotiContainerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 819
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 822
    :cond_0
    return-void
.end method

.method public setPageNavigationVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 825
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, p1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 827
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 829
    :cond_0
    return-void
.end method

.method public setPagerNavigation(Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;)V
    .locals 0
    .param p1, "sViewCoverPagerNavigation"    # Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    .line 580
    return-void
.end method

.method public setSViewPager(Lcom/sec/android/sviewcover/SViewCoverPager;)V
    .locals 0
    .param p1, "sViewCoverPager"    # Lcom/sec/android/sviewcover/SViewCoverPager;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    .line 584
    return-void
.end method

.method public setSettingContainerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 807
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 810
    :cond_0
    return-void
.end method

.method public setTTSMessage()V
    .locals 3

    .prologue
    .line 798
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_settings_button_accessibiliy:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_camera_button_accessibiliy:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCircleNotiNormal:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_button_accessibiliy:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 804
    return-void
.end method

.method public showNotiPageButton()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 710
    :cond_0
    return-void
.end method

.method public showSettingPageButton()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->isOperatorLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 721
    :cond_0
    return-void
.end method

.method protected startCameraActivity()V
    .locals 4

    .prologue
    .line 540
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 541
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 542
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 543
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string v2, "covermode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 547
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "SViewCoverNewUnlockArea"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateNotiArea(II)V
    .locals 10
    .param p1, "missedCallCount"    # I
    .param p2, "unreadMessage"    # I

    .prologue
    const/high16 v8, 0x41500000    # 13.0f

    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 592
    const/4 v2, 0x1

    .line 593
    .local v2, "showContent":Z
    const/4 v1, 0x1

    .line 595
    .local v1, "enableNoti":Z
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_allow_private_notifications"

    const/4 v7, -0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 598
    :goto_0
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    const/4 v7, -0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_4

    move v1, v3

    .line 606
    :goto_1
    if-lez p1, :cond_8

    if-lez p2, :cond_8

    .line 607
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 608
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 610
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallImage:Landroid/widget/ImageView;

    if-eqz v5, :cond_5

    .line 611
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallImage:Landroid/widget/ImageView;

    sget v6, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_missed_call_1:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 616
    :cond_0
    :goto_2
    const/16 v5, 0x63

    if-le p1, v5, :cond_1

    .line 617
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 620
    :cond_1
    const/16 v5, 0x63

    if-le p2, v5, :cond_2

    .line 621
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 624
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->isRTL()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 625
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    const-string v6, "%d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    const-string v6, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->isGuestMode()Z

    move-result v3

    if-nez v3, :cond_7

    .line 633
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->showNotiPageButton()V

    .line 634
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideSettingPageButton()V

    .line 683
    :goto_4
    if-nez v1, :cond_12

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 697
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->invalidate()V

    .line 698
    return-void

    :cond_3
    move v2, v4

    .line 595
    goto :goto_0

    :cond_4
    move v1, v4

    .line 598
    goto :goto_1

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "SViewCoverNewUnlockArea"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNotiArea() can not found setting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 612
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_5
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageImage:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 613
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageImage:Landroid/widget/ImageView;

    sget v6, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_message_1:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 628
    :cond_6
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 636
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto :goto_4

    .line 640
    :cond_8
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 641
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 643
    if-gtz p1, :cond_9

    if-lez p2, :cond_11

    .line 644
    :cond_9
    if-lez p1, :cond_d

    .line 645
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    if-eqz v5, :cond_b

    .line 646
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    sget v6, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_missed_call_1:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 651
    :goto_6
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->isRTL()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 652
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    const-string v6, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    :cond_a
    :goto_7
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->isGuestMode()Z

    move-result v3

    if-nez v3, :cond_10

    .line 671
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->showNotiPageButton()V

    .line 672
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideSettingPageButton()V

    goto/16 :goto_4

    .line 648
    :cond_b
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    sget v6, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_ic_missed_call:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 654
    :cond_c
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 656
    :cond_d
    if-lez p2, :cond_a

    .line 657
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    if-eqz v5, :cond_e

    .line 658
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    sget v6, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_message_1:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 663
    :goto_8
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->isRTL()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 664
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    const-string v6, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 660
    :cond_e
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    sget v6, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_ic_message:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_8

    .line 666
    :cond_f
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 674
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 675
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto/16 :goto_4

    .line 678
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 679
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto/16 :goto_4

    .line 686
    :cond_12
    if-nez v2, :cond_13

    .line 688
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 693
    :cond_13
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public updateNotiPageButton(II)V
    .locals 2
    .param p1, "missedCallCount"    # I
    .param p2, "unreadMessage"    # I

    .prologue
    .line 587
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->updateNotiArea(II)V

    .line 588
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 589
    return-void
.end method

.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_GESTURES:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarView"

.field private static mHorizontalShift:I

.field private static mVerticalShift:I


# instance fields
.field private isRTLlanguage:Z

.field mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBasePaddingBottom:I

.field private mBasePaddingLeft:I

.field private mBasePaddingRight:I

.field private mBasePaddingTop:I

.field private mCallBackgroundView:Landroid/view/View;

.field private mClearCoverMargin:I

.field private mCocktailBarPresent:Z

.field private mCurrentCoverStatusbarMargin:I

.field private mDirection:I

.field mDisplay:Landroid/view/Display;

.field private mExtraMarginLeft:I

.field mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mMaxShift:I

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mSViewCoverMargin:I

.field private mSViewWalletCoverMargin:I

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field mStatusBarContents:Landroid/view/ViewGroup;

.field mTicker:Landroid/view/ViewGroup;

.field private mTickerPaddingBottom:I

.field private mTickerPaddingLeft:I

.field private mTickerPaddingRight:I

.field private mTickerPaddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->DEBUG:Z

    .line 320
    sput v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    .line 321
    sput v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVerticalShift:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 63
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    .line 64
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExtraMarginLeft:I

    .line 268
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0409

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSViewCoverMargin:I

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a040a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSViewWalletCoverMargin:I

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0408

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMaxShift:I

    .line 319
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDirection:I

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 74
    invoke-static {p1}, Lcom/android/systemui/statusbar/Feature;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCocktailBarPresent:Z

    .line 75
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCocktailBarPresent:Z

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a047d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExtraMarginLeft:I

    .line 82
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mHasOneSideEdge:Z

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 93
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanelEndMagin()V

    return-void
.end method

.method private setPanelEndMagin()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 150
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCocktailBarPresent:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isRTLlanguage:Z

    .line 152
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 176
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 151
    goto :goto_0

    .line 157
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_0
    const-string v1, "PhoneStatusBarView"

    const-string v2, "Rotation 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isRTLlanguage:Z

    if-eqz v1, :cond_2

    .line 159
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExtraMarginLeft:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    .line 161
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExtraMarginLeft:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 165
    :pswitch_1
    const-string v1, "PhoneStatusBarView"

    const-string v3, "Rotation 90 || 270"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 169
    :pswitch_2
    const-string v1, "PhoneStatusBarView"

    const-string v2, "Rotation 180"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isRTLlanguage:Z

    if-eqz v1, :cond_3

    .line 171
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExtraMarginLeft:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 173
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExtraMarginLeft:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 2
    .param p1, "pv"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 110
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f0f01f3

    if-ne v0, v1, :cond_0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 113
    :cond_0
    return-void
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object v0
.end method

.method getTickerPaddingValues()V
    .locals 1

    .prologue
    .line 396
    const v0, 0x7f0f01f2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I

    .line 402
    return-void
.end method

.method public marqueeStatusBar()V
    .locals 8

    .prologue
    .line 337
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 365
    :goto_0
    return-void

    .line 339
    :cond_0
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDirection:I

    add-int/2addr v2, v3

    sput v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    .line 340
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMaxShift:I

    if-gt v2, v3, :cond_1

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMaxShift:I

    neg-int v3, v3

    if-ge v2, v3, :cond_2

    .line 341
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDirection:I

    neg-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDirection:I

    .line 343
    :cond_2
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVerticalShift:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x4

    sput v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVerticalShift:I

    .line 344
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVerticalShift:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v1, v2, 0x2

    .line 345
    .local v1, "top_shift":I
    neg-int v0, v1

    .line 347
    .local v0, "bottom_shift":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    sget v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingRight:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    sget v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingBottom:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 355
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 356
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 364
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    goto :goto_0
.end method

.method public onAllPanelsCollapsed()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 192
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 199
    return-void
.end method

.method public onClosingFinished()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 236
    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onExpandingFinished()V

    .line 248
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onFinishInflate()V

    .line 326
    const v0, 0x7f0f01e9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingLeft:I

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingTop:I

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingRight:I

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingBottom:I

    .line 333
    const v0, 0x7f0f01e7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCallBackgroundView:Landroid/view/View;

    .line 334
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanelEndMagin()V

    .line 184
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onMeasure(II)V

    .line 185
    return-void
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "openPanel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eq p1, v0, :cond_0

    .line 205
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 208
    return-void
.end method

.method public onPanelPeeked()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    .line 147
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 127
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 129
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 130
    const/4 v1, 0x1

    .line 132
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 222
    .local v0, "barConsumedEvent":Z
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onTrackingStarted()V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onTrackingStarted()V

    .line 230
    return-void
.end method

.method public onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;Z)V
    .locals 1
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "expand"    # Z

    .prologue
    .line 240
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onTrackingStopped(Z)V

    .line 242
    return-void
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V
    .locals 2
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "frac"    # F
    .param p3, "expanded"    # Z

    .prologue
    .line 257
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 260
    return-void
.end method

.method public panelsEnabled()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 2
    .param p1, "touch"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 101
    return-void
.end method

.method public setCallBackground(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "color":I
    packed-switch p1, :pswitch_data_0

    .line 386
    const/4 v0, 0x0

    .line 389
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCallBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 390
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCallBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 391
    return-void

    .line 374
    :pswitch_0
    const/4 v0, 0x0

    .line 375
    goto :goto_0

    .line 377
    :pswitch_1
    const v0, -0xbd74d7

    .line 378
    goto :goto_0

    .line 380
    :pswitch_2
    const v0, -0x59b3e1

    .line 381
    goto :goto_0

    .line 383
    :pswitch_3
    const v0, -0x9b999e

    .line 384
    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCallBackgroundVisibility(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCallBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    return-void
.end method

.method public setCoverMargin(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 274
    packed-switch p1, :pswitch_data_0

    .line 286
    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    .line 291
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 300
    :pswitch_1
    const-string v0, "PhoneStatusBarView"

    const-string v1, "setCoverMargin : Enable focus"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 305
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 306
    return-void

    .line 277
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSViewCoverMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    goto :goto_0

    .line 280
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSViewWalletCoverMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    goto :goto_0

    .line 283
    :pswitch_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    goto :goto_0

    .line 296
    :pswitch_5
    const-string v0, "PhoneStatusBarView"

    const-string v1, "setCoverMargin : Disable focus"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    goto :goto_1

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 291
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 105
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 405
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHasOneSideEdge:Z

    if-eqz v0, :cond_0

    .line 406
    if-nez p1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

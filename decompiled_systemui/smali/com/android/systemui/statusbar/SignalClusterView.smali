.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "SignalClusterView"


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mBtTetherState:Z

.field private mDarkIntensity:F

.field private mHasService:Z

.field private mIconTint:I

.field private mIsAirplaneMode:Z

.field private mIsMobileTypeIconWide:Z

.field mMPTCPActivity:Landroid/widget/ImageView;

.field private mMPTCPActivityId:I

.field mMPTCPGiga:Landroid/widget/ImageView;

.field private mMPTCPGigaId:I

.field mMPTCPGroup:Landroid/view/ViewGroup;

.field mMPTCPType:Landroid/widget/ImageView;

.field private mMPTCPTypeId:I

.field private mMPTCPVisible:Z

.field mMobile:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field mMobileData:Landroid/widget/ImageView;

.field mMobileDataGroup:Landroid/view/ViewGroup;

.field mMobileDataIcon:Landroid/widget/ImageView;

.field private mMobileDataState:I

.field private mMobileDescription:Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileRoamingId:I

.field private mMobileStrengthId:I

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field mNWBoosterActivity:Landroid/widget/ImageView;

.field private mNWBoosterActivityId:I

.field mNWBoosterGroup:Landroid/view/ViewGroup;

.field mNWBoosterMobileType:Landroid/widget/ImageView;

.field private mNWBoosterMobileTypeId:I

.field private mNWBoosterRunning:Z

.field private mNWBoosterVisible:Z

.field mNWBoosterWifi:Landroid/widget/ImageView;

.field private mNWBoosterWifiId:I

.field private mNoSimIconId:I

.field private mRoaming:Z

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field mSeparateMobileGroup:Landroid/view/ViewGroup;

.field private mShowTwoBars:[I

.field private mStyle:I

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field private mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field mWifiAirplaneSpacer:Landroid/view/View;

.field private mWifiCaptiveNotLogin:Z

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    .line 60
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    .line 66
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 68
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 69
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 70
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 71
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    .line 94
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 95
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 115
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiCaptiveNotLogin:Z

    .line 519
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    .line 520
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    .line 521
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    .line 577
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    .line 578
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    .line 579
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    .line 613
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    .line 614
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGigaId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivityId:I

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method private apply()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const v11, 0x3ecccccd    # 0.4f

    const/4 v10, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 334
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    .line 516
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_f

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-nez v3, :cond_f

    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportMPTCP:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-nez v3, :cond_f

    .line 340
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 343
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v3, :cond_3

    .line 344
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 345
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    const v6, 0x7f020498

    if-ne v3, v6, :cond_d

    .line 346
    const/4 v3, 0x4

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 350
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_e

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eqz v3, :cond_e

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 362
    :goto_3
    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v6, "SignalClusterView"

    const-string v7, "wifi: %s sig=%d"

    new-array v8, v10, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_10

    const-string v3, "VISIBLE"

    :goto_4
    aput-object v3, v8, v4

    const/4 v3, 0x1

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v3, :cond_7

    :cond_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-eqz v3, :cond_11

    .line 370
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 376
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 378
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 380
    .local v2, "roamingAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 386
    .end local v2    # "roamingAnimation":Landroid/graphics/drawable/AnimationDrawable;
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 390
    .local v0, "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    .end local v0    # "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    :goto_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v3, :cond_12

    .line 402
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 403
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    :goto_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v3, :cond_13

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_13

    .line 409
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :goto_8
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v3, :cond_14

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_14

    .line 417
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :goto_9
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsMobileTypeIconWide:Z

    if-eqz v3, :cond_15

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    :goto_a
    invoke-virtual {v6, v3, v4, v4, v4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 425
    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v6, "SignalClusterView"

    const-string v7, "mobile: %s sig=%d typ=%d"

    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v3, :cond_16

    const-string v3, "VISIBLE"

    :goto_b
    aput-object v3, v8, v4

    const/4 v3, 0x1

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_8
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_18

    .line 436
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v3, v10, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eqz v3, :cond_17

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    if-eqz v3, :cond_17

    :cond_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-nez v3, :cond_17

    :cond_a
    move v3, v4

    :goto_c
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 440
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_b

    .line 441
    const-string v3, "SignalClusterView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMobileDataState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mBtTetherState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mHasService:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_b
    :goto_d
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportMPTCP:Z

    if-eqz v3, :cond_c

    .line 462
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-eqz v3, :cond_20

    .line 463
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 464
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPType:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPTypeId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 465
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGiga:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGigaId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 466
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivity:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivityId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 473
    :cond_c
    :goto_e
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    if-eqz v3, :cond_29

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-nez v3, :cond_29

    .line 474
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 475
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 476
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 477
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 478
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_22

    .line 479
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-eqz v3, :cond_21

    .line 480
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_0

    .line 348
    .restart local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_d
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_1

    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_e
    move v3, v5

    .line 355
    goto/16 :goto_2

    .line 359
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 362
    :cond_10
    const-string v3, "GONE"

    goto/16 :goto_4

    .line 395
    :cond_11
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    .line 405
    :cond_12
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 411
    :cond_13
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 419
    :cond_14
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_15
    move v3, v4

    .line 423
    goto/16 :goto_a

    .line 425
    :cond_16
    const-string v3, "GONE"

    goto/16 :goto_b

    :cond_17
    move v3, v5

    .line 436
    goto/16 :goto_c

    .line 444
    :cond_18
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v3, :cond_1b

    .line 446
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v3, v10, :cond_19

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-nez v3, :cond_19

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eqz v3, :cond_1a

    :cond_19
    move v3, v4

    :goto_f
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 448
    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v3, :cond_b

    .line 449
    const-string v3, "SignalClusterView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(Permanent Data Icon) mSeparateMobileGroup="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_1a
    move v3, v5

    .line 446
    goto :goto_f

    .line 453
    :cond_1b
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v3, v10, :cond_1c

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-eqz v3, :cond_1f

    :cond_1c
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_1d

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-nez v3, :cond_1f

    :cond_1d
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportMPTCP:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-nez v3, :cond_1f

    :cond_1e
    move v3, v4

    :goto_10
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_d

    :cond_1f
    move v3, v5

    goto :goto_10

    .line 468
    :cond_20
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_e

    .line 483
    :cond_21
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_0

    .line 486
    :cond_22
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v3, :cond_24

    .line 487
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-eqz v3, :cond_23

    .line 488
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 490
    :cond_23
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 493
    :cond_24
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 494
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 495
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-eqz v3, :cond_26

    .line 496
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 500
    :goto_11
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiCaptiveNotLogin:Z

    if-nez v3, :cond_27

    .line 501
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 505
    :goto_12
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v3, v10, :cond_25

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-eqz v3, :cond_28

    .line 506
    :cond_25
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 498
    :cond_26
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_11

    .line 503
    :cond_27
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_12

    .line 508
    :cond_28
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 513
    :cond_29
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 391
    :catch_0
    move-exception v3

    goto/16 :goto_6

    .line 381
    :catch_1
    move-exception v3

    goto/16 :goto_5
.end method

.method private applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "darkIntensity"    # F
    .param p2, "lightIcon"    # Landroid/view/View;
    .param p3, "darkIcon"    # Landroid/view/View;

    .prologue
    .line 723
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 724
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 725
    return-void
.end method

.method private applyIconTint()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 703
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 710
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportMPTCP:Z

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPType:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 712
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGiga:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 720
    :cond_0
    return-void
.end method

.method private getDataSignalTypeIcon(I)I
    .locals 4
    .param p1, "typeiconId"    # I

    .prologue
    const/4 v0, 0x0

    .line 671
    const-string v1, "SignalClusterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataSignalTypeIcon mMobileTypeId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sparse-switch p1, :sswitch_data_0

    .line 686
    :goto_0
    :sswitch_0
    return v0

    .line 680
    :sswitch_1
    const v0, 0x7f0204f5

    goto :goto_0

    .line 683
    :sswitch_2
    const v0, 0x7f0204f6

    goto :goto_0

    .line 672
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0203ef -> :sswitch_1
        0x7f0203fa -> :sswitch_2
        0x7f02041b -> :sswitch_0
        0x7f02041d -> :sswitch_0
        0x7f020421 -> :sswitch_1
        0x7f020422 -> :sswitch_1
    .end sparse-switch
.end method

.method private setTint(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "tint"    # I

    .prologue
    .line 728
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 729
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 158
    const v0, 0x7f0f01c7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 159
    const v0, 0x7f0f01c8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 160
    const v0, 0x7f0f01c0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 161
    const v0, 0x7f0f01c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 162
    const v0, 0x7f0f01c2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 163
    const v0, 0x7f0f01e5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f0f01c9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 167
    const v0, 0x7f0f01cb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 168
    const v0, 0x7f0f01cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 169
    const v0, 0x7f0f01cf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f0f01ce

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 171
    const v0, 0x7f0f01da

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 175
    const v0, 0x7f0f01c3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    .line 176
    const v0, 0x7f0f01c4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    .line 177
    const v0, 0x7f0f01c5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    .line 178
    const v0, 0x7f0f01c6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    .line 182
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportMPTCP:Z

    if-eqz v0, :cond_0

    .line 183
    const v0, 0x7f0f0376

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGroup:Landroid/view/ViewGroup;

    .line 184
    const v0, 0x7f0f0377

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPType:Landroid/widget/ImageView;

    .line 185
    const v0, 0x7f0f0378

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGiga:Landroid/widget/ImageView;

    .line 186
    const v0, 0x7f0f0379

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivity:Landroid/widget/ImageView;

    .line 188
    :cond_0
    const v0, 0x7f0f037f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    .line 189
    const v0, 0x7f0f01ca

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 198
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 203
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 204
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 205
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 206
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 207
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 208
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 211
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 212
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 213
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 214
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 223
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 224
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    .line 151
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 315
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 236
    return-void
.end method

.method public setBtTetherState(Z)V
    .locals 1
    .param p1, "btTetherState"    # Z

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-eq v0, p1, :cond_0

    .line 570
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    .line 571
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 573
    :cond_0
    return-void
.end method

.method public setDataSignalIcon(ZIIIIZ)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "psLeveliconId"    # I
    .param p3, "csLeveliconId"    # I
    .param p4, "typeiconId"    # I
    .param p5, "serviceState"    # I
    .param p6, "isWcdma"    # Z

    .prologue
    const v4, 0x7f02078b

    const/4 v3, 0x0

    .line 631
    if-eqz p1, :cond_6

    .line 632
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileData:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileData:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 636
    if-eq p2, v4, :cond_2

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/SignalClusterView;->getDataSignalTypeIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 642
    :cond_0
    :goto_0
    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSignalIcon iconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :goto_1
    if-eq p3, v4, :cond_5

    if-eqz p3, :cond_5

    .line 648
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    const v1, 0x7f020429

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    if-eq p5, v0, :cond_1

    .line 649
    if-eqz p6, :cond_4

    .line 650
    const v0, 0x7f0204f5

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    .line 651
    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileRoamingId = stat_sys_rssi_data_3g"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1
    :goto_2
    return-void

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 644
    :cond_3
    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileDataGroup is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 653
    :cond_4
    const v0, 0x7f0204f4

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    .line 654
    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileRoamingId = stat_sys_rssi_data_2g"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 659
    :cond_5
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    .line 660
    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileRoamingId = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 663
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 665
    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileDataGroup GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setDataState(I)V
    .locals 1
    .param p1, "dataState"    # I

    .prologue
    .line 551
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v0, p1, :cond_0

    .line 552
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    .line 553
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 555
    :cond_0
    return-void
.end method

.method public setHasService(Z)V
    .locals 1
    .param p1, "hasService"    # Z

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eq v0, p1, :cond_0

    .line 560
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    .line 561
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 563
    :cond_0
    return-void
.end method

.method public setIconTint(IF)V
    .locals 2
    .param p1, "tint"    # I
    .param p2, "darkIntensity"    # F

    .prologue
    .line 691
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 692
    .local v0, "changed":Z
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 693
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    .line 694
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 697
    :cond_1
    return-void

    .line 691
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 1
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    if-eq v0, p2, :cond_1

    .line 272
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 273
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 277
    :cond_1
    return-void
.end method

.method public setMPTCPIndicators(ZIII)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "typeIcon"    # I
    .param p3, "gigaIcon"    # I
    .param p4, "activityIcon"    # I

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPTypeId:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGigaId:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivityId:I

    if-eq v0, p4, :cond_1

    .line 621
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    .line 622
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPTypeId:I

    .line 623
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGigaId:I

    .line 624
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivityId:I

    .line 625
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 628
    :cond_1
    return-void
.end method

.method public setMobileActivityIcon(I)V
    .locals 1
    .param p1, "mobileActivityIconId"    # I

    .prologue
    .line 527
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    if-eq v0, p1, :cond_0

    .line 528
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 531
    :cond_0
    return-void
.end method

.method public setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "typeIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;
    .param p5, "typeContentDescription"    # Ljava/lang/String;
    .param p6, "roaming"    # Z
    .param p7, "isTypeIconWide"    # Z

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mRoaming:Z

    if-ne v0, p6, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsMobileTypeIconWide:Z

    if-eq v0, p7, :cond_2

    .line 257
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 258
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 259
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 260
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    .line 261
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 262
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mRoaming:Z

    .line 263
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsMobileTypeIconWide:Z

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 267
    :cond_2
    return-void
.end method

.method public setNWBoosterIndicators(ZZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "running"    # Z
    .param p3, "activityIcon"    # I

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    if-eq v0, p3, :cond_1

    .line 603
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    .line 604
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    .line 605
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    .line 607
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 609
    :cond_1
    return-void
.end method

.method public setNWBoosterIndicators(ZZIIILjava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "running"    # Z
    .param p3, "strengthIcon"    # I
    .param p4, "activityIcon"    # I
    .param p5, "typeIcon"    # I
    .param p6, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiId:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    if-ne v0, p5, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 589
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    .line 590
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    .line 591
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiId:I

    .line 592
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    .line 593
    iput p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    .line 594
    iput-object p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 596
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 598
    :cond_1
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 3
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 137
    return-void
.end method

.method public setRoamingIcon(I)V
    .locals 1
    .param p1, "roamingIconId"    # I

    .prologue
    .line 543
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    if-eq v0, p1, :cond_0

    .line 544
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    .line 545
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 547
    :cond_0
    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/statusbar/policy/SecurityController;

    .prologue
    .line 140
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 144
    return-void
.end method

.method public setWifiActivityIcon(I)V
    .locals 1
    .param p1, "wifiActivityIconId"    # I

    .prologue
    .line 535
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    if-eq v0, p1, :cond_0

    .line 536
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 539
    :cond_0
    return-void
.end method

.method public setWifiCaptiveNotLogin(Z)V
    .locals 1
    .param p1, "wifiCaptivaeNotLogIn"    # Z

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiCaptiveNotLogin:Z

    if-eq v0, p1, :cond_0

    .line 326
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiCaptiveNotLogin:Z

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 329
    :cond_0
    return-void
.end method

.method public setWifiIndicators(ZILjava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 243
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 244
    iput-object p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 248
    :cond_1
    return-void
.end method

.class public Lcom/android/systemui/statusbar/MSimSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "MSimSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "MSim-SignalClusterView"


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mBtTetherState:Z

.field private mCurrentDataSlot:I

.field private mDarkIntensity:F

.field mDataSignalSpacer:Landroid/view/View;

.field private mDefaultPhoneId:I

.field private mHasService:Z

.field private mIconTint:I

.field private mIsAirplaneMode:Z

.field mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

.field mMobile:[Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field mMobileActivity2:Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field private mMobileDataState:[I

.field private mMobileDataState1:I

.field private mMobileDataState2:I

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileFocus:[Landroid/widget/ImageView;

.field private mMobileFocusResourceId:[I

.field private mMobileFocusSub:[Z

.field mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileGroupResourceId:[I

.field private mMobileResourceId:[I

.field mMobileRoaming:[Landroid/widget/ImageView;

.field mMobileRoamingId:[I

.field private mMobileRoamingResourceId:[I

.field private mMobileRssiId:[I

.field mMobileRssiType:[Landroid/widget/ImageView;

.field private mMobileStrengthId:[I

.field mMobileType:Landroid/widget/ImageView;

.field mMobileType2:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:[I

.field private mMobileTypeResourceId:[I

.field private mMobileVisible:[Z

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

.field mNoSimSlot:Landroid/widget/ImageView;

.field private mNoSimSlotResourceId:I

.field private final mNumPhones:I

.field private mRoamingIconId:[I

.field private mRssiTypeResourceId:[I

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field mSeparateMobileGroup:Landroid/view/ViewGroup;

.field mSeparateMobileGroup2:Landroid/view/ViewGroup;

.field private mShowTwoBars:[I

.field mSimFous:[Z

.field mSimIcon:Landroid/widget/ImageView;

.field private mSimIconId:I

.field private mSimIconVisible:Z

.field private mSpacer:Landroid/view/View;

.field private mStyle:I

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiCaptiveNotLogin:Z

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    .line 60
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    .line 61
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    .line 62
    iput v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    .line 64
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    .line 70
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 72
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    .line 74
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 75
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    .line 119
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    .line 121
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    .line 123
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeResourceId:[I

    .line 125
    new-array v1, v3, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRssiTypeResourceId:[I

    .line 137
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    .line 140
    const v1, 0x7f0f01d1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlotResourceId:I

    .line 158
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconVisible:Z

    .line 159
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    .line 161
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    .line 163
    new-array v1, v3, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusResourceId:[I

    .line 167
    new-array v1, v3, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingResourceId:[I

    .line 799
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    .line 801
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mHasService:Z

    .line 803
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    .line 809
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCurrentDataSlot:I

    .line 820
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState1:I

    .line 821
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState2:I

    .line 824
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiCaptiveNotLogin:Z

    .line 881
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    .line 883
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    .line 885
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifiId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileTypeId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    .line 185
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    .line 186
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    .line 187
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    .line 190
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRoamingIconId:[I

    .line 191
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    .line 192
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusSub:[Z

    .line 193
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:I

    .line 194
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    .line 195
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    .line 196
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    .line 197
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    .line 198
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    .line 199
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    .line 200
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    .line 201
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    .line 204
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    .line 205
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v1, v0

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput v2, v1, v0

    .line 212
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRoamingIconId:[I

    aput v2, v1, v0

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aput-boolean v2, v1, v0

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusSub:[Z

    aput-boolean v2, v1, v0

    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v2, v1, v0

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aput v2, v1, v0

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aput v2, v1, v0

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aput-boolean v2, v1, v0

    .line 226
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aput v2, v1, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void

    .line 119
    :array_0
    .array-data 4
        0x7f0f01c0
        0x7f0f01df
        0x7f0f01d2
    .end array-data

    .line 121
    :array_1
    .array-data 4
        0x7f0f01c1
        0x7f0f01e1
        0x7f0f01d4
    .end array-data

    .line 123
    :array_2
    .array-data 4
        0x7f0f01c2
        0x7f0f01e2
        0x7f0f01d5
    .end array-data

    .line 125
    :array_3
    .array-data 4
        0x7f0f01db
        0x7f0f01e4
        0x7f0f01d7
    .end array-data

    .line 163
    :array_4
    .array-data 4
        0x7f0f01d9
        0x7f0f01e0
        0x7f0f01d3
    .end array-data

    .line 167
    :array_5
    .array-data 4
        0x7f0f01da
        0x7f0f01e3
        0x7f0f01d6
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/MSimSignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    return-void
.end method

.method private apply(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const v7, 0x3ecccccd    # 0.4f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 789
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_3

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_4

    .line 591
    :cond_2
    const-string v0, "MSim-SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abnormal phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 594
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_d

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_c

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v0, v0, p1

    const v1, 0x7f020429

    if-ne v0, v1, :cond_5

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    const v1, 0x7f02042b

    aput v1, v0, p1

    .line 607
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 623
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aget v0, v0, p1

    if-eqz v0, :cond_e

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 636
    :goto_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_12

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState1:I

    if-eq v0, v6, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_10

    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_10

    .line 640
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 645
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-ne v0, v5, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aget-boolean v0, v0, v3

    if-ne v0, v5, :cond_f

    .line 647
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 657
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState2:I

    if-ne v0, v6, :cond_11

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_11

    .line 661
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 693
    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_19

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 711
    :goto_7
    if-eqz p1, :cond_a

    .line 712
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1a

    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_1a

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 720
    :cond_a
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1b

    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_1b

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 737
    :goto_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    if-eqz v0, :cond_24

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifiId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileTypeId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 742
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_1d

    .line 743
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-eqz v0, :cond_1c

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 780
    :goto_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconVisible:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 605
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 616
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 627
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 651
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 654
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 666
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    .line 670
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v3

    if-eq v0, v6, :cond_13

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_15

    :cond_13
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_15

    .line 673
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    .line 678
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v5

    if-eq v0, v6, :cond_16

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_18

    :cond_16
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_18

    .line 681
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    .line 688
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    .line 697
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 716
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 723
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 747
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_a

    .line 750
    :cond_1d
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v0, :cond_1f

    .line 751
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-eqz v0, :cond_1e

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_a

    .line 754
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_a

    .line 757
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 759
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-eqz v0, :cond_21

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 764
    :goto_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiCaptiveNotLogin:Z

    if-nez v0, :cond_22

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 769
    :goto_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v3

    if-eq v0, v6, :cond_20

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v5

    if-ne v0, v6, :cond_23

    .line 770
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_a

    .line 762
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_b

    .line 767
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_c

    .line 772
    :cond_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_a

    .line 777
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_a

    .line 785
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "darkIntensity"    # F
    .param p2, "lightIcon"    # Landroid/view/View;
    .param p3, "darkIcon"    # Landroid/view/View;

    .prologue
    .line 943
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 944
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 945
    return-void
.end method

.method private applyIconTint()V
    .locals 3

    .prologue
    .line 952
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 953
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 954
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 955
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 957
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 958
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 959
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 955
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 961
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 962
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 963
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 964
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 965
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 966
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 967
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v1, :cond_1

    .line 968
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 969
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 971
    :cond_1
    return-void
.end method

.method private setTint(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "tint"    # I

    .prologue
    .line 948
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 949
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 507
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 251
    const v1, 0x7f0f01c7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 252
    const v1, 0x7f0f01c8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 253
    const v1, 0x7f0f01d8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 254
    const v1, 0x7f0f01e5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 258
    const v1, 0x7f0f01d1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 262
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    .line 263
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 265
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 266
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 272
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRssiTypeResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f0205eb

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 276
    :cond_1
    const v1, 0x7f0f01c9

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 278
    const v1, 0x7f0f01cd

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 279
    const v1, 0x7f0f01cf

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 280
    const v1, 0x7f0f01ce

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 281
    const v1, 0x7f0f01d0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    .line 294
    const v1, 0x7f0f01c3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    .line 295
    const v1, 0x7f0f01c4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    .line 296
    const v1, 0x7f0f01c5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    .line 297
    const v1, 0x7f0f01c6

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    .line 300
    const v1, 0x7f0f01ca

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    .line 302
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    const v1, 0x7f0f01cc

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    .line 305
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    const v1, 0x7f0f01dc

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    .line 307
    const v1, 0x7f0f01de

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    .line 308
    const v1, 0x7f0f01dd

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    .line 319
    :cond_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    .line 320
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 321
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 326
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applyIconTint()V

    .line 327
    return-void

    .line 323
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 332
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 333
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 334
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 335
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 337
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 338
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    .line 342
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 344
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 345
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 346
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 347
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    .line 351
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v1, :cond_0

    .line 352
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    .line 353
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    .line 354
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    .line 358
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 360
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 363
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 367
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 375
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x0

    .line 520
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 522
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 531
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 535
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_6

    .line 539
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 540
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    .line 544
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 547
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_6
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 392
    return-void
.end method

.method public setBtTetherState(Z)V
    .locals 0
    .param p1, "btTetherState"    # Z

    .prologue
    .line 868
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    .line 869
    return-void
.end method

.method public setDataState(II)V
    .locals 1
    .param p1, "dataState"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aput p1, v0, p2

    .line 847
    return-void
.end method

.method public setDataStateForSeperatedData(II)V
    .locals 0
    .param p1, "dataState"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 851
    if-nez p2, :cond_0

    .line 852
    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState1:I

    .line 858
    :goto_0
    return-void

    .line 854
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState2:I

    goto :goto_0
.end method

.method public setIconTint(IF)V
    .locals 2
    .param p1, "tint"    # I
    .param p2, "darkIntensity"    # F

    .prologue
    .line 934
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDarkIntensity:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 935
    .local v0, "changed":Z
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIconTint:I

    .line 936
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDarkIntensity:F

    .line 937
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applyIconTint()V

    .line 940
    :cond_1
    return-void

    .line 934
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 2
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 496
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 497
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 499
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method

.method public setMobileActivityIcon(II)V
    .locals 1
    .param p1, "mobileActivityIconId"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput p1, v0, p2

    .line 830
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "typeIcon"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .param p6, "typeContentDescription"    # Ljava/lang/String;
    .param p7, "phoneId"    # I
    .param p8, "noSimIcon"    # I
    .param p9, "simFocus"    # Z

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aput-boolean p1, v0, p7

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput p2, v0, p7

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput p4, v0, p7

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p5, v0, p7

    .line 420
    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aput-boolean p9, v0, p7

    .line 491
    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 492
    return-void
.end method

.method public setMobileFocusIcon(II)V
    .locals 1
    .param p1, "mobileFocusIconId"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 931
    return-void
.end method

.method public setNWBoosterIndicators(ZZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "running"    # Z
    .param p3, "activityIcon"    # I

    .prologue
    .line 912
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    .line 913
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    .line 914
    iput p3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    .line 915
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    .line 916
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 917
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 921
    :goto_0
    return-void

    .line 919
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_0
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
    .line 894
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    .line 895
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    .line 896
    iput p3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifiId:I

    .line 897
    iput p4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    .line 898
    iput p5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileTypeId:I

    .line 899
    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 901
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    .line 902
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 908
    :goto_0
    return-void

    .line 905
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_0
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 0
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .line 237
    return-void
.end method

.method public setRoamingIcon(II)V
    .locals 1
    .param p1, "roamingIconId"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aput p1, v0, p2

    .line 840
    return-void
.end method

.method public setRssiIcon(II)V
    .locals 1
    .param p1, "rssiIconId"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aput p1, v0, p2

    .line 926
    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 1
    .param p1, "sc"    # Lcom/android/systemui/statusbar/policy/SecurityController;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 244
    return-void
.end method

.method public setSimIcon(ZI)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "simIconId"    # I

    .prologue
    .line 558
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    .line 559
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconVisible:Z

    .line 560
    return-void
.end method

.method public setWifiActivityIcon(I)V
    .locals 0
    .param p1, "wifiActivityIconId"    # I

    .prologue
    .line 834
    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    .line 835
    return-void
.end method

.method public setWifiCaptiveNotLogin(Z)V
    .locals 0
    .param p1, "wifiCaptivaeNotLogIn"    # Z

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiCaptiveNotLogin:Z

    .line 877
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 399
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    .line 400
    iput-object p4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 402
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    .line 403
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 409
    :goto_0
    return-void

    .line 406
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_0
.end method

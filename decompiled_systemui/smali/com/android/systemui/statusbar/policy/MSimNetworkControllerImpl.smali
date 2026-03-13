.class public Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.source "MSimNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$3;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    }
.end annotation


# static fields
.field public static final ACTION_CB_CLEAR:Ljava/lang/String; = "com.sec.android.app.mms.CB_CLEAR"

.field public static final ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED:Ljava/lang/String; = "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

.field public static final ACTION_UPDATE_NETWORK_EMERGENCY_ONLY:Ljava/lang/String; = "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

.field static final CHATTY:Z = false

.field static final DEBUG:Z = true

.field private static final NB_SIM:I = 0x2

.field public static final NETWORK_MANUALLY_SELECTED:Ljava/lang/String; = "network_manually_selected"

.field static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field private static final SIM_0:I = 0x0

.field private static final SIM_1:I = 0x1

.field public static final SimIconImage:[I

.field public static final SimIconImageV2:[I

.field static final TAG:Ljava/lang/String; = "StatusBar.MSimNetworkController"

.field private static sCodeToState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field PHONE_ID1:I

.field PHONE_ID2:I

.field mBootDataSvcAcquired:Z

.field mBootVoiceSvcAcquired:Z

.field private mCAIndicator:Z

.field mCallState:[I

.field private mCarrierTextSub:[Ljava/lang/String;

.field mCurrentSimSlot:I

.field private mDataKeyDialog:Landroid/app/AlertDialog;

.field mDataStateDual:[I

.field private mDefaultPhoneId:I

.field private mEFSPN:[I

.field private mIndianOperator:[Lcom/android/systemui/statusbar/Feature$IndianOperators;

.field mIsCmccCard:[Z

.field mIsCtcCard:[Z

.field mIsDSDSlimited:[Z

.field mIsDialingEmergencyCall:[Z

.field mLastBluetoothTethered:Z

.field private mLastCB:Ljava/lang/String;

.field mLastCallState:[I

.field mLastDataState:I

.field mLastDataStateDual:[I

.field mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field mLastMobileActivityIconId:[I

.field private mLastNwboosterDataTypeIconId:I

.field private mLastNwboosterRilEnabled:Z

.field private mLastNwboosterSettingEnabled:Z

.field mLastRoamingIconId:[I

.field mLastRssiIconId:[I

.field mLastSeperatedDataState:[I

.field mLastSimDataServiceState:[I

.field mLastSimFocus:[Z

.field mLastSimIconId:I

.field mLastSimIconVisible:Z

.field mLastWifiActivityIconId:I

.field mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

.field mMSimContentDescriptionDataType:[Ljava/lang/String;

.field mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

.field mMSimDataActivity:[I

.field mMSimDataConnected:[Z

.field mMSimDataDirectionIconId:[I

.field mMSimDataServiceState:[I

.field mMSimDataSignalIconId:[I

.field mMSimDataTypeIconId:[I

.field private mMSimIconId:[I

.field mMSimLastCombinedSignalIconId:[I

.field mMSimLastDataDirectionIconId:[I

.field mMSimLastDataTypeIconId:[I

.field mMSimLastPhoneSignalIconId:[I

.field mMSimLastSimIconId:[I

.field mMSimLastcombinedActivityIconId:[I

.field mMSimMobileActivityIconId:[I

.field mMSimNetworkName:[Ljava/lang/String;

.field mMSimPhoneSignalIconId:[I

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field mMSimServiceState:[Landroid/telephony/ServiceState;

.field mMSimSignalStrength:[Landroid/telephony/SignalStrength;

.field mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field mMSimcombinedActivityIconId:[I

.field mMSimcombinedSignalIconId:[I

.field mMobileActivityIconId:[I

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

.field private mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

.field public mNetworkManuallySelected:Ljava/lang/String;

.field mNoMSimIconId:[I

.field private mNwboosterDataTypeIconId:I

.field private mNwboosterRilEnabled:Z

.field private mNwboosterSettingEnabled:Z

.field mPhoneCount:I

.field mPlmn:[Ljava/lang/String;

.field mRoamingIconId:[I

.field mRssiIconId:[I

.field mSeperatedDataNetType:[I

.field mSeperatedDataState:[I

.field private mShowLAC:[Z

.field mShowPlmn:[Z

.field mShowSpn:[Z

.field private mSim1Icon:I

.field private mSim2Icon:I

.field private mSimEnabled:[Z

.field mSimFocus:[Z

.field mSimIconId:I

.field mSimIconVisible:Z

.field mSimSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleLine:Z

.field mSpn:[Ljava/lang/String;

.field private mSubIdPhoneIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSubsLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiActivityIconId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->initializeCodeToState()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->sCodeToState:Ljava/util/HashMap;

    .line 234
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImage:[I

    .line 241
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    return-void

    .line 234
    :array_0
    .array-data 4
        0x7f0203c3
        0x7f0203c4
        0x7f0203c7
        0x7f0203ca
        0x7f0203c6
    .end array-data

    .line 241
    :array_1
    .array-data 4
        0x7f0203c3
        0x7f0203c4
        0x7f0203c2
        0x7f0203cb
        0x7f0203c9
        0x7f0203c8
        0x7f0203c7
        0x7f0203ca
        0x7f0203c6
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 301
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;)V

    .line 151
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSingleLine:Z

    .line 152
    new-array v3, v4, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowLAC:[Z

    .line 153
    new-array v3, v4, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mEFSPN:[I

    .line 158
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkManuallySelected:Ljava/lang/String;

    .line 198
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 199
    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID1:I

    .line 200
    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID2:I

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    .line 203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    .line 206
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCB:Ljava/lang/String;

    .line 212
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 213
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 214
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconVisible:Z

    .line 215
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    .line 218
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 249
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBootVoiceSvcAcquired:Z

    .line 250
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBootDataSvcAcquired:Z

    .line 3655
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    .line 3657
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 3663
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    .line 3767
    const v3, 0x7f020470

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 3768
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 3769
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 3770
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 3771
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    .line 3772
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 302
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 303
    .local v2, "numPhones":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener numPhones: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-array v3, v2, [Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    .line 305
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    .line 306
    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    .line 307
    new-array v3, v2, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 308
    new-array v3, v2, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 309
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    .line 310
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    .line 311
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    .line 312
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    .line 313
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    .line 314
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 315
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    .line 316
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    .line 317
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    .line 318
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    .line 319
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    .line 320
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    .line 321
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    .line 322
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    .line 323
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    .line 324
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    .line 325
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    .line 326
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    .line 327
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    .line 328
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    .line 329
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    .line 330
    new-array v3, v2, [Lcom/android/systemui/statusbar/Feature$IndianOperators;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIndianOperator:[Lcom/android/systemui/statusbar/Feature$IndianOperators;

    .line 331
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 332
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    .line 334
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    if-nez v3, :cond_1

    .line 335
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    .line 337
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    if-nez v3, :cond_2

    .line 338
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    .line 340
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    if-nez v3, :cond_3

    .line 341
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    .line 343
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    if-nez v3, :cond_4

    .line 344
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    .line 346
    :cond_4
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    .line 347
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    .line 350
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    .line 351
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    .line 352
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    .line 353
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    .line 354
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    .line 356
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    .line 357
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    .line 358
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    .line 363
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    .line 364
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    .line 365
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    .line 367
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    .line 370
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    .line 371
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCallState:[I

    .line 372
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    .line 373
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRssiIconId:[I

    .line 374
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    .line 375
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    .line 378
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    .line 381
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 382
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v4, v3, v1

    .line 383
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v1

    .line 384
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    .line 385
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    .line 387
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v7, v3, v1

    .line 388
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v7, v3, v1

    .line 389
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aput v6, v3, v1

    .line 390
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aput v6, v3, v1

    .line 391
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aput-boolean v7, v3, v1

    .line 392
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aput v6, v3, v1

    .line 393
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aput v6, v3, v1

    .line 394
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    aput v7, v3, v1

    .line 395
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    aput v7, v3, v1

    .line 396
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    aput v7, v3, v1

    .line 397
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aput v7, v3, v1

    .line 398
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    aput v7, v3, v1

    .line 399
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 400
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aput v8, v3, v1

    .line 401
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aput v7, v3, v1

    .line 402
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    aput v7, v3, v1

    .line 404
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aput v7, v3, v1

    .line 405
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aput v7, v3, v1

    .line 406
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    aput v7, v3, v1

    .line 408
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    aput-boolean v7, v3, v1

    .line 410
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aput v7, v3, v1

    .line 411
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCallState:[I

    aput v7, v3, v1

    .line 412
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aput-boolean v7, v3, v1

    .line 413
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aput-boolean v7, v3, v1

    .line 415
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    aput-boolean v7, v3, v1

    .line 417
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v7, v3, v1

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 420
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 423
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 424
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 427
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-boolean v3, v3, v4

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataConnected:Z

    .line 428
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 429
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    .line 430
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataServiceState:I

    .line 431
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    .line 432
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 433
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 435
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 436
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneSignalIconId:I

    .line 437
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 439
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataDirectionIconId:I

    .line 440
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataSignalIconId:I

    .line 441
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeIconId:I

    .line 442
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSimIconId:I

    .line 444
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 445
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 447
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 449
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 450
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 451
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataTypeIconId:I

    .line 452
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 455
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 456
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v3, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v3, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string v3, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v3, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string v3, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_7

    const-string v3, "USA"

    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_9

    .line 471
    :cond_8
    const-string v3, "com.android.systemui.action.airplane_off"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    :cond_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->m4GDataDistinguishable:Z

    if-eqz v3, :cond_b

    .line 475
    :cond_a
    const-string v3, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    :cond_b
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v3, :cond_c

    .line 479
    const-string v3, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    :cond_c
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mFolderDevice:Z

    if-eqz v3, :cond_d

    .line 483
    const-string v3, "android.settings.DATA_NETWORK_KEY_PRESSED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    :cond_d
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 488
    new-instance v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

    .line 489
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->initDualSimUiValue()V

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 496
    new-instance v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

    .line 497
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 499
    return-void

    .line 152
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 153
    nop

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private UpdateIndianOperator(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIndianOperator:[Lcom/android/systemui/statusbar/Feature$IndianOperators;

    invoke-static {p1}, Lcom/android/systemui/statusbar/Feature$IndianOperators;->getIndianOperator(I)Lcom/android/systemui/statusbar/Feature$IndianOperators;

    move-result-object v1

    aput-object v1, v0, p1

    .line 619
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateIndianOperator:mIndianOperator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIndianOperator:[Lcom/android/systemui/statusbar/Feature$IndianOperators;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataKeyDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataKeyDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isPsOnly(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->radioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalIconForCTCRoamingCall()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return p1
.end method

.method private applyCHN(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 7
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const v6, 0x7f020522

    const/4 v5, 0x2

    const v2, 0x7f020510

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3899
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsDSDS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3900
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isMutiSIMDSDSRadioOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3901
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v2, v0, p2

    .line 3902
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v2, v0, p2

    .line 3903
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v1, p2

    aput v3, v0, p2

    .line 3904
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "isMutiSIMDSDSRadioOff is true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_14

    .line 3909
    :cond_1
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - isDialingEmergencyCall"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3911
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v0, v4

    .line 3912
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v0, v4

    .line 3913
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3914
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020b14

    aput v1, v0, v4

    .line 3916
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v0, v4

    .line 3939
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSixModeSlaveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3940
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster - set No service for sixmode`s slave slot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    const v1, 0x7f02078b

    aput v1, v0, p2

    .line 3942
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    const v1, 0x7f02078b

    aput v1, v0, p2

    .line 3943
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v1, p2

    aput v3, v0, p2

    .line 3944
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v3, v0, p2

    .line 3947
    :cond_5
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3948
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCTC(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 3950
    :cond_6
    const-string v0, "CU"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3951
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCU(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 3972
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3973
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, p2

    const v1, 0x7f020429

    if-ne v0, v1, :cond_8

    .line 3974
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f02042a

    aput v1, v0, p2

    .line 3976
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, v3

    const v1, 0x7f02078b

    if-ne v0, v1, :cond_9

    .line 3977
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v1, v3

    aput v3, v0, v3

    .line 3979
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, v4

    const v1, 0x7f02078b

    if-ne v0, v1, :cond_a

    .line 3980
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v1, v4

    aput v3, v0, v4

    .line 3982
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, p2

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setRssiIcon(II)V

    .line 3983
    const v0, 0x7f0205eb

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileFocusIcon(II)V

    .line 3986
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 3987
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v0, :cond_1b

    .line 3988
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v5, :cond_19

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForLTESwitch:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-nez v0, :cond_19

    .line 3991
    :cond_d
    invoke-interface {p1, v5, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 3996
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v4

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v4

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v5, :cond_1a

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForLTESwitch:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-nez v0, :cond_1a

    .line 3999
    :cond_f
    invoke-interface {p1, v5, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 4005
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForLTESwitch:Z

    if-nez v0, :cond_11

    .line 4006
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, p2

    if-ne v0, v5, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_11

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p2

    const v1, 0x7f0203fa

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p2

    const v1, 0x7f0203ef

    if-ne v0, v1, :cond_11

    .line 4008
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0203eb

    aput v1, v0, p2

    .line 4009
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "DataType icon is changed to 1x for indicate cdma call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    :cond_11
    :goto_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v0, :cond_12

    .line 4019
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v4, v0, p2

    .line 4021
    :cond_12
    return-void

    .line 3918
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v2, v0, v4

    .line 3919
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v2, v0, v4

    .line 3920
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v1, v4

    aput v3, v0, v4

    goto/16 :goto_0

    .line 3922
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_4

    .line 3923
    :cond_15
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - isDialingEmergencyCall"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3925
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v0, v3

    .line 3926
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v0, v3

    .line 3927
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 3928
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020b14

    aput v1, v0, v3

    .line 3930
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v0, v3

    goto/16 :goto_0

    .line 3932
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v2, v0, v3

    .line 3933
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v2, v0, v3

    .line 3934
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v1, v3

    aput v3, v0, v3

    goto/16 :goto_0

    .line 3994
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    invoke-interface {p1, v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_1

    .line 4002
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v4

    invoke-interface {p1, v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_2

    .line 4013
    :cond_1b
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4014
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, p2

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_3
.end method

.method private applyCTC(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 9
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const v8, 0x7f02078b

    const v7, 0x7f020497

    const v4, 0x7f020522

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4039
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsDsdsOnlyRoaming:Z

    if-eqz v2, :cond_3

    .line 4040
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4041
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v5

    if-ne v2, v6, :cond_1a

    .line 4043
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v2, v6

    .line 4044
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v2, v6

    .line 4045
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v3, 0x7f020b14

    aput v3, v2, v6

    .line 4046
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v2, v6

    .line 4057
    :cond_3
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMLockedOfSlot(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4058
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v3, v5

    aput v5, v2, v5

    .line 4059
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v8, v2, v5

    .line 4060
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v8, v2, v5

    .line 4069
    :cond_4
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMLockedOfSlot(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4070
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v3, v6

    aput v5, v2, v6

    .line 4071
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v8, v2, v6

    .line 4072
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v8, v2, v6

    .line 4081
    :cond_5
    :goto_2
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v2, :cond_6

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNoSIMOfSlot(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4082
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v7, v2, v5

    .line 4083
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v7, v2, v5

    .line 4085
    :cond_6
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v2, :cond_7

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNoSIMOfSlot(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4086
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v7, v2, v6

    .line 4087
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v7, v2, v6

    .line 4090
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v2, v5

    if-eq v2, v7, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v2, v5

    if-ne v2, v8, :cond_9

    .line 4092
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v3, v5

    aput v5, v2, v5

    .line 4094
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v2, v6

    if-eq v2, v7, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v2, v6

    if-ne v2, v8, :cond_b

    .line 4096
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v3, v6

    aput v5, v2, v6

    .line 4099
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, v5

    const v3, 0x7f020429

    if-ne v2, v3, :cond_c

    .line 4100
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v3, 0x7f02042a

    aput v3, v2, v5

    .line 4102
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, v6

    const v3, 0x7f020429

    if-ne v2, v3, :cond_d

    .line 4103
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v3, 0x7f02042a

    aput v3, v2, v6

    .line 4106
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, v5

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, v5

    const v3, 0x7f020b14

    if-ne v2, v3, :cond_e

    .line 4107
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v5, v2, v5

    .line 4109
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, v6

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, v6

    const v3, 0x7f020b14

    if-ne v2, v3, :cond_f

    .line 4110
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v5, v2, v6

    .line 4113
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v2, v2, p2

    invoke-interface {p1, v2, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 4115
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsDsdsOnlyRoaming:Z

    if-eqz v2, :cond_14

    .line 4116
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v2, v2, v5

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v2, v2, v6

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aget-boolean v2, v2, v5

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_14

    .line 4119
    :cond_12
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_13

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v5

    if-ne v2, v6, :cond_20

    .line 4121
    :cond_13
    invoke-interface {p1, v5, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 4129
    :cond_14
    :goto_3
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNoSIMOfSlot(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4130
    :cond_15
    invoke-interface {p1, v5, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 4131
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "refreshSignalCluster - sim1 Off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4133
    :cond_16
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNoSIMOfSlot(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4134
    :cond_17
    invoke-interface {p1, v5, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 4135
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "refreshSignalCluster - sim2 Off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    :cond_18
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v2, :cond_19

    .line 4139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v1

    .line 4140
    .local v1, "slotSwiching":Ljava/lang/String;
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply for CTC : slotSwiching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4142
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v5, v2, v5

    .line 4143
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v5, v2, v5

    .line 4144
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v5, v2, v5

    .line 4145
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v2, v5

    .line 4146
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v5, v2, v5

    .line 4149
    .end local v1    # "slotSwiching":Ljava/lang/String;
    :cond_19
    add-int/lit8 v2, p2, 0x1

    rem-int/lit8 v0, v2, 0x2

    .line 4150
    .local v0, "opPhoneId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v6, v2, p2

    .line 4151
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v6, v2, v0

    .line 4152
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, p2

    invoke-interface {p1, v2, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setRssiIcon(II)V

    .line 4153
    return-void

    .line 4047
    .end local v0    # "opPhoneId":I
    :cond_1a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1b

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v6

    if-ne v2, v6, :cond_3

    .line 4049
    :cond_1b
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v2, v5

    .line 4050
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v2, v5

    .line 4051
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v3, 0x7f020b14

    aput v3, v2, v5

    .line 4052
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v2, v5

    goto/16 :goto_0

    .line 4061
    :cond_1c
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v5

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4063
    :cond_1d
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v3, 0x7f020b14

    aput v3, v2, v5

    .line 4064
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v2, v5

    .line 4065
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v2, v5

    .line 4066
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v2, v5

    goto/16 :goto_1

    .line 4073
    :cond_1e
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v6

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4075
    :cond_1f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v3, 0x7f020b14

    aput v3, v2, v6

    .line 4076
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v2, v6

    .line 4077
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v2, v6

    .line 4078
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v2, v6

    goto/16 :goto_2

    .line 4122
    :cond_20
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_21

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v6

    if-ne v2, v6, :cond_14

    .line 4124
    :cond_21
    invoke-interface {p1, v5, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_3
.end method

.method private applyCU(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 5
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f020498

    .line 4023
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "applyCU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v0, :cond_0

    .line 4026
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v2, v0, v3

    .line 4027
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v2, v0, v3

    .line 4029
    :cond_0
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v0, :cond_1

    .line 4030
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v2, v0, v4

    .line 4031
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v2, v0, v4

    .line 4033
    :cond_1
    return-void
.end method

.method private applyCommon(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 3
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    .line 4196
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileActivityIcon(II)V

    .line 4197
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setWifiActivityIcon(I)V

    .line 4198
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setRoamingIcon(II)V

    .line 4199
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 4201
    .local v0, "mCurrentDataActiveSim":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4202
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v1, v1, p2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataState(II)V

    .line 4208
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setBtTetherState(Z)V

    .line 4209
    return-void

    .line 4204
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataState(II)V

    goto :goto_0
.end method

.method private applyOpen(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 0
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    .line 4192
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 4193
    return-void
.end method

.method private getAreaInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1590
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1591
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1593
    .local v0, "areaInfo":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    .line 1594
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1595
    .local v1, "mccMnc":I
    if-lez v1, :cond_0

    .line 1596
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1602
    .end local v1    # "mccMnc":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1599
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private final getCHNEriIcon(II)I
    .locals 3
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const v1, 0x7f020429

    const/4 v0, 0x0

    .line 4284
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 4293
    :goto_0
    return v0

    .line 4287
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 4289
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 4291
    goto :goto_0

    .line 4287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final getCTCEriIcon(II)I
    .locals 2
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 4270
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4279
    :goto_0
    return v0

    .line 4273
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4275
    :pswitch_1
    const v0, 0x7f02042a

    goto :goto_0

    .line 4277
    :pswitch_2
    const v0, 0x7f0204f1

    goto :goto_0

    .line 4273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final getCdmaEriIcon(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 4213
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v3

    if-gtz v3, :cond_1

    const-string v3, "ja3gduosctc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4246
    :cond_0
    :goto_0
    return v2

    .line 4217
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 4218
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 4219
    .local v0, "iconIndex":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 4221
    .local v1, "iconMode":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iconMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$3;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 4232
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 4235
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v3, :cond_0

    .line 4236
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 4238
    :pswitch_0
    const v2, 0x7f020408

    goto :goto_0

    .line 4226
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCTCEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 4229
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCHNEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 4240
    :pswitch_3
    const v2, 0x7f0204f0

    goto :goto_0

    .line 4224
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 4236
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final getCdmaPhoneSignalIconId(I)I
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    .line 2683
    const/4 v0, 0x0

    .line 2684
    .local v0, "evdoIconLevel":I
    const/4 v3, 0x0

    .line 2686
    .local v3, "lteIconLevel":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    .local v1, "iconLevel":I
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 2687
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneSignalIconList(II)[I

    move-result-object v2

    .line 2689
    .local v2, "iconList":[I
    const-string v6, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaPhoneSignalIconId( "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ) CTC "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LTE: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2694
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2695
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCdmaEriIcon(I)I

    move-result v6

    aput v6, v5, p1

    .line 2697
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2699
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v5

    mul-int/lit8 v0, v5, 0x5

    .line 2701
    if-nez v1, :cond_5

    .line 2702
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 2762
    :cond_1
    :goto_1
    array-length v5, v2

    add-int/lit8 v4, v5, -0x1

    .line 2763
    .local v4, "maxLevel":I
    if-le v1, v4, :cond_1a

    .line 2764
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaPhoneSignalIconId: maxLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too high"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    move v1, v4

    .line 2777
    :cond_2
    :goto_2
    aget v5, v2, v1

    return v5

    .line 2689
    .end local v4    # "maxLevel":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Evdo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cdma "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2705
    :cond_5
    add-int/2addr v1, v0

    .line 2707
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaCall(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2710
    :cond_8
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2711
    :cond_9
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2715
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2713
    :cond_a
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_3

    .line 2717
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2718
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2719
    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2723
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2721
    :cond_d
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_4

    .line 2725
    :cond_e
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    goto/16 :goto_1

    .line 2728
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2729
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v5

    mul-int/lit8 v3, v5, 0x5

    .line 2731
    if-nez v1, :cond_10

    .line 2732
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2735
    :cond_10
    add-int/2addr v1, v3

    .line 2737
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-nez v5, :cond_13

    :cond_11
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v5

    if-nez v5, :cond_13

    :cond_12
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSRLteCall(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2740
    :cond_13
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2741
    :cond_14
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2745
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2743
    :cond_15
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_5

    .line 2747
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2748
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2749
    :cond_17
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2753
    :goto_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2751
    :cond_18
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_6

    .line 2755
    :cond_19
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    goto/16 :goto_1

    .line 2770
    .restart local v4    # "maxLevel":I
    :cond_1a
    if-gez v1, :cond_2

    .line 2771
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaPhoneSignalIconId: iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too small"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method private getCurrentSimSlot()I
    .locals 1

    .prologue
    .line 4546
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    return v0
.end method

.method private getMobileLabelForCHN()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4156
    const-string v0, ""

    .line 4158
    .local v0, "mobileLabel":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v2, :cond_6

    .line 4159
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v5

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 4161
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v2, v4

    .line 4172
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4173
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v2, :cond_8

    .line 4174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v1

    .line 4175
    .local v1, "slotSwiching":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4188
    .end local v1    # "slotSwiching":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 4162
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_2

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 4163
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v2, v5

    goto :goto_0

    .line 4164
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v5

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_4

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 4165
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v2, v4

    goto :goto_0

    .line 4167
    :cond_5
    const-string v0, ""

    goto :goto_0

    .line 4169
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0567

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4178
    .restart local v1    # "slotSwiching":Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4181
    .end local v1    # "slotSwiching":Ljava/lang/String;
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4183
    :cond_9
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v2

    if-nez v2, :cond_0

    .line 4185
    const-string v0, ""

    goto/16 :goto_1
.end method

.method private getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 591
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 594
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 595
    const/4 v0, 0x0

    .line 597
    .end local v0    # "phoneId":I
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 1191
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 1343
    .local v0, "mMSimPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private final getRoamingIcon(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 4299
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-nez v0, :cond_3

    .line 4301
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v0, :cond_2

    .line 4302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020b14

    aput v1, v0, p1

    .line 4335
    :goto_0
    return-void

    .line 4304
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v2, v0, p1

    .line 4305
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoService, mRoamingIconId = 0phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4307
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4309
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4310
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCdmaEriIcon(I)I

    move-result v1

    aput v1, v0, p1

    .line 4311
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), isCdmaEri(), mRoamingIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4313
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v2, v0, p1

    .line 4314
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), !isCdmaEri(), mRoamingIconId = 0 phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4317
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    if-eqz v0, :cond_8

    .line 4326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020429

    aput v1, v0, p1

    .line 4327
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TWO:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SEE:Z

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNationalRoamingForTWO(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4328
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v2, v0, p1

    .line 4329
    :cond_7
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkRoaming(), mRoamingIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4332
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v2, v0, p1

    .line 4333
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing final, mRoamingIconId = 0 phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getRssiTypeIconCMCC(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1701
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSglteMode(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1702
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1703
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1704
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0203fd

    aput v1, v0, p1

    .line 1730
    :cond_0
    :goto_0
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:isWCDMA = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLTE() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:mRssiIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 1734
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v0, v0, p1

    if-eqz v0, :cond_1

    .line 1735
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v0, p1

    .line 1736
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:mRssiIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_1
    return-void

    .line 1706
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0203f2

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1709
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 1710
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1711
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1712
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020404

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1714
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0203f6

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1717
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1718
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0203fc

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1719
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isPsWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1720
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0203f1

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1722
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0203ee

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1728
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v0, p1

    goto/16 :goto_0
.end method

.method private getRssiTypeIconCTC(I)V
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    const v8, 0x7f0203ee

    const v7, 0x7f0203ec

    const v6, 0x7f0203ff

    const v5, 0x7f0203f4

    const/4 v4, 0x0

    .line 1623
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCTC( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "LTE "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmalevel "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasDataService(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1628
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-gez v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1629
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v0, p1

    .line 1685
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_6

    .line 1686
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1687
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1688
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020b14

    aput v1, v0, p1

    .line 1690
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v4, v0, p1

    .line 1698
    :cond_6
    :goto_3
    return-void

    .line 1623
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "WCDMA"

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Evdo"

    goto/16 :goto_0

    :cond_9
    const-string v0, "2g(1x) "

    goto/16 :goto_0

    :cond_a
    const-string v0, ""

    goto/16 :goto_1

    .line 1630
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v6, v0, p1

    goto :goto_2

    .line 1634
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v8, v0, p1

    goto :goto_2

    .line 1637
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1638
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaCall(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1639
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-lez v0, :cond_e

    .line 1643
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0203f0

    aput v1, v0, p1

    goto :goto_2

    .line 1646
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v0, p1

    goto/16 :goto_2

    .line 1648
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1649
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-lez v0, :cond_11

    .line 1650
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSRLteCall(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1654
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v7, v0, p1

    goto/16 :goto_2

    .line 1660
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0203fb

    aput v1, v0, p1

    goto/16 :goto_2

    .line 1664
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v6, v0, p1

    goto/16 :goto_2

    .line 1671
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v7, v0, p1

    goto/16 :goto_2

    .line 1675
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1676
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v0, p1

    goto/16 :goto_2

    .line 1677
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1678
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v6, v0, p1

    goto/16 :goto_2

    .line 1680
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v8, v0, p1

    goto/16 :goto_2

    .line 1691
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasDataService(I)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNoSIMOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1693
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v4, v0, p1

    .line 1694
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v4, v0, p1

    .line 1695
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "getRssiTypeIconCTC : mRoamingIconId =0 mRssiIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private final getSGLTEPhoneSignalIconId(III)I
    .locals 8
    .param p1, "csLevel"    # I
    .param p2, "psLevel"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 2791
    const/4 v4, 0x0

    .line 2792
    .local v4, "wcdmaIconLevel":I
    const/4 v2, 0x0

    .line 2794
    .local v2, "lteIconLevel":I
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v5, p3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneSignalIconList(II)[I

    move-result-object v1

    .line 2796
    .local v1, "iconList":[I
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSglteMode(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2797
    mul-int/lit8 v5, p2, 0x5

    add-int v0, v5, p1

    .line 2798
    .local v0, "iconLevel":I
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    .line 2804
    :goto_0
    array-length v5, v1

    add-int/lit8 v3, v5, -0x1

    .line 2805
    .local v3, "maxLevel":I
    if-le v0, v3, :cond_2

    .line 2806
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSGLTEPhoneSignalIconId: maxLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too high"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    move v0, v3

    .line 2819
    :cond_0
    :goto_1
    aget v5, v1, v0

    return v5

    .line 2800
    .end local v0    # "iconLevel":I
    .end local v3    # "maxLevel":I
    :cond_1
    move v0, p1

    .line 2801
    .restart local v0    # "iconLevel":I
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    goto :goto_0

    .line 2812
    .restart local v3    # "maxLevel":I
    :cond_2
    if-gez v0, :cond_0

    .line 2813
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSGLTEPhoneSignalIconId: iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too small"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getSimActive(I)I
    .locals 4
    .param p1, "simSlot"    # I

    .prologue
    const/4 v3, 0x1

    .line 4536
    if-nez p1, :cond_0

    .line 4537
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4542
    .local v0, "value":I
    :goto_0
    return v0

    .line 4539
    .end local v0    # "value":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private getSimIconIndex(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 4596
    if-nez p1, :cond_0

    .line 4597
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim1Icon:I

    .line 4599
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim2Icon:I

    goto :goto_0
.end method

.method private getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 4779
    const/4 v1, 0x0

    .line 4780
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4781
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 4782
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4783
    .local v2, "values":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v3, v2

    if-ge p2, v3, :cond_0

    aget-object v3, v2, p2

    if-eqz v3, :cond_0

    .line 4784
    aget-object v1, v2, p2

    .line 4787
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p3    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p3

    .restart local p3    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p3, v1

    goto :goto_0
.end method

.method private getUpdateDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 720
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateDataNetType(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 723
    const-string v0, "ORANGE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 726
    :cond_1
    const-string v0, "OYB"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    const-string v0, "OYA"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    const-string v0, "OYC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    const-string v0, "OLB"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    const-string v0, "VD2"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    const-string v0, "MNX"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DOR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    const-string v0, "TMH"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    const-string v0, "PCT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    const-string v0, "JDI"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CDR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    const-string v0, "ANC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DGT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "COL"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CTU"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BVO"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TTT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 764
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateLTEICONDataNetType(I)V

    goto/16 :goto_0

    .line 766
    :cond_3
    const-string v0, "TFG"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 767
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTFGDataNetType(I)V

    goto/16 :goto_0

    .line 769
    :cond_4
    const-string v0, "SFR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    const-string v0, "IUS"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 773
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateIUSDataNetType(I)V

    goto/16 :goto_0

    .line 775
    :cond_5
    const-string v0, "LTE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 776
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateLTEICONDataNetType(I)V

    goto/16 :goto_0

    .line 781
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$3;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 811
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    goto/16 :goto_0

    .line 783
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    goto/16 :goto_0

    .line 798
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCTCDataNetType(I)V

    goto/16 :goto_0

    .line 802
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCMCCDataNetType(I)V

    goto/16 :goto_0

    .line 805
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCUDataNetType(I)V

    goto/16 :goto_0

    .line 808
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateZVVLACInfo(I)V

    goto/16 :goto_0

    .line 781
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final getVZWEriIcon(II)I
    .locals 2
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const v0, 0x7f020408

    const/4 v1, 0x1

    .line 4250
    if-ne p1, v1, :cond_1

    .line 4251
    const/4 v0, 0x0

    .line 4265
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 4253
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 4257
    :pswitch_2
    const v0, 0x7f0204f0

    goto :goto_0

    .line 4259
    :pswitch_3
    if-nez p2, :cond_2

    .line 4260
    const v0, 0x7f02040a

    goto :goto_0

    .line 4261
    :cond_2
    if-ne p2, v1, :cond_0

    .line 4262
    const v0, 0x7f0204f2

    goto :goto_0

    .line 4253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasDataService(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1441
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 1442
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1447
    :pswitch_0
    const/4 v0, 0x1

    .line 1450
    :cond_0
    :pswitch_1
    return v0

    .line 1442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasService(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1426
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v2, p1

    .line 1427
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1433
    :pswitch_0
    const/4 v1, 0x1

    .line 1436
    :cond_0
    :pswitch_1
    return v1

    .line 1428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initDualSimUiValue()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4556
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4565
    .local v0, "mSimMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_1"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setSimIconIndex(II)V

    .line 4566
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_2"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setSimIconIndex(II)V

    .line 4583
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlot(I)V

    .line 4585
    return-void
.end method

.method private static initializeCodeToState()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1519
    .local v0, "codeToState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    const/16 v1, 0x5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    const/16 v1, 0x5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    return-object v0
.end method

.method private isCdma(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaCall(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1752
    const/4 v0, 0x0

    .line 1753
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1755
    :cond_0
    const/4 v0, 0x1

    .line 1758
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdmaCall() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    return v0
.end method

.method private isCmccCard(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1489
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1491
    .local v0, "numeric":Ljava/lang/String;
    const-string v1, "46000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46007"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45412"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1492
    :cond_0
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "isCmccCard "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const/4 v1, 0x1

    .line 1495
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCtcCard(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1499
    const-string v1, "gsm.sim.cdmaoperator.numeric"

    const-string v2, ""

    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    .local v0, "cdmaNumeric":Ljava/lang/String;
    const-string v1, "46003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45502"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45507"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46012"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1502
    :cond_0
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "isCtcCard "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/4 v1, 0x1

    .line 1505
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCtcCardIn6Mode(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1510
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupport6ModeForCHN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 1511
    const/4 v0, 0x1

    .line 1513
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsmRoaming(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 3485
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3488
    const/4 v0, 0x1

    .line 3490
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLTE(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMutiSIMDSDSRadioOff()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3893
    const-string v2, "ril.dsds.radio-off"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    const-string v2, "ril.dsds.radio.recv-end"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private isNationalRoamingForTWO(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 2781
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "21901"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "21902"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2782
    const/4 v0, 0x1

    .line 2784
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2878
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 2880
    :cond_0
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v2, "isNetworkLocked() = true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2884
    :goto_0
    return v0

    .line 2883
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "isNetworkLocked() = false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNetworkRoaming(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2668
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 2669
    .local v1, "subIdtemp":[I
    if-eqz v1, :cond_0

    .line 2670
    aget v0, v1, v2

    .line 2671
    .local v0, "subId":I
    if-lez v0, :cond_0

    .line 2672
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    .line 2677
    .end local v0    # "subId":I
    :cond_0
    return v2
.end method

.method private isNoSIMOfSlot(I)Z
    .locals 7
    .param p1, "simSlot"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 4391
    const/4 v2, 0x0

    .line 4392
    .local v2, "result":Z
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v5, "9,9"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4393
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4394
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 4401
    :goto_0
    return v3

    .line 4397
    :cond_0
    if-nez p1, :cond_1

    const-string v4, "0"

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-ne p1, v6, :cond_3

    const-string v3, "0"

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4399
    :cond_2
    const/4 v2, 0x1

    :cond_3
    move v3, v2

    .line 4401
    goto :goto_0
.end method

.method private isPsOnly(I)Z
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4866
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4867
    .local v1, "configPsOnlyList":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4868
    .local v0, "configPsOnly":[Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 4869
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4872
    :cond_0
    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, "0"

    invoke-static {v7, v6, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4873
    .local v3, "sim1Numeric":Ljava/lang/String;
    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, "0"

    invoke-static {v7, v5, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4875
    .local v4, "sim2Numeric":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 4876
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v0

    if-ge v2, v7, :cond_4

    .line 4877
    aget-object v7, v0, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    aget-object v7, v0, v2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-ne p1, v5, :cond_3

    .line 4883
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return v5

    .line 4876
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_4
    move v5, v6

    .line 4883
    goto :goto_1
.end method

.method private isPsWCDMA(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoaming(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 2030
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0
.end method

.method private isSIMLockedOfSlot(I)Z
    .locals 7
    .param p1, "simSlot"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 4405
    const/4 v2, 0x0

    .line 4407
    .local v2, "result":Z
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v5, "9,9"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4408
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4409
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 4419
    :goto_0
    return v3

    .line 4415
    :cond_0
    if-nez p1, :cond_1

    const-string v4, "1"

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-ne p1, v6, :cond_3

    const-string v3, "1"

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4417
    :cond_2
    const/4 v2, 0x1

    :cond_3
    move v3, v2

    .line 4419
    goto :goto_0
.end method

.method private isSIMOFFOfSlot(I)Z
    .locals 11
    .param p1, "simSlot"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 4423
    const/4 v2, 0x0

    .line 4425
    .local v2, "result":Z
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9,9"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4426
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4427
    const-string v1, "9,9"

    .line 4429
    :cond_0
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4430
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 4464
    :cond_1
    :goto_0
    return v6

    .line 4435
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 4436
    .local v3, "simDBvalue0":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 4437
    .local v4, "simDBvalue1":I
    const-string v7, "StatusBar.MSimNetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSIMOFFOfSlot simDBvalue0 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", simDBvalue1 ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4438
    const-string v7, "1"

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "1"

    aget-object v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4439
    :cond_3
    if-nez p1, :cond_4

    const-string v7, "2"

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    if-ne p1, v10, :cond_1

    const-string v7, "2"

    aget-object v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4441
    :cond_5
    const/4 v2, 0x1

    move v6, v2

    .line 4442
    goto :goto_0

    .line 4447
    :cond_6
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v7, :cond_9

    .line 4448
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    .line 4449
    .local v5, "slotSwiching":Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4450
    if-nez p1, :cond_7

    const-string v7, "2"

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    if-ne p1, v10, :cond_1

    const-string v7, "2"

    aget-object v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4452
    :cond_8
    const/4 v2, 0x1

    move v6, v2

    .line 4453
    goto/16 :goto_0

    .line 4459
    .end local v5    # "slotSwiching":Ljava/lang/String;
    :cond_9
    if-nez p1, :cond_a

    const-string v7, "2"

    aget-object v6, v0, v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v3, :cond_b

    :cond_a
    if-ne p1, v10, :cond_c

    const-string v6, "2"

    aget-object v7, v0, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    if-nez v4, :cond_c

    .line 4461
    :cond_b
    const/4 v2, 0x1

    :cond_c
    move v6, v2

    .line 4464
    goto/16 :goto_0
.end method

.method private isSRLteCall(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1742
    const/4 v0, 0x0

    .line 1743
    .local v0, "result":Z
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->isSRLTE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1745
    :cond_0
    const/4 v0, 0x1

    .line 1747
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSRLteCall() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    return v0
.end method

.method private isSglteMode(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 4792
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v1, v1, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v1, v1, p1

    if-nez v1, :cond_0

    .line 4803
    :goto_0
    return v0

    .line 4795
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 4796
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSglteMode:I

    .line 4797
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSglteMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4798
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "isSglteMode is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    const/4 v0, 0x1

    goto :goto_0

    .line 4802
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "isSglteMode is false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSimCardInserted(I)Z
    .locals 8
    .param p0, "slotidx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4358
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4359
    .local v3, "simMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4360
    if-nez p0, :cond_1

    .line 4387
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v4

    .line 4363
    goto :goto_0

    .line 4367
    :cond_2
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4368
    .local v1, "iccTemp":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4369
    .local v0, "iccStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 4375
    const/4 v2, 0x0

    .line 4376
    .local v2, "key":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 4384
    :goto_1
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4387
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    move v5, v4

    goto :goto_0

    .line 4378
    :pswitch_0
    aget-object v2, v0, v5

    .line 4379
    goto :goto_1

    .line 4381
    :pswitch_1
    aget-object v2, v0, v4

    goto :goto_1

    :cond_3
    move v4, v5

    .line 4387
    goto :goto_2

    .line 4376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSimStateNotReady()Z
    .locals 5

    .prologue
    .line 5081
    const/4 v2, 0x0

    .line 5082
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 5083
    .local v0, "cardStatusSlot0":I
    const/4 v1, 0x0

    .line 5094
    .local v1, "cardStatusSlot1":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-nez v3, :cond_1

    .line 5096
    :cond_0
    const/4 v2, 0x1

    .line 5100
    :cond_1
    return v2
.end method

.method private isSixModeSlaveSlot(I)Z
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 4857
    const-string v0, "false"

    .line 4858
    .local v0, "slotState":Ljava/lang/String;
    const-string v1, "gsm.sim.sixmode.slave"

    const-string v2, "false"

    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4859
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4860
    const/4 v1, 0x1

    .line 4862
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSlot2Locked(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 2
    .param p1, "mSimstate_2"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 2871
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "Combination"

    const-string v1, "Combination"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2873
    const/4 v0, 0x1

    .line 2875
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWCDMA(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private radioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    .prologue
    .line 4704
    packed-switch p1, :pswitch_data_0

    .line 4741
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4706
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4708
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 4710
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 4712
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 4714
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 4716
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 4719
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 4721
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 4723
    :pswitch_8
    const/4 v0, 0x5

    goto :goto_0

    .line 4725
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 4727
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 4729
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 4731
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 4733
    :pswitch_d
    const/16 v0, 0xf

    goto :goto_0

    .line 4735
    :pswitch_e
    const/16 v0, 0x11

    goto :goto_0

    .line 4737
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 4739
    :pswitch_10
    const/16 v0, 0x12

    goto :goto_0

    .line 4704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method private refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;)V
    .locals 20
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;

    .prologue
    .line 3793
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLevel:I

    aget v5, v2, v3

    .line 3794
    .local v5, "nwboosterWifiIconId":I
    const v6, 0x7f020608

    .line 3795
    .local v6, "nwboosterDataActivityIconId":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_e

    .line 3796
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-eqz v2, :cond_d

    .line 3797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v2, :cond_3

    const/16 v19, 0x1

    .line 3799
    .local v19, "showBoosterIcon":Z
    :goto_0
    if-eqz v19, :cond_c

    .line 3800
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-eqz v2, :cond_b

    .line 3801
    const/16 v16, 0x0

    .line 3802
    .local v16, "nw_data_in":Z
    const/16 v17, 0x0

    .line 3804
    .local v17, "nw_data_out":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 3806
    :cond_0
    const/16 v16, 0x1

    .line 3816
    :cond_1
    :goto_1
    if-eqz v16, :cond_8

    if-eqz v17, :cond_8

    .line 3817
    const v6, 0x7f020607

    .line 3826
    :cond_2
    :goto_2
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 3841
    .end local v16    # "nw_data_in":Z
    .end local v17    # "nw_data_out":Z
    :goto_3
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshNwBoosterIndicator - setNWBoosterIndicators(true), showBoosterIcon : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    .end local v19    # "showBoosterIcon":Z
    :goto_4
    return-void

    .line 3797
    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    .line 3807
    .restart local v16    # "nw_data_in":Z
    .restart local v17    # "nw_data_out":Z
    .restart local v19    # "showBoosterIcon":Z
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 3809
    :cond_5
    const/16 v17, 0x1

    goto :goto_1

    .line 3810
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 3812
    :cond_7
    const/16 v16, 0x1

    .line 3813
    const/16 v17, 0x1

    goto :goto_1

    .line 3818
    :cond_8
    if-eqz v16, :cond_9

    if-nez v17, :cond_9

    .line 3819
    const v6, 0x7f020606

    goto :goto_2

    .line 3820
    :cond_9
    if-nez v16, :cond_a

    if-eqz v17, :cond_a

    .line 3821
    const v6, 0x7f020609

    goto :goto_2

    .line 3822
    :cond_a
    if-nez v16, :cond_2

    if-nez v17, :cond_2

    .line 3823
    const v6, 0x7f020608

    goto :goto_2

    .line 3830
    .end local v16    # "nw_data_in":Z
    .end local v17    # "nw_data_out":Z
    :cond_b
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aget v10, v2, v3

    .line 3832
    .local v10, "mDimNWBoosterWifiIcon":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    const v11, 0x7f020607

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v13, 0x0

    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v13}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_3

    .line 3837
    .end local v10    # "mDimNWBoosterWifiIcon":I
    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 3839
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "refreshNwBoosterIndicator - setNWBoosterIndicators(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3845
    .end local v19    # "showBoosterIcon":Z
    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 3847
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "refreshNwBoosterIndicator - setNWBoosterIndicators(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3852
    :cond_e
    const/4 v15, 0x1

    .line 3853
    .local v15, "isNoSim":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v14, v2, :cond_f

    .line 3854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v14

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_10

    .line 3855
    const/4 v15, 0x0

    .line 3859
    :cond_f
    const v18, 0x7f02049c

    .line 3860
    .local v18, "nwboosterOnIconId":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-eqz v2, :cond_14

    if-nez v15, :cond_14

    .line 3861
    const v6, 0x7f020606

    .line 3862
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-eqz v2, :cond_12

    .line 3863
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v2, :cond_11

    .line 3864
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZI)V

    .line 3869
    :goto_6
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "refreshNwBoosterIndicator - setNWBoosterIndicators(Running)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3853
    .end local v18    # "nwboosterOnIconId":I
    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 3866
    .restart local v18    # "nwboosterOnIconId":I
    :cond_11
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_6

    .line 3871
    :cond_12
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v2, :cond_13

    .line 3872
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZI)V

    .line 3877
    :goto_7
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "refreshNwBoosterIndicator - setNWBoosterIndicators(notRunning)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3874
    :cond_13
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_7

    .line 3881
    :cond_14
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v2, :cond_15

    .line 3882
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZI)V

    goto/16 :goto_4

    .line 3884
    :cond_15
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto/16 :goto_4
.end method

.method private refreshSignalIconForCTCRoamingCall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4808
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4809
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_3

    .line 4810
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 4811
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 4812
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRoamingIcon(I)V

    .line 4813
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 4809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4816
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_3

    .line 4817
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 4818
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 4819
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 4816
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4822
    :cond_3
    return-void
.end method

.method private setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "areaInfo"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1606
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 1607
    .local v2, "location":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v2, :cond_0

    .line 1608
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 1609
    .local v1, "lac":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 1610
    rem-int/lit8 v0, v1, 0x64

    .line 1611
    .local v0, "areaCode":I
    sget-object v4, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->sCodeToState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1612
    .local v3, "state":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1613
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1620
    .end local v0    # "areaCode":I
    .end local v1    # "lac":I
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setCarrierText()V
    .locals 5

    .prologue
    .line 1168
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID1:I

    aget-object v0, v3, v4

    .line 1169
    .local v0, "carrierName":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v1, v3, :cond_0

    .line 1170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1173
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1174
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1175
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1176
    .local v2, "v":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1179
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1180
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1181
    .restart local v2    # "v":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1185
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private setCurrentSimSlotIcon()V
    .locals 0

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon_Other()V

    .line 4609
    return-void
.end method

.method private setCurrentSimSlotIcon_Other()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4612
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v1

    .line 4613
    .local v1, "numberOfSim":I
    const/4 v2, -0x1

    .line 4617
    .local v2, "simIconIndex":I
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v3, v4, :cond_4

    .line 4620
    :cond_0
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon setIcon: invisible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4621
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 4622
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 4682
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-ne v3, v5, :cond_8

    .line 4683
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 4688
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v3, :cond_3

    .line 4689
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 4690
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon ReadySim =0::invisible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4691
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 4693
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4694
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4695
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon ReadySim =0::invisible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4696
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 4700
    :cond_3
    return-void

    .line 4623
    :cond_4
    if-ne v1, v5, :cond_6

    .line 4624
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4626
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon for SIM 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4627
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 4632
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 4636
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_0

    .line 4637
    :cond_5
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4639
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon for SIM 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 4645
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 4649
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_0

    .line 4651
    :cond_6
    if-ne v1, v4, :cond_1

    .line 4652
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCurrentSimSlot()I

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v3

    if-eqz v3, :cond_7

    .line 4653
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 4658
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 4662
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 4676
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v3, :cond_1

    .line 4677
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 4676
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4664
    .end local v0    # "i":I
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 4669
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 4673
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_2

    .line 4685
    :cond_8
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto/16 :goto_1
.end method

.method private setSimIconIndex(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "simId"    # I

    .prologue
    .line 4588
    if-nez p2, :cond_1

    .line 4589
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim1Icon:I

    .line 4593
    :cond_0
    :goto_0
    return-void

    .line 4590
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4591
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim2Icon:I

    goto :goto_0
.end method

.method private showDatakeyPopup()V
    .locals 4

    .prologue
    .line 5060
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataKeyDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 5061
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5062
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0635

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5063
    const v2, 0x7f0b0636

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5064
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5065
    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5073
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 5074
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 5075
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5076
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataKeyDialog:Landroid/app/AlertDialog;

    .line 5078
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 603
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    :cond_1
    return-void
.end method

.method private final updateCMCCDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const v2, 0x7f0b030a

    .line 1919
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1921
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateCMCCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1952
    :goto_0
    :pswitch_0
    return-void

    .line 1928
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1929
    :cond_0
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1931
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0203ef

    aput v1, v0, p1

    .line 1936
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1933
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1934
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f020421

    aput v1, v0, p1

    goto :goto_1

    .line 1940
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1941
    :cond_2
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1943
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0203f7

    aput v1, v0, p1

    .line 1948
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1945
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1946
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f020422

    aput v1, v0, p1

    goto :goto_2

    .line 1923
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateCTCDataNetType(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const v4, 0x7f0b030d

    const v2, 0x7f0203eb

    const v3, 0x7f0203ed

    .line 1974
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1976
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateCTCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 2021
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p1

    const v1, 0x7f02041d

    if-ne v0, v1, :cond_1

    .line 2022
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 2024
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 2025
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 2027
    :cond_2
    return-void

    .line 1980
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1981
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 1982
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b030f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1987
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1988
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1992
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v2, v0, p1

    .line 1994
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1989
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    goto :goto_1

    .line 1998
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1999
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2003
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v2, v0, p1

    .line 2005
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 2000
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    goto :goto_2

    .line 2012
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2013
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2014
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0203ef

    aput v1, v0, p1

    .line 2015
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b030a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 1978
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private final updateCUDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1955
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1957
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateCUDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1967
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 1971
    :cond_0
    return-void

    .line 1961
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f020401

    aput v1, v0, p1

    .line 1962
    const v0, 0x7f020463

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1963
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b030c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1959
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateCarrierText(I)V
    .locals 4
    .param p1, "sub"    # I

    .prologue
    .line 1125
    const/4 v0, 0x0

    .line 1126
    .local v0, "textResId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 1162
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 1165
    :cond_0
    return-void

    .line 1130
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierText for sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    sget-object v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$3;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1147
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    goto :goto_0

    .line 1133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final updateDataIcon(I)V
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2466
    const/4 v1, 0x0

    .line 2467
    .local v1, "iconId":I
    const/4 v2, 0x1

    .line 2468
    .local v2, "visible":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2478
    .local v0, "dataSub":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    .line 2479
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v3, :cond_0

    .line 2480
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 2481
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    .line 2484
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2485
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-nez v3, :cond_1

    .line 2487
    const/4 v2, 0x0

    .line 2491
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_6

    .line 2493
    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSim:Z

    .line 2494
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-ne v3, v7, :cond_5

    .line 2495
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v3, v3, p1

    packed-switch v3, :pswitch_data_0

    .line 2506
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v5

    .line 2509
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aput v1, v3, p1

    .line 2554
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 2555
    const/4 v2, 0x0

    .line 2558
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aput v1, v3, p1

    .line 2559
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aput v1, v3, p1

    .line 2560
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aput-boolean v2, v3, p1

    .line 2561
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataConnected:Z

    .line 2563
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon when mMSimDataConnected["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mMSimMobileActivityIconId["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, " CDMA "

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mMSimState= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " dataSub = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    return-void

    .line 2497
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2498
    goto :goto_0

    .line 2500
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 2501
    goto/16 :goto_0

    .line 2503
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 2504
    goto/16 :goto_0

    .line 2511
    :cond_5
    const/4 v1, 0x0

    .line 2512
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2515
    :cond_6
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "updateDataIcon no sim"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSim:Z

    .line 2518
    const/4 v1, 0x0

    .line 2519
    const/4 v2, 0x0

    .line 2522
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNoSIMNotification()V

    .line 2524
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, v5

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, v6

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_3

    .line 2526
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 2527
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v3, v5

    .line 2528
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v3, v6

    goto/16 :goto_1

    .line 2533
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-ne v3, v7, :cond_8

    .line 2534
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v3, v3, p1

    packed-switch v3, :pswitch_data_1

    .line 2546
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v5

    .line 2547
    goto/16 :goto_1

    .line 2536
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2537
    goto/16 :goto_1

    .line 2539
    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 2540
    goto/16 :goto_1

    .line 2542
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 2543
    goto/16 :goto_1

    .line 2550
    :cond_8
    const/4 v1, 0x0

    .line 2551
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2563
    :cond_9
    const-string v3, " GSM : "

    goto/16 :goto_2

    .line 2495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2534
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateDataKeyState()V
    .locals 15

    .prologue
    .line 4889
    const/4 v8, 0x0

    .line 4890
    .local v8, "syncStatus":Z
    const/4 v2, 0x0

    .line 4891
    .local v2, "dataStatus":Z
    const/4 v3, 0x0

    .line 4892
    .local v3, "gpsStatus":Z
    const/4 v9, 0x0

    .line 4893
    .local v9, "wifiStatus":Z
    const/4 v0, 0x0

    .line 4895
    .local v0, "btStatus":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 4896
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 4898
    .local v6, "onOff":Z
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v10

    if-nez v10, :cond_1

    .line 5056
    :cond_0
    :goto_0
    return-void

    .line 4902
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 4903
    .local v5, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 4906
    .local v4, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    const/4 v1, 0x1

    .line 4907
    .local v1, "conStatus":Z
    :goto_1
    if-eqz v5, :cond_2

    .line 4908
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v8, 0x1

    .line 4910
    :goto_2
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v10, :cond_c

    .line 4911
    const/4 v2, 0x0

    .line 4916
    :cond_2
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "gps"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 4917
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_e

    const/4 v9, 0x1

    .line 4918
    :goto_4
    if-eqz v4, :cond_3

    .line 4919
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v10

    const/16 v11, 0xc

    if-ne v10, v11, :cond_f

    const/4 v0, 0x1

    .line 4922
    :cond_3
    :goto_5
    const-string v10, "StatusBar.MSimNetworkController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "conStatus:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  dataStatus:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  wifiStatus:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  gpsStatus:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4925
    if-nez v8, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v9, :cond_4

    if-eqz v0, :cond_19

    .line 4926
    :cond_4
    const/4 v1, 0x1

    .line 4927
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_mode"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4928
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "connectivity_sync_status"

    if-eqz v8, :cond_10

    const/4 v10, 0x1

    :goto_6
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4929
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "connectivity_data_status"

    if-eqz v2, :cond_11

    const/4 v10, 0x1

    :goto_7
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4930
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "connectivity_gps_status"

    if-eqz v3, :cond_12

    const/4 v10, 0x1

    :goto_8
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4931
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "connectivity_wifi_status"

    if-eqz v9, :cond_13

    const/4 v10, 0x1

    :goto_9
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4932
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "connectivity_bt_status"

    if-eqz v0, :cond_14

    const/4 v10, 0x1

    :goto_a
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4934
    if-eqz v9, :cond_5

    .line 4935
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 4936
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0445

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4937
    const/4 v6, 0x1

    .line 4939
    :cond_5
    if-eqz v0, :cond_6

    .line 4940
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 4941
    if-eqz v6, :cond_15

    .line 4942
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4946
    :goto_b
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0446

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4949
    :cond_6
    if-eqz v2, :cond_7

    .line 4950
    if-eqz v5, :cond_7

    .line 4951
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 4953
    if-eqz v6, :cond_16

    .line 4954
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4958
    :goto_c
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0632

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4962
    :cond_7
    if-eqz v3, :cond_8

    .line 4963
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "gps"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 4965
    if-eqz v6, :cond_17

    .line 4966
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4970
    :goto_d
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0447

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4973
    :cond_8
    if-eqz v8, :cond_9

    .line 4974
    const/4 v10, 0x0

    invoke-static {v10}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 4975
    if-eqz v6, :cond_18

    .line 4976
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4980
    :goto_e
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0460

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4982
    :cond_9
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v12, 0x7f0b0633

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4906
    .end local v1    # "conStatus":Z
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 4908
    .restart local v1    # "conStatus":Z
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 4913
    :cond_c
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimStateNotReady()Z

    move-result v10

    if-nez v10, :cond_d

    const/4 v2, 0x1

    :goto_f
    goto/16 :goto_3

    :cond_d
    const/4 v2, 0x0

    goto :goto_f

    .line 4917
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 4919
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 4928
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 4929
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 4930
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 4931
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_9

    .line 4932
    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 4944
    :cond_15
    const/4 v6, 0x1

    goto/16 :goto_b

    .line 4956
    :cond_16
    const/4 v6, 0x1

    goto/16 :goto_c

    .line 4968
    :cond_17
    const/4 v6, 0x1

    goto :goto_d

    .line 4978
    :cond_18
    const/4 v6, 0x1

    goto :goto_e

    .line 4984
    :cond_19
    const/4 v1, 0x0

    .line 4985
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    .line 4986
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_wifi_status"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1a

    .line 4987
    if-nez v9, :cond_1a

    .line 4988
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 4989
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0445

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4990
    const/4 v6, 0x1

    .line 4993
    :cond_1a
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_bt_status"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1b

    .line 4994
    if-nez v0, :cond_1b

    .line 4995
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 4996
    if-eqz v6, :cond_20

    .line 4997
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5001
    :goto_10
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0446

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5004
    :cond_1b
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_data_status"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1c

    .line 5005
    if-eqz v5, :cond_1c

    .line 5006
    if-nez v2, :cond_1c

    .line 5007
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 5009
    if-eqz v6, :cond_21

    .line 5010
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5014
    :goto_11
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0632

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5019
    :cond_1c
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_gps_status"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1d

    .line 5020
    if-nez v3, :cond_1d

    .line 5021
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "gps"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 5023
    if-eqz v6, :cond_22

    .line 5024
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5028
    :goto_12
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0447

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5032
    :cond_1d
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_sync_status"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    .line 5033
    if-eqz v5, :cond_1f

    .line 5034
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v10

    if-nez v10, :cond_1e

    .line 5035
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 5037
    :cond_1e
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v10

    if-nez v10, :cond_1f

    .line 5038
    const/4 v10, 0x1

    invoke-static {v10}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 5039
    if-eqz v6, :cond_23

    .line 5040
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5044
    :goto_13
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0460

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5049
    :cond_1f
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5050
    if-eqz v6, :cond_24

    .line 5051
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v12, 0x7f0b0634

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4999
    :cond_20
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 5012
    :cond_21
    const/4 v6, 0x1

    goto/16 :goto_11

    .line 5026
    :cond_22
    const/4 v6, 0x1

    goto :goto_12

    .line 5042
    :cond_23
    const/4 v6, 0x1

    goto :goto_13

    .line 5053
    :cond_24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->showDatakeyPopup()V

    goto/16 :goto_0
.end method

.method private final updateDataNetType(I)V
    .locals 11
    .param p1, "phoneId"    # I

    .prologue
    const v10, 0x7f020460

    const v9, 0x7f0b030b

    const v8, 0x7f0b0309

    const v7, 0x7f02045d

    const v6, 0x7f0203ef

    .line 2119
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2126
    .local v0, "dataSub":I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2127
    .local v1, "mBackUpNwboosterDataTypeIconId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v3, v3, p1

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 2128
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v3, :cond_2

    .line 2130
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2131
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f02043b

    aput v4, v3, p1

    .line 2132
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2133
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2137
    iput v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2409
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v3, :cond_1

    if-eq p1, v0, :cond_1

    .line 2410
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2415
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRoamingIcon(I)V

    .line 2417
    return-void

    .line 2140
    :cond_2
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v3, :cond_3

    .line 2141
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 2143
    :cond_3
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataNetType sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDataNetType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    packed-switch v3, :pswitch_data_0

    .line 2398
    :pswitch_0
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataNetType unknown radio:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 2401
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2404
    const v3, 0x7f020470

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 2148
    :pswitch_1
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "updateDataNetType NETWORK_TYPE_UNKNOWN"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v3, :cond_4

    .line 2151
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2152
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 2153
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2154
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0306

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2158
    const v3, 0x7f020470

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2165
    :cond_4
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v3, :cond_5

    .line 2166
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2167
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f02041b

    aput v4, v3, p1

    .line 2169
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2170
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0b030f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2174
    const v3, 0x7f020467

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2182
    :cond_5
    :pswitch_3
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2183
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v6, v3, p1

    .line 2184
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2185
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2189
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2196
    :pswitch_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v3, :cond_6

    .line 2197
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2198
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f020421

    aput v4, v3, p1

    .line 2200
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2201
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0b030a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2205
    const v3, 0x7f020469

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2209
    :cond_6
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2210
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v6, v3, p1

    .line 2212
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2213
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2217
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2223
    :pswitch_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v3, :cond_7

    .line 2224
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2225
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f020422

    aput v4, v3, p1

    .line 2226
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0b030a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2229
    const v3, 0x7f02046a

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2231
    :cond_7
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2232
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v6, v3, p1

    .line 2233
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2236
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2242
    :pswitch_6
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2243
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f0203eb

    aput v4, v3, p1

    .line 2245
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2246
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0b030d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2250
    const v3, 0x7f02045b

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2254
    :pswitch_7
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2255
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f0203eb

    aput v4, v3, p1

    .line 2257
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2258
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0b030d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2262
    const v3, 0x7f02045b

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2270
    :pswitch_8
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2271
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v6, v3, p1

    .line 2273
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2274
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2278
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2285
    :pswitch_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->ATO:Z

    if-eqz v3, :cond_9

    .line 2286
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 2287
    .local v2, "show4GforLTE_ATO":Z
    if-eqz v2, :cond_8

    .line 2288
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "show4GforLTE_ATO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2290
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f0203fa

    aput v4, v3, p1

    .line 2291
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2292
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2296
    iput v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2355
    .end local v2    # "show4GforLTE_ATO":Z
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUse4_5GIconForLTE:Z

    if-eqz v3, :cond_0

    .line 2356
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f02043a

    aput v4, v3, p1

    .line 2357
    const v3, 0x7f02049b

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2299
    .restart local v2    # "show4GforLTE_ATO":Z
    :cond_8
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "showLTE_ATO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2301
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f020424

    aput v4, v3, p1

    .line 2302
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2303
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0b030c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2307
    const v3, 0x7f02046b

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_1

    .line 2311
    .end local v2    # "show4GforLTE_ATO":Z
    :cond_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShow4GforLTE:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIndianOperator:[Lcom/android/systemui/statusbar/Feature$IndianOperators;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/systemui/statusbar/Feature$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/Feature$IndianOperators;

    if-eq v3, v4, :cond_c

    .line 2312
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    if-nez v3, :cond_a

    const-string v3, "1"

    const-string v4, "ril.lte_wideband"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2313
    :cond_a
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "LTE_WIDE_BAND!@!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2315
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f020405

    aput v4, v3, p1

    .line 2316
    const v3, 0x7f020464

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2317
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    goto/16 :goto_1

    .line 2321
    :cond_b
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2322
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f0203fa

    aput v4, v3, p1

    .line 2323
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2324
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2328
    iput v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_1

    .line 2333
    :cond_c
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    if-nez v3, :cond_d

    const-string v3, "1"

    const-string v4, "ril.lte_wideband"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2334
    :cond_d
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "LTE_WIDE_BAND!@!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2336
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f020427

    aput v4, v3, p1

    .line 2337
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0b030c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2341
    const v3, 0x7f02046e

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_1

    .line 2344
    :cond_e
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2345
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f020424

    aput v4, v3, p1

    .line 2346
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2347
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0b030c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2351
    const v3, 0x7f02046b

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_1

    .line 2361
    :pswitch_a
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v3, :cond_f

    .line 2362
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2363
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f02041d

    aput v4, v3, p1

    .line 2365
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2366
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0306

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2370
    const v3, 0x7f020468

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2374
    :cond_f
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2375
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v6, v3, p1

    .line 2377
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2378
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 2382
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2387
    :pswitch_b
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NETWORK_TYPE_HSPAP mIndianOperator["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIndianOperator:[Lcom/android/systemui/statusbar/Feature$IndianOperators;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIndianOperator:[Lcom/android/systemui/statusbar/Feature$IndianOperators;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/systemui/statusbar/Feature$IndianOperators;->AIRTEL:Lcom/android/systemui/statusbar/Feature$IndianOperators;

    if-ne v3, v4, :cond_0

    .line 2389
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2390
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f0203fa

    aput v4, v3, p1

    .line 2391
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDataTypeIconId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeIconId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iput v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2393
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    goto/16 :goto_0

    .line 2145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private updateDualSimUiBySettings(ILjava/lang/String;)V
    .locals 4
    .param p1, "simId"    # I
    .param p2, "imageIndex"    # Ljava/lang/String;

    .prologue
    .line 4510
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4511
    :cond_0
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageIndex NULL return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4518
    :goto_0
    return-void

    .line 4514
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4515
    .local v0, "iconIndex":I
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setSimIconIndex(II)V

    .line 4517
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    goto :goto_0
.end method

.method private final updateIUSDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 2091
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 2094
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIUSDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 2097
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2098
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f020424

    aput v1, v0, p1

    .line 2099
    const v0, 0x7f02046b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b030c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 2115
    :cond_0
    :goto_0
    return-void

    .line 2101
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 2102
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0203fa

    aput v1, v0, p1

    .line 2104
    const v0, 0x7f020460

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b030b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 2106
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2110
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0203ef

    aput v1, v0, p1

    .line 2112
    const v0, 0x7f02045d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0309

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method private updateIconSet(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    .line 2445
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v7

    .line 2447
    .local v7, "voiceNetorkType":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v6

    .line 2448
    .local v6, "dataNetorkType":I
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, voice network type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data network type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    if-nez v6, :cond_0

    move v1, v7

    .line 2456
    .local v1, "chosenNetworkType":I
    :goto_0
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, chosenNetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hspaDataDistinguishable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hspapDistinguishable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showAtLeastThreeGees="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShow4GforLTE:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->updateDataType(IIZZZI)V

    .line 2463
    return-void

    .end local v1    # "chosenNetworkType":I
    :cond_0
    move v1, v6

    .line 2453
    goto :goto_0
.end method

.method private final updateLTEICONDataNetType(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const v3, 0x7f0b030c

    .line 2035
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 2038
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLTEICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 2041
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2042
    :cond_0
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2044
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f020427

    aput v1, v0, p1

    .line 2045
    const v0, 0x7f02046e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2046
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 2059
    :cond_1
    :goto_0
    return-void

    .line 2050
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2051
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f020424

    aput v1, v0, p1

    .line 2052
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2053
    const v0, 0x7f02046b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2054
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method private updateNoSIMNotification()V
    .locals 14

    .prologue
    .line 3677
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mDoNotShowNoSimNotification:Z

    if-eqz v10, :cond_1

    .line 3745
    :cond_0
    :goto_0
    return-void

    .line 3681
    :cond_1
    const-string v10, "ro.config.donot_nosim"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3682
    const-string v10, "StatusBar.MSimNetworkController"

    const-string v11, "Don\'t show No SIM Notification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3686
    :cond_2
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-nez v10, :cond_0

    .line 3690
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 3693
    .local v4, "numPhones":I
    const/4 v2, 0x1

    .line 3694
    .local v2, "isNoSim":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 3695
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v10, v10, v1

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v10, v11, :cond_4

    .line 3696
    const/4 v2, 0x0

    .line 3702
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 3704
    .local v3, "mgr":Landroid/app/NotificationManager;
    if-nez v2, :cond_5

    .line 3705
    const/16 v10, 0x111

    invoke-virtual {v3, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 3694
    .end local v3    # "mgr":Landroid/app/NotificationManager;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3707
    .restart local v3    # "mgr":Landroid/app/NotificationManager;
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3710
    .local v5, "res":Landroid/content/res/Resources;
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v10, :cond_7

    .line 3711
    const v10, 0x7f0b0546

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3719
    .local v9, "title":Ljava/lang/String;
    :goto_2
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v10, :cond_9

    .line 3720
    const v10, 0x7f0b0548

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3725
    .local v8, "text":Ljava/lang/String;
    :goto_3
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x7f020494

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3733
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v10, :cond_6

    .line 3734
    const v10, 0x7f020499

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3736
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SIM_TYPE_POPUP"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3737
    .local v6, "resultIntent":Landroid/content/Intent;
    const-string v10, "SIM_TYPE"

    const-string v11, "NO_SIM"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3738
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x8000000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 3740
    .local v7, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3743
    .end local v6    # "resultIntent":Landroid/content/Intent;
    .end local v7    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_6
    const/16 v10, 0x111

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 3712
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_7
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mNoSIMNotificationForTMO:Z

    if-eqz v10, :cond_8

    .line 3713
    const v10, 0x7f0b0545

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "title":Ljava/lang/String;
    goto :goto_2

    .line 3715
    .end local v9    # "title":Ljava/lang/String;
    :cond_8
    const v10, 0x7f0b0544

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "title":Ljava/lang/String;
    goto :goto_2

    .line 3722
    :cond_9
    const v10, 0x7f0b0547

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_3
.end method

.method private final updateSimIcon(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 2436
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon card ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const v1, 0x7f02014f

    aput v1, v0, p1

    .line 2442
    :goto_0
    return-void

    .line 2440
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    goto :goto_0
.end method

.method private final updateTFGDataNetType(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v5, 0x3

    .line 2061
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 2064
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTFGDataNetType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2068
    .local v1, "sNetworkOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_1

    .line 2089
    :cond_0
    :goto_0
    return-void

    .line 2071
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2073
    .local v0, "NetworkSubstring":Ljava/lang/String;
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkSubstring:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 2077
    const-string v2, "334"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "716"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "734"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "704"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "706"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "748"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "740"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "714"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2078
    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2079
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f020424

    aput v3, v2, p1

    .line 2080
    const v2, 0x7f02046b

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2081
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0b030c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2083
    :cond_3
    const-string v2, "730"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    if-nez v2, :cond_4

    const-string v2, "1"

    const-string v3, "ril.lte_wideband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2084
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f02043a

    aput v3, v2, p1

    .line 2085
    const v2, 0x7f02049b

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 12
    .param p1, "phoneId"    # I

    .prologue
    const v11, 0x7f02016b

    const/4 v10, 0x1

    const v9, 0x7f02078b

    const/4 v8, 0x0

    .line 1765
    if-nez p1, :cond_1

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v4

    .line 1767
    .local v4, "simActive":I
    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1769
    .local v0, "dataSub":I
    if-nez v4, :cond_2

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1770
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v9, v5, p1

    .line 1771
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v9, v5, p1

    .line 1772
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    .line 1916
    :cond_0
    :goto_1
    return-void

    .line 1765
    .end local v0    # "dataSub":I
    .end local v4    # "simActive":I
    :cond_1
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v4

    goto :goto_0

    .line 1775
    .restart local v0    # "dataSub":I
    .restart local v4    # "simActive":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v5, v5, p1

    if-eqz v5, :cond_5

    .line 1777
    const-string v5, "StatusBar.MSimNetworkController"

    const-string v6, " No service"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v9, v5, p1

    .line 1779
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v9, v5, p1

    .line 1794
    if-ne p1, v0, :cond_3

    .line 1795
    iput v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1797
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    .line 1799
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1800
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRssiTypeIconCTC(I)V

    goto :goto_1

    .line 1803
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, p1

    if-nez v5, :cond_a

    .line 1805
    :cond_6
    const-string v6, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Null object, mMSimSignalStrength= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mMSimServiceState "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, p1

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, p1

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v9, v5, p1

    .line 1810
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v9, v5, p1

    .line 1811
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1813
    if-ne p1, v0, :cond_7

    .line 1814
    iput v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1816
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    goto/16 :goto_1

    .line 1805
    :cond_8
    const-string v5, " null "

    goto :goto_2

    :cond_9
    const-string v5, " null "

    goto :goto_3

    .line 1820
    :cond_a
    const/4 v3, 0x0

    .line 1821
    .local v3, "psIconLevel":I
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v5, :cond_d

    .line 1822
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    .local v1, "iconLevel":I
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 1823
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAlwaysShowCdmaRssi= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " set to cdmaLevel= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " instead of level= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCurrentSimSlot()I

    move-result v5

    if-ne v5, p1, :cond_e

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v5

    if-eqz v5, :cond_e

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v5

    if-eqz v5, :cond_e

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMLockedOfSlot(I)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1845
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v10, v5, p1

    .line 1855
    :goto_5
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v1, v5, :cond_f

    .line 1856
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too high"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 1864
    :cond_b
    :goto_6
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneSignalIconList(II)[I

    move-result-object v2

    .line 1881
    .local v2, "iconList":[I
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1882
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRssiTypeIconCTC(I)V

    .line 1883
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1884
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCdmaPhoneSignalIconId(I)I

    move-result v6

    aput v6, v5, p1

    .line 1885
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1887
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v6, v6, p1

    aput v6, v5, p1

    .line 1913
    :goto_7
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength: iconLevel= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1840
    .end local v1    # "iconLevel":I
    .end local v2    # "iconList":[I
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    .restart local v1    # "iconLevel":I
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    goto/16 :goto_4

    .line 1847
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    goto/16 :goto_5

    .line 1859
    :cond_f
    if-gez v1, :cond_b

    .line 1860
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too low"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    goto/16 :goto_6

    .line 1889
    .restart local v2    # "iconList":[I
    :cond_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v6, v2, v1

    aput v6, v5, p1

    .line 1890
    if-ne p1, v0, :cond_11

    .line 1891
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v5, v5, v6

    aget v5, v5, v1

    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1894
    :cond_11
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1896
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v6, v1, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataSignalIconId(III)I

    move-result v6

    aput v6, v5, p1

    goto/16 :goto_7

    .line 1899
    :cond_12
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v6, v2, v1

    aput v6, v5, p1

    .line 1900
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1902
    if-ne p1, v0, :cond_13

    .line 1903
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v5, v5, v6

    aget v5, v5, v1

    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1909
    :cond_13
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v6, v1, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataSignalIconId(III)I

    move-result v6

    aput v6, v5, p1

    goto/16 :goto_7
.end method

.method private final updateZVVLACInfo(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 816
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 819
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 834
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowLAC:[Z

    aput-boolean v0, v1, p1

    .line 836
    :goto_0
    return-void

    .line 831
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowLAC:[Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEmergencyOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    aput-boolean v0, v1, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 819
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;

    .prologue
    .line 611
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 613
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_0
    return-void
.end method

.method public addSubsLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 504
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 505
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    .line 506
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 507
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 508
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 509
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 511
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkController for SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3517
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3520
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3521
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3522
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3523
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3524
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3525
    const-string v0, "  mMSimDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3526
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3527
    const-string v0, "  mMSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3528
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3529
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3530
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3531
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3532
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3533
    const-string v0, "  mSeperatedDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3534
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3535
    const-string v0, "  mMSimDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3536
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3537
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3538
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3539
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3540
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3541
    const-string v0, "  mSeperatedDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3542
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3543
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3544
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p4

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3545
    const-string v0, "  mMSimServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3546
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3547
    const-string v0, "  mMSimSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3548
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3549
    const-string v0, "  mLastSignalLevel"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3550
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3551
    const-string v0, "  mMSimNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3552
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3553
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3554
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3555
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3556
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3557
    const-string v0, "  mMSimPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3559
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3560
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3561
    const-string v0, "  mRssiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3562
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3563
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3565
    const-string v0, "  mMSimDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3566
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3567
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3568
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3569
    const-string v0, "  mMSimDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3570
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3571
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3572
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3573
    const-string v0, "  mMSimDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3574
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3575
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3576
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3577
    const-string v0, " mCurrentSimSlot= "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3578
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3579
    const-string v0, " mSimFocus = "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3580
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3581
    const-string v0, " mRoamingIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3582
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3583
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3586
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3587
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3588
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3589
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3590
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3591
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3592
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3593
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3594
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3595
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3596
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3597
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3599
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3600
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3601
    const-string v0, "mDataStateDual ="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3602
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3604
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 3605
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3606
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3607
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3608
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3609
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3611
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3612
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3613
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3616
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3618
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3620
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3621
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3622
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3624
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3625
    const-string v0, "  mMSimLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3626
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3627
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3628
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3629
    const-string v0, "  mMSimLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3630
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3631
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3632
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3633
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3634
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3635
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3636
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3637
    const-string v0, "  mMSimLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3638
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3639
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3640
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3641
    const-string v0, "  mMSimLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3642
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3643
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3644
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3645
    const-string v0, "  mMSimLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3646
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3647
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3648
    return-void

    .line 3517
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public getDataNetworkType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 3502
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 3503
    const/4 v0, 0x0

    .line 3505
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method protected getDataSignalIconId(III)I
    .locals 3
    .param p1, "inetCondition"    # I
    .param p2, "iconLevel"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 4832
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 4851
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 4853
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 4834
    .end local v0    # "iconId":I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4835
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_CTC:[I

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4837
    .end local v0    # "iconId":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_2

    .line 4838
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4840
    .end local v0    # "iconId":I
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 4843
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4845
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 4846
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4848
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 4849
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4832
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getGsmSignalLevel(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 3509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 3510
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    const/4 v0, 0x0

    .line 3512
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0
.end method

.method public getNumberOfSim()I
    .locals 3

    .prologue
    .line 4522
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 4523
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_0

    .line 4524
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 4529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getPhoneSignalIconList(II)[I
    .locals 3
    .param p1, "inetCondition"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 2643
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 2662
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2664
    .local v0, "iconList":[I
    :goto_0
    return-object v0

    .line 2645
    .end local v0    # "iconList":[I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2646
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 2648
    .end local v0    # "iconList":[I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_2

    .line 2649
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 2651
    .end local v0    # "iconList":[I
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2654
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 2656
    .end local v0    # "iconList":[I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2657
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 2659
    .end local v0    # "iconList":[I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2660
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 2643
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getReadySimCount()I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 4746
    const/4 v2, 0x0

    .line 4747
    .local v2, "count":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsDGGDuos:Z

    if-eqz v7, :cond_5

    .line 4748
    :cond_0
    new-array v3, v10, [I

    .line 4749
    .local v3, "phone_on":[I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v6

    .line 4750
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v9

    .line 4751
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9,9"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4752
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4753
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v7, v0

    if-eq v7, v10, :cond_1

    .line 4775
    .end local v0    # "cardStatusSlot":[Ljava/lang/String;
    .end local v1    # "cardStatusTemp":Ljava/lang/String;
    .end local v3    # "phone_on":[I
    :goto_0
    return v6

    .line 4755
    .restart local v0    # "cardStatusSlot":[Ljava/lang/String;
    .restart local v1    # "cardStatusTemp":Ljava/lang/String;
    .restart local v3    # "phone_on":[I
    :cond_1
    const/4 v5, 0x0

    .local v5, "sub":I
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v5, v6, :cond_4

    .line 4756
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v6, :cond_3

    .line 4757
    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->hasSlotSwiching()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4758
    add-int/lit8 v2, v2, 0x1

    .line 4755
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4761
    :cond_3
    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget v6, v3, v5

    if-ne v6, v9, :cond_2

    .line 4762
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v6, v2

    .line 4766
    goto :goto_0

    .line 4768
    .end local v0    # "cardStatusSlot":[Ljava/lang/String;
    .end local v1    # "cardStatusTemp":Ljava/lang/String;
    .end local v3    # "phone_on":[I
    .end local v5    # "sub":I
    :cond_5
    const-string v4, "NOT_READY"

    .line 4769
    .local v4, "simState":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "sub":I
    :goto_3
    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v5, v6, :cond_7

    .line 4770
    const-string v6, "gsm.sim.state"

    const-string v7, "NOT_READY"

    invoke-direct {p0, v6, v5, v7}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4771
    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4772
    add-int/lit8 v2, v2, 0x1

    .line 4769
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    move v6, v2

    .line 4775
    goto :goto_0
.end method

.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 11

    .prologue
    .line 4470
    const-string v0, "/sys/class/sec/slot_switch/slot_sel"

    .line 4471
    .local v0, "FILE_PATH":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4472
    .local v4, "fileReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 4473
    .local v6, "in":Ljava/io/BufferedReader;
    const-string v1, "0"

    .line 4475
    .local v1, "current_slot":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4476
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4477
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4478
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v5, "fileReader":Ljava/io/FileReader;
    if-eqz v5, :cond_4

    .line 4479
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4480
    .end local v6    # "in":Ljava/io/BufferedReader;
    .local v7, "in":Ljava/io/BufferedReader;
    if-eqz v7, :cond_3

    .line 4481
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 4495
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 4496
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4501
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 4502
    const-string v1, "0"

    .line 4505
    :cond_2
    return-object v1

    .line 4483
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    const-string v8, "StatusBar.MSimNetworkController"

    const-string v9, "in == null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 4486
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :cond_4
    :try_start_5
    const-string v8, "StatusBar.MSimNetworkController"

    const-string v9, "fileReader == null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 4497
    :catch_0
    move-exception v2

    .line 4498
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "StatusBar.MSimNetworkController"

    const-string v9, "File close error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4490
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 4491
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string v8, "StatusBar.MSimNetworkController"

    const-string v9, "File open error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    const-string v1, "0"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4495
    if-eqz v6, :cond_1

    .line 4496
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 4497
    :catch_2
    move-exception v2

    .line 4498
    const-string v8, "StatusBar.MSimNetworkController"

    const-string v9, "File close error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4494
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 4495
    :goto_3
    if-eqz v6, :cond_5

    .line 4496
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 4499
    :cond_5
    :goto_4
    throw v8

    .line 4497
    :catch_3
    move-exception v2

    .line 4498
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "StatusBar.MSimNetworkController"

    const-string v10, "File close error"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4494
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 4490
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method public getVoiceNetworkType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 3495
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 3496
    const/4 v0, 0x0

    .line 3498
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method isCdmaEri(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x1

    .line 2420
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v3, v3, p1

    if-nez v3, :cond_2

    .line 2423
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 2424
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 2425
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 2426
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 2432
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFlightModePossible()Z
    .locals 5

    .prologue
    .line 4339
    const/4 v0, 0x0

    .line 4340
    .local v0, "flightModePossible":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v2, :cond_2

    .line 4341
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 4343
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4345
    :cond_0
    const/4 v0, 0x1

    .line 4341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4347
    :cond_1
    const/4 v0, 0x0

    .line 4348
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flightModePossible=false : mSim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":mServiceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simHasService()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isEmergencyOnly()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 841
    .local v11, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.samsung.intent.action.WIFI_CAPTIVE_NOT_LOGIN"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 845
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 846
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 1118
    :cond_1
    :goto_0
    return-void

    .line 847
    :cond_2
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 848
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "onReceive() - ACTION_SIM_STATE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimState(Landroid/content/Intent;)V

    .line 850
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 851
    const/16 v22, 0x0

    .local v22, "sub":I
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    .line 852
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 853
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCmccCard(I)Z

    move-result v4

    aput-boolean v4, v3, v22

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCard(I)Z

    move-result v4

    aput-boolean v4, v3, v22

    .line 851
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 859
    .end local v22    # "sub":I
    :cond_3
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 860
    const-string v3, "subscription"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 861
    .local v23, "subId":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received SPN update on subId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 863
    .local v10, "phoneId":Ljava/lang/Integer;
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v3, :cond_4

    .line 864
    const-string v3, "phone"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 868
    :goto_2
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received SPN update on phoneId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 870
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "SPN_STRINGS_UPDATED broadcast with phone Id 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 866
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_2

    .line 873
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mEFSPN:[I

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "efspn"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v4

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "showSpn"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    aput-boolean v5, v3, v4

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "spn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "showPlmn"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    aput-boolean v5, v3, v4

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "plmn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-boolean v4, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-boolean v6, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v7, v3, v7

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 882
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 883
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 884
    .end local v10    # "phoneId":Ljava/lang/Integer;
    .end local v23    # "subId":I
    :cond_6
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 886
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateConnectivity(Landroid/content/Intent;)V

    .line 888
    const/16 v22, 0x0

    .restart local v22    # "sub":I
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    .line 889
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 888
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 891
    .end local v22    # "sub":I
    :cond_8
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 892
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 893
    :cond_9
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 894
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateAirplaneMode()V

    .line 895
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v14, v3, :cond_a

    .line 896
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIcon(I)V

    .line 897
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 899
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 895
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 902
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 903
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 904
    .end local v14    # "i":I
    :cond_b
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 907
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWimaxState(Landroid/content/Intent;)V

    .line 908
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 909
    :cond_d
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 910
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->unregisterPhoneStateListener()V

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 913
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 915
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 916
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 919
    :cond_e
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Sim Slot value after intent change  : : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlot(I)V

    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 924
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v14, v3, :cond_1

    .line 926
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCmccCard(I)Z

    move-result v4

    aput-boolean v4, v3, v14

    .line 928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCard(I)Z

    move-result v4

    aput-boolean v4, v3, v14

    .line 930
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 931
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 932
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 933
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 934
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 924
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 936
    .end local v14    # "i":I
    :cond_f
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateAirplaneMode()V

    .line 939
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNoSIMNotification()V

    .line 941
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "ACTION_LOCALE_CHANGED received"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v16

    .line 944
    .local v16, "numPhones":I
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_6
    move/from16 v0, v16

    if-ge v15, v0, :cond_11

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x1040277

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    .line 944
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 950
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x1040277

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    .line 952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLevel:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    .line 954
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 955
    .end local v15    # "k":I
    .end local v16    # "numPhones":I
    :cond_12
    const-string v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 956
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v20

    .line 957
    .local v20, "simId1":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() - ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED : simId1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlot(I)V

    .line 960
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 963
    const/16 v22, 0x0

    .restart local v22    # "sub":I
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    .line 964
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 963
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 966
    .end local v20    # "simId1":I
    .end local v22    # "sub":I
    :cond_13
    const-string v3, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 967
    const-string v3, "simcard_sim_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 968
    .local v19, "simId":I
    const-string v3, "simcard_sim_icon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 969
    .local v18, "simIconIndex":Ljava/lang/String;
    const-string v3, "simcard_sim_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 970
    .local v21, "simName":Ljava/lang/String;
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() - ACTION_SIM_MGT_CHANGED :  simId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",simIconIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",simName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (mCurrentSimSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDualSimUiBySettings(ILjava/lang/String;)V

    .line 974
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    move/from16 v0, v19

    if-eq v3, v0, :cond_14

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v3, :cond_1

    .line 975
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 977
    .end local v18    # "simIconIndex":Ljava/lang/String;
    .end local v19    # "simId":I
    .end local v21    # "simName":Ljava/lang/String;
    :cond_15
    const-string v3, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 980
    :cond_16
    const-string v3, "simcard_sim_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 981
    .restart local v19    # "simId":I
    const-string v3, "simcard_sim_activate"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 983
    .local v12, "activate":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() - ACTION_SIM_MGT_ACTIVATED_CHANGED : simId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",activate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 985
    const/4 v3, 0x1

    if-ne v12, v3, :cond_17

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v4, v3, v19

    .line 998
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 1001
    const/16 v22, 0x0

    .restart local v22    # "sub":I
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    .line 1002
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 1001
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 1006
    .end local v12    # "activate":I
    .end local v19    # "simId":I
    .end local v22    # "sub":I
    :cond_18
    const-string v3, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1007
    const-string v3, "caindicator"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1008
    const-string v3, "caindicator"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    .line 1009
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTE WIDEBAND with extra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    if-eqz v3, :cond_1e

    .line 1016
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v14, v3, :cond_1

    .line 1017
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v3, :cond_1b

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1016
    :cond_19
    :goto_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 1011
    .end local v14    # "i":I
    :cond_1a
    const-string v3, "ril.lte_wideband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1012
    .local v13, "currentBandwidth":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    .line 1013
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTE WIDEBAND without extra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1019
    .end local v13    # "currentBandwidth":Ljava/lang/String;
    .restart local v14    # "i":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v3, v3, v14

    const v4, 0x7f020424

    if-ne v3, v4, :cond_1c

    .line 1020
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "LTE WIDEBAND:LTE+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f020427

    aput v4, v3, v14

    .line 1022
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1023
    const v3, 0x7f02046e

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1024
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_b

    .line 1025
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v3, v3, v14

    const v4, 0x7f0203fa

    if-ne v3, v4, :cond_19

    .line 1026
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "LTE WIDEBAND:4G+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f020405

    aput v4, v3, v14

    .line 1028
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1029
    const v3, 0x7f020464

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1030
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mTFGCarrier:Z

    if-eqz v3, :cond_1d

    .line 1031
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    .line 1032
    .local v17, "sNetworkOperator":Ljava/lang/String;
    if-eqz v17, :cond_1d

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1d

    .line 1033
    const-string v3, "730"

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f02043a

    aput v4, v3, v14

    .line 1035
    const v3, 0x7f02049b

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1039
    .end local v17    # "sNetworkOperator":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_b

    .line 1043
    .end local v14    # "i":I
    :cond_1e
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v14, v3, :cond_1

    .line 1044
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v3, v3, v14

    const v4, 0x7f020427

    if-ne v3, v4, :cond_20

    .line 1045
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "LTE WIDEBAND:LTE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f020424

    aput v4, v3, v14

    .line 1047
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1048
    const v3, 0x7f02046b

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1049
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 1043
    :cond_1f
    :goto_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 1050
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v3, v3, v14

    const v4, 0x7f020405

    if-ne v3, v4, :cond_21

    .line 1051
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "LTE WIDEBAND:4G"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f0203fa

    aput v4, v3, v14

    .line 1053
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1054
    const v3, 0x7f020460

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1055
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_d

    .line 1056
    :cond_21
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mTFGCarrier:Z

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeIconId:I

    const v4, 0x7f02043a

    if-ne v3, v4, :cond_1f

    .line 1057
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "LTE WIDEBAND:4G"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f0203fa

    aput v4, v3, v14

    .line 1059
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1060
    const v3, 0x7f020460

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1061
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_d

    .line 1067
    .end local v14    # "i":I
    :cond_22
    const-string v3, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1068
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "onReceive() - ACTION_CURRENT_NETWORK"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const/16 v22, 0x0

    .restart local v22    # "sub":I
    :goto_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    .line 1070
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 1071
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 1069
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 1075
    .end local v22    # "sub":I
    :cond_23
    const-string v3, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1076
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "START_NETWORK_BOOSTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 1078
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 1079
    :cond_24
    const-string v3, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1080
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "STOP_NETWORK_BOOSTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 1082
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 1088
    :cond_25
    const-string v3, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1089
    const-string v3, "phone"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1091
    .local v10, "phoneId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v3, v3, v10

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v3, v3, v10

    const v4, 0x104028f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    aget-boolean v4, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v5, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    aget-boolean v6, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v7, v3, v10

    const/4 v8, 0x1

    const-string v3, "cbMsgBody"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 1094
    :cond_26
    const/16 v22, 0x0

    .restart local v22    # "sub":I
    :goto_f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    .line 1095
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 1094
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 1097
    .end local v10    # "phoneId":I
    .end local v22    # "sub":I
    :cond_27
    const-string v3, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1098
    const-string v3, "phone"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1099
    .restart local v10    # "phoneId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    aget-boolean v4, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v5, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    aget-boolean v6, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v7, v3, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 1100
    const/16 v22, 0x0

    .restart local v22    # "sub":I
    :goto_10
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    .line 1101
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 1100
    add-int/lit8 v22, v22, 0x1

    goto :goto_10

    .line 1104
    .end local v10    # "phoneId":I
    .end local v22    # "sub":I
    :cond_28
    const-string v3, "android.settings.DATA_NETWORK_KEY_PRESSED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1106
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "onReceive() - DATA_NETWORK_KEY_PRESSED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataKeyState()V

    goto/16 :goto_0

    .line 1111
    :cond_29
    const-string v3, "com.android.systemui.action.airplane_off"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setAirplaneModeOff()V

    goto/16 :goto_0

    .line 1115
    :cond_2a
    const-string v3, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1116
    const-string v3, "network_manually_selected"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkManuallySelected:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 13
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    .line 625
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;)V

    .line 628
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 637
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiCaptiveNotLogin:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setWifiCaptiveNotLogin(Z)V

    .line 640
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_2

    .line 641
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCHN(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 657
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_4

    .line 659
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v9, v0, p2

    move-object v0, p1

    move v7, p2

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V

    .line 702
    :cond_0
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setSimIcon(ZI)V

    .line 703
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setIsAirplaneMode(ZI)V

    .line 718
    return-void

    :cond_1
    move v0, v12

    .line 628
    goto :goto_0

    .line 644
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyOpen(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    goto :goto_1

    .line 659
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    goto :goto_2

    .line 670
    :cond_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-nez v0, :cond_5

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v0, v0, p2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    if-eq v0, v2, :cond_5

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v12, v0, p2

    .line 674
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMobileActivityIconId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_6

    move v3, v1

    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v4, v0, p2

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v5, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v7, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v10, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v11, v0, p2

    move-object v2, p1

    move v9, p2

    invoke-interface/range {v2 .. v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V

    .line 687
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_0

    .line 688
    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v7, v0, 0x2

    .line 689
    .local v7, "opPhoneId":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_8

    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v0, v7

    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v3, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v4, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v5, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v9, v0, v7

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V

    goto/16 :goto_3

    .end local v7    # "opPhoneId":I
    :cond_6
    move v3, v12

    .line 677
    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v4, v0, p2

    goto :goto_5

    .restart local v7    # "opPhoneId":I
    :cond_8
    move v1, v12

    .line 689
    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v2, v0, v7

    goto :goto_7
.end method

.method protected refreshViews(I)V
    .locals 20
    .param p1, "phoneId"    # I

    .prologue
    .line 2891
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 2893
    .local v6, "context":Landroid/content/Context;
    const-string v5, ""

    .line 2894
    .local v5, "combinedLabel":Ljava/lang/String;
    const-string v12, ""

    .line 2895
    .local v12, "mobileLabel":Ljava/lang/String;
    const-string v15, ""

    .line 2898
    .local v15, "wifiLabel":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v8

    .line 2900
    .local v8, "dataSub":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-nez v16, :cond_b

    .line 2901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v18, v17, p1

    aput v18, v16, p1

    .line 2902
    const-string v12, ""

    .line 2903
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2972
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_10

    .line 2973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_e

    .line 2974
    const v16, 0x7f0b0357

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2977
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    .line 3009
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v17, v0

    aput v17, v16, p1

    .line 3010
    move-object v5, v15

    .line 3011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    aput v17, v16, p1

    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v16, p1

    .line 3022
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 3023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0b02b2

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v17, v0

    aput v17, v16, p1

    .line 3025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b0312

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, p1

    .line 3029
    const-string v16, "StatusBar.MSimNetworkController"

    const-string v17, "mBluetoothTethered:mDataTypeIconId is BT Tether Icon"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v17, v0

    aput v17, v16, p1

    .line 3031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v16, p1

    .line 3032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v16, p1

    .line 3034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    sget-object v17, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mIsDGGDuos:Z

    if-nez v16, :cond_2

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-nez v16, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "CTC"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 3035
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    .line 3039
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v16, v0

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    const/4 v9, 0x1

    .line 3041
    .local v9, "ethernetConnected":Z
    :goto_3
    if-eqz v9, :cond_4

    .line 3043
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 3046
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_15

    .line 3050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b0313

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, p1

    .line 3052
    const v16, 0x7f0205f0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneIconId:I

    .line 3053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v19, v18, p1

    aput v19, v17, p1

    aput v19, v16, p1

    .line 3055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v16, p1

    .line 3056
    move/from16 v0, p1

    if-ne v0, v8, :cond_5

    .line 3057
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 3058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 3062
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_13

    .line 3064
    const-string v12, ""

    .line 3078
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v16, p1

    .line 3079
    move/from16 v0, p1

    if-ne v0, v8, :cond_6

    .line 3080
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 3083
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 3128
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v16

    if-eqz v16, :cond_19

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    const/16 v16, 0x1

    :goto_6
    aput-boolean v16, v17, p1

    .line 3129
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v16

    if-nez v16, :cond_8

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v16

    if-nez v16, :cond_8

    .line 3130
    const-string v16, "persist.radio.multisim.stackid"

    const-string v17, "NONE"

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3131
    .local v7, "crossMapping":Ljava/lang/String;
    const-string v16, "1,0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 3132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    .line 3137
    .end local v7    # "crossMapping":Ljava/lang/String;
    :cond_8
    :goto_7
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v16

    if-nez v16, :cond_9

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v16

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSlot2Locked(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 3138
    const-string v16, "StatusBar.MSimNetworkController"

    const-string v17, "Sim in Only Slot 2 "

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    .line 3140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput-boolean v18, v16, v17

    .line 3142
    :cond_9
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v16

    if-nez v16, :cond_a

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkLocked()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 3143
    const-string v16, "StatusBar.MSimNetworkController"

    const-string v17, "Sim in Only Slot 2 in Network Locked device"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    .line 3145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput-boolean v18, v16, v17

    .line 3148
    :cond_a
    const-string v17, "StatusBar.MSimNetworkController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "refreshViews connected={"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1b

    const-string v16, " wifi"

    :goto_8
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, p1

    if-eqz v16, :cond_1c

    const-string v16, " data"

    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " } phoneId = "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " level="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    if-nez v16, :cond_1d

    const-string v16, "??"

    :goto_a
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mMSimcombinedSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mMSimcombinedActivityIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mAirplaneMode="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mMSimDataActivity="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mMSimPhoneSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mMSimDataDirectionIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mMSimDataSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mMSimDataTypeIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mNoMSimIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mMSimMobileActivityIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mWifiIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mBluetoothTetherIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mRoamingIconId=0x "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 3184
    .local v3, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_b

    .line 2929
    .end local v3    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v9    # "ethernetConnected":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, p1

    if-eqz v16, :cond_d

    .line 2930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 2932
    move-object v5, v12

    .line 2933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 2935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 2936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    aput-object v17, v16, p1

    .line 2939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    packed-switch v16, :pswitch_data_0

    .line 2957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    if-eqz v16, :cond_c

    .line 2958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v16, v0

    const v17, 0x7f0205ff

    aput v17, v16, p1

    goto/16 :goto_0

    .line 2941
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v16, v0

    const v17, 0x7f0205fa

    aput v17, v16, p1

    goto/16 :goto_0

    .line 2944
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v16, v0

    const v17, 0x7f02060a

    aput v17, v16, p1

    goto/16 :goto_0

    .line 2947
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v16, v0

    const v17, 0x7f0205fc

    aput v17, v16, p1

    goto/16 :goto_0

    .line 2960
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v16, p1

    goto/16 :goto_0

    .line 2966
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v16, p1

    .line 2967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v16, p1

    .line 2968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v16, p1

    goto/16 :goto_0

    .line 2980
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 2986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_1

    .line 3003
    :goto_c
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-nez v16, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiCaptiveNotLogin:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 3004
    :cond_f
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2988
    :pswitch_3
    const v16, 0x7f0205fa

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_c

    .line 2991
    :pswitch_4
    const v16, 0x7f02060a

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_c

    .line 2994
    :pswitch_5
    const v16, 0x7f0205fc

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_c

    .line 2997
    :pswitch_6
    const v16, 0x7f0205ff

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_c

    .line 3014
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_11

    .line 3015
    const-string v15, ""

    goto/16 :goto_2

    .line 3017
    :cond_11
    const v16, 0x7f0b0356

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 3039
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3066
    .restart local v9    # "ethernetConnected":Z
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14

    .line 3068
    const-string v15, ""

    .line 3074
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v16, p1

    .line 3076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    goto/16 :goto_4

    .line 3070
    :cond_14
    const v16, 0x7f0b0356

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3072
    move-object v5, v15

    goto :goto_d

    .line 3085
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, p1

    if-nez v16, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    if-nez v16, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_7

    if-nez v9, :cond_7

    .line 3089
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v16, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mVoiceCapable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_16

    .line 3090
    const v16, 0x7f0b0356

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3095
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    :goto_e
    aput v16, v17, p1

    .line 3097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    :goto_f
    aput-object v16, v17, p1

    .line 3101
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRoamingIcon(I)V

    goto/16 :goto_5

    .line 3095
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    goto :goto_e

    .line 3097
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_f

    .line 3128
    :cond_19
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 3134
    .restart local v7    # "crossMapping":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    goto/16 :goto_7

    .line 3148
    .end local v7    # "crossMapping":Ljava/lang/String;
    :cond_1b
    const-string v16, ""

    goto/16 :goto_8

    :cond_1c
    const-string v16, ""

    goto/16 :goto_9

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_a

    .line 3187
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    move-object/from16 v17, v0

    aget-boolean v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconVisible:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRssiIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCallState:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCallState:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v16, :cond_21

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v16

    if-eqz v16, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    const v17, 0x7f02078b

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_20

    :cond_1f
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v16

    if-eqz v16, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    const v17, 0x7f02078b

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_21

    .line 3222
    :cond_20
    const-string v16, "StatusBar.MSimNetworkController"

    const-string v17, "refreshSignalCluster : called"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_21

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;

    .line 3224
    .local v4, "cluster":Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    goto :goto_10

    .line 3228
    .end local v4    # "cluster":Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_22

    .line 3229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    .line 3233
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_23

    .line 3234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 3238
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_24

    .line 3239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 3242
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_25

    .line 3243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 3247
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_26

    .line 3248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    .line 3252
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_27

    .line 3253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 3256
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_28

    .line 3257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 3260
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_29

    .line 3261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 3264
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2a

    .line 3265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 3269
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2b

    .line 3270
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    .line 3273
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2c

    .line 3275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 3279
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2d

    .line 3280
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 3283
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2e

    .line 3284
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 3287
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2f

    .line 3288
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 3291
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_30

    .line 3292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    .line 3295
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_31

    .line 3296
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    .line 3301
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_32

    .line 3302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 3305
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_33

    .line 3306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 3309
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    move-object/from16 v17, v0

    aget-boolean v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_34

    .line 3310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    move-object/from16 v17, v0

    aget-boolean v17, v17, p1

    aput-boolean v17, v16, p1

    .line 3313
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_35

    .line 3314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 3317
    :cond_35
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_38

    .line 3318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v17, v0

    aget-object v17, v17, v10

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_36

    .line 3319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v17, v0

    aget-object v17, v17, v10

    aput-object v17, v16, v10

    .line 3322
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCallState:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    move-object/from16 v17, v0

    aget v17, v17, v10

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_37

    .line 3323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCallState:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    move-object/from16 v17, v0

    aget v17, v17, v10

    aput v17, v16, v10

    .line 3317
    :cond_37
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 3327
    :cond_38
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v16, :cond_3a

    .line 3328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_39

    .line 3329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 3346
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRssiIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3a

    .line 3347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRssiIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    aput v17, v16, p1

    .line 3352
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3b

    .line 3353
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 3354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3355
    .local v2, "N":I
    const/4 v10, 0x0

    :goto_12
    if-ge v10, v2, :cond_3b

    .line 3356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3357
    .local v14, "v":Landroid/widget/TextView;
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3355
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    .line 3362
    .end local v2    # "N":I
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3363
    .restart local v2    # "N":I
    const/4 v10, 0x0

    :goto_13
    if-ge v10, v2, :cond_3d

    .line 3364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3365
    .restart local v14    # "v":Landroid/widget/TextView;
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3366
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3c

    .line 3367
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3363
    :goto_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 3369
    :cond_3c
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14

    .line 3374
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_3d
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCarrierText()V

    .line 3376
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v16, :cond_42

    .line 3377
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getMobileLabelForCHN()Ljava/lang/String;

    move-result-object v12

    .line 3400
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3401
    const/4 v10, 0x0

    :goto_16
    if-ge v10, v2, :cond_59

    .line 3402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3403
    .restart local v14    # "v":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v16

    sget-object v17, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_40

    .line 3404
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4b

    .line 3405
    const-string v12, ""

    .line 3406
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSingleLine:Z

    .line 3451
    :cond_3e
    :goto_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSingleLine:Z

    move/from16 v16, v0

    if-eqz v16, :cond_57

    .line 3452
    invoke-virtual {v14}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v16

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_40

    .line 3453
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 3454
    sget-object v16, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3455
    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 3456
    .local v13, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v13, :cond_3f

    .line 3457
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ffab851eb851eb8L    # 1.67

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3459
    :cond_3f
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 3473
    .end local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_40
    :goto_18
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3474
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_41

    .line 3475
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3401
    :cond_41
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_16

    .line 3379
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_42
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    if-nez v16, :cond_4a

    .line 3380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    sget-object v17, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    sget-object v17, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_43

    .line 3382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v12, v16, v17

    goto/16 :goto_15

    .line 3383
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    sget-object v17, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_44

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v16

    if-nez v16, :cond_45

    .line 3384
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v12, v16, v17

    goto/16 :goto_15

    .line 3385
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    sget-object v17, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_46

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v16

    if-nez v16, :cond_47

    .line 3386
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v12, v16, v17

    goto/16 :goto_15

    .line 3388
    :cond_47
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mBrazilianCarriers:Z

    if-nez v16, :cond_48

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mTFGCarrier:Z

    if-eqz v16, :cond_49

    .line 3389
    :cond_48
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_15

    .line 3391
    :cond_49
    const-string v12, ""

    goto/16 :goto_15

    .line 3395
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0b0567

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_15

    .line 3409
    .restart local v14    # "v":Landroid/widget/TextView;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x104028f

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4d

    .line 3411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkManuallySelected:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4c

    .line 3412
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkManuallySelected:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3413
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSingleLine:Z

    goto/16 :goto_17

    .line 3415
    :cond_4c
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSingleLine:Z

    goto/16 :goto_17

    .line 3418
    :cond_4d
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v16

    if-nez v16, :cond_4e

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isGsmRoaming(I)Z

    move-result v16

    if-eqz v16, :cond_51

    .line 3419
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3e

    .line 3420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mEFSPN:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    if-eqz v16, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mEFSPN:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_50

    .line 3421
    :cond_4f
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3422
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSingleLine:Z

    goto/16 :goto_17

    .line 3424
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v12, v16, p1

    .line 3425
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSingleLine:Z

    goto/16 :goto_17

    .line 3429
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowLAC:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, p1

    if-eqz v16, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_56

    .line 3430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mEFSPN:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    if-eqz v16, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mEFSPN:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    const/16 v17, 0x10

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_54

    .line 3431
    :cond_52
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSingleLine:Z

    .line 3432
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_53

    .line 3433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v12, v16, p1

    goto/16 :goto_17

    .line 3435
    :cond_53
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_17

    .line 3438
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_55

    .line 3439
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3440
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSingleLine:Z

    goto/16 :goto_17

    .line 3442
    :cond_55
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3443
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSingleLine:Z

    goto/16 :goto_17

    .line 3447
    :cond_56
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSingleLine:Z

    goto/16 :goto_17

    .line 3462
    :cond_57
    invoke-virtual {v14}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v16

    if-eqz v16, :cond_40

    .line 3463
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 3464
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 3465
    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 3466
    .restart local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v13, :cond_58

    .line 3467
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ffab851eb851eb8L    # 1.67

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3469
    :cond_58
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_18

    .line 3481
    .end local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_59
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCarrierText()V

    .line 3482
    return-void

    .line 2939
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2986
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v12, 0x7fffffff

    const/4 v11, 0x0

    const/16 v10, 0x1e1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 516
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 520
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    .line 521
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 522
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerPhoneStateListener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    new-array v5, v5, [Landroid/telephony/PhoneStateListener;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 524
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v2, v5, :cond_2

    .line 525
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 526
    .local v4, "subIdtemp":[I
    if-eqz v4, :cond_5

    .line 527
    aget v3, v4, v8

    .line 528
    .local v3, "subId":I
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerPhoneStateListener subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerPhoneStateListener slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-lez v3, :cond_1

    .line 532
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v5, v2

    .line 535
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 524
    .end local v3    # "subId":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    .restart local v3    # "subId":I
    :cond_1
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 543
    const-string v5, "persist.radio.multisim.stackid"

    const-string v6, "NONE"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "crossMapping":Ljava/lang/String;
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerPhoneStateListener crossMapping: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v5, "1,0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 546
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    aget v1, v5, v8

    .line 547
    .local v1, "crossSubID":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v5, v9

    .line 549
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 555
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v11, v5, v8

    .line 588
    .end local v0    # "crossMapping":Ljava/lang/String;
    .end local v1    # "crossSubID":I
    .end local v3    # "subId":I
    .end local v4    # "subIdtemp":[I
    :cond_2
    :goto_2
    return-void

    .line 557
    .restart local v0    # "crossMapping":Ljava/lang/String;
    .restart local v3    # "subId":I
    .restart local v4    # "subIdtemp":[I
    :cond_3
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    aget v1, v5, v8

    .line 558
    .restart local v1    # "crossSubID":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v5, v8

    .line 560
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 566
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v11, v5, v9

    goto :goto_2

    .line 570
    .end local v0    # "crossMapping":Ljava/lang/String;
    .end local v1    # "crossSubID":I
    :cond_4
    const-string v5, "StatusBar.MSimNetworkController"

    const-string v6, "registerPhoneStateListener NULL "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v11, v5, v2

    goto/16 :goto_1

    .line 575
    .end local v3    # "subId":I
    :cond_5
    if-nez v2, :cond_0

    .line 576
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v12, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v5, v8

    .line 578
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_1
.end method

.method public setCurrentSimSlot(I)V
    .locals 0
    .param p1, "simSlot"    # I

    .prologue
    .line 4550
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    .line 4551
    return-void
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 2826
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity: intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2831
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2834
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    .line 2835
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    if-eqz v4, :cond_1

    .line 2836
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    .line 2837
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2843
    :goto_1
    const-string v4, "inetCondition"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2846
    .local v1, "connectionStatus":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity: networkInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity: connectionStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v6, 0x7

    if-ne v4, v6, :cond_2

    .line 2855
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    .line 2861
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWimaxIcons()V

    .line 2862
    const/4 v3, 0x0

    .local v3, "sub":I
    :goto_3
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v3, v4, :cond_3

    .line 2864
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 2865
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 2866
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 2862
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v1    # "connectionStatus":I
    .end local v3    # "sub":I
    :cond_0
    move v4, v5

    .line 2834
    goto :goto_0

    .line 2839
    :cond_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    .line 2840
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .line 2857
    .restart local v1    # "connectionStatus":I
    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    goto :goto_2

    .line 2868
    .restart local v3    # "sub":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWifiIcons()V

    .line 2869
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .prologue
    .line 2573
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2577
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2578
    .local v0, "something":Z
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 2579
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2580
    const/4 v0, 0x1

    .line 2582
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2583
    if-eqz v0, :cond_1

    .line 2584
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2587
    const/4 v0, 0x1

    .line 2589
    :cond_2
    if-eqz v0, :cond_3

    .line 2590
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p5

    .line 2595
    :goto_0
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMSimNetworkName[phoneId] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v4, v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    return-void

    .line 2592
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, p5

    goto :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "showCB"    # Z
    .param p6, "CBmsg"    # Ljava/lang/String;
    .param p7, "phoneId"    # I

    .prologue
    .line 2602
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showCB="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CBmsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2606
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2607
    .local v0, "something":Z
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCB:Ljava/lang/String;

    .line 2609
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 2610
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    const/4 v0, 0x1

    .line 2613
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2614
    if-eqz v0, :cond_1

    .line 2615
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2617
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2618
    const/4 v0, 0x1

    .line 2620
    :cond_2
    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    .line 2621
    if-eqz v0, :cond_3

    .line 2622
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2624
    :cond_3
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2625
    const/4 v0, 0x1

    .line 2628
    :cond_4
    if-eqz v0, :cond_5

    .line 2629
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p7

    .line 2633
    :goto_0
    return-void

    .line 2631
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, p7

    goto :goto_0
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1376
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1379
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v4, "slot"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1381
    .local v1, "phoneId":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState for phoneId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    if-ltz v1, :cond_1

    .line 1383
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1384
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1407
    .local v2, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, v1

    if-eq v2, v4, :cond_0

    .line 1408
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v4, v1

    .line 1409
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 1410
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState simState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 1414
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 1415
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIcon(I)V

    .line 1416
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->UpdateIndianOperator(I)V

    .line 1418
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    return-void

    .line 1386
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "IMSI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "LOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1389
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1391
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1392
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1395
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1397
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1398
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1401
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1404
    .end local v0    # "lockedReason":Ljava/lang/String;
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method

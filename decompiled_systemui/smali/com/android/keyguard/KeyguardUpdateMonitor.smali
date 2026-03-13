.class public Lcom/android/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;
    }
.end annotation


# static fields
.field private static final ACTION_FACE_UNLOCK_STARTED:Ljava/lang/String; = "com.android.facelock.FACE_UNLOCK_STARTED"

.field private static final ACTION_FACE_UNLOCK_STOPPED:Ljava/lang/String; = "com.android.facelock.FACE_UNLOCK_STOPPED"

.field private static final ACTION_FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field private static final ACTION_FINGERPRINT_LOCK_SET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

.field private static final ACTION_KEYGUARD_REFRESH:Ljava/lang/String; = "com.sec.android.keyguard.REFRESH"

.field private static final ACTION_OPEN_THEME_CHANGED:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"

.field private static final BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I = 0x64

.field private static final DEBUG:Z = true

.field private static final DEBUG_FP_WAKELOCK:Z = true

.field private static final DEBUG_SIM_STATES:Z = true

.field private static final EXTRA_HIGHVOLTAGE_CHARGER:Ljava/lang/String; = "hv_charger"

.field private static final EXTRA_ONLINE:Ljava/lang/String; = "online"

.field private static final FAILED_SEC_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x5

.field private static final FINGERPRINT_WAKELOCK_TIMEOUT_MS:J = 0x3a98L

.field private static final FINGERPRINT_WAKE_LOCK_NAME:Ljava/lang/String; = "wake-and-unlock wakelock"

.field private static final FP_WAKE_DIRECT_UNLOCK:I = 0x1

.field private static final FP_WAKE_NONE:I = 0x0

.field private static final FP_WAKE_WAKE_TO_BOUNCER:I = 0x2

.field private static final LOW_BATTERY_THRESHOLD:I = 0x14

.field private static final MSG_AIRPLANE_MODE_CHANGED:I = 0x149

.field private static final MSG_AIRPLANE_UPDATE:I = 0x141

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_BOOT_COMPLETED:I = 0x139

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field private static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_FACE_UNLOCK_STATE_CHANGED:I = 0x147

.field private static final MSG_FINGERPRINT_AUTHENTICATED:I = 0x143

.field private static final MSG_FINGERPRINT_AUTH_FAILED:I = 0x146

.field private static final MSG_FINGERPRINT_ERROR:I = 0x144

.field private static final MSG_FINGERPRINT_HELP:I = 0x145

.field private static final MSG_FINISHED_GOING_TO_SLEEP:I = 0x140

.field private static final MSG_ICC_CARD_STATE_CHANGED:I = 0x14e

.field private static final MSG_KEYGUARD_BOUNCER_CHANGED:I = 0x142

.field private static final MSG_KEYGUARD_RESET:I = 0x138

.field private static final MSG_KEYGUARD_VISIBILITY_CHANGED:I = 0x137

.field private static final MSG_OPEN_THEME_CHANGED:I = 0x14d

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_REPORT_EMERGENCY_CALL_ACTION:I = 0x13e

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SAP_STATE_CHANGED:I = 0x151

.field private static final MSG_SERVICE_STATE_CHANGE:I = 0x154

.field private static final MSG_SIM_MGT_ACTIVATED_CHANGED:I = 0x14f

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_SIM_SUBSCRIPTION_INFO_CHANGED:I = 0x148

.field private static final MSG_STARTED_WAKING_UP:I = 0x13f

.field private static final MSG_S_HEALTH_PACKAGE_REMOVED:I = 0x150

.field private static final MSG_THEME_CLOCK_FONT_CHANGED:I = 0x14a

.field private static final MSG_THEME_NUMERIC_FONT_CHANGED:I = 0x14b

.field private static final MSG_THEME_SYSTEM_FONT_CHANGED:I = 0x14c

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final MSG_USER_INFO_CHANGED:I = 0x13d

.field private static final MSG_USER_SWITCHING:I = 0x136

.field private static final MSG_USER_SWITCH_COMPLETE:I = 0x13a

.field private static final SPASS_PREF_KEY:Ljava/lang/String; = "KeyguardSPassPopupGuideInt"

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field private static final THEME_FONT_CLOCK:Ljava/lang/String; = "theme_font_clock"

.field private static final THEME_FONT_NUMERIC:Ljava/lang/String; = "theme_font_numeric"

.field private static final THEME_FONT_SYSTEM:Ljava/lang/String; = "theme_font_system"

.field private static mIsSapConnected:Z

.field public static mSwipeLockShowingBeforeTimeout:Z

.field private static sCurrentUser:I

.field private static sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;


# instance fields
.field private mAlternateUnlockEnabled:Z

.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBootCompleted:Z

.field private mBouncer:Z

.field private final mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClockThemeFont:Ljava/lang/String;

.field private mClockVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverState:Z

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private mDeviceInteractive:Z

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

.field private mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private mFailedSecBiometricUnlockAttempts:Landroid/util/SparseIntArray;

.field private mFingerprintCancelSignal:Landroid/os/CancellationSignal;

.field private mFingerprintDetectionRunning:Z

.field private mFpWakeMode:I

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIccState:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

.field private mIsAppliedDefaultTheme:Z

.field private mIsOldUserPersona:Z

.field private mKeyguardIsVisible:Z

.field private final mKnoxCustomBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedToBeReturn:Z

.field private mNumericThemeFont:Ljava/lang/String;

.field private mPhoneState:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

.field private mRingMode:I

.field private mScreenOn:Z

.field mServiceStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldShowSIMLock:Z

.field private mShowingCMAS:Z

.field mSimDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

.field private mSubscriptionInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchingUser:Z

.field private mSystemThemeFont:Ljava/lang/String;

.field private mTelephonyPlmn:[Ljava/lang/CharSequence;

.field private mTelephonyPlmnDefault:Ljava/lang/CharSequence;

.field private mTelephonySpn:[Ljava/lang/CharSequence;

.field private mThemeFontObserver:Landroid/database/ContentObserver;

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

.field private mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserHasAuthenticatedSinceBoot:Z

.field private mUserHasTrust:Landroid/util/SparseBooleanArray;

.field private mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 273
    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSapConnected:Z

    .line 410
    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->UNKNOWN:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIccState:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    .line 230
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 231
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:Landroid/util/SparseIntArray;

    .line 234
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 236
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOldUserPersona:Z

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowingCMAS:Z

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShouldShowSIMLock:Z

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCoverState:Z

    .line 274
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 384
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 392
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 393
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    .line 394
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    .line 395
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    .line 577
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    .line 753
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    .line 755
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 900
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    .line 924
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKnoxCustomBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 942
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 1199
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 1201
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1203
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1204
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    .line 1205
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 1208
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    .line 1209
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 1213
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/4 v1, 0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIIIZ)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 1214
    const/4 v12, 0x0

    .line 1215
    .local v12, "numPhones":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v12

    .line 1216
    new-array v0, v12, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    .line 1217
    new-array v0, v12, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    .line 1218
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_1

    .line 1219
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v10

    .line 1220
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object v1, v0, v10

    .line 1218
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1222
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnDefault:Ljava/lang/CharSequence;

    .line 1225
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1226
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1227
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1228
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1229
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1230
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1231
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1232
    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1233
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1234
    const-string v0, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1236
    :cond_2
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1237
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1238
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1239
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1240
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1241
    const-string v0, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1242
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1243
    const-string v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1244
    const-string v0, "android.broadcom.sap.CONNECTION_STATE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1245
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1246
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1248
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJProject()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1249
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1250
    .local v13, "packageFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1251
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1252
    const-string v0, "package"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1256
    .end local v13    # "packageFilter":Landroid/content/IntentFilter;
    :cond_4
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1257
    .local v7, "bootCompleteFilter":Landroid/content/IntentFilter;
    const/16 v0, 0x3e8

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1258
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1261
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1262
    .local v3, "allUserFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1263
    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1266
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1267
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1271
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1272
    .local v11, "knoxFilter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.android.keyguard.REFRESH"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKnoxCustomBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1276
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1279
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1302
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setThemeFontContentObserver()V

    .line 1305
    :cond_5
    const-string v0, "trust"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 1306
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0, p0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 1307
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 1309
    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 1310
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1312
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShouldShowSIMLock:Z

    .line 1313
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1314
    :cond_6
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "PIN or PUK Require info exist befor receiver started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x148

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1317
    :cond_7
    return-void

    .line 1296
    :catch_0
    move-exception v8

    .line 1298
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1312
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_8
    const/4 v0, 0x1

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneUpdate(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleThemeClockFontChangeUpdate()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleThemeNumericFontChangeUpdate()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleThemeSystemFontChangeUpdate()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleOpenThemeChangeUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleICCCardStateChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor;ILandroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/telephony/ServiceState;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleServiceStateChange(ILandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSHealthPackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSapStateChanged()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->releaseFingerprintWakeLock()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnDefault:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnDefault:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 119
    sput-boolean p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSapConnected:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardUpdateMonitor;IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthFailed()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardReset()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardBouncerChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method public static declared-synchronized getCurrentUser()I
    .locals 2

    .prologue
    .line 406
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1140
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 1141
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1143
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method public static getPhoneId(I)I
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 2531
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2533
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2534
    const/4 v0, 0x0

    .line 2536
    :cond_0
    return v0
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2001
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2002
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2003
    .local v0, "plmn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2005
    .end local v0    # "plmn":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2003
    .restart local v0    # "plmn":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2005
    .end local v0    # "plmn":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2024
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2025
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2026
    .local v0, "spn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2030
    .end local v0    # "spn":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThemeFontFromSettingsDb()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 1399
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "theme_font_clock"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1401
    .local v0, "clockfont":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "theme_font_numeric"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1403
    .local v1, "numericfont":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "theme_font_system"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1406
    .local v2, "systemfont":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1407
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clockfont:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockThemeFont:Ljava/lang/String;

    .line 1413
    :goto_0
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1414
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numericfont:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNumericThemeFont:Ljava/lang/String;

    .line 1420
    :goto_1
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1421
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "systemfont:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemThemeFont:Ljava/lang/String;

    .line 1426
    :goto_2
    return-void

    .line 1410
    :cond_0
    iput-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockThemeFont:Ljava/lang/String;

    goto :goto_0

    .line 1417
    :cond_1
    iput-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNumericThemeFont:Ljava/lang/String;

    goto :goto_1

    .line 1424
    :cond_2
    iput-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemThemeFont:Ljava/lang/String;

    goto :goto_2
.end method

.method private handleAirplaneUpdate(I)V
    .locals 4
    .param p1, "on"    # I

    .prologue
    .line 1559
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleAirplaneUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShouldShowSIMLock:Z

    .line 1561
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1562
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1563
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1564
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onAirplaneModeChanged(I)V

    .line 1561
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1567
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 1661
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "handleBatteryUpdate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 1663
    .local v0, "batteryUpdateInteresting":Z
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 1664
    if-eqz v0, :cond_1

    .line 1665
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1666
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1667
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 1668
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 1665
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1672
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private handleCarrierInfoUpdate(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 1678
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCarrierInfoUpdate: plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1682
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1683
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1684
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(I)V

    .line 1681
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1687
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFaceUnlockStateChanged(ZI)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 668
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 669
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 670
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 671
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceUnlockStateChanged(ZI)V

    .line 669
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 675
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFingerprintAcquired(I)V
    .locals 4
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v2, 0x1

    .line 556
    if-eqz p1, :cond_0

    .line 575
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    if-nez v0, :cond_1

    .line 560
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->releaseFingerprintWakeLock()V

    .line 561
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "wake-and-unlock wakelock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 563
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 564
    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpWakeMode:I

    .line 566
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "fingerprint acquired, grabbing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 570
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v0, :cond_2

    .line 571
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpWakeMode:I

    goto :goto_0

    .line 573
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpWakeMode:I

    goto :goto_0
.end method

.method private handleFingerprintAuthFailed()V
    .locals 3

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->releaseFingerprintWakeLock()V

    .line 552
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->fingerprint_not_recognized:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    .line 553
    return-void
.end method

.method private handleFingerprintAuthenticated()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 599
    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpWakeMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpWakeMode:I

    if-ne v4, v2, :cond_1

    .line 601
    :cond_0
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "fp wakelock: Authenticated, waking up..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 605
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->releaseFingerprintWakeLock()V

    .line 609
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v1, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    .local v1, "userId":I
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 615
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fingerprint disabled by DPM for userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    .line 622
    .end local v1    # "userId":I
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "KeyguardUpdateMonitor"

    const-string v4, "Failed to get current user id: "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    goto :goto_0

    .line 618
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "userId":I
    :cond_2
    :try_start_3
    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpWakeMode:I

    if-ne v4, v2, :cond_3

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintAuthenticated(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 620
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 618
    goto :goto_1

    .line 620
    .end local v1    # "userId":I
    :catchall_0
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    throw v2
.end method

.method private handleFingerprintError(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 634
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    .line 635
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 636
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 637
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintError(ILjava/lang/String;)V

    .line 635
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 641
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFingerprintHelp(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    .line 625
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 627
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintHelp(ILjava/lang/String;)V

    .line 625
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleICCCardStateChange(Ljava/lang/String;)V
    .locals 6
    .param p1, "iccStatus"    # Ljava/lang/String;

    .prologue
    .line 1916
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleICCCardStateChange: iccStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->UNKNOWN:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    .line 1918
    .local v1, "curStatus":Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;
    const-string v3, "INSERTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1919
    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->INSERTED:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    .line 1926
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIccState:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    if-eq v3, v1, :cond_3

    .line 1927
    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIccState:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    .line 1928
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1929
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1930
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1931
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onICCCardStateChanged(Ljava/lang/String;)V

    .line 1928
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1920
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2    # "i":I
    :cond_1
    const-string v3, "REMOVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1921
    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->REMOVED:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    goto :goto_0

    .line 1923
    :cond_2
    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->UNKNOWN:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    goto :goto_0

    .line 1935
    :cond_3
    return-void
.end method

.method private handleKeyguardBouncerChanged(I)V
    .locals 6
    .param p1, "bouncer"    # I

    .prologue
    const/4 v2, 0x1

    .line 1800
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleKeyguardBouncerChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    if-ne p1, v2, :cond_1

    .line 1802
    .local v2, "isBouncer":Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    .line 1803
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1804
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1805
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1806
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    .line 1803
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1801
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    .end local v2    # "isBouncer":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1809
    .restart local v1    # "i":I
    .restart local v2    # "isBouncer":Z
    :cond_2
    return-void
.end method

.method private handleKeyguardReset()V
    .locals 2

    .prologue
    .line 1789
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleKeyguardReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1791
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1793
    :cond_0
    return-void
.end method

.method private handleKeyguardVisibilityChanged(I)V
    .locals 6
    .param p1, "showing"    # I

    .prologue
    const/4 v2, 0x1

    .line 1773
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleKeyguardVisibilityChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    if-ne p1, v2, :cond_1

    .line 1775
    .local v2, "isShowing":Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 1776
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1777
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1778
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1779
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    .line 1776
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1774
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    .end local v2    # "isShowing":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1782
    .restart local v1    # "i":I
    .restart local v2    # "isShowing":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1783
    return-void
.end method

.method private handleOpenThemeChangeUpdate(Ljava/lang/String;)V
    .locals 5
    .param p1, "currentTheme"    # Ljava/lang/String;

    .prologue
    .line 1898
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleOpenThemeChangeUpdate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsAppliedDefaultTheme:Z

    .line 1900
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsAppliedDefaultTheme:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsAppliedDefaultTheme:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1903
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1904
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1905
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOpenThemeChangeUpdate() cb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onOpenThemeChanged()V

    .line 1902
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1899
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1910
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method private handleReportEmergencyCallAction()V
    .locals 3

    .prologue
    .line 1815
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1816
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1817
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1818
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    .line 1815
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1821
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleSHealthPackageRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1938
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1939
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1940
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1941
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPackageRemoved(Ljava/lang/String;)V

    .line 1938
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1944
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleSapStateChanged()V
    .locals 3

    .prologue
    .line 659
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 660
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 661
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSapStateChanged()V

    .line 659
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleServiceStateChange(ILandroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1749
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleServiceStateChange(subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1754
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "invalid subId in handleServiceStateChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :goto_0
    return-void

    .line 1758
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1693
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "handleSimStateChange"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSimStateChange(subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1700
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "invalid subId in handleSimStateChange()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_0
    return-void

    .line 1704
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v4, :cond_4

    .line 1705
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "handleSimStateChange( Sim state is UNKNOWN.)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 1707
    .local v2, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_2

    iget-object v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v5, :cond_0

    .line 1708
    :cond_2
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "handleSimStateChange dispatch UNKNOWN state"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iput-object p3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1710
    iput p1, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 1711
    iput p2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    .line 1712
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1713
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1714
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_3

    .line 1715
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1712
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1722
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    .end local v3    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 1724
    .restart local v2    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    if-nez v2, :cond_6

    .line 1725
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .end local v2    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    invoke-direct {v2, p3, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    .line 1726
    .restart local v2    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    const/4 v1, 0x1

    .line 1734
    .local v1, "changed":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 1735
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1736
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1737
    .restart local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_5

    .line 1738
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1735
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1729
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "changed":Z
    .end local v3    # "i":I
    :cond_6
    iget-object v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, p3, :cond_7

    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    if-ne v4, p1, :cond_7

    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-eq v4, p2, :cond_8

    :cond_7
    const/4 v1, 0x1

    .line 1730
    .restart local v1    # "changed":Z
    :goto_3
    iput-object p3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1731
    iput p1, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 1732
    iput p2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    goto :goto_1

    .line 1729
    .end local v1    # "changed":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private handleThemeClockFontChangeUpdate()V
    .locals 4

    .prologue
    .line 1853
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_font_clock"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1856
    .local v0, "clockfont":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1857
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clockfont: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockThemeFont:Ljava/lang/String;

    .line 1862
    :goto_0
    return-void

    .line 1860
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockThemeFont:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleThemeNumericFontChangeUpdate()V
    .locals 4

    .prologue
    .line 1868
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_font_numeric"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1871
    .local v0, "numericfont":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1872
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numericfont: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNumericThemeFont:Ljava/lang/String;

    .line 1877
    :goto_0
    return-void

    .line 1875
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNumericThemeFont:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleThemeSystemFontChangeUpdate()V
    .locals 4

    .prologue
    .line 1883
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_font_system"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1886
    .local v0, "systemfont":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1887
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "systemfont: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemThemeFont:Ljava/lang/String;

    .line 1892
    :goto_0
    return-void

    .line 1890
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemThemeFont:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleTimeUpdate()V
    .locals 4

    .prologue
    .line 1648
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleTimeUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1650
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1651
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1652
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 1649
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1655
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUserInfoChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1191
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1192
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1193
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    .line 1190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1196
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .param p0, "old"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    .param p1, "current"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1963
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 1964
    .local v0, "nowPluggedIn":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    .line 1965
    .local v2, "wasPluggedIn":Z
    if-ne v2, v3, :cond_2

    if-ne v0, v3, :cond_2

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v1, v3

    .line 1970
    .local v1, "stateChangedWhilePluggedIn":Z
    :goto_0
    if-ne v2, v0, :cond_1

    if-eqz v1, :cond_3

    .line 1993
    :cond_1
    :goto_1
    return v3

    .end local v1    # "stateChangedWhilePluggedIn":Z
    :cond_2
    move v1, v4

    .line 1965
    goto :goto_0

    .line 1975
    .restart local v1    # "stateChangedWhilePluggedIn":Z
    :cond_3
    if-eqz v0, :cond_4

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_1

    .line 1980
    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_1

    .line 1985
    :cond_5
    if-ne v2, v3, :cond_6

    if-ne v0, v3, :cond_6

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-ne v5, v6, :cond_1

    .line 1990
    :cond_6
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->highVoltage:Z

    iget-boolean v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->highVoltage:Z

    if-ne v5, v6, :cond_1

    move v3, v4

    .line 1993
    goto :goto_1
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1364
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isFingerprintDisabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 709
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 2325
    move-object v0, p0

    .line 2326
    .local v0, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSapConnected:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTrustDisabled(I)Z
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 689
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    .line 690
    .local v2, "disabledBySimPin":Z
    if-eqz v2, :cond_0

    .line 704
    :goto_0
    return v4

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 693
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_5

    .line 694
    invoke-virtual {v3, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v6

    const/high16 v7, 0x20000

    if-lt v6, v7, :cond_2

    move v0, v4

    .line 695
    .local v0, "disableByEnforcedPolicy":Z
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    if-eqz v0, :cond_3

    .line 697
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTrustDisabled by policy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "disableByEnforcedPolicy":Z
    :cond_2
    move v0, v5

    .line 694
    goto :goto_1

    .line 700
    .restart local v0    # "disableByEnforcedPolicy":Z
    :cond_3
    invoke-virtual {v3, v8, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_4

    move v1, v4

    .local v1, "disabledByDpm":Z
    :goto_2
    move v4, v1

    .line 702
    goto :goto_0

    .end local v1    # "disabledByDpm":Z
    :cond_4
    move v1, v5

    .line 700
    goto :goto_2

    .end local v0    # "disableByEnforcedPolicy":Z
    :cond_5
    move v4, v5

    .line 704
    goto :goto_0
.end method

.method private isUnavailableSimState(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 731
    const-string v1, "ss"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "stateExtra":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ICCID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MDN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 735
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "unavailable intent, drop!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v1, 0x1

    .line 738
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyFingerprintRunningStateChanged()V
    .locals 3

    .prologue
    .line 651
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 652
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 653
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 654
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionRunning:Z

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintRunningStateChanged(Z)V

    .line 651
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private onFingerprintAuthenticated(IZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "wakeAndUnlocking"    # Z

    .prologue
    .line 541
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 542
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 544
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(IZ)V

    .line 542
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private refreshSimState(II)Z
    .locals 9
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2296
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 2297
    .local v5, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 2300
    .local v3, "simState":I
    :try_start_0
    invoke-static {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2306
    .local v4, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v6, :cond_0

    .line 2307
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "refreshSimState( Sim state is UNKNOWN.)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :goto_1
    return v0

    .line 2301
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :catch_0
    move-exception v2

    .line 2302
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v6, "KeyguardUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown sim state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 2311
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2313
    .local v1, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    if-nez v1, :cond_1

    .line 2314
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .end local v1    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    invoke-direct {v1, v4, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    .line 2315
    .restart local v1    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2316
    const/4 v0, 0x1

    .local v0, "changed":Z
    goto :goto_1

    .line 2318
    .end local v0    # "changed":Z
    :cond_1
    iget-object v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v4, :cond_2

    const/4 v0, 0x1

    .line 2319
    .restart local v0    # "changed":Z
    :cond_2
    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1
.end method

.method private releaseFingerprintWakeLock()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 591
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "releasing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 596
    :cond_0
    return-void
.end method

.method private sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 2069
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 2070
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 2071
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 2072
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 2074
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 2075
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2076
    .local v0, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2077
    .local v2, "state":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    iget v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v5, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 2079
    .end local v0    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;>;"
    .end local v2    # "state":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    :cond_0
    return-void
.end method

.method public static declared-synchronized setCurrentUser(I)V
    .locals 2
    .param p0, "currentUser"    # I

    .prologue
    .line 402
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit v0

    return-void

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setFingerprintRunningDetectionRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionRunning:Z

    if-eq p1, v0, :cond_0

    .line 645
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionRunning:Z

    .line 646
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFingerprintRunningStateChanged()V

    .line 648
    :cond_0
    return-void
.end method

.method private setThemeFontContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1429
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "setThemeFontContentObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$10;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mThemeFontObserver:Landroid/database/ContentObserver;

    .line 1455
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_font_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mThemeFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1457
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_font_numeric"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mThemeFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1459
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_font_system"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mThemeFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1462
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getThemeFontFromSettingsDb()V

    .line 1463
    return-void
.end method

.method private shouldListenForFingerprint()Z
    .locals 1

    .prologue
    .line 1330
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startListeningForFingerprint()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1335
    const-string v0, "KeyguardUpdateMonitor"

    const-string v2, "startListeningForFingerprint()"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 1337
    .local v6, "userId":I
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerPrintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1338
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasAuthenticatedSinceBoot:Z

    .line 1340
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 1343
    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 1344
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 1345
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    .line 1347
    :cond_1
    return-void
.end method

.method private stopListeningForFingerprint()V
    .locals 2

    .prologue
    .line 1355
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "stopListeningForFingerprint()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 1358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 1360
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningDetectionRunning(Z)V

    .line 1361
    return-void
.end method

.method private updateFingerprintListeningState()V
    .locals 2

    .prologue
    .line 1320
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v0

    .line 1321
    .local v0, "shouldListenForFingerprint":Z
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionRunning:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 1322
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    .line 1327
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionRunning:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1324
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    goto :goto_0
.end method

.method private watchForDeviceProvisioning()V
    .locals 5

    .prologue
    .line 1369
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$9;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$9;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 1383
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1389
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 1390
    .local v0, "provisioned":Z
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    .line 1391
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 1392
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x134

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1396
    :cond_0
    return-void
.end method


# virtual methods
.method public checkSimPINStopHidingKeyguard()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2238
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2239
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "[CTC] do not need to check sim pin!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    :cond_0
    :goto_0
    return v5

    .line 2244
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 2245
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 2246
    .local v3, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v7, :cond_2

    goto :goto_1

    .line 2251
    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2252
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 2253
    .local v1, "id":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 2254
    .local v4, "slotId":I
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimActiveState(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    goto :goto_0

    .end local v1    # "id":I
    .end local v4    # "slotId":I
    :cond_4
    move v5, v6

    .line 2256
    goto :goto_0
.end method

.method public clearFailedUnlockAttempts()V
    .locals 2

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2171
    return-void
.end method

.method public clearFingerprintRecognized()V
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2183
    return-void
.end method

.method public clearSecBiometricUnlockAttempt()V
    .locals 2

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2187
    return-void
.end method

.method public dispatchBootCompleted()V
    .locals 2

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1556
    return-void
.end method

.method public dispatchFinishedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    const/4 v3, 0x0

    .line 2354
    monitor-enter p0

    .line 2355
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 2356
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2357
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x140

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2358
    return-void

    .line 2356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchScreenTurnedOff()V
    .locals 1

    .prologue
    .line 2371
    monitor-enter p0

    .line 2372
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 2373
    monitor-exit p0

    .line 2374
    return-void

    .line 2373
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchScreenTurnedOn()V
    .locals 1

    .prologue
    .line 2361
    monitor-enter p0

    .line 2362
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 2363
    monitor-exit p0

    .line 2364
    return-void

    .line 2363
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchSetBackground(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1179
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "dispatchSetBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1181
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1182
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1183
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSetBackground(Landroid/graphics/Bitmap;)V

    .line 1181
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1187
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public dispatchStartedWakingUp()V
    .locals 2

    .prologue
    .line 2347
    monitor-enter p0

    .line 2348
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 2349
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2350
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2351
    return-void

    .line 2349
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2513
    const-string v4, "KeyguardUpdateMonitor state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2514
    const-string v4, "  SIM States:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2515
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2516
    .local v0, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2518
    .end local v0    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    :cond_0
    const-string v4, "  Subs:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2519
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 2520
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 2521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2520
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2524
    .end local v1    # "i":I
    :cond_1
    const-string v4, "  Service states:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2525
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2526
    .local v3, "subId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2528
    .end local v3    # "subId":I
    :cond_2
    return-void
.end method

.method public getCachedDisplayClientState()Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    return-object v0
.end method

.method public getClockThemeFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockThemeFont:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2012
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040977

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2015
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 2395
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2397
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 2398
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2402
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 4

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 2426
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2429
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 2430
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Can\'t get EnterpriseDeviceManager: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2434
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public getFailedSecBiometricUnlockAttempts()I
    .locals 3

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getFailedUnlockAttempts()I
    .locals 3

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getFailedUnlockAttempts(IZ)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "useautowipe"    # Z

    .prologue
    .line 2158
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    .line 2159
    .local v0, "failedAttemptsBeforeWipe":I
    if-lez v0, :cond_1

    const/4 v1, 0x1

    .line 2161
    .local v1, "isITPolicyEnabled":Z
    :goto_0
    if-nez v1, :cond_0

    sget-boolean v2, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 2162
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v2

    .line 2164
    :goto_1
    return v2

    .line 2159
    .end local v1    # "isITPolicyEnabled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2164
    .restart local v1    # "isITPolicyEnabled":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    goto :goto_1
.end method

.method public getFailedUnlockAttemptswithITPolicy(I)I
    .locals 2
    .param p1, "userid"    # I

    .prologue
    .line 2406
    const/4 v0, 0x0

    .line 2408
    .local v0, "currentFailedAttempts":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2413
    :goto_0
    return v0

    .line 2411
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2410
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getIDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 4

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 2383
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 2385
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 2386
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Can\'t get IDevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2389
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method public getMaxSecBiometricUnlockAttemptsReached()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2198
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I
    .locals 8
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 2449
    const/4 v5, -0x1

    .line 2450
    .local v5, "resultId":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2451
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2452
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v7, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v7

    invoke-static {v7}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequestWithSlot(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2454
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v5

    .line 2480
    :cond_0
    :goto_0
    return v5

    .line 2455
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v7, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v7

    invoke-static {v7}, Lcom/android/keyguard/sec/MultiSimUtils;->getPUKRequestWithSlot(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2457
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v5

    goto :goto_0

    .line 2461
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v4

    .line 2462
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const v0, 0x7fffffff

    .line 2463
    .local v0, "bestSlotId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 2464
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 2465
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 2466
    .local v2, "id":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    .line 2467
    .local v6, "slotId":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2468
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    if-ne p1, v7, :cond_3

    if-le v0, v6, :cond_3

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimActiveState(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2469
    move v5, v2

    .line 2470
    move v0, v6

    .line 2463
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2473
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    if-ne p1, v7, :cond_3

    if-le v0, v6, :cond_3

    .line 2474
    move v5, v2

    .line 2475
    move v0, v6

    goto :goto_2
.end method

.method public getNextSubIdForStateCTC(Lcom/android/internal/telephony/IccCardConstants$State;)I
    .locals 10
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 2484
    const/4 v5, -0x1

    .line 2485
    .local v5, "resultId":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v4

    .line 2486
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const v0, 0x7fffffff

    .line 2487
    .local v0, "bestSlotId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 2488
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 2489
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 2490
    .local v2, "id":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    .line 2491
    .local v6, "slotId":I
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNextSubIdForStateCTC slotId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNextSubIdForStateCTC getPINPUKSlot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    if-ne p1, v7, :cond_0

    if-le v0, v6, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v7

    if-ne v7, v6, :cond_0

    .line 2494
    move v5, v2

    .line 2495
    move v0, v6

    .line 2497
    :cond_0
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNextSubIdForStateCTC  current resultId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2499
    .end local v2    # "id":I
    .end local v3    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "slotId":I
    :cond_1
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNextSubIdForStateCTC  resultId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    return v5
.end method

.method public getNumericThemeFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNumericThemeFont:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 2234
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getSimActiveState(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2264
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimActiveState slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    if-gt p1, v2, :cond_0

    if-gez p1, :cond_2

    :cond_0
    move v1, v2

    .line 2276
    :cond_1
    :goto_0
    return v1

    .line 2267
    :cond_2
    const/4 v3, 0x2

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 2268
    .local v0, "simActive":[I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v1

    .line 2269
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 2271
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimActiveState simActive1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimActiveState simActive2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    aget v3, v0, p1

    if-eqz v3, :cond_1

    move v1, v2

    .line 2276
    goto :goto_0

    .line 2267
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 2280
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSapConnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2283
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method public getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    return-object v0
.end method

.method getSubscriptionInfo(Z)Ljava/util/List;
    .locals 3
    .param p1, "forceReload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    .line 514
    .local v0, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 515
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getSubscriptionInfo  list is null - handleSimSubscription Fail !!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 518
    :cond_1
    if-nez v0, :cond_2

    .line 520
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getSubscriptionInfo  list is null - handleSimSubscription Fail !!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    .line 525
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    return-object v1

    .line 523
    :cond_2
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    goto :goto_0
.end method

.method public getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 2504
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v2

    .line 2505
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2506
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 2507
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 2509
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v1

    .line 2505
    .restart local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2509
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSystemThemeFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemThemeFont:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephonyPlmn(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 2134
    move v0, p1

    .line 2135
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 2136
    :cond_0
    const/4 v0, 0x0

    .line 2138
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getTelephonySpn(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 2142
    move v0, p1

    .line 2143
    .local v0, "index":I
    if-lez v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 2144
    :cond_0
    const/4 v0, 0x0

    .line 2146
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getUserCanSkipBouncer(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 714
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

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

.method public getUserHasTrust(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserTrustIsManaged(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleBootCompleted()V
    .locals 4

    .prologue
    .line 1573
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleBootCompleted()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    .line 1575
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-eqz v2, :cond_1

    .line 1583
    :cond_0
    return-void

    .line 1576
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 1577
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1578
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1579
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_2

    .line 1580
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    .line 1577
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 3

    .prologue
    .line 1469
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1470
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1471
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1472
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    .line 1469
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1475
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 4

    .prologue
    .line 1597
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1598
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1599
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1600
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 1597
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1603
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 1605
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1606
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 1608
    :cond_2
    return-void
.end method

.method protected handleFinishedGoingToSleep(I)V
    .locals 5
    .param p1, "arg1"    # I

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 1163
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1164
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1165
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1166
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 1164
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1170
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1172
    const-string v3, "PERF"

    const-string v4, "KeyguardUpdateMonitor - cb.onScreenTurnedOff() end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "newState"    # Ljava/lang/String;

    .prologue
    .line 1614
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePhoneStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1616
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 1622
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1623
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1624
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1625
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 1622
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1617
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_2
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1618
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 1619
    :cond_3
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1620
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 1628
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 1634
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingerModeChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    .line 1636
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1637
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1638
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1639
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 1636
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1642
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleSimMgtActivatedChanged()V
    .locals 13

    .prologue
    .line 470
    const-string v10, "KeyguardUpdateMonitor"

    const-string v11, "handleSimMgtActivatedChanged"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v10, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    .line 473
    .local v7, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v7, :cond_0

    .line 474
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 475
    .local v8, "subInfo":Landroid/telephony/SubscriptionInfo;
    const-string v10, "KeyguardUpdateMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SubInfo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    const-string v10, "KeyguardUpdateMonitor"

    const-string v11, "onSubscriptionInfoChanged: list is null"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_1
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v9

    .line 486
    .local v9, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v1, "changedSubscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 488
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 489
    .local v5, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 491
    .end local v5    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 492
    iget-object v11, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 493
    .local v2, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    iget-object v10, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_4

    .line 494
    iget-object v10, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 495
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 496
    iget v10, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v11, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v12, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v10, v11, v12}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 493
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 491
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 500
    .end local v2    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    .end local v6    # "j":I
    :cond_5
    return-void
.end method

.method protected handleSimSubscriptionInfoChanged()V
    .locals 14

    .prologue
    .line 428
    const-string v11, "KeyguardUpdateMonitor"

    const-string v12, "onSubscriptionInfoChanged()"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v11, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v8

    .line 431
    .local v8, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v8, :cond_0

    .line 432
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 433
    .local v9, "subInfo":Landroid/telephony/SubscriptionInfo;
    const-string v11, "KeyguardUpdateMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SubInfo:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    const-string v11, "KeyguardUpdateMonitor"

    const-string v12, "onSubscriptionInfoChanged: list is null"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v10

    .line 444
    .local v10, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v2, "changedSubscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 446
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 447
    .local v6, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    move-result v1

    .line 448
    .local v1, "changed":Z
    if-eqz v1, :cond_2

    .line 449
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 452
    .end local v1    # "changed":Z
    .end local v6    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_6

    .line 453
    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 454
    .local v3, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    iget-object v11, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_5

    .line 455
    iget-object v11, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 456
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 457
    iget v11, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v12, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v13, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 454
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 452
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 467
    .end local v3    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    .end local v7    # "j":I
    :cond_6
    return-void
.end method

.method protected handleStartedWakingUp()V
    .locals 5

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1148
    const-string v3, "PERF"

    const-string v4, "KeyguardUpdateMonitor - cb.onScreenTurnedOn() start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1151
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1152
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1153
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 1151
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1158
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    const-string v3, "PERF"

    const-string v4, "KeyguardUpdateMonitor - cb.onScreenTurnedOn() end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    return-void
.end method

.method protected handleUserSwitchComplete(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1530
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 1531
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1533
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    if-eqz v2, :cond_1

    .line 1534
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleUserSwitchComplete() It\'s Knox UserSwitching"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    .line 1546
    :cond_0
    return-void

    .line 1540
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1541
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1542
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_2

    .line 1543
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 1540
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected handleUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1481
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 1482
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1485
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    .line 1486
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOldUserPersona:Z

    if-eqz v3, :cond_0

    .line 1487
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "mIsOldUserPersona is true!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    .line 1491
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 1492
    .local v2, "mPm":Landroid/os/PersonaManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1493
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "Current user is persona!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    .line 1495
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOldUserPersona:Z

    .line 1497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1498
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1500
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1501
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKnoxSwitching()V

    .line 1497
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1504
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_2
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "mIsOldUserPersona = false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOldUserPersona:Z

    .line 1508
    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    if-eqz v3, :cond_4

    .line 1509
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "handleUserSwitching() It\'s Knox UserSwitching"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :goto_1
    return-void

    .line 1514
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 1515
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1516
    .restart local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_5

    .line 1517
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 1514
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1521
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_6
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1522
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public hasBootCompleted()Z
    .locals 1

    .prologue
    .line 1590
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    return v0
.end method

.method public isAlternateUnlockEnabled()Z
    .locals 1

    .prologue
    .line 2207
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    return v0
.end method

.method public isAppliedDefaultTheme()Z
    .locals 1

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsAppliedDefaultTheme:Z

    return v0
.end method

.method public isCoverState()Z
    .locals 1

    .prologue
    .line 1846
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCoverState:Z

    return v0
.end method

.method public isDeviceInteractive()Z
    .locals 1

    .prologue
    .line 2377
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 2154
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isFaceUnlockRunning(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isFingerPrintMigrationCompleted()Z
    .locals 2

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintMigrated(I)Z

    move-result v0

    return v0
.end method

.method public isFingerprintDetectionRunning()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionRunning:Z

    return v0
.end method

.method public isITPolicyenabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2417
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 2419
    .local v0, "isITPolicyEnabled":Z
    :goto_0
    return v0

    .line 2417
    .end local v0    # "isITPolicyEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIccBlockedPermanently()Z
    .locals 1

    .prologue
    .line 2338
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2339
    const/4 v0, 0x1

    .line 2341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 2556
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method public isMDMenabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2438
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 2440
    .local v0, "isMDMenabled":Z
    :goto_0
    return v0

    .line 2438
    .end local v0    # "isMDMenabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSapConnected()Z
    .locals 1

    .prologue
    .line 2544
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSapConnected:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 2367
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return v0
.end method

.method public isShowingCMAS()Z
    .locals 1

    .prologue
    .line 1838
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowingCMAS:Z

    return v0
.end method

.method public isSimPinSecure()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2215
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2216
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v3

    .line 2230
    :cond_0
    :goto_0
    return v3

    .line 2220
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 2221
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2222
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2223
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 2224
    .local v2, "slotId":I
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimActiveState(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "slotId":I
    :cond_3
    move v3, v4

    .line 2230
    goto :goto_0
.end method

.method public isSimPinVoiceSecure()Z
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    return v0
.end method

.method public isUnlockCompleted()Z
    .locals 1

    .prologue
    .line 2565
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v0

    return v0
.end method

.method public isUnlockWithFingerPrintPossible(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnlockingWithFingerprintAllowed()Z
    .locals 1

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasAuthenticatedSinceBoot:Z

    return v0
.end method

.method public onTrustChanged(ZII)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .prologue
    .line 415
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 416
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 417
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 418
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    .line 420
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 421
    invoke-virtual {v0, p3, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustGrantedWithFlags(II)V

    .line 416
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 3
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 530
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 532
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 533
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 534
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    .line 532
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 2053
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2056
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 2057
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "Object tried to add another callback"

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Called by"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2065
    :goto_1
    return-void

    .line 2055
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2062
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2063
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 2064
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_1
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 2039
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2041
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 2042
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2040
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2045
    :cond_1
    return-void
.end method

.method public reportEmergencyCallAction(Z)V
    .locals 2
    .param p1, "bypassHandler"    # Z

    .prologue
    .line 2126
    if-nez p1, :cond_0

    .line 2127
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2131
    :goto_0
    return-void

    .line 2129
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    goto :goto_0
.end method

.method public reportFailedSecBiometricUnlockAttempt()V
    .locals 3

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2191
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 3

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2179
    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 2111
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "reportSimUnlocked"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportSimUnlocked(subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 2114
    .local v0, "slotId":I
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 2115
    return-void
.end method

.method public resumeCall()V
    .locals 2

    .prologue
    .line 2549
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 2550
    return-void
.end method

.method public sendKeyguardBouncerChanged(Z)V
    .locals 4
    .param p1, "showingBouncer"    # Z

    .prologue
    .line 2096
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyguardBouncerChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x142

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2098
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2099
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2100
    return-void

    .line 2098
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendKeyguardReset()V
    .locals 2

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2090
    return-void
.end method

.method public sendKeyguardVisibilityChanged(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .prologue
    .line 2082
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyguardVisibilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x137

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2084
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2085
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2086
    return-void

    .line 2084
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlternateUnlockEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2211
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    .line 2212
    return-void
.end method

.method public setCoverState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1842
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCoverState:Z

    .line 1843
    return-void
.end method

.method public shouldShowSIMLock()Z
    .locals 1

    .prologue
    .line 2540
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShouldShowSIMLock:Z

    return v0
.end method

.method public updateCMASText(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 1824
    if-eqz p1, :cond_0

    .line 1825
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCMASText( show = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowingCMAS:Z

    if-eq v2, p1, :cond_2

    .line 1827
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowingCMAS:Z

    .line 1828
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1829
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1830
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1831
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onCMASChanged()V

    .line 1828
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1835
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

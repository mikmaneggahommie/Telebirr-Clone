.class public Lcom/android/systemui/keyguard/KeyguardViewMediator;
.super Lcom/android/systemui/SystemUI;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardViewMediator$19;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field private static final ACTION_SNOTE_SCREEN_OFF:Ljava/lang/String; = "com.samsung.android.snote.SCREEN_OFF"

.field private static final ACTION_SNOTE_SCREEN_ON:Ljava/lang/String; = "com.samsung.android.snote.SCREEN_ON"

.field public static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final BIG_VIEW:Ljava/lang/String; = "bigView"

.field public static final CARRIER_FLPP_LOCKED_ACTION:Ljava/lang/String; = "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

.field public static final CARRIER_FLPP_UNLOCKED_ACTION:Ljava/lang/String; = "com.sec.android.FindingLostPhonePlus.CANCEL"

.field private static final DBG_WAKE:Z = false

.field private static final DEBUG:Z = true

.field private static final DEBUG_SIM_STATES:Z = true

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final DISABLE_KEYGUARD_FACTORY_ACTION:Ljava/lang/String; = "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

.field private static final DISMISS:I = 0x11

.field private static final FINGERPRINT_COLLAPSE_SPEEDUP_FACTOR:F = 1.3f

.field public static final FMM_SAMSUNG_LOCKED_ACTION:Ljava/lang/String; = "com.samsung.internal.policy.impl.Keyguard.PCW_LOCKED"

.field public static final FMM_SAMSUNG_UNLOCKED_ACTION:Ljava/lang/String; = "com.samsung.internal.policy.impl.Keyguard.PCW_UNLOCKED"

.field private static final HIDE:I = 0x3

.field private static final KEYGUARD_ANALYTICS_SETTING:Ljava/lang/String; = "keyguard_analytics"

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_DONE_FALSE:I = 0x1c

.field private static final KEYGUARD_DONE_PENDING_TIMEOUT:I = 0x14

.field private static final KEYGUARD_DONE_PENDING_TIMEOUT_MS:J = 0xbb8L

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final LAUNCH_ACTIVITY_BENDED:I = 0x1b

.field private static final LAUNCH_PERSO_LOCK:I = 0x1a

.field private static final LAUNCH_SD_LOCK:I = 0x1d

.field private static final LOCK_NOTIFY_ACTION:Ljava/lang/String; = "com.samsung.Keyguard.LOCK_NOTIFY"

.field private static final NOTIFY_FINISHED_GOING_TO_SLEEP:I = 0x6

.field private static final NOTIFY_SCREEN_TURNED_OFF:I = 0x21

.field private static final NOTIFY_SCREEN_TURNED_ON:I = 0x20

.field private static final NOTIFY_SCREEN_TURNING_ON:I = 0x7

.field private static final NOTIFY_STARTED_WAKING_UP:I = 0x15

.field private static final ON_ACTIVITY_DRAWN:I = 0x13

.field private static OUT_OF_RANGE_ALERT_TIMEOUT:I = 0x0

.field private static final REMOVE_ADAPTIVE_EVENT:I = 0x17

.field private static final REQUEST_CLASS:Ljava/lang/String; = "requestClass"

.field private static final RESET:I = 0x4

.field private static final SET_ADAPTIVE_EVENT:I = 0x16

.field private static final SET_OCCLUDED:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final SMALL_VIEW:Ljava/lang/String; = "smallView"

.field private static final SMART_UNLOCK_PERMISSION:Ljava/lang/String; = "com.sec.android.permission.SMART_UNLOCK"

.field private static final START_KEYGUARD_EXIT_ANIM:I = 0x12

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final UPDATE_ADAPTIVE_EVENT:I = 0x18

.field private static final UPDATE_RSSI_FOR_SMART_UNLOCK:I = 0x19

.field private static final USER_PRESENT_INTENT:Landroid/content/Intent;

.field private static final VERIFY_UNLOCK:I = 0x5


# instance fields
.field private mAdaptiveEventManager:Lcom/android/keyguard/sec/AdaptiveEventManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBendedBundle:Landroid/os/Bundle;

.field private mBootCompleted:Z

.field private mBootSendUserPresent:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCriteria_IN_RSSI:I

.field private mCriteria_OUT_RSSI:I

.field private mCurrentOrientation:I

.field private mDelayedShowingSequence:I

.field private mDeviceInteractive:Z

.field private mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

.field private mExternallyEnabled:Z

.field private mGoingToSleep:Z

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mHideAnimationRun:Z

.field private mHiding:Z

.field private mInputRestricted:Z

.field private mIsSetOccludedEnqeued:Z

.field private mIsUsbAlreadyConnected:Z

.field private mIsValidValue:Z

.field private mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

.field private mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field private mKeyguardDonePending:Z

.field private mKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

.field private final mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

.field private final mKeyguardStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/IKeyguardStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLidOpened:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mNeedReenableAdbAfterUnlock:Z

.field private mNeedToReshowWhenReenabled:Z

.field private mOccluded:Z

.field private mOffset_IN_RSSI:I

.field private mOffset_OUT_RSSI:I

.field private final mOnActivityDrawnRunnable:Ljava/lang/Runnable;

.field private mOutOfRangeAlertRunnable:Ljava/lang/Runnable;

.field private mPM:Landroid/os/PowerManager;

.field private mPendingLock:Z

.field private mPendingReset:Z

.field private mPhoneState:I

.field private final mSPenReceiver:Landroid/content/BroadcastReceiver;

.field private mSViewCoverCovered:Z

.field private mSViewCoverCoveredAtBoot:Z

.field private mScreenOffByProxSensor:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSecureLockSoundId:I

.field private mSecureUnlockSoundId:I

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowing:Z

.field private final mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mSuppressNextLockSound:Z

.field private mSuppressNextUnLockSound:Z

.field private mSwitchingUser:Z

.field private mSystemReady:Z

.field private mTrust:Z

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mTrustedSoundId:I

.field private mUiSoundsStreamType:I

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mWM:Landroid/view/IWindowManager;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndUnlocking:Z

.field private mWearabledevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 3169
    const/16 v0, 0x7d0

    sput v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->OUT_OF_RANGE_ALERT_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 318
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 325
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 335
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 358
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    .line 362
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    .line 382
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 384
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 385
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 406
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    .line 423
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z

    .line 425
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrust:Z

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 452
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 453
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCurrentOrientation:I

    .line 456
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 459
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLidOpened:Z

    .line 461
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 463
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 794
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1635
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsSetOccludedEnqeued:Z

    .line 2060
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mEdmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2093
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSPenReceiver:Landroid/content/BroadcastReceiver;

    .line 2112
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2325
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 2666
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    .line 2746
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOnActivityDrawnRunnable:Ljava/lang/Runnable;

    .line 3170
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    .line 3172
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;

    .line 3193
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsValidValue:Z

    .line 3194
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I

    .line 3195
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I

    .line 3196
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I

    .line 3197
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I

    .line 3199
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 3389
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

    .line 3409
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOnOffToSnote(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrust:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrust:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playTrustedSound()V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSViewCoverCoveredAtBoot:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSViewCoverCovered:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSViewCoverCovered:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsSetOccludedEnqeued:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsSetOccludedEnqeued:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAdbEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onSdpLocked()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isKnoxCustomLockScreenDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I

    return p1
.end method

.method static synthetic access$4600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyFinishedGoingToSleep()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyStartedWakingUp()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetOccluded(Z)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleOnActivityDrawn()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleUpdateRSSI(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSharedDeviceLock()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleLaunchActivityBended(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureLockSoundId:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureUnlockSoundId:I

    return v0
.end method

.method static synthetic access$6600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    return v0
.end method

.method static synthetic access$6602(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    return p1
.end method

.method static synthetic access$6700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    return v0
.end method

.method static synthetic access$6702(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwipeLockShowingLocked(Z)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsValidValue:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsValidValue:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7300()I
    .locals 1

    .prologue
    .line 187
    sget v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->OUT_OF_RANGE_ALERT_TIMEOUT:I

    return v0
.end method

.method static synthetic access$7400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method private adjustStatusBarLocked()V
    .locals 4

    .prologue
    .line 2807
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 2808
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2811
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_2

    .line 2812
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Could not get status bar manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :cond_1
    :goto_0
    return-void

    .line 2816
    :cond_2
    const/4 v0, 0x0

    .line 2817
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_3

    .line 2821
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 2822
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 2824
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2825
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 2829
    :cond_4
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOccluded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isSecure=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 2834
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    .line 1412
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 1413
    return-void
.end method

.method private checkSViewCoverWithNonSecure()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3380
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "automatic_unlock"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 3382
    .local v0, "isAutoUnlockEnabled":Z
    :goto_0
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAutoUnlockEnabled in KeyguardViewMediator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSViewCoverCovered:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    return v1

    .end local v0    # "isAutoUnlockEnabled":Z
    :cond_1
    move v0, v2

    .line 3380
    goto :goto_0

    .restart local v0    # "isAutoUnlockEnabled":Z
    :cond_2
    move v1, v2

    .line 3384
    goto :goto_1
.end method

.method private checkSdpCondition(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 3521
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSdpSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isPwdChangeRequested()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 3525
    .local v0, "res":Z
    :goto_0
    if-nez v0, :cond_0

    .line 3526
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDP :: Next event will be canceled... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    :cond_0
    return v0

    .line 3521
    .end local v0    # "res":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doKeyguardLaterLocked(I)V
    .locals 32
    .param p1, "why"    # I

    .prologue
    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1260
    .local v6, "cr":Landroid/content/ContentResolver;
    const-string v28, "screen_off_timeout"

    const/16 v29, 0x7530

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    int-to-long v8, v0

    .line 1264
    .local v8, "displayTimeout":J
    const-string v28, "lock_screen_lock_after_timeout"

    const/16 v29, 0x1388

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 1269
    .local v16, "lockAfterTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v28

    const/16 v29, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v30

    invoke-virtual/range {v28 .. v30}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v18

    .line 1273
    .local v18, "policyTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "enterprise_policy"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1275
    .local v7, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    const-wide/16 v24, -0x1

    .line 1276
    .local v24, "unlock_delay":J
    if-eqz v7, :cond_0

    .line 1277
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/PasswordPolicy;->getPasswordLockDelay()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 1278
    :cond_0
    move-wide/from16 v10, v16

    .line 1279
    .local v10, "final_delay":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v28

    if-eqz v28, :cond_1

    const-wide/16 v28, 0x0

    cmp-long v28, v24, v28

    if-ltz v28, :cond_1

    .line 1280
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v24

    move-wide/from16 v0, v28

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 1281
    const-string v28, "KeyguardViewMediator"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "final_delay was changed by mdm"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_1
    const-wide/16 v28, 0x0

    cmp-long v28, v18, v28

    if-lez v28, :cond_b

    .line 1287
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1288
    sub-long v28, v18, v8

    move-wide/from16 v0, v28

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    .line 1291
    .local v22, "timeout":J
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1292
    const/16 v28, 0x2

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 1293
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    .line 1312
    :cond_2
    :goto_0
    const-string v28, "KeyguardViewMediator"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "timeout="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_3
    :goto_1
    const-wide/16 v28, 0x0

    cmp-long v28, v22, v28

    if-gtz v28, :cond_12

    .line 1350
    const/16 v28, 0x3

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 1351
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1353
    :cond_4
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwipeLockShowingLocked(Z)V

    .line 1354
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v28

    if-eqz v28, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v28, v0

    if-eqz v28, :cond_11

    .line 1355
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 1409
    :cond_5
    :goto_2
    return-void

    .line 1294
    :cond_6
    const/16 v28, 0x3

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 1295
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v8

    .line 1299
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSViewCoverCovered:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 1300
    const-wide/16 v8, 0x1770

    .line 1302
    :cond_8
    cmp-long v28, v18, v8

    if-gtz v28, :cond_9

    .line 1303
    const-wide/16 v22, 0x0

    goto :goto_0

    .line 1305
    :cond_9
    cmp-long v28, v18, v10

    if-lez v28, :cond_a

    .line 1306
    sub-long v22, v10, v8

    goto :goto_0

    .line 1308
    :cond_a
    sub-long v22, v18, v8

    goto/16 :goto_0

    .line 1317
    .end local v22    # "timeout":J
    :cond_b
    move-wide/from16 v22, v10

    .line 1318
    .restart local v22    # "timeout":J
    const-string v28, "KeyguardViewMediator"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "timeout : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1323
    const/16 v28, 0x3

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    .line 1324
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1325
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v8

    .line 1329
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSViewCoverCovered:Z

    move/from16 v28, v0

    if-eqz v28, :cond_d

    .line 1330
    const-wide/16 v8, 0x1770

    .line 1332
    :cond_d
    sub-long v22, v10, v8

    .line 1341
    :cond_e
    :goto_3
    const-string v28, "KeyguardViewMediator"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "timeout="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1335
    :cond_f
    const/16 v28, 0x3

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    .line 1336
    const-wide/16 v22, 0x1388

    goto :goto_3

    .line 1337
    :cond_10
    const/16 v28, 0x2

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    .line 1338
    const-wide/16 v22, 0x0

    goto :goto_3

    .line 1357
    :cond_11
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1361
    :cond_12
    const/4 v15, 0x1

    .line 1362
    .local v15, "isSetAlarm":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "automatic_unlock"

    const/16 v30, 0x0

    const/16 v31, -0x2

    invoke-static/range {v28 .. v31}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 1366
    .local v13, "isAutoUnlock":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v28

    if-nez v28, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v28

    if-eqz v28, :cond_16

    :cond_13
    const/4 v14, 0x1

    .line 1368
    .local v14, "isSecureLock":Z
    :goto_4
    if-nez v14, :cond_14

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v13, v0, :cond_14

    .line 1381
    :cond_14
    if-eqz v15, :cond_15

    .line 1383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    add-long v26, v28, v22

    .line 1384
    .local v26, "when":J
    new-instance v12, Landroid/content/Intent;

    const-string v28, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1385
    .local v12, "intent":Landroid/content/Intent;
    const-string v28, "seq"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/high16 v30, 0x10000000

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 1388
    .local v20, "sender":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-wide/from16 v2, v26

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1390
    const-string v28, "KeyguardViewMediator"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "setting alarm to turn off keyguard, seq = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v20    # "sender":Landroid/app/PendingIntent;
    .end local v26    # "when":J
    :cond_15
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v28

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1394
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v28, v0

    if-eqz v28, :cond_17

    .line 1395
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenTurnedOff()V

    .line 1396
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto/16 :goto_2

    .line 1366
    .end local v14    # "isSecureLock":Z
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1398
    .restart local v14    # "isSecureLock":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v28

    if-eqz v28, :cond_19

    const/16 v21, 0x0

    .line 1399
    .local v21, "swipelockshowing":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwipeLockShowingLocked(Z)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v28

    if-eqz v28, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v28

    if-nez v28, :cond_18

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 1404
    :cond_18
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1398
    .end local v21    # "swipelockshowing":Z
    :cond_19
    const/16 v21, 0x1

    goto :goto_5
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1728
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    :goto_0
    return-void

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->unbindWallpaperService()V

    goto :goto_0
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;Z)Z
    .locals 12
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "dummy"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1741
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1742
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v10

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLidOpened:Z

    if-eqz v10, :cond_1

    .line 1744
    const-string v9, "KeyguardViewMediator"

    const-string v10, "doKeyguard: not showing because folder is opened"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_0
    :goto_0
    return v8

    .line 1748
    :cond_1
    const-string v10, "KeyguardViewMediator"

    const-string v11, "doKeyguardLocked: started"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iget-boolean v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v10, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1753
    const-string v9, "KeyguardViewMediator"

    const-string v10, "doKeyguard: not showing because externally disabled"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    invoke-direct {p0, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwipeLockShowingLocked(Z)V

    goto :goto_0

    .line 1769
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1770
    const-string v8, "KeyguardViewMediator"

    const-string v10, "doKeyguard: not showing because it is already showing"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    move v8, v9

    .line 1773
    goto :goto_0

    .line 1778
    :cond_4
    new-instance v4, Landroid/lsm/LockedStatePasswordWrapper;

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/lsm/LockedStatePasswordWrapper;-><init>(Landroid/content/Context;)V

    .line 1779
    .local v4, "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    invoke-virtual {v4}, Landroid/lsm/LockedStatePasswordWrapper;->setLocked()I

    .line 1784
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1785
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v10, "access_control_enabled"

    const/4 v11, -0x2

    invoke-static {v1, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v9, :cond_5

    .line 1787
    const-string v9, "KeyguardViewMediator"

    const-string v10, "doKeyguard: not showing because access control is enabled"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    invoke-direct {p0, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1789
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    goto :goto_0

    .line 1794
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v6

    .line 1795
    .local v6, "provisioned":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 1796
    .local v5, "numPhones":I
    const/4 v3, 0x0

    .line 1797
    .local v3, "lockedOrMissing":Z
    new-array v7, v5, [Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1799
    .local v7, "state":[Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_7

    .line 1800
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v10

    aput-object v10, v7, v2

    .line 1801
    if-nez v3, :cond_6

    aget-object v10, v7, v2

    invoke-virtual {p0, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isLockedOrMissing(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_6
    move v3, v9

    .line 1802
    :goto_2
    if-eqz v3, :cond_a

    .line 1805
    :cond_7
    if-nez v3, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v10

    if-nez v10, :cond_b

    .line 1807
    :cond_8
    const-string v10, "KeyguardViewMediator"

    const-string v11, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintMigrated(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1810
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v11

    invoke-virtual {v10, v9, v11}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintMigrated(ZI)V

    goto/16 :goto_0

    :cond_9
    move v3, v8

    .line 1801
    goto :goto_2

    .line 1799
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1817
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isKnoxCustomLockScreenDisabled()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1818
    const-string v9, "KeyguardViewMediator"

    const-string v10, "doKeyguard: not showing because it is disabled by Knox Customization"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1823
    :cond_c
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v10

    if-nez v10, :cond_e

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v10

    if-nez v10, :cond_e

    .line 1833
    :cond_d
    const-string v10, "KeyguardViewMediator"

    const-string v11, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintMigrated(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1835
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v11

    invoke-virtual {v10, v9, v11}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintMigrated(ZI)V

    goto/16 :goto_0

    .line 1841
    :cond_e
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->checkVoldPassword(I)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v10

    if-nez v10, :cond_f

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v10

    if-nez v10, :cond_f

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked()Z

    move-result v10

    if-nez v10, :cond_f

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v10

    if-nez v10, :cond_f

    .line 1848
    const-string v9, "KeyguardViewMediator"

    const-string v10, "Not showing lock screen since just decrypted"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    invoke-direct {p0, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1851
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    goto/16 :goto_0

    .line 1856
    :cond_f
    const-string v10, "trigger_restart_min_framework"

    const-string v11, "vold.decrypt"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isNewZealandFeature()Z

    move-result v10

    if-nez v10, :cond_10

    .line 1857
    const-string v9, "KeyguardViewMediator"

    const-string v10, "doKeyguard: not showing because device encryt"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-direct {p0, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    goto/16 :goto_0

    .line 1863
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1864
    const-string v9, "KeyguardViewMediator"

    const-string v10, "doKeyguard: not showing because factory mode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1869
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkSViewCoverWithNonSecure()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1870
    const-string v9, "KeyguardViewMediator"

    const-string v10, "doKeyguard: not showing because cover is showing"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    if-eqz p1, :cond_0

    const-string v9, "fromOnSystemReady"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1877
    const-string v9, "KeyguardViewMediator"

    const-string v10, "mShowing set to false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    invoke-direct {p0, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    goto/16 :goto_0

    .line 1884
    :cond_12
    const-string v8, "KeyguardViewMediator"

    const-string v10, "doKeyguard: showing the lock screen"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iput-boolean v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1886
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1888
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1889
    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 1890
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_13

    .line 1891
    invoke-virtual {v0, v9}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyKeyguardState(Z)V

    .end local v0    # "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :cond_13
    move v8, v9

    .line 1895
    goto/16 :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 3623
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 3624
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3627
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private handleHide()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2690
    monitor-enter p0

    .line 2691
    :try_start_0
    const-string v3, "KeyguardViewMediator"

    const-string v4, "handleHide"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2695
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "shared_device_status"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2696
    .local v1, "sd_status":I
    if-eq v1, v0, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v3, :cond_1

    .line 2697
    monitor-exit p0

    .line 2744
    .end local v1    # "sd_status":I
    :goto_0
    return-void

    .line 2702
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkSimPINStopHidingKeyguard()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2703
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldShowSIMLock()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2705
    .local v0, "airPlaneEnabled":Z
    :goto_1
    if-nez v0, :cond_3

    .line 2706
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Cancel handleHide because SIM PIN Secure !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    monitor-exit p0

    goto :goto_0

    .line 2743
    .end local v0    # "airPlaneEnabled":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    move v0, v2

    .line 2703
    goto :goto_1

    .line 2711
    :cond_3
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2712
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkSViewCoverWithNonSecure()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2715
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 2716
    const-string v2, "KeyguardViewMediator"

    const-string v3, "skip unlock sound, cover closed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    .line 2719
    monitor-exit p0

    goto :goto_0

    .line 2722
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v2, :cond_7

    .line 2723
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-nez v2, :cond_6

    .line 2724
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 2743
    :cond_5
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 2726
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 2729
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDisableWindowAnimationsForUnlock()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2730
    const-string v2, "KeyguardViewMediator"

    const-string v3, "force launch handleStartKeyguardExitAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    goto :goto_2

    .line 2739
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private handleKeyguardDone(ZZ)V
    .locals 7
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2422
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleKeyguardDone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    monitor-enter p0

    .line 2424
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 2425
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2433
    if-eqz p1, :cond_0

    .line 2434
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 2436
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 2438
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    if-eqz v2, :cond_2

    .line 2439
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Device is going to sleep, aborting keyguardDone"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :cond_1
    :goto_0
    return-void

    .line 2425
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2443
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_3

    .line 2445
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-interface {v2, p1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2450
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 2452
    if-eqz p1, :cond_3

    .line 2455
    iput-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 2456
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 2457
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V

    .line 2462
    :cond_3
    if-eqz p1, :cond_4

    .line 2463
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onSdpUnlocked()V

    .line 2466
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 2468
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_LockScreen_DisableADBConnDuringSecuredLock"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2469
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V

    .line 2472
    :cond_5
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2473
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 2474
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_1

    .line 2475
    invoke-virtual {v0, v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyKeyguardState(Z)V

    goto :goto_0

    .line 2446
    .end local v0    # "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :catch_0
    move-exception v1

    .line 2447
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call onKeyguardExitResult("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 2512
    monitor-enter p0

    .line 2513
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    .line 2515
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 2517
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2522
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2524
    :cond_0
    monitor-exit p0

    .line 2525
    return-void

    .line 2524
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleLaunchActivityBended(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 3451
    const-string v0, "PI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 3452
    .local v4, "pIntent":Landroid/app/PendingIntent;
    const-string v0, "FI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 3453
    .local v5, "fIntent":Landroid/content/Intent;
    const-string v0, "afterKeyguardGone"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3454
    .local v2, "afterKeyguardGone":Z
    const-string v0, "dismissIfInsecure"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 3456
    .local v3, "dismissIfInsecure":Z
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3457
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleLaunchActivityBended"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZLandroid/app/PendingIntent;Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZ)V

    .line 3476
    :cond_0
    return-void
.end method

.method private handleNotifyFinishedGoingToSleep()V
    .locals 2

    .prologue
    .line 2888
    const-string v0, "PERF"

    const-string v1, "KeyguardViewMediator - handleNotifyFinishedGoingToSleep() start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    monitor-enter p0

    .line 2890
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyFinishedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onFinishedGoingToSleep()V

    .line 2892
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2893
    const-string v0, "PERF"

    const-string v1, "KeyguardViewMediator - handleNotifyFinishedGoingToSleep() end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    return-void

    .line 2892
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenTurnedOff()V
    .locals 2

    .prologue
    .line 2960
    const-string v0, "PERF"

    const-string v1, "KeyguardViewMediator - handleNotifyScreenTurnedOff() start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    monitor-enter p0

    .line 2962
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOff()V

    .line 2964
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2965
    const-string v0, "PERF"

    const-string v1, "KeyguardViewMediator - handleNotifyScreenTurnedOff() end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    return-void

    .line 2964
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenTurnedOn()V
    .locals 2

    .prologue
    .line 2951
    const-string v0, "PERF"

    const-string v1, "KeyguardViewMediator - handleNotifyScreenTurnedOn() start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    monitor-enter p0

    .line 2953
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOn()V

    .line 2955
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2956
    const-string v0, "PERF"

    const-string v1, "KeyguardViewMediator - handleNotifyScreenTurnedOn() end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    return-void

    .line 2955
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 2906
    const-string v2, "PERF"

    const-string v3, "KeyguardViewMediator - handleNotifyScreenTurningOn() start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    monitor-enter p0

    .line 2908
    :try_start_0
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleNotifyScreenTurningOn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    if-eqz p1, :cond_0

    .line 2910
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz v2, :cond_1

    .line 2911
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 2946
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2947
    const-string v2, "PERF"

    const-string v3, "KeyguardViewMediator - handleNotifyScreenTurningOn() end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    return-void

    .line 2913
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    .line 2914
    .local v0, "isBootCompleted":Z
    if-eqz v0, :cond_2

    .line 2915
    const/4 v2, -0x8

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2916
    const-string v2, "KeyguardViewMediator"

    const-string v3, "onScreenTurnedOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    :cond_2
    if-eqz p1, :cond_4

    .line 2921
    const/4 v1, 0x0

    .line 2925
    .local v1, "isCallbackSet":Z
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isOccluded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2926
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setScreenOnCallback(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;)Z

    move-result v1

    .line 2935
    :cond_3
    if-nez v1, :cond_0

    .line 2936
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    goto :goto_0

    .line 2946
    .end local v0    # "isBootCompleted":Z
    .end local v1    # "isCallbackSet":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2939
    .restart local v0    # "isBootCompleted":Z
    :cond_4
    if-eqz v0, :cond_0

    .line 2940
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2941
    const-string v2, "KeyguardViewMediator"

    const-string v3, "callback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private handleNotifyStartedWakingUp()V
    .locals 2

    .prologue
    .line 2897
    const-string v0, "PERF"

    const-string v1, "KeyguardViewMediator - handleNotifyStartedWakingUp() start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    monitor-enter p0

    .line 2899
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onStartedWakingUp()V

    .line 2901
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2902
    const-string v0, "PERF"

    const-string v1, "KeyguardViewMediator - handleNotifyStartedWakingUp() end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    return-void

    .line 2901
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleOnActivityDrawn()V
    .locals 4

    .prologue
    .line 2757
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnActivityDrawn: mKeyguardDonePending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-eqz v0, :cond_0

    .line 2759
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onActivityDrawn()V

    .line 2764
    :goto_0
    return-void

    .line 2761
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOnActivityDrawnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2762
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOnActivityDrawnRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private handleReset()V
    .locals 4

    .prologue
    .line 2845
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 2846
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string v2, "2.0"

    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2847
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 2848
    .local v0, "personaManager":Landroid/os/PersonaManager;
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSimLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2849
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Kiosk container exist on device. Ignoring owner keyguard right now from handleReset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    :goto_0
    return-void

    .line 2852
    .restart local v0    # "personaManager":Landroid/os/PersonaManager;
    :cond_0
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Kiosk container not exists on device. handleReset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    :cond_1
    monitor-enter p0

    .line 2858
    :try_start_0
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleReset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 2860
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleSetOccluded(Z)V
    .locals 4
    .param p1, "isOccluded"    # Z

    .prologue
    .line 1664
    monitor-enter p0

    .line 1665
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1668
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    .line 1671
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eq v0, p1, :cond_1

    .line 1672
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 1673
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setOccluded(Z)V

    .line 1674
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1675
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1677
    :cond_1
    monitor-exit p0

    .line 1678
    return-void

    .line 1677
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSharedDeviceLock()V
    .locals 2

    .prologue
    .line 2053
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Dismiss for SD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 2055
    return-void
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 2592
    monitor-enter p0

    .line 2593
    :try_start_0
    iget-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v6, :cond_0

    .line 2594
    const-string v6, "KeyguardViewMediator"

    const-string v7, "ignoring handleShow because system is not ready."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    monitor-exit p0

    .line 2664
    :goto_0
    return-void

    .line 2597
    :cond_0
    const-string v6, "KeyguardViewMediator"

    const-string v7, "handleShow"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "shared_device_status"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2601
    .local v3, "sd_status":I
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v6, :cond_2

    if-eq v3, v9, :cond_1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 2602
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "isKeyguardLaunched"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 2603
    .local v4, "sharedDeviceBootcheck":I
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2604
    if-nez v4, :cond_3

    .line 2605
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "isKeyguardLaunched"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2618
    .end local v4    # "sharedDeviceBootcheck":I
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    .line 2619
    .local v5, "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string v7, "version"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2620
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 2621
    .local v2, "personaManager":Landroid/os/PersonaManager;
    invoke-virtual {v2}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSimLocked()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2622
    const-string v6, "KeyguardViewMediator"

    const-string v7, "Kiosk container exist on device. Ignoring owner keyguard right now from handleShow"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    monitor-exit p0

    goto :goto_0

    .line 2662
    .end local v2    # "personaManager":Landroid/os/PersonaManager;
    .end local v3    # "sd_status":I
    .end local v5    # "versionInfo":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2607
    .restart local v3    # "sd_status":I
    .restart local v4    # "sharedDeviceBootcheck":I
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2608
    monitor-exit p0

    goto/16 :goto_0

    .line 2611
    :cond_4
    if-nez v4, :cond_2

    .line 2612
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "isKeyguardLaunched"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 2625
    .end local v4    # "sharedDeviceBootcheck":I
    .restart local v2    # "personaManager":Landroid/os/PersonaManager;
    .restart local v5    # "versionInfo":Landroid/os/Bundle;
    :cond_5
    const-string v6, "KeyguardViewMediator"

    const-string v7, "Kiosk container not exists on device. handleShow"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    .end local v2    # "personaManager":Landroid/os/PersonaManager;
    :cond_6
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2631
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2633
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setKeyguardShowing(ZZ)V

    .line 2634
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2635
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2636
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 2637
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 2638
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2640
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 2642
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKDIModel()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2643
    :cond_7
    iget-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v6, :cond_a

    .line 2644
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.samsung.Keyguard.LOCK_NOTIFY"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2645
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-direct {v0, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2646
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2647
    const-string v6, "KeyguardViewMediator"

    const-string v7, "send Broadcast (LOCK_NOTIFY_ACTION)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2654
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 2656
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2659
    sget-boolean v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v6, :cond_9

    .line 2660
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onSdpLocked()V

    .line 2662
    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2663
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    goto/16 :goto_0

    .line 2649
    :cond_a
    :try_start_2
    const-string v6, "KeyguardViewMediator"

    const-string v7, "NOT sendBroadcast(not mBootCompleted!!)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private handleStartKeyguardExitAnimation(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 2767
    monitor-enter p0

    .line 2769
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-nez v0, :cond_0

    .line 2770
    monitor-exit p0

    .line 2804
    :goto_0
    return-void

    .line 2772
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2776
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    if-nez v0, :cond_1

    .line 2777
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    if-eqz v0, :cond_1

    .line 2778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 2779
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2783
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2784
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V

    .line 2785
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 2786
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 2791
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2792
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2794
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcastAsync()V

    .line 2795
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v0, :cond_2

    .line 2796
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 2798
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintMigrated(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2799
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintMigrated(ZI)V

    .line 2802
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->unbindWallpaperService()V

    .line 2803
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleUpdateRSSI(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extra"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 3309
    const-string v2, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3310
    .local v1, "rssi":I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3311
    .local v0, "RemoteRssidevice":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateRSSI( rssi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", BluetoothDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3336
    :cond_0
    :goto_0
    return-void

    .line 3316
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isKnoxCustomLockScreenDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3320
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_2

    .line 3321
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleUpdateRSSI(SMART_LOCK_SECURE_LOCK_TO_SWIPE_LOCK)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3323
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 3324
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 3325
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0

    .line 3327
    :cond_2
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    .line 3328
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleUpdateRSSI(SMART_LOCK_SWIPE_LOCK_TO_SECURE_LOCK) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3330
    invoke-direct {p0, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwipeLockShowingLocked(Z)V

    .line 3331
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 3332
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 3333
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0
.end method

.method private handleVerifyUnlock()V
    .locals 3

    .prologue
    .line 2868
    monitor-enter p0

    .line 2869
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2876
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setKeyguardShowing(ZZ)V

    .line 2877
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 2879
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2880
    monitor-exit p0

    .line 2881
    return-void

    .line 2880
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 2016
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2018
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2019
    return-void
.end method

.method private isActiveAdminEnabled()Z
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1900
    const/4 v0, 0x1

    .line 1902
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAdbEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3365
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isFactoryMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3340
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/os/FactoryTest;->checkAutomationTestOption(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 3345
    if-nez p1, :cond_0

    .line 3346
    const-string v2, "KeyguardViewMediator"

    const-string v3, "isGear1: device is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    :goto_0
    return v1

    .line 3350
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3351
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3352
    const-string v2, "KeyguardViewMediator"

    const-string v3, "isGear1: name is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3356
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GALAXY GEAR ("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3357
    const-string v1, "KeyguardViewMediator"

    const-string v2, "isGear1: device is B1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    const/4 v1, 0x1

    goto :goto_0

    .line 3360
    :cond_2
    const-string v2, "KeyguardViewMediator"

    const-string v3, "isGear1: device is not B1!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isInLockTaskMode()Z
    .locals 3

    .prologue
    .line 3615
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3616
    .local v0, "mAm":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 3617
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    .line 3619
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKnoxCustomLockScreenDisabled()Z
    .locals 3

    .prologue
    .line 939
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v0

    .line 940
    .local v0, "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getLockScreenOverrideMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPwdChangeRequested()Z
    .locals 5

    .prologue
    .line 3598
    const/4 v0, 0x0

    .line 3599
    .local v0, "isPwdChangeRequested":Z
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v1

    .line 3600
    .local v1, "mPwdPolicy":Landroid/app/enterprise/PasswordPolicy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v2

    if-lez v2, :cond_0

    .line 3602
    const/4 v0, 0x1

    .line 3604
    :cond_0
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPwdChangeRequested :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    return v0
.end method

.method private isSdpSupported()Z
    .locals 3

    .prologue
    .line 3512
    const/4 v0, 0x1

    .line 3515
    .local v0, "res":Z
    if-nez v0, :cond_0

    .line 3516
    const-string v1, "KeyguardViewMediator"

    const-string v2, "SDP :: Not supported device..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    :cond_0
    return v0
.end method

.method private lockSdp()V
    .locals 2

    .prologue
    .line 3541
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3556
    return-void
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 2

    .prologue
    .line 1456
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isKnoxCustomLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1464
    :cond_1
    return-void
.end method

.method private notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 2969
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v2

    .line 2970
    .local v2, "isBootCompleted":Z
    const/4 v0, 0x1

    .line 2972
    .local v0, "LCD_ON":I
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->onDrawn()V

    .line 2973
    const-string v3, "keyguard_profile"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2974
    const-string v3, "KeyguardViewMediator"

    const-string v4, "callbackAfterDraw / stopMethodTracing"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 2977
    :cond_0
    if-eqz v2, :cond_1

    .line 2978
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2979
    const-string v3, "KeyguardViewMediator"

    const-string v4, "callback.onShown()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2985
    :cond_1
    :goto_0
    return-void

    .line 2982
    :catch_0
    move-exception v1

    .line 2983
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "KeyguardViewMediator"

    const-string v4, "Exception calling onDrawn():"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyFinishedGoingToSleep()V
    .locals 2

    .prologue
    .line 1972
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyFinishedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1974
    return-void
.end method

.method private notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 1982
    const-string v1, "KeyguardViewMediator"

    const-string v2, "notifyScreenOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1984
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1985
    return-void
.end method

.method private notifyScreenOnOffToSnote(Ljava/lang/String;)V
    .locals 0
    .param p1, "onOffString"    # Ljava/lang/String;

    .prologue
    .line 778
    return-void
.end method

.method private notifyScreenTurnedOff()V
    .locals 3

    .prologue
    .line 1994
    const-string v1, "KeyguardViewMediator"

    const-string v2, "notifyScreenTurnedOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1996
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1997
    return-void
.end method

.method private notifyScreenTurnedOn()V
    .locals 3

    .prologue
    .line 1988
    const-string v1, "KeyguardViewMediator"

    const-string v2, "notifyScreenTurnedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1990
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1991
    return-void
.end method

.method private notifyStartedWakingUp()V
    .locals 2

    .prologue
    .line 1977
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyStartedWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1979
    return-void
.end method

.method private onSdpLocked()V
    .locals 4

    .prologue
    .line 3531
    const-string v1, "KeyguardViewMediator"

    const-string v2, "onSdpLocked :: Inside..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 3534
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkSdpCondition(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3538
    :goto_0
    return-void

    .line 3536
    :cond_0
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSdpLocked :: Lock SDP for User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lockSdp()V

    goto :goto_0
.end method

.method private onSdpUnlocked()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 3559
    const-string v5, "KeyguardViewMediator"

    const-string v6, "onSdpUnlocked :: Inside..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 3561
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkSdpCondition(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3577
    :goto_0
    return-void

    .line 3564
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    .line 3565
    .local v2, "quality":I
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v5

    if-nez v5, :cond_1

    const v5, 0x61000

    if-ne v2, v5, :cond_3

    :cond_1
    move v0, v1

    .line 3567
    .local v0, "isFingerprint":Z
    :goto_1
    if-nez v2, :cond_4

    .line 3569
    .local v1, "isSwipe":Z
    :goto_2
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSdpUnlocked :: Active quality = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    if-nez v1, :cond_2

    if-eqz v0, :cond_5

    .line 3572
    :cond_2
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSdpUnlocked :: Unlock SDP for User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->unlockSdp()V

    goto :goto_0

    .end local v0    # "isFingerprint":Z
    .end local v1    # "isSwipe":Z
    :cond_3
    move v0, v4

    .line 3565
    goto :goto_1

    .restart local v0    # "isFingerprint":Z
    :cond_4
    move v1, v4

    .line 3567
    goto :goto_2

    .line 3575
    .restart local v1    # "isSwipe":Z
    :cond_5
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSdpUnlocked :: User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has credential to verify... Skipped..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 10
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x1

    .line 2547
    if-nez p1, :cond_1

    .line 2570
    :cond_0
    :goto_0
    return-void

    .line 2548
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2549
    .local v7, "cr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 2551
    .local v9, "result":I
    :try_start_0
    const-string v0, "lockscreen_sounds_enabled"

    const/4 v1, -0x2

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2556
    :goto_1
    if-ne v9, v4, :cond_0

    .line 2557
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 2559
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 2560
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 2561
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    .line 2565
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2567
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0

    .line 2552
    :catch_0
    move-exception v8

    .line 2553
    .local v8, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v8}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private playSounds(Z)V
    .locals 4
    .param p1, "locked"    # Z

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    .line 2529
    .local v0, "isSecured":Z
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSecure() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v1, :cond_0

    .line 2531
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 2544
    :goto_0
    return-void

    .line 2535
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private playTrustedSound()V
    .locals 1

    .prologue
    .line 2573
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_0

    .line 2577
    :goto_0
    return-void

    .line 2576
    :cond_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    goto :goto_0
.end method

.method private resetKeyguardDonePendingLocked()V
    .locals 2

    .prologue
    .line 2988
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2989
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2990
    return-void
.end method

.method private resetStateLocked()V
    .locals 3

    .prologue
    .line 1948
    const-string v1, "KeyguardViewMediator"

    const-string v2, "resetStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1951
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLidOpened:Z

    if-eqz v1, :cond_0

    .line 1953
    const-string v1, "KeyguardViewMediator"

    const-string v2, "resetStateLocked: not showing because folder is opened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    :goto_0
    return-void

    .line 1958
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1959
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendUserPresentBroadcast()V
    .locals 8

    .prologue
    .line 2492
    monitor-enter p0

    .line 2493
    :try_start_0
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v5, :cond_0

    .line 2494
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 2495
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 2497
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 2498
    .local v4, "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2499
    .local v2, "ui":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2504
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2502
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    .line 2504
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2505
    return-void
.end method

.method private sendUserPresentBroadcastAsync()V
    .locals 2

    .prologue
    .line 2481
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2487
    .local v0, "t":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 2488
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2489
    return-void
.end method

.method private setAdbModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 3369
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3377
    :cond_0
    :goto_0
    return-void

    .line 3373
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAdbEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3374
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setShowingLocked(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    .line 3052
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eq p1, v3, :cond_2

    .line 3053
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 3054
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setShowingLocked mShowing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3057
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3059
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v3, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3057
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3060
    :catch_0
    move-exception v0

    .line 3061
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyguardViewMediator"

    const-string v4, "Failed to call onShowingStateChanged"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3062
    instance-of v3, v0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 3063
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3067
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 3068
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v3}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 3070
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    return-void
.end method

.method private setSwipeLockShowingLocked(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    .line 3073
    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eq p1, v3, :cond_1

    .line 3074
    sput-boolean p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    .line 3075
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSwipeLockShowingLocked mShowing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3078
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3080
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallback;

    sget-boolean v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    invoke-interface {v3, v4}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSwipeLockShowingstateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3078
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3081
    :catch_0
    move-exception v0

    .line 3082
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyguardViewMediator"

    const-string v4, "Failed to call onShowingStateChanged"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3083
    instance-of v3, v0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 3084
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3089
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-void
.end method

.method private setupLocked()V
    .locals 19

    .prologue
    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 950
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWM:Landroid/view/IWindowManager;

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "trust"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/TrustManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "show keyguard"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 957
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 959
    .local v14, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    const-string v2, "com.samsung.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 962
    const-string v2, "com.samsung.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 963
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    const-string v2, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 965
    const-string v2, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 969
    :cond_0
    const-string v2, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 970
    const-string v2, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 973
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 974
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 977
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 980
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 985
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 987
    .local v5, "spenFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.pen.INSERT"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSPenReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 990
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_LockScreen_DisableADBConnDuringSecuredLock"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 994
    :cond_1
    new-instance v2, Lcom/android/keyguard/KeyguardDisplayManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->registerKeyguardBackupRestoreReceiver(Landroid/content/Context;)V

    .line 1003
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 1009
    .local v17, "smartUnlockFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.sec.android.permission.SMART_UNLOCK"

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1013
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1014
    .local v9, "edmFilter":Landroid/content/IntentFilter;
    const-string v2, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1015
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mEdmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1019
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1021
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1022
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentUser(I)V

    .line 1025
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isKnoxCustomLockScreenDisabled()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkSViewCoverWithNonSecure()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInLockTaskMode()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1034
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v2}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 1037
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, v3, v4, v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1041
    .local v12, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 1043
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 1060
    const-string v18, "/system/media/audio/ui/Lock_none_effect.ogg"

    .line 1061
    .local v18, "soundPath":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureLockSoundId:I

    .line 1064
    :cond_2
    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureLockSoundId:I

    if-nez v2, :cond_4

    .line 1065
    :cond_3
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load secure lock sound from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_4
    const-string v18, "/system/media/audio/ui/Unlock_none_effect.ogg"

    .line 1069
    if-eqz v18, :cond_5

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureUnlockSoundId:I

    .line 1072
    :cond_5
    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureUnlockSoundId:I

    if-nez v2, :cond_7

    .line 1073
    :cond_6
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load secure unlock sound from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_7
    const-string v2, "trusted_sound"

    invoke-static {v12, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1078
    if-eqz v18, :cond_8

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    .line 1081
    :cond_8
    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    if-nez v2, :cond_a

    .line 1082
    :cond_9
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load trusted sound from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 1087
    .local v15, "lockSoundDefaultAttenuation":I
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-float v4, v15

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v4, v6

    float-to-double v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v3, 0x10a0041

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setLockSoundChangeCallback(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAdaptiveEventManager:Lcom/android/keyguard/sec/AdaptiveEventManager;

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCurrentOrientation:I

    .line 1105
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v16

    .line 1107
    .local v16, "quality":I
    if-nez v16, :cond_b

    .line 1108
    new-instance v13, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v13, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1109
    .local v13, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 1113
    .end local v13    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v16    # "quality":I
    :cond_b
    return-void

    .line 1025
    .end local v12    # "cr":Landroid/content/ContentResolver;
    .end local v15    # "lockSoundDefaultAttenuation":I
    .end local v18    # "soundPath":Ljava/lang/String;
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private shouldWaitForProvisioning()Z
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2004
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2007
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2008
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2009
    return-void
.end method

.method private unlockSdp()V
    .locals 2

    .prologue
    .line 3580
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$18;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3595
    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 3

    .prologue
    .line 2581
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2585
    :goto_1
    return-void

    .line 2581
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2582
    :catch_0
    move-exception v0

    .line 2583
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "updateActivityLockScreenState RemoteException."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateInputRestricted()V
    .locals 1

    .prologue
    .line 1700
    monitor-enter p0

    .line 1701
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1702
    monitor-exit p0

    .line 1703
    return-void

    .line 1702
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateInputRestrictedLocked()V
    .locals 6

    .prologue
    .line 1706
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v2

    .line 1707
    .local v2, "inputRestricted":Z
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    if-eq v4, v2, :cond_1

    .line 1708
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    .line 1709
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1710
    .local v3, "size":I
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1712
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v4, v2}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1710
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1713
    :catch_0
    move-exception v0

    .line 1714
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "KeyguardViewMediator"

    const-string v5, "Failed to call onDeviceProvisioned"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1715
    instance-of v4, v0, Landroid/os/DeadObjectException;

    if-eqz v4, :cond_0

    .line 1716
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1721
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_1
    return-void
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 1967
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlockLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1969
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .prologue
    .line 3092
    monitor-enter p0

    .line 3093
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3095
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V

    .line 3096
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V

    .line 3097
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V

    .line 3098
    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSwipeLockShowingstateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3102
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 3103
    return-void

    .line 3099
    :catch_0
    move-exception v0

    .line 3100
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onShowingStateChanged or onSimSecureStateChanged or onInputRestrictedStateChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3102
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public changeLidState(Z)V
    .locals 3
    .param p1, "lidOpen"    # Z

    .prologue
    .line 3506
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeLidState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLidOpened:Z

    .line 3508
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1941
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xd

    .line 1685
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1686
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1687
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1688
    return-void
.end method

.method public getScreenOrientation(Z)I
    .locals 1
    .param p1, "isOccluded"    # Z

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getScreenOrientation(Z)I

    move-result v0

    return v0
.end method

.method public getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method public handleDismiss()V
    .locals 3

    .prologue
    .line 1929
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDismiss mShowing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOccluded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    .line 1931
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissIfInsecure()V

    .line 1932
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_DisableADBConnDuringSecuredLock"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1933
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z

    if-eqz v0, :cond_0

    .line 1934
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V

    .line 1937
    :cond_0
    return-void
.end method

.method public handleLunchPersoLock()V
    .locals 2

    .prologue
    .line 2038
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleLunchPersoLock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2041
    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguardLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2043
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 2048
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2049
    return-void

    .line 2045
    :cond_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "resetStateLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0
.end method

.method protected handleRemoveAdaptiveEvent(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 3155
    const-string v1, "requestClass"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3156
    .local v0, "requestClass":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 3157
    return-void
.end method

.method protected handleSetAdaptiveEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 3160
    const-string v3, "requestClass"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3161
    .local v1, "requestClass":Ljava/lang/String;
    const-string v3, "smallView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 3162
    .local v2, "smallView":Landroid/widget/RemoteViews;
    const-string v3, "bigView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 3163
    .local v0, "bigView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 3164
    return-void
.end method

.method protected handleUpdateAdaptiveEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 3148
    const-string v3, "requestClass"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3149
    .local v1, "requestClass":Ljava/lang/String;
    const-string v3, "smallView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 3150
    .local v2, "smallView":Landroid/widget/RemoteViews;
    const-string v3, "bigView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 3151
    .local v0, "bigView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 3152
    return-void
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 1696
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLockedOrMissing(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 6
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1910
    const-string v3, "keyguard.no_require_sim"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 1911
    .local v0, "requireSim":Z
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1912
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lockedOrMissing() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",state :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",requireSim :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v3, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    .line 1918
    :cond_2
    :goto_1
    return v2

    .end local v0    # "requireSim":Z
    :cond_3
    move v0, v2

    .line 1910
    goto :goto_0

    .line 1918
    .restart local v0    # "requireSim":Z
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v3, :cond_5

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v3, :cond_2

    :cond_5
    if-eqz v0, :cond_2

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public isOccluded()Z
    .locals 1

    .prologue
    .line 1618
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    return v0
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1614
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 1

    .prologue
    .line 1625
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimLocked()Z
    .locals 1

    .prologue
    .line 3499
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 3500
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    .line 3502
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(ZZ)V
    .locals 7
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/16 v3, 0x1c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2304
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyguardDone("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2306
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2307
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2308
    invoke-static {v2}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 2309
    invoke-static {v2}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    .line 2312
    :cond_0
    const v4, 0x11170

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2313
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v3, 0x9

    move v4, v3

    :goto_0
    if-eqz p1, :cond_2

    move v3, v1

    :goto_1
    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v5, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2315
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2316
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    move v4, v3

    .line 2313
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public onActivityDrawn()V
    .locals 2

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3035
    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 2993
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    .line 2994
    monitor-enter p0

    .line 2995
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    .line 2996
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    if-eqz v1, :cond_0

    .line 2997
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 2999
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3001
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->writeKeyguardDefaultWallpaperResId(Landroid/content/Context;)V

    .line 3003
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3004
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 3005
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_1

    .line 3006
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyKeyguardState(Z)V

    .line 3009
    .end local v0    # "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :cond_1
    return-void

    .line 2999
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3480
    const-string v0, "PERF"

    const-string v1, "KeyguardViewMediator - onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3482
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 3483
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCurrentOrientation:I

    .line 3485
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_1

    .line 3486
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 3487
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 3489
    :cond_1
    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .prologue
    .line 1471
    monitor-enter p0

    .line 1472
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(I)V

    .line 1478
    :cond_0
    monitor-exit p0

    .line 1479
    return-void

    .line 1478
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 1485
    monitor-enter p0

    .line 1486
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    .line 1487
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1489
    :cond_0
    monitor-exit p0

    .line 1490
    return-void

    .line 1489
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .prologue
    .line 1229
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishedGoingToSleep("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    monitor-enter p0

    .line 1231
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 1234
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1236
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishedGoingToSleep: mPendingLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyFinishedGoingToSleep()V

    .line 1239
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    if-eqz v0, :cond_0

    .line 1240
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 1241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    .line 1243
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    if-eqz v0, :cond_1

    .line 1244
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 1245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 1247
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchFinishedGoingToSleep(I)V

    .line 1249
    return-void

    .line 1247
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 1450
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenTurnedOff()V

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOff()V

    .line 1452
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 1445
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenTurnedOn()V

    .line 1446
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOn()V

    .line 1447
    return-void
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 1441
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1442
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 8
    .param p1, "why"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1171
    const-string v4, "PERF"

    const-string v5, "KeyguardViewMediator - onStartedGoingToSleep() start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartedGoingToSleep("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    monitor-enter p0

    .line 1174
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 1175
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 1180
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1182
    .local v0, "currentUser":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1186
    .local v2, "lockImmediately":Z
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v4, :cond_4

    .line 1187
    const-string v3, "KeyguardViewMediator"

    const-string v4, "pending exit secure callback cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1193
    :goto_1
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1194
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v3, :cond_1

    .line 1195
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1224
    :cond_1
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1225
    const-string v3, "PERF"

    const-string v4, "KeyguardViewMediator - onStartedGoingToSleep() end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    return-void

    .line 1182
    .end local v2    # "lockImmediately":Z
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    .line 1190
    .restart local v2    # "lockImmediately":Z
    :catch_0
    move-exception v1

    .line 1191
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "KeyguardViewMediator"

    const-string v4, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1224
    .end local v0    # "currentUser":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "lockImmediately":Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1197
    .restart local v0    # "currentUser":I
    .restart local v2    # "lockImmediately":Z
    :cond_4
    :try_start_4
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v4, :cond_5

    .line 1198
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    goto :goto_2

    .line 1199
    :cond_5
    const/4 v4, 0x3

    if-eq p1, v4, :cond_6

    if-ne p1, v7, :cond_8

    if-nez v2, :cond_8

    .line 1201
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v3

    if-ne v3, v7, :cond_7

    .line 1202
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    goto :goto_2

    .line 1205
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(I)V

    goto :goto_2

    .line 1208
    :cond_8
    const/4 v4, 0x4

    if-ne p1, v4, :cond_9

    .line 1210
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    goto :goto_2

    .line 1211
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1212
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkSViewCoverWithNonSecure()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1214
    const-string v3, "KeyguardViewMediator"

    const-string v4, "onStartedGoingToSleep: no pending lock because cover is showing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1216
    :cond_a
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    goto :goto_2

    .line 1219
    :cond_b
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne p1, v3, :cond_1

    .line 1221
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwipeLockShowingLocked(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public onStartedWakingUp()V
    .locals 3

    .prologue
    .line 1419
    const-string v0, "PERF"

    const-string v1, "KeyguardViewMediator - onStartedWakingUp() start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    monitor-enter p0

    .line 1424
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestBluetoothRSSI()V

    .line 1428
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 1429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    .line 1430
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1431
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartedWakingUp, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyStartedWakingUp()V

    .line 1433
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedWakingUp()V

    .line 1435
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1437
    const-string v0, "PERF"

    const-string v1, "KeyguardViewMediator - onStartedWakingUp() end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    return-void

    .line 1433
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1127
    const-string v1, "PERF"

    const-string v4, "KeyguardViewMediator - onSystemReady() start"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v4, "search"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    .line 1130
    monitor-enter p0

    .line 1131
    :try_start_0
    const-string v1, "KeyguardViewMediator"

    const-string v4, "onSystemReady"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "SIM_MANAGE_DONE"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1136
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 1137
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSViewCoverCoveredAtBoot:Z

    if-eqz v1, :cond_1

    .line 1138
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Lcom/android/keyguard/ViewMediatorCallback;->setSViewCoverCovered(Z)V

    .line 1140
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1142
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1143
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLidOpened:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isFolderOpened(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLidOpened:Z

    .line 1144
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLidOpened:Z

    if-eqz v1, :cond_3

    .line 1145
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1153
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1154
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "fromOnSystemReady"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1155
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 1157
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1162
    const-string v1, "PERF"

    const-string v2, "KeyguardViewMediator - onSystemReady() end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    return-void

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    move v1, v2

    .line 1143
    goto :goto_0

    .line 1157
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "statusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p4, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 3017
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 3019
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public registerSubStatusBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)V
    .locals 1
    .param p1, "subPhoneStatusBar"    # Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
    .param p2, "subStatusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    .prologue
    .line 3024
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerSubStatusBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)V

    .line 3025
    return-void
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 3127
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isPedometerSupportModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3133
    :goto_0
    return-void

    .line 3128
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3129
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3131
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3132
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public requestBluetoothRSSI()V
    .locals 3

    .prologue
    .line 3302
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 3304
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBluetoothRSSI mWearabledevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    :cond_0
    return-void
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3116
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isPedometerSupportModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3124
    :goto_0
    return-void

    .line 3117
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3118
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    const-string v2, "smallView"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3120
    const-string v2, "bigView"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3121
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3122
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3123
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 4
    .param p1, "p"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 3413
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3414
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "PI"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3415
    const-string v2, "FI"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3419
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v2, :cond_1

    .line 3420
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 3429
    :cond_0
    :goto_0
    return-void

    .line 3421
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_0

    .line 3422
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 3423
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3424
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3425
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setBendedPendingIntentInSecure(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 4
    .param p1, "p"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 3432
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3433
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "PI"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3434
    const-string v2, "FI"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3438
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v2, :cond_1

    .line 3439
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 3448
    :cond_0
    :goto_0
    return-void

    .line 3440
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_0

    .line 3441
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 3442
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3443
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3444
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 2034
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentUser(I)V

    .line 2035
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 1498
    monitor-enter p0

    .line 1499
    :try_start_0
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setKeyguardEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const/4 v1, 0x0

    .line 1505
    .local v1, "hmtConnected":Z
    if-eqz v1, :cond_1

    .line 1506
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setKeyguardEnabled is allowed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1519
    if-nez p1, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_5

    .line 1520
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_3

    .line 1521
    const-string v2, "KeyguardViewMediator"

    const-string v3, "in process of verifyUnlock request, ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    monitor-exit p0

    .line 1570
    :goto_0
    return-void

    .line 1508
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInLockTaskMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1510
    if-nez p1, :cond_2

    const-string v2, "KeyguardViewMediator"

    const-string v3, "disallow keyguard disabled. set force enable."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1512
    monitor-exit p0

    goto :goto_0

    .line 1569
    .end local v1    # "hmtConnected":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1528
    .restart local v1    # "hmtConnected":Z
    :cond_3
    :try_start_1
    const-string v2, "KeyguardViewMediator"

    const-string v3, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1531
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1532
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1569
    :cond_4
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 1533
    :cond_5
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v2, :cond_4

    .line 1535
    const-string v2, "KeyguardViewMediator"

    const-string v3, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1538
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1540
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_6

    .line 1541
    const-string v2, "KeyguardViewMediator"

    const-string v3, "onKeyguardExitResult(false), resetting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1543
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1547
    :goto_2
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1548
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_1

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1550
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1551
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1556
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1557
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1558
    const-string v2, "KeyguardViewMediator"

    const-string v3, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_7

    .line 1561
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1562
    :catch_1
    move-exception v0

    .line 1563
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    .line 1566
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_7
    const-string v2, "KeyguardViewMediator"

    const-string v3, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public setOccluded(ZI)V
    .locals 8
    .param p1, "isOccluded"    # Z
    .param p2, "displayId"    # I

    .prologue
    const/16 v7, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1641
    const-string v2, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setOccluded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", displayId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    if-nez p2, :cond_0

    .line 1644
    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsSetOccludedEnqeued:Z

    .line 1645
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1646
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1647
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1650
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1651
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1652
    .local v1, "msg2":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1653
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1654
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 1658
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "msg2":Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 1644
    goto :goto_0

    :cond_2
    move v3, v4

    .line 1646
    goto :goto_1
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1117
    monitor-enter p0

    .line 1118
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setupLocked()V

    .line 1119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1121
    return-void

    .line 1119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 3028
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x12

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJLcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    invoke-virtual {v7, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3030
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3031
    return-void
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3136
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isPedometerSupportModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3145
    :goto_0
    return-void

    .line 3137
    :cond_0
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdaptiveEvent() : requestClass= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , smallView= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3139
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    const-string v2, "smallView"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3141
    const-string v2, "bigView"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3142
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3143
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3144
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 934
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 1576
    monitor-enter p0

    .line 1577
    :try_start_0
    const-string v1, "KeyguardViewMediator"

    const-string v2, "verifyUnlock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1580
    const-string v1, "KeyguardViewMediator"

    const-string v2, "ignoring because device isn\'t provisioned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1582
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1607
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1608
    return-void

    .line 1583
    :catch_0
    move-exception v0

    .line 1584
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1607
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1586
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v1, :cond_1

    .line 1590
    const-string v1, "KeyguardViewMediator"

    const-string v2, "verifyUnlock called when not externally disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1592
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1593
    :catch_1
    move-exception v0

    .line 1594
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1596
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    .line 1599
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1600
    :catch_2
    move-exception v0

    .line 1601
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1604
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1605
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

.class public Lcom/android/systemui/power/PowerNotificationWarnings;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Lcom/android/systemui/power/PowerUI$WarningsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;,
        Lcom/android/systemui/power/PowerNotificationWarnings$CocktailProvider;
    }
.end annotation


# static fields
.field static final ACTION_BATTERY_LOW_CLOSE_BUTTON:Ljava/lang/String; = "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

.field static final ACTION_BATTERY_LOW_COCKTAIL_BUTTON:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

.field static final ACTION_BATTERY_LOW_COCKTAIL_TOUCH:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_TOUCH"

.field private static final ACTION_COVER_REMOTEVIEWES_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field private static final ACTION_COVER_REQUEST_REMOTEVIEWS:Ljava/lang/String; = "com.samsung.cover.REQUEST_REMOTEVIEWS"

.field private static final ACTION_DISMISSED_WARNING:Ljava/lang/String; = "PNW.dismissedWarning"

.field private static final ACTION_SHOW_BATTERY_SETTINGS:Ljava/lang/String; = "PNW.batterySettings"

.field private static final ACTION_START_SAVER:Ljava/lang/String; = "PNW.startSaver"

.field private static final ACTION_STOP_SAVER:Ljava/lang/String; = "PNW.stopSaver"

.field private static final AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final BASIC_MODE:I = 0x0

.field private static final DEBUG:Z

.field private static final EXTRA_REMOTEVIEWS:Ljava/lang/String; = "remote"

.field private static final EXTRA_REMOTEVIEWS_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_REMOTEVIEWS_TYPE_BATTERY:Ljava/lang/String; = "battery"

.field private static final EXTRA_REMOTEVIEWS_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final ID_NOTIFICATION:I = 0x64

.field private static final ID_NOTIFICATION_BATTERY_SAVER:I = 0x71

.field private static final ID_NOTIFICATION_BATTERY_SWELLING_RECOVERY:I = 0x6c

.field private static final ID_NOTIFICATION_BATTERY_SWELLING_WARNING:I = 0x6b

.field private static final ID_NOTIFICATION_CHARGING_INTERRUPTION:I = 0x6e

.field private static final ID_NOTIFICATION_CHARGING_STATE:I = 0x6f

.field private static final ID_NOTIFICATION_FACE_DETECTION_FAIL:I = 0x6a

.field private static final ID_NOTIFICATION_FLASH_CHARGING_INTERRUPTION:I = 0x70

.field private static final ID_NOTIFICATION_FULL_BATTERY:I = 0x65

.field private static final ID_NOTIFICATION_HIGH_VOLTAGE_CHARGER:I = 0x69

.field private static final ID_NOTIFICATION_INCOMPATIBLE_CHARGER:I = 0x67

.field private static final ID_NOTIFICATION_OVER_HEAT:I = 0x6d

.field private static final ID_NOTIFICATION_SLOW_CHARGER:I = 0x68

.field private static final ID_NOTIFICATION_WIRELESS_CHARGER:I = 0x66

.field static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final POWER_SAVING_MODE:I = 0x1

.field private static final PSM_ACTIVITY:Ljava/lang/String; = "com.android.settings.Settings$PowerSavingModeSettings2014Activity"

.field private static final PSM_ACTIVITY_GENERIC:Ljava/lang/String; = "com.android.settings.Settings$GenericPowerSavingModeActivity"

.field private static final PSM_DB_SWITCH:Ljava/lang/String; = "powersaving_switch"

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final SHOWING_INVALID_CHARGER:I = 0x3

.field private static final SHOWING_LOW_BATTERY_WARNING:I = 0x1

.field private static final SHOWING_NOTHING:I = 0x0

.field private static final SHOWING_SAVER:I = 0x2

.field private static final SHOWING_STRINGS:[Ljava/lang/String;

.field static final SOUND_PATH_BATTERY_CAUTION:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_caution.ogg"

.field static final SOUND_PATH_BATTERY_SWELLING_WARNING:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

.field static final SOUND_PATH_CHARGER_CONNECTION:Ljava/lang/String; = "system/media/audio/ui/Charger_Connection.ogg"

.field static final SOUND_TYPE_BATTERY_CAUTION:I = 0x3

.field static final SOUND_TYPE_BATTERY_SWELLING_WARNING:I = 0x4

.field static final SOUND_TYPE_CHARGER_CONNECTION:I = 0x1

.field static final SOUND_TYPE_LOW_BATTERY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PowerUI.Notification"

.field private static final TAG_NOTIFICATION:Ljava/lang/String; = "low_battery"

.field private static final TAG_NOTIFICATION_BATTERY_SAVER:Ljava/lang/String; = "battery_saver"

.field private static final TAG_NOTIFICATION_BATTERY_SWELLING_RECOVERY:Ljava/lang/String; = "battery_swelling_recovery"

.field private static final TAG_NOTIFICATION_BATTERY_SWELLING_WARNING:Ljava/lang/String; = "battery_swelling_warning"

.field private static final TAG_NOTIFICATION_CHARGING_INTERRUPTION:Ljava/lang/String; = "charging_interruption"

.field private static final TAG_NOTIFICATION_CHARGING_STATE:Ljava/lang/String; = "charging_state"

.field private static final TAG_NOTIFICATION_FACE_DETECTION_FAIL:Ljava/lang/String; = "face_detection_fail"

.field private static final TAG_NOTIFICATION_FLASH_CHARGING_INTERRUPT_STATE:Ljava/lang/String; = "flash_charging_interrupt_state"

.field private static final TAG_NOTIFICATION_FULL_BATTERY:Ljava/lang/String; = "full_battery"

.field private static final TAG_NOTIFICATION_HIGH_VOLTAGE_CHARGER:Ljava/lang/String; = "afc_charger"

.field private static final TAG_NOTIFICATION_INCOMPATIBLE_CHARGER:Ljava/lang/String; = "incompatible_charger"

.field private static final TAG_NOTIFICATION_OVER_HEAT:Ljava/lang/String; = "over_heat"

.field private static final TAG_NOTIFICATION_SLOW_CHARGER:Ljava/lang/String; = "slow_charger"

.field private static final TAG_NOTIFICATION_WIRELESS_CHARGER:Ljava/lang/String; = "wireless_charger"

.field private static final ULTRA_POWER_SAVING_MODE:I = 0x2


# instance fields
.field mAbnormalChargingDialog:Landroid/app/AlertDialog;

.field mAbnormalChargingNotification:Landroid/app/Notification;

.field mAbnormalChargingTextView:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryHealth:I

.field private mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryOnline:I

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBatterySwellingDialog:Landroid/app/AlertDialog;

.field private mBatterySwellingRecovery:Z

.field mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

.field mBatterySwellingTask:Ljava/lang/Runnable;

.field private mBatterySwellingWarning:Z

.field private mBucket:I

.field private mBucketDroppedNegativeTimeMs:J

.field private mCallState:I

.field private mChargingInterruption:Z

.field mChargingInterruptionDialog:Landroid/app/AlertDialog;

.field mChargingInterruptionTask:Ljava/lang/Runnable;

.field private mChargingTime:J

.field private mChargingType:I

.field private mCocktailLowBatteryWarning:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCurrentBatteryMode:I

.field private mDataRestrictObserver:Landroid/database/ContentObserver;

.field private mDeviceType:I

.field private mFaceDetectionFail:Z

.field mFaceDetectionFailureNotification:Landroid/app/Notification;

.field mFaceDetectionFailureTask:Ljava/lang/Runnable;

.field private mFlashOverHeated:Z

.field private mFlashOverHeatedBackToNormal:Z

.field mFlashOverHeatedDialog:Landroid/app/AlertDialog;

.field private mFlashOverHeatedFromReboot:Z

.field private mFlashOverHeatedNotificationShowing:Z

.field mFlashOverHeatedTask:Ljava/lang/Runnable;

.field private mFullBattery:Z

.field mFullBatteryNotification:Landroid/app/Notification;

.field private final mHandler:Landroid/os/Handler;

.field private mHighVoltageCharger:Z

.field mHighVoltageChargerDialog:Landroid/app/AlertDialog;

.field mHighVoltageChargerNotification:Landroid/app/Notification;

.field mHighVoltageChargerTask:Ljava/lang/Runnable;

.field private mIncompatibleCharger:Z

.field mIncompatibleChargerDialog:Landroid/app/AlertDialog;

.field private mInvalidCharger:Z

.field private mIsNeedToRemoveLowBatteryWarning:Z

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryWarning:Z

.field mNeedtoshowLowBatteryDialog:Z

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field private mOldBatteryLevel:I

.field private final mOpenBatterySettings:Landroid/content/Intent;

.field private final mOpenSaverSettings:Landroid/content/Intent;

.field private mOverHeat:Z

.field mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

.field mOverheatShutdownTask:Ljava/lang/Runnable;

.field mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

.field mOverheatShutdownWarningTask:Ljava/lang/Runnable;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlaySound:Z

.field private mPlugType:I

.field private final mPowerMan:Landroid/os/PowerManager;

.field private final mPowersavingObserver:Landroid/database/ContentObserver;

.field mPowersavingmodeDialog:Landroid/app/AlertDialog;

.field private final mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

.field private mRemainTime:I

.field private mSaver:Z

.field private mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mSaverDataRestricted:Z

.field mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mScoverOpen:Z

.field private mScreenOffTime:J

.field private volatile mService:Lcom/android/internal/policy/IKeyguardService;

.field private mShowChargingNotice:Z

.field private mShowing:I

.field private mSlowCharger:Z

.field private final mSmartManagerBatterySettings:Landroid/content/Intent;

.field private final mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mSupportMultiUserMode:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWirelessCharger:Z

.field private mWirelessChargerToast:Landroid/widget/Toast;

.field mWirelessChargingConnectDialog:Landroid/app/AlertDialog;

.field mWirelessChargingDisconnectDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 141
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    .line 200
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SHOWING_NOTHING"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SHOWING_LOW_BATTERY_WARNING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SHOWING_SAVER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SHOWING_INVALID_CHARGER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    .line 220
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    const/4 v7, -0x1

    const/4 v10, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 229
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$1;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    .line 230
    const-string v3, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    .line 231
    const-string v3, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    .line 232
    const-string v3, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    .line 242
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    .line 243
    iput v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryOnline:I

    .line 244
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    .line 245
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    .line 246
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 248
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mRemainTime:I

    .line 249
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 271
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverDataRestricted:Z

    .line 273
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeated:Z

    .line 274
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedFromReboot:Z

    .line 275
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedBackToNormal:Z

    .line 276
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedNotificationShowing:Z

    .line 278
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsNeedToRemoveLowBatteryWarning:Z

    .line 279
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCocktailLowBatteryWarning:Z

    .line 316
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCallState:I

    .line 323
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScoverOpen:Z

    .line 324
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNeedtoshowLowBatteryDialog:Z

    .line 1309
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$4;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    .line 1393
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$6;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionTask:Ljava/lang/Runnable;

    .line 1480
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$8;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedTask:Ljava/lang/Runnable;

    .line 2072
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$16;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$16;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingTask:Ljava/lang/Runnable;

    .line 2271
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$22;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$22;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    .line 2278
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$23;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$23;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    .line 2585
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$26;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$26;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    .line 2635
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$27;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$27;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerTask:Ljava/lang/Runnable;

    .line 2907
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$28;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$28;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 2921
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$29;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$29;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2929
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$30;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$30;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 2944
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$31;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lcom/android/systemui/power/PowerNotificationWarnings$31;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingObserver:Landroid/database/ContentObserver;

    .line 2963
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$32;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$32;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCoverListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 2982
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$33;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/systemui/power/PowerNotificationWarnings$33;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDataRestrictObserver:Landroid/database/ContentObserver;

    .line 339
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 340
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 341
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    .line 342
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    invoke-virtual {v3}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->init()V

    .line 344
    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 345
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.systemui"

    const-string v6, "com.android.systemui.keyguard.KeyguardService"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mKeyguardConnection:Landroid/content/ServiceConnection;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v3, v4, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 349
    sget-boolean v3, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 350
    const-string v3, "PowerUI.Notification"

    const-string v6, "*** Keyguard: can\'t bind to com.android.systemui.keyguard.KeyguardService"

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    :goto_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPhone:Landroid/telephony/TelephonyManager;

    .line 356
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v3, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 358
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    .line 360
    new-instance v3, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 361
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCoverListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v3, v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v6, ""

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    .line 367
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSupportMultiUserMode:Z

    .line 368
    const-string v3, "PowerUI.Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Support MUM = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSupportMultiUserMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_2

    .line 373
    const-string v3, "batterystats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 378
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    invoke-virtual {v3, v6, v7, v8}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mGooglePowerSettingConcept:Z

    if-eqz v3, :cond_4

    .line 387
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "low_power"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 388
    .local v2, "powerSaving":I
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "low_power"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 396
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 397
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 407
    .end local v2    # "powerSaving":I
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "low_power_back_data_off"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverDataRestricted:Z

    .line 409
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "low_power_back_data_off"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDataRestrictObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 413
    return-void

    .line 352
    :cond_3
    sget-boolean v3, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 353
    const-string v3, "PowerUI.Notification"

    const-string v6, "*** Keyguard started"

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PowerUI.Notification"

    const-string v6, "Unable to register notification listener"

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 391
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "powersaving_switch"

    invoke-static {v3, v6, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 392
    .restart local v2    # "powerSaving":I
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "powersaving_switch"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_2

    .line 399
    :cond_5
    if-eqz v2, :cond_6

    .line 400
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_3

    .line 402
    :cond_6
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_3

    .end local v2    # "powerSaving":I
    :cond_7
    move v3, v5

    .line 407
    goto :goto_4
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSaverNotification()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCoverLowBatteryWarning()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeated:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedBackToNormal:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedFromReboot:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->cancelFaceDetectionFailureNotification()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mService:Lcom/android/internal/policy/IKeyguardService;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/power/PowerNotificationWarnings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCallState:I

    return p1
.end method

.method static synthetic access$2002(Lcom/android/systemui/power/PowerNotificationWarnings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mRemainTime:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showLowBatteryWarningNotification()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverDataRestricted:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverDataRestricted:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSaverNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarningNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/power/PowerNotificationWarnings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->isUseGEDBattery()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showStartSaverConfirmation()V

    return-void
.end method

.method private addStopSaverAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "nb"    # Landroid/app/Notification$Builder;

    .prologue
    .line 850
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PNW.stopSaver"

    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 853
    return-void
.end method

.method private attachLowBatterySound(Landroid/app/Notification$Builder;)V
    .locals 11
    .param p1, "b"    # Landroid/app/Notification$Builder;

    .prologue
    const/4 v10, 0x1

    .line 1017
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1019
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "low_battery_sound_timeout"

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1021
    .local v1, "silenceAfter":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    sub-long v2, v6, v8

    .line 1022
    .local v2, "offTime":J
    if-lez v1, :cond_1

    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    int-to-long v6, v1

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 1025
    const-string v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screen off too long ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms, limit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms): not waking up the user with low battery sound"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    sget-boolean v6, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1031
    const-string v6, "PowerUI.Notification"

    const-string v7, "playing low battery sound. pick-a-doop!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_2
    const-string v6, "power_sounds_enabled"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 1035
    const-string v6, "low_battery_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1037
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1038
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1039
    .local v5, "soundUri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 1040
    sget-object v6, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 1041
    sget-boolean v6, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playing sound "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private attachSECSounds(Landroid/app/Notification$Builder;I)V
    .locals 6
    .param p1, "b"    # Landroid/app/Notification$Builder;
    .param p2, "soundType"    # I

    .prologue
    const/4 v4, 0x1

    .line 1128
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1130
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "power_sounds_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1131
    const/4 v1, 0x0

    .line 1132
    .local v1, "soundPath":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 1149
    const-string v1, "system/media/audio/ui/TW_Battery_caution.ogg"

    .line 1152
    :goto_0
    if-eqz v1, :cond_2

    .line 1153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1154
    .local v2, "soundUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 1155
    sget-object v3, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 1156
    sget-boolean v3, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playing sound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    .end local v1    # "soundPath":Ljava/lang/String;
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 1134
    .restart local v1    # "soundPath":Ljava/lang/String;
    :pswitch_0
    const-string v1, "system/media/audio/ui/Charger_Connection.ogg"

    .line 1135
    goto :goto_0

    .line 1137
    :pswitch_1
    const-string v3, "low_battery_sound"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1139
    goto :goto_0

    .line 1141
    :pswitch_2
    const-string v1, "system/media/audio/ui/TW_Battery_caution.ogg"

    .line 1142
    goto :goto_0

    .line 1145
    :pswitch_3
    const-string v1, "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

    .line 1146
    goto :goto_0

    .line 1158
    .restart local v2    # "soundUri":Landroid/net/Uri;
    :cond_1
    const-string v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri is null. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1161
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_2
    const-string v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path is null. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private cancelFaceDetectionFailureNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2576
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 2577
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2580
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0x7f0b0522

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2581
    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 2583
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method private dismissFullBatteryNotification()V
    .locals 4

    .prologue
    .line 2441
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFullBattery:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing full battery notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFullBattery:Z

    .line 2443
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 2444
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "full_battery"

    const/16 v2, 0x65

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2445
    return-void
.end method

.method private dismissHighVoltageChargerNotification()V
    .locals 2

    .prologue
    .line 2369
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageCharger:Z

    if-eqz v0, :cond_0

    .line 2370
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing high voltage charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageCharger:Z

    .line 2373
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 2374
    return-void
.end method

.method private dismissIncompatibleChargerNotification()V
    .locals 4

    .prologue
    .line 1798
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleCharger:Z

    if-eqz v0, :cond_0

    .line 1799
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing incompatible charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleCharger:Z

    .line 1802
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1804
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "incompatible_charger"

    const/16 v2, 0x67

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1805
    return-void
.end method

.method private dismissInvalidChargerNotification()V
    .locals 2

    .prologue
    .line 1173
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing invalid charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 1175
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1176
    return-void
.end method

.method private dismissLowBatteryWarningNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 899
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsNeedToRemoveLowBatteryWarning:Z

    if-eqz v0, :cond_2

    .line 900
    :cond_0
    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissing low battery notification : mLowBatteryWarning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsNeedToRemoveLowBatteryWarning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsNeedToRemoveLowBatteryWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    .line 903
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsNeedToRemoveLowBatteryWarning:Z

    .line 904
    iput v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mRemainTime:I

    .line 905
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 906
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCoverLowBatteryWarning()V

    .line 907
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCocktailLowBatteryWarning:Z

    if-eqz v0, :cond_1

    .line 908
    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCocktailLowBatteryWarning(Z)V

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 911
    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 915
    :cond_2
    return-void
.end method

.method private dismissSaverNotification()V
    .locals 4

    .prologue
    .line 856
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_0

    .line 857
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing saver notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "battery_saver"

    const/16 v2, 0x71

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 860
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    .line 862
    return-void
.end method

.method private dismissSlowChargerNotification()V
    .locals 4

    .prologue
    .line 1932
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowCharger:Z

    if-eqz v0, :cond_0

    .line 1933
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing slow charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowCharger:Z

    .line 1939
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1946
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "slow_charger"

    const/16 v2, 0x68

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1947
    :goto_0
    return-void

    .line 1935
    :cond_0
    const-string v0, "PowerUI.Notification"

    const-string v1, "slow charger notification is already dismissed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dismissWirelessChargerNotification()V
    .locals 2

    .prologue
    .line 1609
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    if-eqz v0, :cond_0

    .line 1610
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing wireless charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    .line 1614
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1616
    :cond_0
    return-void
.end method

.method private getChargeTimeRemaining()J
    .locals 4

    .prologue
    .line 1593
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_0

    .line 1594
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1599
    :goto_0
    return-wide v2

    .line 1596
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PowerUI.Notification"

    const-string v2, "Error calling IBatteryStats: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1599
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getFormattedTime(J)Ljava/lang/String;
    .locals 11
    .param p1, "millis"    # J

    .prologue
    .line 2800
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->isUseGEDBattery()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2801
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, p2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 2843
    :goto_0
    return-object v0

    .line 2805
    :cond_0
    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    .line 2807
    .local v4, "secondsLong":J
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v2, 0x0

    .local v2, "minutes":I
    const/4 v3, 0x0

    .line 2809
    .local v3, "seconds":I
    const-wide/16 v6, 0xe10

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    .line 2810
    const-wide/16 v6, 0xe10

    div-long v6, v4, v6

    long-to-int v1, v6

    .line 2811
    mul-int/lit16 v6, v1, 0xe10

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 2813
    :cond_1
    const-wide/16 v6, 0x3c

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 2814
    const-wide/16 v6, 0x3c

    div-long v6, v4, v6

    long-to-int v2, v6

    .line 2815
    mul-int/lit8 v6, v2, 0x3c

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 2817
    :cond_2
    long-to-int v3, v4

    .line 2819
    if-nez v1, :cond_3

    const/4 v6, 0x2

    if-lt v2, v6, :cond_3

    const/16 v6, 0x1e

    if-lt v3, v6, :cond_3

    .line 2820
    add-int/lit8 v2, v2, 0x1

    .line 2822
    :cond_3
    if-lez v1, :cond_4

    if-lez v2, :cond_4

    .line 2823
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b04c7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 2825
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_4
    if-lez v1, :cond_5

    .line 2826
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b04c8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 2827
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_5
    if-lez v2, :cond_8

    .line 2828
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "el"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2829
    const/4 v6, 0x1

    if-ne v2, v6, :cond_6

    .line 2830
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b04c9

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 2832
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x1040085

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 2834
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b04c9

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 2837
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    if-le v3, v6, :cond_9

    .line 2838
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x1040089

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 2840
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x104008a

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private hasBatterySettings()Z
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasSaverSettings()Z
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAvailablePowerSaving()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2847
    const/4 v1, 0x0

    .line 2848
    .local v1, "isEmergencyMode":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2849
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 2850
    .local v0, "emergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    .line 2853
    .end local v0    # "emergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "kids_home_mode"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v2, v4

    .line 2855
    .local v2, "isKidsMode":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2

    move v3, v4

    .line 2863
    .local v3, "isSetupwizard":Z
    :goto_1
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    :goto_2
    return v4

    .end local v2    # "isKidsMode":Z
    .end local v3    # "isSetupwizard":Z
    :cond_1
    move v2, v5

    .line 2853
    goto :goto_0

    .restart local v2    # "isKidsMode":Z
    :cond_2
    move v3, v5

    .line 2855
    goto :goto_1

    .restart local v3    # "isSetupwizard":Z
    :cond_3
    move v4, v5

    .line 2863
    goto :goto_2
.end method

.method private isUseGEDBattery()Z
    .locals 1

    .prologue
    .line 1212
    sget-boolean v0, Lcom/android/systemui/power/PowerUI$Sales;->ATT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v0, :cond_1

    .line 1213
    :cond_0
    const/4 v0, 0x1

    .line 1215
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 865
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 870
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v3, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private setSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    .line 1209
    return-void
.end method

.method private static settings(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 875
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x5c800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private showChargingInterruptionNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1348
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    if-ne v5, v3, :cond_0

    .line 1349
    const v2, 0x7f0b04c0

    .line 1364
    .local v2, "messageId":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    .line 1365
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1390
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->playSound(I)V

    .line 1391
    .end local v2    # "messageId":I
    :goto_2
    return-void

    .line 1350
    :cond_0
    const/4 v3, 0x7

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    if-ne v3, v4, :cond_1

    .line 1351
    const v2, 0x7f0b04c1

    .restart local v2    # "messageId":I
    goto :goto_0

    .line 1352
    .end local v2    # "messageId":I
    :cond_1
    const/4 v3, 0x6

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    if-ne v3, v4, :cond_2

    .line 1356
    const v2, 0x7f0b04be

    .restart local v2    # "messageId":I
    goto :goto_0

    .line 1357
    .end local v2    # "messageId":I
    :cond_2
    const/16 v3, 0x8

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    if-ne v3, v4, :cond_3

    .line 1358
    const v2, 0x7f0b04c2

    .restart local v2    # "messageId":I
    goto :goto_0

    .line 1360
    .end local v2    # "messageId":I
    :cond_3
    const-string v3, "PowerUI.Notification"

    const-string v4, "status is NotCharging but health is wrong value"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1368
    .restart local v2    # "messageId":I
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1369
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1370
    const v3, 0x7f0b04bd

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1371
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1372
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1374
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1375
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$5;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1386
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1387
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1388
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method private showFullBatteryNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2508
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b04c4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2509
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b04c6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2511
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0203d3

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c008c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2527
    .local v1, "nb":Landroid/app/Notification$Builder;
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachSECSounds(Landroid/app/Notification$Builder;I)V

    .line 2528
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 2531
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 2532
    .local v0, "n":Landroid/app/Notification;
    const v4, -0x7f7f7f80

    iput v4, v0, Landroid/app/Notification;->commonValue:I

    .line 2534
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 2535
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020040

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2537
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v5, "full_battery"

    const/16 v6, 0x65

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2538
    return-void
.end method

.method private showHighVoltageChargerNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2404
    const-string v3, "PowerUI.Notification"

    const-string v4, "showHighVoltageChargerNotification()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0b051c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2408
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0203b5

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b051b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "sys"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2421
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 2423
    .local v0, "n":Landroid/app/Notification;
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_0

    .line 2424
    const v3, -0x7f7f7f80

    iput v3, v0, Landroid/app/Notification;->commonValue:I

    .line 2426
    :cond_0
    iget-object v3, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_1

    .line 2427
    iget-object v3, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v4, 0x1020040

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2429
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v4, "afc_charger"

    const/16 v5, 0x69

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2430
    return-void
.end method

.method private showIncompatibleChargerNotification()V
    .locals 14

    .prologue
    .line 1833
    const-string v10, "PowerUI.Notification"

    const-string v11, "showIncompatibleChargerNotification()"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v11, 0x7f0b04fa

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1836
    .local v9, "title":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v11, 0x7f0b04fd

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1838
    .local v8, "notiText":Ljava/lang/CharSequence;
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f02078a

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, -0x2

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const-string v11, "sys"

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106005a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1851
    .local v7, "nb":Landroid/app/Notification$Builder;
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v10, :cond_2

    .line 1852
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1857
    :goto_0
    const/4 v10, 0x3

    invoke-direct {p0, v7, v10}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachSECSounds(Landroid/app/Notification$Builder;I)V

    .line 1858
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 1860
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 1861
    .local v6, "n":Landroid/app/Notification;
    iget-object v10, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v10, :cond_0

    .line 1862
    iget-object v10, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v11, 0x1020040

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1864
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v11, "incompatible_charger"

    const/16 v12, 0x67

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v12, v6, v13}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1867
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v11, "com.android.systemui.power_abnormal_charging"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1868
    .local v0, "abnormalChargingSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_3

    .line 1869
    const-string v10, "DoNotShowIncompatibleChargerWarning"

    const/4 v11, 0x0

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1870
    const-string v10, "PowerUI.Notification"

    const-string v11, "Incompatible charging notice doesn\'t show again"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_1
    :goto_1
    return-void

    .line 1854
    .end local v0    # "abnormalChargingSharedPrefs":Landroid/content/SharedPreferences;
    .end local v6    # "n":Landroid/app/Notification;
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v11, 0x7f0b04fe

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 1875
    .restart local v0    # "abnormalChargingSharedPrefs":Landroid/content/SharedPreferences;
    .restart local v6    # "n":Landroid/app/Notification;
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    if-nez v10, :cond_1

    .line 1876
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v11, 0x7f040009

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1877
    .local v5, "incompatibleChargerConnectView":Landroid/view/View;
    const v10, 0x7f0f00b1

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1880
    .local v3, "disableAlertCheckBox":Landroid/widget/CheckBox;
    const/4 v10, 0x2

    iget v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    if-ne v10, v11, :cond_4

    .line 1881
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v11, 0x7f0b04fc

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1885
    .local v2, "dialogText":Ljava/lang/CharSequence;
    :goto_2
    const v10, 0x7f0f00c4

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1887
    new-instance v10, Lcom/android/systemui/power/PowerNotificationWarnings$12;

    invoke-direct {v10, p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings$12;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1895
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1896
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1897
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1898
    const v10, 0x104000a

    new-instance v11, Lcom/android/systemui/power/PowerNotificationWarnings$13;

    invoke-direct {v11, p0, v3, v0}, Lcom/android/systemui/power/PowerNotificationWarnings$13;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1908
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1910
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1911
    .local v4, "incompatibleChargerConnectDialog":Landroid/app/AlertDialog;
    new-instance v10, Lcom/android/systemui/power/PowerNotificationWarnings$14;

    invoke-direct {v10, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$14;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1917
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d9

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 1918
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1919
    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 1883
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialogText":Ljava/lang/CharSequence;
    .end local v4    # "incompatibleChargerConnectDialog":Landroid/app/AlertDialog;
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v11, 0x7f0b04fb

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "dialogText":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private showInvalidChargerNotification()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    .line 524
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f02012c

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0b02a1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0b02a2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 535
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 536
    .local v0, "n":Landroid/app/Notification;
    iget-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_0

    .line 537
    iget-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v3, 0x1020040

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 539
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSupportMultiUserMode:Z

    if-eqz v2, :cond_1

    .line 540
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v3, "low_battery"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v7, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 543
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v3, "low_battery"

    invoke-virtual {v2, v3, v7, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private showLowBatteryWarningNotification()V
    .locals 22

    .prologue
    .line 546
    const-string v17, "PowerUI.Notification"

    const-string v18, "showLowBatteryWarningNotification"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v17, :cond_10

    .line 553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b04da

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 578
    .local v15, "title":Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b04eb

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 580
    .local v14, "text":Ljava/lang/CharSequence;
    sget-boolean v17, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v17, :cond_0

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    const-string v18, "en"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 582
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "phone"

    const-string v19, "tablet"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 587
    :cond_0
    new-instance v17, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f02012c

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v17

    const-string v18, "sys"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x106005a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 604
    .local v11, "nb":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 605
    invoke-virtual {v11, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 607
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->hasBatterySettings()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 608
    const-string v17, "PNW.batterySettings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 642
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCallState:I

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 644
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->playSound(I)V

    .line 664
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 668
    :cond_3
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 670
    .local v10, "n":Landroid/app/Notification;
    new-instance v12, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f04000d

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 671
    .local v12, "remoteViews":Landroid/widget/RemoteViews;
    const v17, 0x7f0f00cd

    move/from16 v0, v17

    invoke-virtual {v12, v0, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 672
    const v17, 0x7f0f00ce

    move/from16 v0, v17

    invoke-virtual {v12, v0, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 673
    const v17, 0x7f0f00d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b04ec

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 674
    const v17, 0x7f0f00d0

    const-string v18, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 687
    iput-object v12, v10, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 688
    iput-object v12, v10, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 690
    iget-object v0, v10, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 691
    iget-object v0, v10, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    const v18, 0x1020040

    const/16 v19, 0x8

    invoke-virtual/range {v17 .. v19}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 694
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSupportMultiUserMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    const-string v18, "low_battery"

    const/16 v19, 0x64

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 817
    .end local v10    # "n":Landroid/app/Notification;
    .end local v11    # "nb":Landroid/app/Notification$Builder;
    .end local v12    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_5
    :goto_2
    sget-boolean v17, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    if-eqz v17, :cond_7

    .line 818
    sget-boolean v17, Lcom/android/systemui/power/PowerUI;->mScoverOpen:Z

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 819
    :cond_6
    const-string v17, "PowerUI.Notification"

    const-string v18, "show Low battery gadget"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCocktailLowBatteryWarning(Z)V

    .line 823
    :cond_7
    return-void

    .line 556
    .end local v14    # "text":Ljava/lang/CharSequence;
    .end local v15    # "title":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b04de

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 646
    .restart local v11    # "nb":Landroid/app/Notification$Builder;
    .restart local v14    # "text":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "haptic_feedback_enabled"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/4 v8, 0x1

    .line 648
    .local v8, "hapticsFeedbackEnabled":Z
    :goto_3
    if-eqz v8, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    if-nez v17, :cond_a

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "audio"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/AudioManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    .line 652
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    .line 656
    .local v13, "ringerMode":I
    :goto_4
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v0, v13, :cond_b

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v17, v0

    const v18, 0xc35b

    const/16 v19, -0x1

    const/16 v20, 0x0

    sget-object v21, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual/range {v17 .. v21}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 661
    .end local v13    # "ringerMode":I
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachLowBatterySound(Landroid/app/Notification$Builder;)V

    goto/16 :goto_1

    .line 646
    .end local v8    # "hapticsFeedbackEnabled":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_3

    .line 655
    .restart local v8    # "hapticsFeedbackEnabled":Z
    :cond_d
    const/4 v13, 0x2

    .restart local v13    # "ringerMode":I
    goto :goto_4

    .line 659
    .end local v13    # "ringerMode":I
    :cond_e
    const-string v17, "PowerUI.Notification"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "hapticsFeedbackEnabled = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 697
    .end local v8    # "hapticsFeedbackEnabled":Z
    .restart local v10    # "n":Landroid/app/Notification;
    .restart local v12    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    const-string v18, "low_battery"

    const/16 v19, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v10}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_2

    .line 699
    .end local v10    # "n":Landroid/app/Notification;
    .end local v11    # "nb":Landroid/app/Notification$Builder;
    .end local v12    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v14    # "text":Ljava/lang/CharSequence;
    .end local v15    # "title":Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b04da

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 702
    .restart local v15    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b04dd

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0b0475

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 725
    .restart local v14    # "text":Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 726
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->playSound(I)V

    .line 727
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 732
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 809
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScoverOpen:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 810
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mNeedtoshowLowBatteryDialog:Z

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_2

    .line 705
    .end local v14    # "text":Ljava/lang/CharSequence;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b04dc

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0b0475

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 709
    .end local v14    # "text":Ljava/lang/CharSequence;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b04db

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 712
    .end local v14    # "text":Ljava/lang/CharSequence;
    .end local v15    # "title":Ljava/lang/CharSequence;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b029d

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 714
    .restart local v15    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b04e1

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0b0475

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 717
    .end local v14    # "text":Ljava/lang/CharSequence;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b04e0

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0b0475

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 721
    .end local v14    # "text":Ljava/lang/CharSequence;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b04df

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 741
    :cond_17
    const v9, 0x7f02000a

    .line 743
    .local v9, "imageId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f04000a

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 744
    .local v16, "v":Landroid/view/View;
    const v17, 0x7f0f00c5

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    const v17, 0x7f0f00c6

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 748
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 749
    .local v4, "b":Landroid/app/AlertDialog$Builder;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 750
    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 751
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 752
    const v17, 0x104000a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 756
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mGooglePowerSettingConcept:Z

    if-nez v17, :cond_18

    .line 757
    :cond_18
    const v5, 0x7f0b04e5

    .line 758
    .local v5, "buttonTextId":I
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 759
    .local v7, "dialogIntent":Landroid/content/Intent;
    if-eqz v7, :cond_19

    .line 760
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mGooglePowerSettingConcept:Z

    if-eqz v17, :cond_1b

    .line 761
    const-string v17, "com.android.settings"

    const-string v18, "com.android.settings.Settings$GenericPowerSavingModeActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    :cond_19
    :goto_8
    if-eqz v7, :cond_1a

    .line 771
    const/high16 v17, 0x58800000    # 1.1258999E15f

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->isAvailablePowerSaving()Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 776
    new-instance v17, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/power/PowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/Intent;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 791
    :cond_1a
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 792
    .local v6, "d":Landroid/app/AlertDialog;
    new-instance v17, Lcom/android/systemui/power/PowerNotificationWarnings$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings$2;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 803
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7d9

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 804
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 806
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 807
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 763
    .end local v6    # "d":Landroid/app/AlertDialog;
    :cond_1b
    const-string v17, "com.android.settings"

    const-string v18, "com.android.settings.Settings$PowerSavingModeSettings2014Activity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8
.end method

.method private showSaverNotification()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 828
    iget-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverDataRestricted:Z

    if-eqz v3, :cond_1

    .line 829
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0b03f0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 833
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0203bd

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b03ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 841
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->addStopSaverAction(Landroid/app/Notification$Builder;)V

    .line 842
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->hasSaverSettings()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 843
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 845
    :cond_0
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 846
    .local v0, "n":Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v4, "battery_saver"

    const/16 v5, 0x71

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 847
    return-void

    .line 831
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "nb":Landroid/app/Notification$Builder;
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0b03f1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showSlowChargerNotification()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1975
    const-string v4, "PowerUI.Notification"

    const-string v5, "showSlowChargerNotification()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b04ff

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1989
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0502

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1990
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0203c1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106005a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2004
    .local v1, "nb":Landroid/app/Notification$Builder;
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachSECSounds(Landroid/app/Notification$Builder;I)V

    .line 2005
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 2007
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 2008
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 2009
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020040

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2011
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v5, "slow_charger"

    const/16 v6, 0x68

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2012
    return-void
.end method

.method private showStartSaverConfirmation()V
    .locals 3

    .prologue
    .line 1190
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    .line 1205
    :goto_0
    return-void

    .line 1191
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 1192
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x7f0b02a4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 1193
    const v1, 0x1040589

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 1194
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1195
    const v1, 0x7f0b02a5

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1196
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 1197
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$3;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1203
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 1204
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    goto :goto_0
.end method

.method private showWirelessChargerNotification()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1637
    const-string v6, "PowerUI.Notification"

    const-string v7, "showWirelessChargerNotification()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    sget-boolean v6, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    if-eqz v6, :cond_0

    .line 1642
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b04f9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1649
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mJPNWirelessChargerPopUp:Z

    if-eqz v6, :cond_4

    .line 1650
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v7, "com.android.systemui.power_wireless_charging"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1651
    .local v5, "wirelessChargingSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_2

    .line 1652
    const-string v6, "WirelessChargingNotice"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1653
    const-string v6, "PowerUI.Notification"

    const-string v7, "Wireless charging notice doesn\'t show again"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    .end local v5    # "wirelessChargingSharedPrefs":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 1643
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    sget-boolean v6, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v6, :cond_1

    .line 1644
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b04f6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1646
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b04f4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1658
    .restart local v5    # "wirelessChargingSharedPrefs":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargingConnectDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_3

    .line 1659
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f04000e

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1660
    .local v4, "wirelessChargerConnectView":Landroid/view/View;
    const v6, 0x7f0f00b1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1662
    .local v1, "disableAlertCheckBox":Landroid/widget/CheckBox;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b04f5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1663
    const v6, 0x7f0f00c4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1665
    new-instance v6, Lcom/android/systemui/power/PowerNotificationWarnings$9;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings$9;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1673
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1674
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x1040847

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1675
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1676
    const v6, 0x104000a

    new-instance v7, Lcom/android/systemui/power/PowerNotificationWarnings$10;

    invoke-direct {v7, p0, v1, v5}, Lcom/android/systemui/power/PowerNotificationWarnings$10;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1686
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1688
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1689
    .local v3, "wirelessChargerConnectDialog":Landroid/app/AlertDialog;
    new-instance v6, Lcom/android/systemui/power/PowerNotificationWarnings$11;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$11;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1695
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 1696
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1697
    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargingConnectDialog:Landroid/app/AlertDialog;

    .line 1708
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "disableAlertCheckBox":Landroid/widget/CheckBox;
    .end local v3    # "wirelessChargerConnectDialog":Landroid/app/AlertDialog;
    .end local v4    # "wirelessChargerConnectView":Landroid/view/View;
    .end local v5    # "wirelessChargingSharedPrefs":Landroid/content/SharedPreferences;
    :cond_3
    :goto_2
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    goto/16 :goto_1

    .line 1700
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    if-eqz v6, :cond_5

    .line 1701
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    invoke-virtual {v6, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1702
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    invoke-virtual {v6, v8}, Landroid/widget/Toast;->setDuration(I)V

    .line 1703
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1705
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private updateCoverLowBatteryWarning()V
    .locals 5

    .prologue
    .line 918
    const-string v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverLowBatteryWarning :: mLowBatteryWarning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04000b

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 920
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string v3, "visibility"

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 922
    const-string v2, "type"

    const-string v3, "battery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 924
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 925
    return-void

    .line 921
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 458
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotification mLowBatteryWarning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlaySound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSaver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInvalidCharger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_1

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showInvalidChargerNotification()V

    .line 463
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 478
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScoverOpen:Z

    if-eqz v0, :cond_2

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showLowBatteryWarningNotification()V

    .line 466
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 471
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSupportMultiUserMode:Z

    if-eqz v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "low_battery"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 476
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "low_battery"

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private updateNotificationSEC()V
    .locals 2

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruption:Z

    if-eqz v0, :cond_1

    .line 484
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showChargingInterruptionNotification()V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFullBattery:Z

    if-eqz v0, :cond_2

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showFullBatteryNotification()V

    goto :goto_0

    .line 489
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    if-eqz v0, :cond_3

    .line 490
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWirelessChargerNotification()V

    goto :goto_0

    .line 492
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleCharger:Z

    if-eqz v0, :cond_4

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showIncompatibleChargerNotification()V

    goto :goto_0

    .line 495
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowCharger:Z

    if-eqz v0, :cond_5

    .line 496
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSlowChargerNotification()V

    goto :goto_0

    .line 498
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageCharger:Z

    if-eqz v0, :cond_6

    .line 500
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    if-lez v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showHighVoltageChargerNotification()V

    goto :goto_0

    .line 503
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFail:Z

    if-eqz v0, :cond_7

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWirelessChargerNotification()V

    goto :goto_0

    .line 518
    :cond_7
    const-string v0, "PowerUI.Notification"

    const-string v1, "updateNotificationSEC : No notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelHighVoltageChargerNotification()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2625
    const-string v1, "PowerUI.Notification"

    const-string v2, "cancelHighVoltageChargerNotification()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 2627
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2629
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0x7f0b051c

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2630
    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    .line 2632
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v2, "afc_charger"

    const/16 v3, 0x69

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2633
    return-void
.end method

.method public cancelOverheatShutdownWarningTask()V
    .locals 2

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2205
    return-void
.end method

.method public dismissBatterySwellingRecoveryNotice()V
    .locals 1

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2085
    :cond_0
    return-void
.end method

.method public dismissBatterySwellingWarning()V
    .locals 2

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2027
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2028
    return-void
.end method

.method public dismissChargingInterruptionWarning()V
    .locals 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1327
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1330
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruption:Z

    .line 1331
    return-void
.end method

.method public dismissChargingNotice()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1585
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 1586
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1587
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "charging_state"

    const/16 v2, 0x6f

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1588
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    .line 1589
    return-void
.end method

.method public dismissFlashHighTemperatureWarning()V
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedBackToNormal:Z

    .line 1406
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1409
    :cond_0
    return-void
.end method

.method public dismissFullBatteryNotice()V
    .locals 3

    .prologue
    .line 2436
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissing full battery notice: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissFullBatteryNotification()V

    .line 2438
    return-void
.end method

.method public dismissHighVoltageChargerNotice()V
    .locals 0

    .prologue
    .line 2365
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissHighVoltageChargerNotification()V

    .line 2366
    return-void
.end method

.method public dismissIncompatibleChargerWarning()V
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1794
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissIncompatibleChargerNotification()V

    .line 1795
    return-void
.end method

.method public dismissInvalidChargerWarning()V
    .locals 0

    .prologue
    .line 1169
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissInvalidChargerNotification()V

    .line 1170
    return-void
.end method

.method public dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 894
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarningNotification()V

    .line 896
    return-void
.end method

.method public dismissOverheatShutdownNotice()V
    .locals 1

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2298
    :cond_0
    return-void
.end method

.method public dismissOverheatShutdownWarning()V
    .locals 2

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2211
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2214
    :cond_0
    return-void
.end method

.method public dismissPowersavingmodeNotice()V
    .locals 1

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2131
    :cond_0
    return-void
.end method

.method public dismissSlowChargerWarning()V
    .locals 0

    .prologue
    .line 1928
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSlowChargerNotification()V

    .line 1929
    return-void
.end method

.method public dismissWirelessChargingDisconnectWarning()V
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargingDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargingDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1740
    :cond_0
    return-void
.end method

.method public dismissWirelessChargingNotice()V
    .locals 0

    .prologue
    .line 1605
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissWirelessChargerNotification()V

    .line 1606
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2869
    const-string v0, "mSaver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2870
    const-string v0, "mLowBatteryWarning="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2871
    const-string v0, "mPlaySound="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2872
    const-string v0, "mInvalidCharger="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2873
    const-string v0, "mShowing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2874
    const-string v0, "mSaverConfirmation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    const-string v0, "not null"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    return-void

    .line 2874
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCocktailLowBatteryWarningShowing()Z
    .locals 1

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCocktailLowBatteryWarning:Z

    return v0
.end method

.method public isInvalidChargerWarningShowing()Z
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    return v0
.end method

.method public isKeyguardInputRestricted()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2878
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2879
    .local v0, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v0, :cond_0

    .line 2889
    :goto_0
    return v3

    .line 2887
    :cond_0
    const-string v1, "PowerUI.Notification"

    const-string v2, "isKeyguardInputRestricted(): NO SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2893
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2894
    .local v0, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v0, :cond_0

    .line 2904
    :goto_0
    return v3

    .line 2902
    :cond_0
    const-string v1, "PowerUI.Notification"

    const-string v2, "isKeyguardShowingAndNotOccluded(): NO SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isLowBatteryWarningShowing()Z
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyFaceDetectionFailureNotification()V
    .locals 10

    .prologue
    const v9, 0x7f0b0522

    const/4 v8, 0x0

    .line 2544
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v5, :cond_0

    .line 2545
    const-string v5, "PowerUI.Notification"

    const-string v6, "Face detection is already failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :goto_0
    return-void

    .line 2549
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2551
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-nez v1, :cond_1

    .line 2552
    const-string v5, "PowerUI.Notification"

    const-string v6, "notifyFaceDetectionFailureNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2556
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b04c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2557
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2559
    .local v3, "text":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-nez v5, :cond_2

    .line 2560
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 2561
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const v6, 0x7f020693

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 2562
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 2563
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2566
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2567
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2569
    .local v2, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2571
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v9, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2572
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public notifyHighVoltageChargerNotification()V
    .locals 8

    .prologue
    const v6, 0x7f0b051c

    .line 2598
    const-string v3, "PowerUI.Notification"

    const-string v4, "notifyHighVoltageChargerNotification()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2601
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 2602
    const-string v3, "PowerUI.Notification"

    const-string v4, "notifyHighVoltageChargerNotification : fail to get NotificationManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    :goto_0
    return-void

    .line 2605
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2607
    .local v2, "text":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    if-nez v3, :cond_1

    .line 2608
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    .line 2609
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    const v4, 0x7f0203b5

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 2610
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 2611
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2612
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2614
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040008

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2615
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2616
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 2619
    .end local v1    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2620
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 13
    .param p1, "soundType"    # I

    .prologue
    .line 2648
    const/4 v9, 0x1

    if-ne p1, v9, :cond_0

    .line 2650
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v4

    .line 2651
    .local v4, "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/SystemManager;->getChargerConnectionSoundEnabledState()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2652
    const-string v9, "PowerUI.Notification"

    const-string v10, "playSound : Knox Custom disabled SOUND_TYPE_CHARGER_CONNECTION"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    .end local v4    # "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    :goto_0
    return-void

    .line 2659
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v9, :cond_1

    .line 2660
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    .line 2663
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v9, :cond_2

    .line 2664
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 2665
    .local v0, "audioMode":I
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x4

    if-eq v9, v0, :cond_3

    const/4 v9, 0x3

    if-eq v9, v0, :cond_3

    .line 2666
    const-string v9, "PowerUI.Notification"

    const-string v10, "recording so doesn\'t play sound"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2670
    .end local v0    # "audioMode":I
    :cond_2
    const/4 v0, 0x0

    .line 2673
    .restart local v0    # "audioMode":I
    :cond_3
    const-string v9, "PowerUI.Notification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playSound : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v9, :cond_4

    .line 2676
    const-string v9, "PowerUI.Notification"

    const-string v10, "playSound : NotificationPlayer is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    new-instance v9, Lcom/android/systemui/media/NotificationPlayer;

    const-string v10, "PowerUI.Notification"

    invoke-direct {v9, v10}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 2679
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v9, :cond_4

    .line 2680
    const-string v9, "PowerUI.Notification"

    const-string v10, "playSound : fail to new NotificationPlayer"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2686
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v9, :cond_9

    .line 2687
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 2692
    .local v6, "ringerMode":I
    :goto_1
    const/4 v9, 0x2

    if-ne v9, v6, :cond_5

    const/4 v9, 0x1

    if-ne v9, p1, :cond_5

    sget-boolean v9, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    if-eqz v9, :cond_5

    .line 2693
    const/4 v6, 0x1

    .line 2694
    const-string v9, "PowerUI.Notification"

    const-string v10, "ring mode but vibrates in Note3"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "alertoncall_mode"

    const/4 v11, 0x1

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    const/4 v5, 0x1

    .line 2698
    .local v5, "notifyDuringCalls":Z
    :goto_2
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 2699
    .local v8, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v8, :cond_8

    .line 2701
    const/4 v3, 0x1

    .line 2702
    .local v3, "isIdle":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_c

    .line 2703
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v9

    if-eqz v9, :cond_6

    .line 2705
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v9

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v9

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v3, 0x1

    .line 2711
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    const/4 v9, 0x4

    if-eq v9, v0, :cond_7

    const/4 v9, 0x3

    if-ne v9, v0, :cond_8

    .line 2714
    :cond_7
    if-eqz v5, :cond_d

    .line 2715
    const-string v9, "PowerUI.Notification"

    const-string v10, "calling so vibrate"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2716
    const/4 v6, 0x1

    .line 2728
    .end local v3    # "isIdle":Z
    :cond_8
    :goto_4
    const/4 v9, 0x2

    if-ne v9, v6, :cond_e

    .line 2730
    packed-switch p1, :pswitch_data_0

    .line 2746
    :try_start_1
    const-string v9, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2750
    .local v7, "soundUri":Landroid/net/Uri;
    :goto_5
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v9, v10, v7, v11, v12}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 2751
    const-string v9, "PowerUI.Notification"

    const-string v10, "RINGER_MODE_NORMAL"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2779
    .end local v7    # "soundUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 2780
    .local v1, "exception":Ljava/lang/Exception;
    const-string v9, "PowerUI.Notification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playSound : Exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2689
    .end local v1    # "exception":Ljava/lang/Exception;
    .end local v5    # "notifyDuringCalls":Z
    .end local v6    # "ringerMode":I
    .end local v8    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    const/4 v6, 0x2

    .restart local v6    # "ringerMode":I
    goto/16 :goto_1

    .line 2697
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2705
    .restart local v3    # "isIdle":Z
    .restart local v5    # "notifyDuringCalls":Z
    .restart local v8    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    .line 2709
    :cond_c
    :try_start_2
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z

    move-result v3

    goto :goto_3

    .line 2718
    :cond_d
    const-string v9, "PowerUI.Notification"

    const-string v10, "calling and doesn\'t notify during calls"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2722
    :catch_1
    move-exception v1

    .line 2723
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v9, "PowerUI.Notification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playSound : Exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2732
    .end local v1    # "exception":Landroid/os/RemoteException;
    .end local v3    # "isIdle":Z
    :pswitch_0
    :try_start_3
    const-string v9, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2733
    .restart local v7    # "soundUri":Landroid/net/Uri;
    goto :goto_5

    .line 2735
    .end local v7    # "soundUri":Landroid/net/Uri;
    :pswitch_1
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "low_battery_sound"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2736
    .restart local v7    # "soundUri":Landroid/net/Uri;
    goto :goto_5

    .line 2738
    .end local v7    # "soundUri":Landroid/net/Uri;
    :pswitch_2
    const-string v9, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2739
    .restart local v7    # "soundUri":Landroid/net/Uri;
    goto/16 :goto_5

    .line 2742
    .end local v7    # "soundUri":Landroid/net/Uri;
    :pswitch_3
    const-string v9, "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2743
    .restart local v7    # "soundUri":Landroid/net/Uri;
    goto/16 :goto_5

    .line 2752
    .end local v7    # "soundUri":Landroid/net/Uri;
    :cond_e
    const/4 v9, 0x1

    if-ne v9, v6, :cond_10

    .line 2754
    packed-switch p1, :pswitch_data_1

    .line 2764
    const v2, 0xc35b

    .line 2768
    .local v2, "hapticFeedback":I
    :goto_6
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v9, :cond_f

    .line 2769
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    const/4 v10, -0x1

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v9, v2, v10, v11, v12}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2773
    :goto_7
    const-string v9, "PowerUI.Notification"

    const-string v10, "RINGER_MODE_VIBRATE"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2756
    .end local v2    # "hapticFeedback":I
    :pswitch_4
    const v2, 0xc35a

    .line 2757
    .restart local v2    # "hapticFeedback":I
    goto :goto_6

    .line 2761
    .end local v2    # "hapticFeedback":I
    :pswitch_5
    const v2, 0xc35b

    .line 2762
    .restart local v2    # "hapticFeedback":I
    goto :goto_6

    .line 2771
    :cond_f
    const-string v9, "PowerUI.Notification"

    const-string v10, "playSound : Vibrator is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2774
    .end local v2    # "hapticFeedback":I
    :cond_10
    if-nez v6, :cond_11

    .line 2775
    const-string v9, "PowerUI.Notification"

    const-string v10, "RINGER_MODE_SILENT"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2777
    :cond_11
    const-string v9, "PowerUI.Notification"

    const-string v10, "unknown RINGER_MODE"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2730
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2754
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public runBatterySwellingTask(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2019
    return-void
.end method

.method public runOverheatShutdownTask(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2195
    return-void
.end method

.method public runOverheatShutdownWarningTask(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2200
    return-void
.end method

.method public showBatterySwellingRecoveryNotice()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2089
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 2091
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 2092
    const-string v3, "PowerUI.Notification"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :cond_0
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_1
    move v2, v3

    .line 2089
    goto :goto_0

    .line 2096
    .restart local v2    # "isShutdownOn":Z
    :cond_2
    sget-boolean v4, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_3

    .line 2097
    const-string v3, "PowerUI.Notification"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2101
    :cond_3
    const-string v4, "PowerUI.Notification"

    const-string v5, "showBatterySwellingRecoveryNotice()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 2105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2106
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2107
    const v3, 0x7f0b04ef

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2108
    const v3, 0x7f0b04f0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2109
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2112
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$17;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$17;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2118
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 2119
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2120
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    .line 2121
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1
.end method

.method public showBatterySwellingWarning()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2032
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 2034
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2035
    const-string v3, "PowerUI.Notification"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v3

    .line 2032
    goto :goto_0

    .line 2039
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    sget-boolean v4, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_2

    .line 2040
    const-string v3, "PowerUI.Notification"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2044
    :cond_2
    const-string v4, "PowerUI.Notification"

    const-string v5, "showBatterySwellingWarning()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_3

    .line 2048
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2049
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2050
    const v3, 0x7f0b04ed

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2051
    const v3, 0x7f0b04ee

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2052
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2054
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2055
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$15;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$15;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2061
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 2062
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2063
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    .line 2065
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->playSound(I)V

    .line 2067
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    .line 2069
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingTask:Ljava/lang/Runnable;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public showChargingInterruptionWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1335
    const-string v2, "PowerUI.Notification"

    const-string v3, "showChargingInterruptionWarning()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1337
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1338
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show Charging interruption warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :goto_0
    return-void

    .line 1342
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruption:Z

    .line 1343
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    goto :goto_0
.end method

.method public showChargingNotice(I)V
    .locals 20
    .param p1, "chargingType"    # I

    .prologue
    .line 1491
    const-string v9, ""

    .line 1492
    .local v9, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 1493
    .local v8, "oldChargingType":I
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1495
    .local v6, "oldChargingTime":J
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 1496
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getChargeTimeRemaining()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1498
    const-string v12, "PowerUI.Notification"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "showChargingNotice oldChargingType : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " currentChargingType : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " oldChargingTime : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mChargingTime : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    cmp-long v12, v6, v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    if-ne v12, v13, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v8, v12, :cond_0

    .line 1581
    :goto_0
    return-void

    .line 1505
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    packed-switch v12, :pswitch_data_0

    .line 1537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b04f3

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1538
    .local v11, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b04cc

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1542
    .local v10, "tickerText":Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_5

    .line 1543
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0b04cb

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->getFormattedTime(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1550
    :goto_2
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f0203b5

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    invoke-virtual {v12, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, -0x2

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const-string v13, "sys"

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1060059

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1565
    .local v5, "nb":Landroid/app/Notification$Builder;
    sget-boolean v12, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_2

    .line 1566
    :cond_1
    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1569
    :cond_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_6

    .line 1570
    new-instance v12, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v12, v5}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v12, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v4

    .line 1576
    .local v4, "n":Landroid/app/Notification;
    :goto_3
    iget-object v12, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v12, :cond_3

    .line 1577
    iget-object v12, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v13, 0x1020040

    const/16 v14, 0x8

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1579
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v13, "charging_state"

    const/16 v14, 0x6f

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v13, v14, v4, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1580
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    goto/16 :goto_0

    .line 1507
    .end local v4    # "n":Landroid/app/Notification;
    .end local v5    # "nb":Landroid/app/Notification$Builder;
    .end local v10    # "tickerText":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :pswitch_0
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mUseOtherChargingText:Z

    if-eqz v12, :cond_4

    .line 1508
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b03bc

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1511
    .restart local v11    # "title":Ljava/lang/CharSequence;
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b04cc

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1512
    .restart local v10    # "tickerText":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1510
    .end local v10    # "tickerText":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b04f3

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "title":Ljava/lang/CharSequence;
    goto :goto_4

    .line 1515
    .end local v11    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b051b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1516
    .restart local v11    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b051c

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1517
    .restart local v10    # "tickerText":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1520
    .end local v10    # "tickerText":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b04f1

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1521
    .restart local v11    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b04ce

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1522
    .restart local v10    # "tickerText":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1525
    .end local v10    # "tickerText":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b04f2

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1526
    .restart local v11    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b04cf

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1527
    .restart local v10    # "tickerText":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1530
    .end local v10    # "tickerText":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b04ff

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1531
    .restart local v11    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b04cc

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1532
    .restart local v10    # "tickerText":Ljava/lang/CharSequence;
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0b0502

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1533
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1534
    goto/16 :goto_1

    .line 1546
    :cond_5
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0b0380

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 1572
    .restart local v5    # "nb":Landroid/app/Notification$Builder;
    :cond_6
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .restart local v4    # "n":Landroid/app/Notification;
    goto/16 :goto_3

    .line 1505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public showFlashHighTemperatureWarning(Z)V
    .locals 13
    .param p1, "isReboot"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 1413
    const v7, 0x7f0b0537

    .line 1414
    .local v7, "titleId":I
    const v4, 0x7f0b04c3

    .line 1416
    .local v4, "messageId":I
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedFromReboot:Z

    .line 1417
    iput-boolean v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedBackToNormal:Z

    .line 1419
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedDialog:Landroid/app/AlertDialog;

    if-nez v8, :cond_0

    .line 1420
    const-string v8, "PowerUI.Notification"

    const-string v9, "show FlashHighTemperatureWarning"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedTask:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1424
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1425
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1426
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1427
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1428
    const v8, 0x104000a

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1430
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1431
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v8, Lcom/android/systemui/power/PowerNotificationWarnings$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$7;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1441
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 1442
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1443
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedDialog:Landroid/app/AlertDialog;

    .line 1446
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_0
    iget-boolean v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedFromReboot:Z

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedNotificationShowing:Z

    if-nez v8, :cond_3

    .line 1447
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f020632

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const-string v9, "sys"

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060059

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1460
    .local v6, "nb":Landroid/app/Notification$Builder;
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8, v6}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    .line 1462
    .local v5, "n":Landroid/app/Notification;
    iget-object v8, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v8, :cond_1

    .line 1463
    iget-object v8, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v9, 0x1020040

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1465
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v9, "flash_charging_interrupt_state"

    const/16 v10, 0x70

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10, v5, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1467
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v9, "com.android.systemui.power_flash_high_temperature"

    invoke-virtual {v8, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1468
    .local v3, "flashHighTemperatureSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_2

    .line 1469
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1470
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "FlashHighTemperatureOccured"

    invoke-interface {v2, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1471
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1472
    const-string v8, "PowerUI.Notification"

    const-string v9, "Flash High Temperature is occured"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    iput-boolean v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeatedNotificationShowing:Z

    .line 1476
    .end local v3    # "flashHighTemperatureSharedPrefs":Landroid/content/SharedPreferences;
    .end local v5    # "n":Landroid/app/Notification;
    .end local v6    # "nb":Landroid/app/Notification$Builder;
    :cond_3
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/systemui/power/PowerNotificationWarnings;->playSound(I)V

    .line 1477
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    .line 1478
    return-void
.end method

.method public showFullBatteryNotice()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 2457
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2458
    .local v1, "uri_Service1":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getSealedState"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2461
    .local v9, "cr_SealedState":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 2463
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2464
    const-string v0, "getSealedState"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2465
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2466
    .local v3, "uri_Service2":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getSealedHideNotificationMessages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 2469
    .local v8, "cr_SealedHideNotification":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 2471
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2472
    const-string v0, "getSealedHideNotificationMessages"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2474
    const-string v0, "PowerUI.Notification"

    const-string v2, "now KNOX state : Don\'t show notifications in Sealed Mode if Battery Full Warning Notifications set to Disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2478
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2483
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2505
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 2478
    .restart local v3    # "uri_Service2":Landroid/net/Uri;
    .restart local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2483
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2490
    :cond_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2491
    const-string v0, "PowerUI.Notification"

    const-string v2, "GATE tool is running so don\'t show Full Charge notice"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2478
    .restart local v3    # "uri_Service2":Landroid/net/Uri;
    .restart local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2483
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2495
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFullBattery:Z

    .line 2496
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 2498
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 2499
    .local v11, "powerManager":Landroid/os/PowerManager;
    if-nez v11, :cond_4

    .line 2500
    const-string v0, "PowerUI.Notification"

    const-string v2, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2503
    :cond_4
    const v0, 0x10000006

    const-string v2, "PowerUI.Notification"

    invoke-virtual {v11, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 2504
    .local v10, "fullBatteryScreenDimLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v4, 0x4e20

    invoke-virtual {v10, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method public showHighVoltageChargerNotice()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2378
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 2379
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 2380
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show High Voltage Charger notice while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    :goto_0
    return-void

    .line 2384
    :cond_1
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_2

    .line 2385
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON so don\'t show High Voltage Charger notice"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2399
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageCharger:Z

    .line 2400
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    goto :goto_0
.end method

.method public showIncompatibleChargerWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1809
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1810
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1811
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show Incompatible charging warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :goto_0
    return-void

    .line 1815
    :cond_1
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_2

    .line 1816
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON so don\'t show Incompatible charging warning"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1820
    :cond_2
    sget-boolean v2, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-nez v2, :cond_3

    .line 1821
    const-string v1, "PowerUI.Notification"

    const-string v2, "showIncompatibleChargerWarning should be called in VZW"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1824
    :cond_3
    const-string v2, "PowerUI.Notification"

    const-string v3, "showIncompatibleChargerWarning()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 1828
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleCharger:Z

    .line 1829
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    goto :goto_0
.end method

.method public showInvalidChargerWarning()V
    .locals 1

    .prologue
    .line 1180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 1181
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1182
    return-void
.end method

.method public showLowBatteryWarning(Z)V
    .locals 14
    .param p1, "playSound"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 937
    const-string v0, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show low battery warning: level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] playSound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "SHOULD_SHUT_DOWN"

    invoke-static {v0, v4, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v13, v0, :cond_0

    move v11, v13

    .line 943
    .local v11, "isShutdownOn":Z
    :cond_0
    if-eqz v11, :cond_1

    .line 944
    const-string v0, "PowerUI.Notification"

    const-string v2, "Shutdown is ON"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :goto_0
    return-void

    .line 948
    :cond_1
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-eq v0, v4, :cond_2

    .line 949
    const-string v0, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON and Not critical Low battery"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 968
    :cond_2
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 969
    .local v1, "uri_Service1":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getSealedState"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 972
    .local v9, "cr_SealedState":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 974
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 975
    const-string v0, "getSealedState"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 976
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 977
    .local v3, "uri_Service2":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getSealedHideNotificationMessages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 980
    .local v8, "cr_SealedHideNotification":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 982
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 983
    const-string v0, "getSealedHideNotificationMessages"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 985
    const-string v0, "PowerUI.Notification"

    const-string v2, "now KNOX state : Don\'t show notifications in Sealed Mode if Battery Low Warning Notifications set to Disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 994
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 989
    :cond_3
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 994
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1001
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 1002
    iput-boolean v13, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    .line 1003
    iput-boolean v13, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsNeedToRemoveLowBatteryWarning:Z

    .line 1004
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 1005
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCoverLowBatteryWarning()V

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 1008
    .local v12, "powerManager":Landroid/os/PowerManager;
    if-nez v12, :cond_6

    .line 1009
    const-string v0, "PowerUI.Notification"

    const-string v2, "showLowBatteryWarning : fail to get PowerManager reference"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 989
    .end local v12    # "powerManager":Landroid/os/PowerManager;
    .restart local v3    # "uri_Service2":Landroid/net/Uri;
    .restart local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 994
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1012
    .restart local v12    # "powerManager":Landroid/os/PowerManager;
    :cond_6
    const v0, 0x10000006

    const-string v2, "PowerUI.Notification"

    invoke-virtual {v12, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 1013
    .local v10, "fullBatteryScreenDimLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v4, 0x3a98

    invoke-virtual {v10, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0
.end method

.method public showOverheatShutdownNotice()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2302
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SHOULD_SHUT_DOWN"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 2304
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2305
    const-string v5, "PowerUI.Notification"

    const-string v6, "don\'t show Overheat shutdown notice while Shutdown is ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v5

    .line 2302
    goto :goto_0

    .line 2309
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_2

    .line 2310
    const-string v5, "PowerUI.Notification"

    const-string v6, "don\'t show Overheat shutdown notice while Over heat shutdown warning"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2314
    :cond_2
    const-string v6, "PowerUI.Notification"

    const-string v7, "showOverheatShutdownNotice()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    sget-boolean v6, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v6, :cond_5

    .line 2320
    const/4 v6, 0x2

    iget v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    if-ne v6, v7, :cond_4

    .line 2321
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b050a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2322
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b050c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2332
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_3

    .line 2334
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2335
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2336
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2337
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2339
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/power/PowerNotificationWarnings$24;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$24;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2347
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2348
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$25;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$25;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2354
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 2355
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2356
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    .line 2358
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1

    .line 2324
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0509

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2325
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b050b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2

    .line 2328
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0510

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2329
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0511

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public showOverheatShutdownWarning()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2218
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SHOULD_SHUT_DOWN"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 2220
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2221
    const-string v5, "PowerUI.Notification"

    const-string v6, "don\'t show Overheat shutdown warning while Shutdown is ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v5

    .line 2218
    goto :goto_0

    .line 2225
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    const-string v6, "PowerUI.Notification"

    const-string v7, "showOverheatShutdownWarning()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatShutdownNotice()V

    .line 2233
    sget-boolean v6, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v6, :cond_4

    .line 2234
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0505

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2235
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0508

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2236
    .local v0, "button_text":Ljava/lang/CharSequence;
    const/4 v6, 0x2

    iget v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    if-ne v6, v7, :cond_3

    .line 2237
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0507

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2247
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-nez v6, :cond_2

    .line 2248
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2249
    .local v1, "d":Landroid/app/ProgressDialog;
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2250
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2251
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2252
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$20;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$20;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v0, v5}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2259
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$21;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$21;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2264
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 2265
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 2266
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    .line 2268
    .end local v1    # "d":Landroid/app/ProgressDialog;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1

    .line 2239
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0506

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2

    .line 2242
    .end local v0    # "button_text":Ljava/lang/CharSequence;
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b050d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2243
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b050f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2244
    .restart local v0    # "button_text":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b050e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public showPowersavingmodeNotice()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2135
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 2137
    .local v3, "isShutdownOn":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 2138
    const-string v4, "PowerUI.Notification"

    const-string v5, "don\'t show Power saving mode notice while Shutdown is ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :goto_1
    return-void

    .end local v3    # "isShutdownOn":Z
    :cond_0
    move v3, v4

    .line 2135
    goto :goto_0

    .line 2142
    .restart local v3    # "isShutdownOn":Z
    :cond_1
    sget-boolean v5, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v5, :cond_2

    .line 2143
    const-string v4, "PowerUI.Notification"

    const-string v5, "FTA Mode is ON so don\'t show Power saving mode notice"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2147
    :cond_2
    const-string v5, "PowerUI.Notification"

    const-string v6, "showPowersavingmodeNotice()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_4

    .line 2151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2152
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2153
    const v4, 0x7f0b046e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2154
    const v4, 0x7f0b046d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2156
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2157
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 2158
    const-string v4, "com.samsung.settings.PSM_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2159
    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2161
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2162
    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$18;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$18;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/Intent;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2177
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2178
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$19;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$19;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2184
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2185
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2186
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    .line 2188
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1
.end method

.method public showSaverMode(Z)V
    .locals 5
    .param p1, "mode"    # Z

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    .line 444
    .local v0, "saverNotificationAlreadyShowing":Z
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    .line 445
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->dismiss()V

    .line 448
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v1, :cond_2

    .line 449
    if-nez v0, :cond_1

    .line 450
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSaverNotification()V

    .line 455
    :cond_1
    :goto_0
    return-void

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v2, "battery_saver"

    const/16 v3, 0x71

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public showSlowChargerWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1951
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1952
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1953
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show Slow charging warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    :goto_0
    return-void

    .line 1957
    :cond_1
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_2

    .line 1958
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON so don\'t show Slow charging warning"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1962
    :cond_2
    sget-boolean v2, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-nez v2, :cond_3

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    if-eq v2, v3, :cond_3

    .line 1963
    const-string v1, "PowerUI.Notification"

    const-string v2, "showSlowChargerWarning should be called in VZW or Tablet"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1966
    :cond_3
    const-string v2, "PowerUI.Notification"

    const-string v3, "showSlowChargerWarning()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 1970
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowCharger:Z

    .line 1971
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    goto :goto_0
.end method

.method public showWirelessChargingDisconnectWarning()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1744
    const-string v1, "PowerUI.Notification"

    const-string v2, "showWirelessChargingDisconnectWarning()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    sget-boolean v1, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v1, :cond_0

    .line 1747
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON so don\'t show Wireless charging disconnect warning"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :goto_0
    return-void

    .line 1751
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0b051f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1753
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 1754
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1755
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 1756
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1758
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showWirelessChargingNotice()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1620
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1621
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1622
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show wireless charging popup while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :goto_0
    return-void

    .line 1626
    :cond_1
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_2

    .line 1627
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON and don\'t show wireless charging popup"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1631
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    .line 1632
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1633
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_0
.end method

.method public turnOnScreen()V
    .locals 6

    .prologue
    .line 2786
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 2787
    .local v1, "powerManager":Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 2788
    const-string v2, "PowerUI.Notification"

    const-string v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    :goto_0
    return-void

    .line 2793
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "BatteryStateChanged"

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2794
    :catch_0
    move-exception v0

    .line 2795
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(IIJIIIIZ)V
    .locals 3
    .param p1, "batteryLevel"    # I
    .param p2, "bucket"    # I
    .param p3, "screenOffTime"    # J
    .param p5, "batteryHealth"    # I
    .param p6, "batteryOnline"    # I
    .param p7, "deviceType"    # I
    .param p8, "plugType"    # I
    .param p9, "flashOverHeat"    # Z

    .prologue
    .line 422
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    .line 423
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    .line 424
    if-ltz p2, :cond_1

    .line 425
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 429
    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 430
    iput-wide p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    .line 432
    iput p5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    .line 433
    iput p6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryOnline:I

    .line 434
    iput p7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    .line 435
    iput p8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    .line 437
    iput-boolean p9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFlashOverHeated:Z

    .line 439
    return-void

    .line 426
    :cond_1
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-ge p2, v0, :cond_0

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    goto :goto_0
.end method

.method public updateCocktailLowBatteryWarning(Z)V
    .locals 11
    .param p1, "visibility"    # Z

    .prologue
    .line 1071
    sget-boolean v6, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    if-nez v6, :cond_1

    .line 1114
    :cond_0
    return-void

    .line 1074
    :cond_1
    const-string v6, "PowerUI.Notification"

    const-string v7, "update Low battery gadget"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCocktailLowBatteryWarning:Z

    .line 1079
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v1

    .line 1080
    .local v1, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v8, "com.android.systemui.power.PowerNotificationWarnings$CocktailProvider"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 1082
    .local v0, "cocktailIds":[I
    if-eqz p1, :cond_a

    .line 1083
    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b029e

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1084
    .local v5, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x12

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    const/16 v9, 0xa

    if-lt v6, v9, :cond_2

    const/4 v6, 0x3

    :goto_0
    const/16 v9, 0x21

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1085
    new-instance v7, Landroid/text/style/TypefaceSpan;

    const-string v6, "Roboto_Medium"

    invoke-direct {v7, v6}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    const/16 v9, 0xa

    if-lt v6, v9, :cond_3

    const/4 v6, 0x3

    :goto_1
    const/16 v9, 0x21

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1087
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f04000c

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1088
    .local v4, "remoteViews":Landroid/widget/RemoteViews;
    const v6, 0x7f0f00c9

    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1089
    const v7, 0x7f0f00ca

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_4

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0b04da

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1090
    const v7, 0x7f0f00c7

    const-string v8, "setBackgroundColor"

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v9, -0x2

    if-ne v6, v9, :cond_5

    const-string v6, "#9e2416"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    :goto_3
    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1091
    const v7, 0x7f0f00cb

    const-string v8, "setBackgroundColor"

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v9, -0x2

    if-ne v6, v9, :cond_6

    const-string v6, "#c9331b"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    :goto_4
    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1092
    const v6, 0x7f0f00cb

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1093
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseRedBatteryIcon:Z

    if-eqz v6, :cond_8

    .line 1094
    const v7, 0x7f0f00c8

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    const/16 v8, 0xa

    if-gt v6, v8, :cond_7

    const v6, 0x7f02065c

    :goto_5
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1099
    :goto_6
    new-instance v6, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v6, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/widget/RemoteViews;)V

    const v7, 0x10004

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v6

    const/16 v7, 0x9f

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setDisplayPolicy(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v3

    .line 1105
    .local v3, "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 1106
    aget v6, v0, v2

    invoke-virtual {v1, v6, v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    .line 1107
    aget v6, v0, v2

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->showCocktail(I)V

    .line 1105
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1084
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    .end local v4    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_2
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 1085
    :cond_3
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 1089
    .restart local v4    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0b04de

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1090
    :cond_5
    const-string v6, "#04222d"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 1091
    :cond_6
    const-string v6, "#1d424f"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_4

    .line 1094
    :cond_7
    const v6, 0x7f02065a

    goto :goto_5

    .line 1096
    :cond_8
    const v7, 0x7f0f00c8

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_9

    const v6, 0x7f02065b

    :goto_8
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_6

    :cond_9
    const v6, 0x7f020659

    goto :goto_8

    .line 1110
    .end local v4    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v5    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 1111
    aget v6, v0, v2

    const v7, 0x10004

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->closeCocktail(II)V

    .line 1110
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public updateLowBatteryWarning()V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 890
    return-void
.end method

.method public userSwitched()V
    .locals 0

    .prologue
    .line 1186
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 1187
    return-void
.end method

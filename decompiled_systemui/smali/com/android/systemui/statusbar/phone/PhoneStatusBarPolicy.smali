.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;
    }
.end annotation


# static fields
.field public static final ACTION_DND_OFF:Ljava/lang/String; = "com.android.systemui.action.dnd_off"

.field private static final ACTION_SD_DND:Ljava/lang/String; = "com.samsung.intent.action.DND"

.field private static final DEBUG:Z

.field private static final SLOT_ALARM_CLOCK:Ljava/lang/String; = "alarm_clock"

.field private static final SLOT_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field private static final SLOT_CAST:Ljava/lang/String; = "cast"

.field private static final SLOT_CDMA_ERI:Ljava/lang/String; = "cdma_eri"

.field private static final SLOT_HOTSPOT:Ljava/lang/String; = "hotspot"

.field private static final SLOT_KNOX_CONTAINER:Ljava/lang/String; = "knox_container"

.field private static final SLOT_MANAGED_PROFILE:Ljava/lang/String; = "managed_profile"

.field private static final SLOT_TODDLER:Ljava/lang/String; = "toddler"

.field private static final SLOT_TTY:Ljava/lang/String; = "tty"

.field private static final SLOT_VOLUME:Ljava/lang/String; = "volume"

.field private static final SLOT_ZEN:Ljava/lang/String; = "zen"

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarPolicy"


# instance fields
.field private isBootCompleted:Z

.field private isPreviousVersion:Z

.field private mBluetoothEnabled:Z

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyMode:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyguardVisible:Z

.field private mKnoxContainerFocused:Z

.field private mKnoxContainerIconVisible:Z

.field private mManagedProfileFocused:Z

.field private mManagedProfileIconVisible:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mService:Landroid/app/StatusBarManager;

.field mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mToddlerModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final mUserSwitchListener:Landroid/app/IUserSwitchObserver$Stub;

.field private mVolumeVisible:Z

.field private mZen:I

.field private mZenVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "PhoneStatusBarPolicy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cast"    # Lcom/android/systemui/statusbar/policy/CastController;
    .param p3, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileFocused:Z

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKnoxContainerFocused:Z

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKnoxContainerIconVisible:Z

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardVisible:Z

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mEmergencyMode:Z

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isPreviousVersion:Z

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isBootCompleted:Z

    .line 128
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 608
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Landroid/app/IUserSwitchObserver$Stub;

    .line 636
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 202
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 203
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 206
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 207
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 210
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    :cond_0
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v1, "com.android.systemui.action.dnd_off"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v1, "com.samsung.intent.action.DND"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    const/4 v3, 0x0

    const/4 v5, -0x2

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mEmergencyMode:Z

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 238
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Landroid/app/IUserSwitchObserver$Stub;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_1
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v8, "pkgFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 247
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 249
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v13

    .line 250
    .local v13, "numPhones":I
    new-array v1, v13, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 251
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v13, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v1, v11

    .line 251
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 229
    .end local v8    # "pkgFilter":Landroid/content/IntentFilter;
    .end local v11    # "i":I
    .end local v13    # "numPhones":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 256
    .restart local v8    # "pkgFilter":Landroid/content/IntentFilter;
    .restart local v11    # "i":I
    .restart local v13    # "numPhones":I
    :cond_2
    const-string v1, "1"

    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isBootCompleted:Z

    .line 261
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "tty"

    const v3, 0x7f020626

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "tty"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cdma_eri"

    const v3, 0x7f0204ef

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cdma_eri"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 269
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    const v3, 0x7f0203d2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 276
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "zen"

    const v3, 0x7f02064d

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "zen"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "volume"

    const v3, 0x7f0204ee

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "volume"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 282
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 285
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cast"

    const v3, 0x7f0203d4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cast"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 287
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CastController;->addCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    .line 296
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "managed_profile"

    const v3, 0x7f02048f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0b034a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "managed_profile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "knox_container"

    const v3, 0x7f02038d

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0b034a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "knox_container"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 306
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v1, :cond_4

    .line 307
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mToddlerModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;

    .line 308
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mToddlerModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;->setListening(Z)V

    .line 309
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "toddler"

    const v3, 0x7f0205fe

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 312
    .local v12, "isAirPlaneMode":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_5

    const/4 v1, 0x0

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateToddler(Z)V

    .line 317
    .end local v12    # "isAirPlaneMode":I
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isPreviousVersion:Z

    .line 318
    return-void

    .line 312
    .restart local v12    # "isAirPlaneMode":I
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mToddlerModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;->isActivated()Z

    move-result v1

    goto :goto_3

    .line 239
    .end local v8    # "pkgFilter":Landroid/content/IntentFilter;
    .end local v11    # "i":I
    .end local v12    # "isAirPlaneMode":I
    .end local v13    # "numPhones":I
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/UserInfoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->profileChanged(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mToddlerModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateToddler(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private profileChanged(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 566
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 567
    .local v1, "userManager":Landroid/os/UserManager;
    const/4 v0, 0x0

    .line 568
    .local v0, "user":Landroid/content/pm/UserInfo;
    const/4 v2, -0x2

    if-ne p1, v2, :cond_2

    .line 570
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 579
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKnoxAppRunning(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKnoxContainerFocused:Z

    .line 580
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileFocused:Z

    .line 581
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileChanged: mManagedProfileFocused: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileFocused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileChanged: mKnoxContainerFocused: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKnoxContainerFocused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    .line 585
    return-void

    .line 575
    :cond_2
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_0

    .line 580
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 571
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateAlarm(Z)V
    .locals 4
    .param p1, "forceOff"    # Z

    .prologue
    const/4 v1, 0x0

    .line 334
    if-eqz p1, :cond_0

    .line 335
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "alarm_clock"

    invoke-virtual {v2, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 341
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 338
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 339
    .local v1, "alarmSet":Z
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "alarm_clock"

    invoke-virtual {v2, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateBluetooth()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 506
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 507
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const v2, 0x7f0203e9

    .line 508
    .local v2, "iconId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02e2

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "contentDescription":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 511
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v5, 0xc

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 512
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 513
    const v2, 0x7f0203ea

    .line 514
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02e1

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 520
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 521
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "bluetooth"

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v3, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 522
    return-void

    :cond_1
    move v3, v4

    .line 511
    goto :goto_0

    .line 517
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    goto :goto_1
.end method

.method private updateCast()V
    .locals 9

    .prologue
    .line 549
    const/4 v2, 0x0

    .line 550
    .local v2, "isCasting":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 551
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget v3, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 553
    :cond_1
    const/4 v2, 0x1

    .line 557
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_2
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "PhoneStatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCast: isCasting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_3
    if-eqz v2, :cond_4

    .line 559
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cast"

    const v5, 0x7f0203d4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0b031c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 562
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cast"

    invoke-virtual {v3, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 563
    return-void
.end method

.method private updateManagedProfile()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 588
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "PhoneStatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateManagedProfile: mManagedProfileFocused: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileFocused:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mKeyguardVisible: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileFocused:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardVisible:Z

    if-nez v3, :cond_4

    move v0, v1

    .line 592
    .local v0, "showIcon":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    if-eq v3, v0, :cond_1

    .line 593
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "managed_profile"

    invoke-virtual {v3, v4, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 594
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    .line 597
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKnoxContainerFocused:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardVisible:Z

    if-nez v3, :cond_5

    move v0, v1

    .line 598
    :goto_1
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "PhoneStatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateManagedProfile: mKnoxContainerFocused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKnoxContainerFocused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mKeyguardVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKnoxContainerIconVisible:Z

    if-eq v1, v0, :cond_3

    .line 602
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "knox_container"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 603
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKnoxContainerIconVisible:Z

    .line 606
    :cond_3
    return-void

    .end local v0    # "showIcon":Z
    :cond_4
    move v0, v2

    .line 591
    goto :goto_0

    .restart local v0    # "showIcon":Z
    :cond_5
    move v0, v2

    .line 597
    goto :goto_1
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 345
    const-string v5, "ss"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v5, "subscription"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 349
    .local v4, "subId":I
    const-string v5, "PhoneStatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSimState for subId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "phoneId":I
    const-string v5, "PhoneStatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSimState for phoneId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-ltz v1, :cond_0

    .line 354
    const-string v5, "ABSENT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 378
    .local v2, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v5, v1

    .line 380
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    return-void

    .line 357
    :cond_1
    const-string v5, "CARD_IO_ERROR"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 358
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 360
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    const-string v5, "READY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 361
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 363
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const-string v5, "LOCKED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 364
    const-string v5, "reason"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v5, "PIN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 367
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 369
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v5, "PUK"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 370
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 373
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 376
    .end local v0    # "lockedReason":Ljava/lang/String;
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 529
    const-string v4, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 531
    .local v0, "currentTtyMode":I
    if-eqz v0, :cond_2

    move v1, v2

    .line 533
    .local v1, "enabled":Z
    :goto_0
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTTY: enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    if-eqz v1, :cond_3

    .line 537
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "PhoneStatusBarPolicy"

    const-string v5, "updateTTY: set TTY on"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "tty"

    const v6, 0x7f020626

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0319

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 540
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "tty"

    invoke-virtual {v3, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 546
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_2
    move v1, v3

    .line 531
    goto :goto_0

    .line 543
    .restart local v1    # "enabled":Z
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "PhoneStatusBarPolicy"

    const-string v4, "updateTTY: set TTY off"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "tty"

    invoke-virtual {v2, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private final updateToddler(Z)V
    .locals 2
    .param p1, "mIsOn"    # Z

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "toddler"

    invoke-virtual {v0, v1, p1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 526
    return-void
.end method

.method private final updateVolumeZen()V
    .locals 22

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    .line 385
    .local v8, "audioManager":Landroid/media/AudioManager;
    const/16 v21, 0x0

    .line 386
    .local v21, "zenVisible":Z
    const/16 v20, 0x0

    .line 387
    .local v20, "zenIconId":I
    const/16 v19, 0x0

    .line 389
    .local v19, "zenDescription":Ljava/lang/String;
    const/16 v17, 0x0

    .line 390
    .local v17, "volumeVisible":Z
    const/16 v16, 0x0

    .line 391
    .local v16, "volumeIconId":I
    const/4 v15, 0x0

    .line 395
    .local v15, "volumeDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_0

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    .line 399
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isBootCompleted:Z

    if-eqz v2, :cond_3

    .line 400
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    if-eqz v2, :cond_a

    .line 401
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v5, "com.android.settings.Settings$ZenModeDNDSettingsActivity"

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 404
    .local v4, "dndSettingIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 407
    .local v11, "dndSettingPendingIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 408
    .local v9, "dndOffIntent":Landroid/content/Intent;
    const-string v2, "com.android.systemui.action.dnd_off"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v2, v3, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 412
    .local v10, "dndOffPendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0618

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0203b8

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b061a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 421
    .local v13, "notiBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mEmergencyMode:Z

    if-eqz v2, :cond_9

    .line 422
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 427
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v18

    .line 428
    .local v18, "zenConfig":Landroid/service/notification/ZenModeConfig;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, v18

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-nez v2, :cond_2

    .line 430
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0619

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v18    # "zenConfig":Landroid/service/notification/ZenModeConfig;
    :cond_2
    :goto_1
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    .line 438
    .local v14, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v3, 0x0

    const v5, 0x7f0203b8

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v5, v14, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 464
    .end local v4    # "dndSettingIntent":Landroid/content/Intent;
    .end local v9    # "dndOffIntent":Landroid/content/Intent;
    .end local v10    # "dndOffPendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "dndSettingPendingIntent":Landroid/app/PendingIntent;
    .end local v13    # "notiBuilder":Landroid/app/Notification$Builder;
    .end local v14    # "notification":Landroid/app/Notification;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isPreviousVersion:Z

    if-eqz v2, :cond_4

    .line 465
    :cond_4
    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 466
    const/16 v17, 0x1

    .line 467
    const v16, 0x7f0204ee

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v3, 0x7f0b031a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 472
    :cond_5
    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-nez v2, :cond_6

    .line 473
    const/16 v17, 0x1

    .line 474
    const v16, 0x7f0204ed

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v3, 0x7f0b031b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 496
    :cond_6
    if-eqz v17, :cond_7

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "volume"

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v5, v15}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 499
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    move/from16 v0, v17

    if-eq v0, v2, :cond_8

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "volume"

    move/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 501
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 503
    :cond_8
    return-void

    .line 424
    .restart local v4    # "dndSettingIntent":Landroid/content/Intent;
    .restart local v9    # "dndOffIntent":Landroid/content/Intent;
    .restart local v10    # "dndOffPendingIntent":Landroid/app/PendingIntent;
    .restart local v11    # "dndSettingPendingIntent":Landroid/app/PendingIntent;
    .restart local v13    # "notiBuilder":Landroid/app/Notification$Builder;
    :cond_9
    invoke-virtual {v13, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 432
    :catch_0
    move-exception v12

    .line 433
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "PhoneStatusBarPolicy"

    const-string v3, "updateVolumeZen : Failed to get zenconfig"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 440
    .end local v4    # "dndSettingIntent":Landroid/content/Intent;
    .end local v9    # "dndOffIntent":Landroid/content/Intent;
    .end local v10    # "dndOffPendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "dndSettingPendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "notiBuilder":Landroid/app/Notification$Builder;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v3, 0x0

    const v5, 0x7f0203b8

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v5, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_2
.end method


# virtual methods
.method public appTransitionStarting(JJ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    .line 645
    return-void
.end method

.method public setEmergencyMode(Z)V
    .locals 0
    .param p1, "emergencyMode"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mEmergencyMode:Z

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 330
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 648
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardVisible:Z

    .line 649
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    .line 650
    return-void
.end method

.method public setZenMode(I)V
    .locals 0
    .param p1, "zen"    # I

    .prologue
    .line 321
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 323
    return-void
.end method

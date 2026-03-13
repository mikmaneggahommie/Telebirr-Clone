.class public Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierLockPlusView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I

.field static final DEBUG:Z = true

.field private static final PATH_PERMANENT_MEM_LOCK_FOLDER:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/lawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO_ENC:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/enclawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_MSG_INFO:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/lawlockmsg.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_MSG_INFO_ENC:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

.field private static final TAG:Ljava/lang/String; = "KeyguardCarrierLockPlusView"

.field private static final TEXT_SEPERATOR:C = ':'

.field private static final TIMEOUT:I = 0x1

.field private static lockChecksum:Ljava/lang/String;

.field private static lockChecksumUnlock:Ljava/lang/String;

.field private static lockMsg:Ljava/lang/String;

.field private static lockMsgUnlock:Ljava/lang/String;

.field private static lockPassword:Ljava/lang/String;

.field private static lockPasswordUnlock:Ljava/lang/String;

.field private static lockSaveMsg:Ljava/lang/String;

.field private static lockSaveMsgUnlock:Ljava/lang/String;

.field private static lockType:Ljava/lang/String;

.field private static lockTypeUnlock:Ljava/lang/String;


# instance fields
.field private final CARRIER_LOCK_DISABLED:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallButton:Landroid/widget/Button;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mContext:Landroid/content/Context;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardBouncerFrameView:Landroid/view/View;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mMaintext:Landroid/widget/TextView;

.field private mMccInfo:Ljava/lang/String;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mPhoneNumber:Ljava/lang/String;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mUnlockButton:Landroid/widget/Button;

.field private mWakelockSequence:I

.field mtelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x66ffffff

    :goto_0
    sput v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    .line 119
    const-string v0, ""

    sput-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockMsg:Ljava/lang/String;

    .line 120
    const-string v0, ""

    sput-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockSaveMsg:Ljava/lang/String;

    .line 124
    const-string v0, ""

    sput-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockMsgUnlock:Ljava/lang/String;

    .line 125
    const-string v0, ""

    sput-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockSaveMsgUnlock:Ljava/lang/String;

    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    const-string v1, "0000"

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneNumber:Ljava/lang/String;

    .line 103
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->CARRIER_LOCK_DISABLED:Ljava/lang/String;

    .line 131
    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$1;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$2;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 157
    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$3;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 410
    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$7;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    .line 169
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    .line 171
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 178
    const-string v1, "gsm.operator.iso-country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    .line 179
    return-void
.end method

.method private SeperateLockString(Ljava/lang/String;I)V
    .locals 2
    .param p1, "parsing"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 520
    if-nez p2, :cond_0

    .line 521
    sput-object p1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockPassword:Ljava/lang/String;

    .line 529
    :goto_0
    return-void

    .line 522
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 523
    sput-object p1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockType:Ljava/lang/String;

    goto :goto_0

    .line 524
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 525
    sput-object p1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockChecksum:Ljava/lang/String;

    goto :goto_0

    .line 527
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMccInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMccInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->handleTimeout(I)V

    return-void
.end method

.method private getCarrierLockPlusInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "kindofinfo"    # I

    .prologue
    .line 532
    packed-switch p1, :pswitch_data_0

    .line 558
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 534
    :pswitch_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockPassword:Ljava/lang/String;

    goto :goto_0

    .line 537
    :pswitch_1
    sget-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockType:Ljava/lang/String;

    goto :goto_0

    .line 540
    :pswitch_2
    sget-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockChecksum:Ljava/lang/String;

    goto :goto_0

    .line 543
    :pswitch_3
    sget-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockSaveMsg:Ljava/lang/String;

    goto :goto_0

    .line 546
    :pswitch_4
    sget-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockPasswordUnlock:Ljava/lang/String;

    goto :goto_0

    .line 549
    :pswitch_5
    sget-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockTypeUnlock:Ljava/lang/String;

    goto :goto_0

    .line 552
    :pswitch_6
    sget-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockChecksumUnlock:Ljava/lang/String;

    goto :goto_0

    .line 555
    :pswitch_7
    sget-object v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockSaveMsgUnlock:Ljava/lang/String;

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getCarrierLockPlusMsg()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 491
    const/4 v1, 0x0

    .line 493
    .local v1, "mCarrierlockPlusMsg":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->isCarrierLockENCVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/io/File;

    const-string v6, "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x80

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 503
    :goto_0
    if-eqz v1, :cond_1

    .line 504
    const-string v2, "KeyguardCarrierLockPlusView"

    const-string v3, "mCarrierlockPlusMsg is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v1    # "mCarrierlockPlusMsg":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 497
    .restart local v1    # "mCarrierlockPlusMsg":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/sec_efs/sktdm_mem/lawlockmsg.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "KeyguardCarrierLockPlusView"

    const-string v4, "mCarrierlockPlusMsg is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    move-object v1, v2

    .line 507
    goto :goto_1
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    .line 573
    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 575
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 577
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v1
.end method

.method private handleTimeout(I)V
    .locals 2
    .param p1, "seq"    # I

    .prologue
    .line 422
    monitor-enter p0

    .line 423
    :try_start_0
    const-string v0, "KeyguardCarrierLockPlusView"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    .line 427
    :cond_0
    monitor-exit p0

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isCarrierLockENCVersion()Z
    .locals 2

    .prologue
    .line 512
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const/4 v1, 0x1

    .line 516
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCarrierPasswordSaved()Z
    .locals 3

    .prologue
    .line 565
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 567
    :goto_0
    return v1

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parsingCarrierLockPlusMsg()V
    .locals 6

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->getCarrierLockPlusMsg()Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "mParsingLockString":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 478
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3a

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 479
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 480
    const/4 v1, 0x0

    .line 481
    .local v1, "lock_cnt":I
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 482
    .local v3, "parsingLockString":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->SeperateLockString(Ljava/lang/String;I)V

    .line 483
    add-int/lit8 v1, v1, 0x1

    .line 484
    goto :goto_0

    .line 485
    .end local v3    # "parsingLockString":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockMsg:Ljava/lang/String;

    sput-object v5, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockSaveMsg:Ljava/lang/String;

    .line 486
    const-string v5, ""

    sput-object v5, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->lockMsg:Ljava/lang/String;

    .line 488
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lock_cnt":I
    .end local v4    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_1
    return-void
.end method

.method private setCarrierLockPlusInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 360
    sget v2, Lcom/android/keyguard/R$id;->carrierlockplus_main_text:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    .line 361
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 362
    const-string v2, "kr"

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 363
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    sget v3, Lcom/android/keyguard/R$string;->skt_lockscreen_findlostphone_kor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 370
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->parsingCarrierLockPlusMsg()V

    .line 371
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->getCarrierLockPlusInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "Password":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->isCarrierPasswordSaved()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v4, v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;I)V

    .line 377
    :cond_1
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->getCarrierLockPlusInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "OwnerInfo":Ljava/lang/String;
    sget v2, Lcom/android/keyguard/R$id;->carrierlockplus_owner_info:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 379
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 380
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_2
    return-void

    .line 364
    .end local v0    # "OwnerInfo":Ljava/lang/String;
    .end local v1    # "Password":Ljava/lang/String;
    :cond_3
    const-string v2, "cn"

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 365
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    sget v3, Lcom/android/keyguard/R$string;->skt_lockscreen_findlostphone_cn:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 367
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    sget v3, Lcom/android/keyguard/R$string;->skt_lockscreen_findlostphone_eng:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateButtonVisibility(I)V
    .locals 4
    .param p1, "phoneState"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 431
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 432
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_returntocall_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 439
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$8;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 472
    :goto_1
    return-void

    .line 434
    :cond_0
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_returntocall_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_returntocall_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 448
    :cond_2
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 456
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$9;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 450
    :cond_3
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 453
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 342
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 314
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 318
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 320
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 323
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 197
    const-string v0, "KeyguardCarrierLockPlusView"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setCarrierLockPlusInfo()V

    .line 201
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 202
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    .line 203
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 208
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_call_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    .line 209
    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_unlock_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    .line 210
    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_emergency_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 213
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    if-nez v0, :cond_6

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$4;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 240
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_unlock_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 247
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$5;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 258
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_emergencycall_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 265
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$6;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :cond_3
    return-void

    .line 215
    :cond_4
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 235
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 242
    :cond_7
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_unlock_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 245
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_unlock_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 260
    :cond_9
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_emergencycall_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 263
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_emergencycall_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    .line 308
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 302
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 5
    .param p1, "holdMs"    # I

    .prologue
    .line 400
    monitor-enter p0

    .line 401
    :try_start_0
    const-string v1, "KeyguardCarrierLockPlusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakelock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    .line 403
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    .line 405
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 406
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 407
    monitor-exit p0

    .line 408
    return-void

    .line 407
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 183
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 187
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    .line 337
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 289
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

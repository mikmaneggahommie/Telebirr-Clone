.class public Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
.super Ljava/lang/Thread;
.source "KeyguardSpassUnlockThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardSpassUnlockThread"


# instance fields
.field private final FINGERPRINT_START_DELAY:I

.field private final FINGER_PRINT_SERVICE_STARTED_ACTION:Ljava/lang/String;

.field private final MSG_DESTROY_FINGERPRINT_THREAD:I

.field private final MSG_FINGERPRINT_DATABASE_ERROR:I

.field private final MSG_FINGERPRINT_IDENTIFY_START:I

.field private final MSG_FINGERPRINT_IDENTIFY_STOP:I

.field private final MSG_FINGERPRINT_RESPONDING_ERROR:I

.field private final MSG_FINGERPRINT_SENSOR_ERROR:I

.field private final MSG_FINGERPRINT_SENSOR_FAILURE:I

.field private final MSG_FINGERPRINT_SENSOR_START:I

.field private final MSG_FINGERPRINT_SENSOR_STOP:I

.field private final SCREEN_TIMEOUT:I

.field private isSuccess:Z

.field private mAttributionViewEnableHandlerId:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastRegistered:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mContext:Landroid/content/Context;

.field private mExpiredTime:J

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mIsActive:Z

.field private mIsRegisteredClient:Z

.field private volatile mIsRunning:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

.field private mSpassThreadHandler:Landroid/os/Handler;

.field private mToken:Landroid/os/IBinder;

.field private mVibraterService:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 92
    const-string v0, "KeyguardSpassUnlockThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 36
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->SCREEN_TIMEOUT:I

    .line 38
    const/16 v0, 0x45c

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_IDENTIFY_START:I

    .line 39
    const/16 v0, 0x45d

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_IDENTIFY_STOP:I

    .line 40
    const/16 v0, 0x45f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_SENSOR_START:I

    .line 41
    const/16 v0, 0x460

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_SENSOR_STOP:I

    .line 42
    const/16 v0, 0x461

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_SENSOR_ERROR:I

    .line 43
    const/16 v0, 0x462

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_SENSOR_FAILURE:I

    .line 44
    const/16 v0, 0x463

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_RESPONDING_ERROR:I

    .line 45
    const/16 v0, 0x464

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_DESTROY_FINGERPRINT_THREAD:I

    .line 46
    const/16 v0, 0x465

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_DATABASE_ERROR:I

    .line 48
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->FINGERPRINT_START_DELAY:I

    .line 61
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mAttributionViewEnableHandlerId:I

    .line 76
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$1;-><init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    .line 451
    const-string v0, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->FINGER_PRINT_SERVICE_STARTED_ACTION:Ljava/lang/String;

    .line 455
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$3;-><init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 501
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->isSuccess:Z

    .line 93
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mPowerManager:Landroid/os/PowerManager;

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterService:Landroid/os/SystemVibrator;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStartIdentify()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleDestoryFingerPrintThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/SystemVibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterService:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleUnlock()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method private handleDestoryFingerPrintThread()V
    .locals 2

    .prologue
    .line 557
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleDestoryFingerPrintThread()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    monitor-enter p0

    .line 559
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->removeAllMsgs()V

    .line 560
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 561
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_3

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    .line 573
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_4

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 576
    :cond_4
    monitor-exit p0

    .line 577
    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleReportFailedAttempts()V
    .locals 3

    .prologue
    .line 540
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleReportFailedAttempts()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 543
    const-string v0, "KeyguardSpassUnlockThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportFailedAttempt( mFailedAttempts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedSecBiometricUnlockAttempts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxSecBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "reportFailedAttempt( too many failed. go to backup Password )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 550
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 551
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showBackupPassword()V

    .line 554
    :cond_0
    return-void
.end method

.method private handleStartIdentify()V
    .locals 6

    .prologue
    const/16 v5, 0x45f

    .line 318
    const-string v2, "KeyguardSpassUnlockThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartIdentify( mIsRegisteredClient = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSensorReady()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 322
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 323
    .local v0, "currentUserId":I
    const-string v2, "KeyguardSpassUnlockThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartIdentify currentUserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "notifyEnrollBegin success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v1

    .line 329
    .local v1, "result":I
    if-nez v1, :cond_2

    .line 330
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v0    # "currentUserId":I
    .end local v1    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 331
    .restart local v0    # "currentUserId":I
    .restart local v1    # "result":I
    :cond_2
    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    .line 332
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify: RESULT_IN_PROGRESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    .line 334
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 335
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 336
    :cond_3
    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    .line 337
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify: RESULT_INVALID_TOKEN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    .line 339
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 341
    :cond_4
    const/4 v2, -0x4

    if-eq v1, v2, :cond_5

    const/4 v2, -0x5

    if-ne v1, v2, :cond_6

    .line 343
    :cond_5
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify: RESULT_DATABASE_FAILURE or RESULT_NO_REGISTERED_FINGER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x465

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 348
    :cond_6
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify request failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 350
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x463

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 353
    .end local v0    # "currentUserId":I
    .end local v1    # "result":I
    :cond_7
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "handleStartIdentify is called but isSensorReady is false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x461

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private handleUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 524
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->isSuccess:Z

    .line 527
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->launchBackUpButton()V

    .line 536
    :goto_0
    return-void

    .line 529
    :cond_0
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->isSuccess:Z

    .line 530
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 532
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->cleanUp()V

    goto :goto_0
.end method

.method private launchBackUpButton()V
    .locals 3

    .prologue
    .line 580
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 581
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "previousStage"

    const-string v2, "Lockscreen_changepassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 466
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastRegistered:Z

    if-nez v1, :cond_0

    .line 467
    const-string v1, "KeyguardSpassUnlockThread"

    const-string v2, "registerBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 469
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 471
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastRegistered:Z

    .line 473
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private registerClient()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 418
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 420
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v3, :cond_1

    .line 421
    const-string v1, "KeyguardSpassUnlockThread"

    const-string v3, "registerClient() : FingerPrintManager is not possilbe"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return v2

    .line 425
    :cond_1
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "system"

    invoke-direct {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "builder":Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    if-eqz v0, :cond_3

    .line 428
    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->demandExtraEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 429
    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->useManualTimeout(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 430
    const v3, -0x7ffffffd

    invoke-virtual {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->setPrivilegedAttr(I)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 432
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    .line 433
    const-string v3, "KeyguardSpassUnlockThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerClient() mToken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 436
    :cond_3
    const-string v1, "KeyguardSpassUnlockThread"

    const-string v3, "registerClient() : FingerprintClientSpecBuilder is not possible"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastRegistered:Z

    if-eqz v0, :cond_0

    .line 477
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "unregisterBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastRegistered:Z

    .line 481
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 504
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    .line 506
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x464

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->isSuccess:Z

    if-nez v0, :cond_1

    .line 510
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "notifyEnrollEnd success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    .line 513
    :cond_1
    return-void
.end method

.method public handleFingerPrintDataBaseError()V
    .locals 2

    .prologue
    .line 383
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleFingerPrintDataBaseError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x465

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 388
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    sget v1, Lcom/android/keyguard/R$string;->kg_finger_print_database_error_message:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorPopup(I)V

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    .line 392
    return-void
.end method

.method public handleRespondingError()V
    .locals 2

    .prologue
    .line 370
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleRespondingError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x463

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    sget v1, Lcom/android/keyguard/R$string;->kg_finger_print_not_responding_error_message:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorPopup(I)V

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showBackupPassword()V

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    .line 380
    return-void
.end method

.method public handleSensorError()V
    .locals 2

    .prologue
    .line 395
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleSensorError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x461

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 399
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 400
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    sget v1, Lcom/android/keyguard/R$string;->kg_finger_print_sensor_error_message:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorPopup(I)V

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showBackupPassword()V

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    .line 405
    return-void
.end method

.method public handleSensorFailure()V
    .locals 2

    .prologue
    .line 408
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleSensorFailure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x462

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 412
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    sget v1, Lcom/android/keyguard/R$string;->kg_finger_print_not_responding_error_message:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorPopup(I)V

    .line 415
    :cond_1
    return-void
.end method

.method handleStartFingerPrintSensor()V
    .locals 8

    .prologue
    const/16 v7, 0x45c

    const/4 v6, 0x1

    .line 271
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStopIdentify()V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "handleStartFingerPrintSensor  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    if-eqz v2, :cond_4

    .line 279
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    if-nez v2, :cond_3

    .line 280
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 281
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    :cond_2
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    .line 283
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "sensor is already running."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    :cond_3
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "fingerprint is already running."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_4
    const-string v2, "KeyguardSpassUnlockThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start( mIsRegisteredClient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRunning()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.fingerprint.service"

    const-string v3, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mExpiredTime:J

    .line 300
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->registerClient()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    .line 301
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    .line 303
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    if-eqz v2, :cond_5

    .line 305
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterBroadcastReceiver()V

    .line 306
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "Failed to call FingerprintServiceStarter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->registerBroadcastReceiver()V

    goto/16 :goto_0
.end method

.method public handleStopIdentify()V
    .locals 2

    .prologue
    .line 362
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleStopIdentify()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 366
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    .line 367
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 485
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    monitor-enter p0

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x460

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 491
    :cond_0
    monitor-exit p0

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 496
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 499
    :cond_0
    return-void
.end method

.method protected removeAllMsgs()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x460

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x461

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x462

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x463

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x464

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 517
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 520
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 114
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;-><init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    .line 237
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 238
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 105
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    return-void
.end method

.method public setSpassCallback(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    .line 109
    return-void
.end method

.method public startIdentify()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    :cond_0
    return-void
.end method

.method public stopIdentify()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    :cond_0
    return-void
.end method

.method public stopSensor()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x460

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    :cond_0
    return-void
.end method

.method public unregisterClient()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 442
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    .line 444
    const-string v0, "KeyguardSpassUnlockThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterClient() mToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    .line 446
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    .line 447
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    .line 449
    :cond_0
    return-void
.end method

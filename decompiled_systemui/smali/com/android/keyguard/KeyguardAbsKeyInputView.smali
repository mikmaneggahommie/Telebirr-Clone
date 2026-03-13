.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I

.field private static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field protected static final HINT_MESSAGE_A_SEC:I = 0x3e8

.field protected static final HINT_MESSAGE_DURATION:I = 0x1388

.field protected static final HINT_MESSAGE_NO_DISAPPEAR:I = 0x0

.field protected static final INSTRUCTION_MESSAGE_WAIT_TIME:I = 0x7d0

.field protected static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field protected static final VIBRATE_DURATION:I = 0x64


# instance fields
.field private isSupportMobileKeyboard:Z

.field protected mBouncerEMA:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field protected mBouncerKMA:Landroid/view/View;

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field protected mClearMessageRunnable:Ljava/lang/Runnable;

.field protected mCountdownTimer:Landroid/os/CountDownTimer;

.field protected mDivider:Landroid/view/View;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field protected mEMAPress:Z

.field protected mEcaView:Landroid/view/View;

.field protected mEnableHaptics:Z

.field private mFailedTextTimer:Landroid/os/CountDownTimer;

.field protected mHandler:Landroid/os/Handler;

.field mImmAbs:Landroid/view/inputmethod/InputMethodManager;

.field protected mKeyguardBouncerFrameView:Landroid/view/View;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mMobileKeyboard:Z

.field protected mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryShadowColor:I

.field private mPasswordEntryTextColor:I

.field private mPasswordTimeTick:I

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field protected mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUseBlackTextOnWhiteWallpaper:Z

.field protected mVibraterService:Landroid/os/Vibrator;

.field private mWhiteWallpaperObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x66ffffff

    :goto_0
    sput v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 95
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 115
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEMAPress:Z

    .line 118
    iput v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordTimeTick:I

    .line 121
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryTextColor:I

    .line 123
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryShadowColor:I

    .line 124
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMobileKeyboard:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isSupportMobileKeyboard:Z

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    .line 166
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 731
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 182
    const-string v0, "enterprise_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 192
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isSupportMobileKeyboard:Z

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isSupportMobileKeyboard:Z

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMobileKeyboard:Z

    .line 194
    return-void

    :cond_1
    move v0, v2

    .line 189
    goto :goto_0

    :cond_2
    move v1, v2

    .line 193
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/keyguard/KeyguardAbsKeyInputView;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordTimeTick:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public disableDevicePermanently()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 649
    const-string v0, "PasswordUnlockScreen"

    const-string v2, "disableDevicePermanently start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v2, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " has exceeded number of authentication failure limit"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 659
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 660
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const v3, 0x1040be4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 662
    return-void
.end method

.method public doHapticKeyClick()V
    .locals 2

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 587
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->performHapticFeedback(II)Z

    .line 591
    :cond_0
    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getFailedAttemptMessage(II)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "resid"    # I
    .param p2, "attempts"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 667
    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_4

    .line 668
    const/4 v3, 0x0

    .line 669
    .local v3, "remaining":I
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    .line 671
    .local v0, "failedAttemptsBeforeWipe":I
    if-lez v0, :cond_0

    move v1, v4

    .line 672
    .local v1, "isITPolicyEnabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 673
    sub-int v3, v0, p2

    .line 677
    :goto_1
    if-ne v3, v4, :cond_2

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 690
    .end local v0    # "failedAttemptsBeforeWipe":I
    .end local v1    # "isITPolicyEnabled":Z
    .end local v3    # "remaining":I
    .local v2, "message":Ljava/lang/CharSequence;
    :goto_2
    return-object v2

    .end local v2    # "message":Ljava/lang/CharSequence;
    .restart local v0    # "failedAttemptsBeforeWipe":I
    .restart local v3    # "remaining":I
    :cond_0
    move v1, v5

    .line 671
    goto :goto_0

    .line 675
    .restart local v1    # "isITPolicyEnabled":Z
    :cond_1
    rsub-int/lit8 v3, p2, 0xa

    goto :goto_1

    .line 680
    :cond_2
    const/16 v6, 0xa

    if-gt v3, v6, :cond_3

    if-le v3, v4, :cond_3

    .line 682
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/CharSequence;
    goto :goto_2

    .line 685
    .end local v2    # "message":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/CharSequence;
    goto :goto_2

    .line 688
    .end local v0    # "failedAttemptsBeforeWipe":I
    .end local v1    # "isITPolicyEnabled":Z
    .end local v2    # "message":Ljava/lang/CharSequence;
    .end local v3    # "remaining":I
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public getFailedAutoWipeAttemptMessage()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 694
    const-string v1, ""

    .line 695
    .local v1, "message":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    .line 697
    .local v0, "attempts":I
    rsub-int/lit8 v2, v0, 0xa

    .line 698
    .local v2, "remaining":I
    if-ne v2, v5, :cond_1

    .line 699
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 704
    :cond_0
    :goto_0
    return-object v1

    .line 700
    :cond_1
    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    if-le v2, v5, :cond_0

    .line 702
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getPasswordText()Ljava/lang/String;
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected abstract getPromtReasonStringRes(I)I
.end method

.method protected getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 324
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 491
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 495
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 515
    return-void
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 606
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 607
    return-void
.end method

.method protected isCountDownTimerRunning()Z
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 6

    .prologue
    .line 627
    const/4 v1, 0x0

    .line 628
    .local v1, "isDeviceDisableForMaxFailedAttempt":Z
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_0

    .line 629
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v2

    .line 631
    .local v2, "maxNumFailedAttemptForDisable":I
    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "max failed attempt for device disable :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    if-lez v2, :cond_0

    .line 635
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    .line 636
    .local v0, "curNumFailedAttempts":I
    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current failed attempt for device  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    .line 642
    .end local v0    # "curNumFailedAttempts":I
    .end local v2    # "maxNumFailedAttemptForDisable":I
    :cond_0
    :goto_0
    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return v1

    .line 638
    .restart local v0    # "curNumFailedAttempts":I
    .restart local v2    # "maxNumFailedAttemptForDisable":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHintMessageArea()Z
    .locals 1

    .prologue
    .line 709
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

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

.method public needsInput()Z
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 301
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 304
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 311
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 312
    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 316
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 233
    sget v3, Lcom/android/keyguard/R$id;->divider:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDivider:Landroid/view/View;

    .line 234
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 235
    new-instance v3, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 236
    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 237
    sget v3, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    .line 238
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 240
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;

    .line 245
    sget v3, Lcom/android/keyguard/R$id;->keyguard_message_area_bouncer:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    .line 246
    sget v3, Lcom/android/keyguard/R$id;->sec_emergency_button_area:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerEMA:Landroid/view/View;

    .line 249
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMobileKeyboard:Z

    if-eqz v3, :cond_1

    .line 250
    sget v3, Lcom/android/keyguard/R$id;->keyboardentry:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    .line 251
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    if-nez v3, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    .line 254
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 255
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v4, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 270
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibraterService:Landroid/os/Vibrator;

    .line 272
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 273
    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_emergency_circle:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .line 275
    .local v1, "secKeyguardCircleEmergencyView":Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
    if-eqz v1, :cond_7

    .line 276
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->setPasswordEntryView(Landroid/view/View;)V

    .line 286
    .end local v1    # "secKeyguardCircleEmergencyView":Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 287
    .local v2, "textView":Landroid/view/View;
    if-eqz v2, :cond_5

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 292
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 293
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryTextColor:I

    .line 294
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowColor()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryShadowColor:I

    .line 296
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateBlackTextOnWhiteWallpaper()V

    .line 297
    return-void

    .line 279
    .end local v2    # "textView":Landroid/view/View;
    .restart local v1    # "secKeyguardCircleEmergencyView":Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
    :cond_7
    sget v3, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    .line 280
    .local v0, "emergencyButton":Lcom/android/keyguard/EmergencyButton;
    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/EmergencyButton;->setPasswordEntryView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onUserInput()V

    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method protected onPasswordChecked(Ljava/lang/String;ZI)V
    .locals 20
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I

    .prologue
    .line 357
    if-eqz p2, :cond_4

    .line 358
    const-string v2, "PasswordUnlockScreen"

    const-string v3, "password is correct"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v2

    if-lez v2, :cond_0

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v15

    .line 363
    .local v15, "mDPM":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v18

    .line 364
    .local v18, "quality":I
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v17

    .line 365
    .local v17, "minLength":I
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v16

    .line 367
    .local v16, "maxLength":I
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.samsung.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v13, "it":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v2, "lockscreen.password_type"

    move/from16 v0, v18

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    const-string v2, "lockscreen.password_min"

    move/from16 v0, v17

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    const-string v2, "lockscreen.password_max"

    move/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    const-string v2, "lockscreen.password_old"

    move-object/from16 v0, p1

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v2, "password"

    move-object/from16 v0, p1

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 375
    const/high16 v2, 0x10000000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    const/high16 v2, 0x400000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    const/high16 v2, 0x800000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 379
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v13, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 385
    .end local v13    # "it":Landroid/content/Intent;
    .end local v15    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v16    # "maxLength":I
    .end local v17    # "minLength":I
    .end local v18    # "quality":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isHintMessageArea()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setNullHintMessage()V

    .line 387
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 392
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 393
    new-instance v9, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 395
    .local v9, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v9}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v2

    if-nez v2, :cond_2

    .line 396
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 402
    .end local v9    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_2
    new-instance v14, Landroid/lsm/LockedStatePasswordWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v14, v2}, Landroid/lsm/LockedStatePasswordWrapper;-><init>(Landroid/content/Context;)V

    .line 404
    .local v14, "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    invoke-virtual {v14}, Landroid/lsm/LockedStatePasswordWrapper;->getCurrentUserID()I

    move-result v2

    if-nez v2, :cond_3

    .line 405
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/lsm/LockedStatePasswordWrapper;->setPassword(Ljava/lang/String;)I

    .line 477
    .end local v14    # "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->clear()V

    .line 478
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 479
    return-void

    .line 410
    :cond_4
    const-string v2, "PasswordUnlockScreen"

    const-string v3, "password is wrong"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v8, 0x0

    .line 412
    .local v8, "attempts":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v2, :cond_5

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibraterService:Landroid/os/Vibrator;

    const v3, 0xc36b

    const/4 v4, -0x1

    const/4 v5, 0x0

    sget-object v6, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 416
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_a

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v3, 0x0

    move/from16 v0, p3

    invoke-interface {v2, v3, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v8

    .line 422
    rsub-int/lit8 v19, v8, 0xa

    .line 425
    .local v19, "remaining":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_9

    .line 426
    rem-int/lit8 v2, v8, 0x5

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v2, :cond_6

    if-eqz v19, :cond_7

    .line 428
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v10

    .line 429
    .local v10, "deadline":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 431
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.PATTERN_LOCK_FAIL"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 443
    .end local v10    # "deadline":J
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v19    # "remaining":I
    :cond_7
    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isCountDownTimerRunning()Z

    move-result v2

    if-nez v2, :cond_b

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setHintOrMessageText(IZ)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_8

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 449
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 451
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordTimeTick:I

    .line 452
    new-instance v2, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;

    const-wide/16 v4, 0x1f40

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_1

    .line 435
    .restart local v19    # "remaining":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    goto :goto_2

    .line 439
    .end local v19    # "remaining":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v8

    goto :goto_2

    .line 473
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1

    .line 380
    .end local v8    # "attempts":I
    .restart local v13    # "it":Landroid/content/Intent;
    .restart local v15    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v16    # "maxLength":I
    .restart local v17    # "minLength":I
    .restart local v18    # "quality":I
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 547
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 549
    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 553
    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 557
    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 559
    :cond_2
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 564
    return-void
.end method

.method protected onUserInput()V
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 522
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 208
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .line 211
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v2, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 213
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 221
    .end local v0    # "deadline":J
    :goto_0
    return-void

    .line 216
    .restart local v0    # "deadline":J
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    goto :goto_0

    .line 219
    .end local v0    # "deadline":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method protected abstract resetPasswordText(Z)V
.end method

.method protected abstract resetState()V
.end method

.method public sendAccessibilityEvent(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 714
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 715
    .local v1, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 726
    .end local v1    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :goto_0
    return-void

    .line 719
    .restart local v1    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 721
    .local v2, "mTalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 723
    .end local v1    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "mTalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendAccessibilityEvent e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setHintOrMessageText(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "important"    # Z

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    .line 749
    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .param p2, "important"    # Z

    .prologue
    .line 752
    const/16 v0, 0x1388

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    .line 753
    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;ZI)V
    .locals 6
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .param p2, "important"    # Z
    .param p3, "timeout"    # I

    .prologue
    .line 756
    const-string v2, "PasswordUnlockScreen"

    const-string v3, "setHintOrMessageText()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isHintMessageArea()Z

    move-result v2

    if-nez v2, :cond_1

    .line 758
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, p1, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    const/16 v2, 0x3e8

    if-ne p3, v2, :cond_3

    const/4 v1, 0x1

    .line 761
    .local v1, "isCountDownTimer":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 762
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 781
    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 782
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 783
    :cond_2
    if-lez p3, :cond_0

    .line 784
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mClearMessageRunnable:Ljava/lang/Runnable;

    int-to-long v4, p3

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 760
    .end local v1    # "isCountDownTimer":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 764
    .restart local v1    # "isCountDownTimer":Z
    :cond_4
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 765
    .local v0, "fadeIn":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 766
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 767
    new-instance v2, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 778
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 779
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 198
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardReset;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardReset;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 204
    return-void
.end method

.method protected setNullHintMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 745
    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected abstract setPasswordEntryInputEnabled(Z)V
.end method

.method protected shouldLockout(J)Z
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 225
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 597
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    .line 600
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 601
    return-void
.end method

.method public showHideBouncerKeyguardMessageArea(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 610
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 611
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 612
    new-instance v3, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    :goto_1
    invoke-direct {v3, v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerEMA:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerEMA:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEMAPress:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEMAPress:Z

    .line 618
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 611
    goto :goto_0

    :cond_4
    move-object v0, p0

    .line 612
    goto :goto_1
.end method

.method public showPromptReason(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 573
    if-eqz p1, :cond_0

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromtReasonStringRes(I)I

    move-result v0

    .line 575
    .local v0, "promtReasonStringRes":I
    if-eqz v0, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 580
    .end local v0    # "promtReasonStringRes":I
    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 5

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 143
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->white_bg_solution_pin_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->white_bg_solution_pin_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 156
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->white_bg_solution_pin_divider_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    :cond_1
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryShadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 330
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 334
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 337
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 338
    invoke-virtual {p0, v0, v3, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(Ljava/lang/String;ZI)V

    .line 354
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Ljava/lang/String;)V

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.class public Lcom/android/keyguard/KeyguardSimPinView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "KeyguardSimPinView"

.field private static final MAX_LENGTH_ENTRY:I = 0x8

.field public static final TAG:Ljava/lang/String; = "KeyguardSimPinView"

.field private static maxPinRetry:I


# instance fields
.field private isWrongPIN:Z

.field private isWrongPINCrash:Z

.field private mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mRemainingCount:I

.field protected volatile mSimCheckInProgress:Z

.field protected mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private old_Num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/KeyguardSimPinView;->maxPinRetry:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 80
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    .line 81
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->isWrongPINCrash:Z

    .line 82
    iput v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->old_Num_of_retry:I

    .line 83
    iput v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingCount:I

    .line 84
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->isWrongPIN:Z

    .line 88
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPinView$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 102
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setMaxLength(I)V

    .line 103
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DSNETWORK"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    const-string v0, "KeyguardSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSimPinView--DSNETWORK VALUE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "DSNETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSimPinView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/keyguard/KeyguardSimPinView;->maxPinRetry:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-object p1
.end method

.method private autoUnlockSinPin()V
    .locals 8

    .prologue
    .line 506
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-nez v5, :cond_1

    .line 507
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v5, :cond_1

    .line 508
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "iccId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 512
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getPinCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, "pin":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 514
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/PasswordTextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSimPinView;->verifyPasswordAndUnlock(Ljava/lang/String;)V

    .line 539
    .end local v1    # "iccId":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v2

    .line 523
    .local v2, "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/SystemManager;->getUnlockSimOnBootState()Z

    move-result v4

    .line 525
    .local v4, "unlock":Z
    if-eqz v4, :cond_0

    .line 527
    :try_start_0
    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/SystemManager;->getUnlockSimPin()Ljava/lang/String;

    move-result-object v3

    .line 528
    .restart local v3    # "pin":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 529
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/PasswordTextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSimPinView;->verifyPasswordAndUnlock(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    .end local v3    # "pin":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KeyguardSimPinView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 179
    sget v0, Lcom/android/keyguard/R$id;->simPinEntry:I

    return v0
.end method

.method protected getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I

    .prologue
    const/4 v3, 0x1

    .line 154
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isNotRequireSIMPUKCode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_maximum:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string v1, "KeyguardSimPinView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-object v0

    .line 156
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_2

    .line 157
    if-ne p1, v3, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_one:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 160
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_other:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method protected getSimIconResId()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 482
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v3

    if-le v3, v5, :cond_3

    .line 483
    const/4 v2, 0x0

    .line 484
    .local v2, "simSlotNum":I
    const-string v3, "ril.MSIMM"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "mSimMode":Ljava/lang/String;
    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 486
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 488
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 491
    :cond_0
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 494
    sget v3, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic_2:I

    .line 502
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "mSimMode":Ljava/lang/String;
    .end local v2    # "simSlotNum":I
    :goto_0
    return v3

    .line 495
    .restart local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .restart local v1    # "mSimMode":Ljava/lang/String;
    .restart local v2    # "simSlotNum":I
    :cond_1
    if-nez v2, :cond_2

    .line 496
    sget v3, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic_1:I

    goto :goto_0

    .line 497
    :cond_2
    if-ne v2, v5, :cond_3

    .line 498
    sget v3, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic_2:I

    goto :goto_0

    .line 502
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "mSimMode":Ljava/lang/String;
    .end local v2    # "simSlotNum":I
    :cond_3
    sget v3, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic:I

    goto :goto_0
.end method

.method protected getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "remaining"    # I

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 292
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 294
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 295
    sget v2, Lcom/android/keyguard/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 297
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 302
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 208
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->autoUnlockSinPin()V

    .line 209
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 219
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 186
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForStateCTC(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    .line 190
    :goto_0
    const-string v0, "KeyguardSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onFinishInflate mSubId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setDrawableId(I)V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEcaView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    .line 202
    :cond_1
    return-void

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 232
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 4

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 112
    sget v0, Lcom/android/keyguard/R$string;->kg_sim_pin_instructions:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimIconResId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSimPinView;->setHintOrMessageText(IIZI)V

    .line 113
    const-string v0, "KeyguardSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting state mSubId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method protected setHintOrMessageText(IIZ)V
    .locals 2
    .param p1, "resHintId"    # I
    .param p2, "resDrawableId"    # I
    .param p3, "important"    # Z

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/keyguard/KeyguardSimPinView;->setHintOrMessageText(Ljava/lang/CharSequence;IZI)V

    .line 456
    return-void
.end method

.method protected setHintOrMessageText(IIZI)V
    .locals 1
    .param p1, "resHintId"    # I
    .param p2, "resDrawableId"    # I
    .param p3, "important"    # Z
    .param p4, "timeout"    # I

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/keyguard/KeyguardSimPinView;->setHintOrMessageText(Ljava/lang/CharSequence;IZI)V

    .line 460
    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;IZI)V
    .locals 4
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .param p2, "resDrawableId"    # I
    .param p3, "important"    # Z
    .param p4, "timeout"    # I

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->isHintMessageArea()Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    .line 479
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_sim_pin_instructions:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "defaultSIMHint":Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$3;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/keyguard/KeyguardSimPinView$3;-><init>(Lcom/android/keyguard/KeyguardSimPinView;ILjava/lang/CharSequence;)V

    .line 476
    .local v0, "clearMessageRunnable":Ljava/lang/Runnable;
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 477
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/keyguard/KeyguardSimPinView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    goto :goto_0
.end method

.method protected setNullHintMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_pin_instructions:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "defaultSIMHint":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimIconResId()I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 452
    :cond_1
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "entry":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->verifyPasswordAndUnlock(Ljava/lang/String;)V

    .line 313
    :cond_0
    return-void
.end method

.method protected verifyPasswordAndUnlock(Ljava/lang/String;)V
    .locals 4
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 320
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimIconResId()I

    move-result v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/keyguard/KeyguardSimPinView;->setHintOrMessageText(IIZ)V

    .line 321
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingCount:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->old_Num_of_retry:I

    .line 331
    const-string v0, "KeyguardSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyPasswordAndUnlock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$2;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-direct {v0, p0, p1, v1}, Lcom/android/keyguard/KeyguardSimPinView$2;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 425
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    if-nez v0, :cond_0

    .line 426
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    .line 427
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->start()V

    goto :goto_0
.end method

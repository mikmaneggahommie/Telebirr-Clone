.class public Lcom/android/keyguard/KeyguardSecurityModel;
.super Ljava/lang/Object;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityModel$1;,
        Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardSecurityModel"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mIsPukScreenAvailable:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 81
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mIsPukScreenAvailable:Z

    .line 85
    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isBiometricUnlockSuppressed()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 123
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 124
    .local v1, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    move v0, v2

    .line 126
    .local v0, "backupIsTimedOut":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxSecBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "backupIsTimedOut":Z
    :cond_2
    move v0, v3

    .line 124
    goto :goto_0
.end method

.method private isKnoxCustomLockScreenOverridden()Z
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v0

    .line 134
    .local v0, "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getLockScreenOverrideMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 2
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->isKnoxCustomLockScreenOverridden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const-string v0, "KeyguardSecurityModel"

    const-string v1, "getAlternateFor() lock screen overridden by Knox Custom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local p1    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_0
    :goto_0
    return-object p1

    .line 343
    .restart local p1    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->isBiometricUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->isBiometricUnlockSuppressed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_0

    .line 348
    :cond_2
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0
.end method

.method getBackupSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 2
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 360
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 370
    .end local p1    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :goto_0
    return-object p1

    .line 362
    .restart local p1    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    goto :goto_0

    .line 364
    :pswitch_1
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 366
    :pswitch_2
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 368
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSignatureBackupSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 140
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    .line 141
    .local v5, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 143
    .local v4, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v0, :cond_6

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldShowSIMLock()Z

    move-result v8

    if-nez v8, :cond_6

    .line 146
    .local v0, "airPlaneEnabled":Z
    :goto_0
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    .line 147
    .local v3, "isPinRequire":Z
    if-eqz v3, :cond_7

    if-nez v0, :cond_7

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSapConnected()Z

    move-result v7

    if-nez v7, :cond_7

    .line 148
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 288
    :cond_0
    :goto_1
    const-string v7, "trigger_restart_min_framework"

    const-string v8, "vold.decrypt"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isNewZealandFeature()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 289
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 290
    const-string v7, "KeyguardSecurityModel"

    const-string v8, "Enable Sim Pin for AU NZ model in decrypt mode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_1
    sget-boolean v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_2

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_2

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_2

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_2

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_2

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_2

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v7, :cond_3

    .line 301
    :cond_2
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 304
    :cond_3
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    .line 305
    .local v2, "hasTrust":Z
    if-eqz v2, :cond_5

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v7, :cond_5

    .line 314
    :cond_4
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 317
    :cond_5
    return-object v4

    .end local v0    # "airPlaneEnabled":Z
    .end local v2    # "hasTrust":Z
    .end local v3    # "isPinRequire":Z
    :cond_6
    move v0, v7

    .line 143
    goto/16 :goto_0

    .line 149
    .restart local v0    # "airPlaneEnabled":Z
    .restart local v3    # "isPinRequire":Z
    :cond_7
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mIsPukScreenAvailable:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 155
    :cond_8
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSIMPersoFeatureEnable()Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_a

    if-nez v0, :cond_a

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSapConnected()Z

    move-result v7

    if-nez v7, :cond_a

    .line 158
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 149
    :cond_9
    if-nez v0, :cond_8

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSapConnected()Z

    move-result v7

    if-nez v7, :cond_8

    .line 154
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 159
    :cond_a
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 160
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLockPlus:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 161
    :cond_b
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 162
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 163
    :cond_c
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 164
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 166
    :cond_d
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->isKnoxCustomLockScreenOverridden()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 167
    const-string v7, "KeyguardSecurityModel"

    const-string v8, "getSecurityMode() lock screen overridden by Knox Custom"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 171
    :cond_e
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->isSharedDeviceEnabled()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 172
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 175
    :cond_f
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    .line 176
    .local v6, "security":I
    sparse-switch v6, :sswitch_data_0

    .line 284
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown security quality:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 179
    :sswitch_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_10

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 181
    :goto_2
    goto/16 :goto_1

    .line 179
    :cond_10
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_2

    .line 186
    :sswitch_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 188
    :goto_3
    goto/16 :goto_1

    .line 186
    :cond_11
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_3

    .line 195
    :sswitch_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockUniversalEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 200
    :cond_12
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 203
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 204
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 206
    :cond_13
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 212
    :cond_14
    const/16 v7, 0x1000

    if-ne v6, v7, :cond_15

    .line 213
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 217
    :cond_15
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 223
    :sswitch_3
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1c

    .line 224
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 225
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->savedFingerprintPasswordExists(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 226
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 228
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 230
    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_16

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_16
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    :goto_4
    goto/16 :goto_1

    :cond_17
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_4

    .line 234
    :cond_18
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v7

    if-eqz v7, :cond_19

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    :goto_5
    goto/16 :goto_1

    :cond_19
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_5

    .line 238
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1a
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 241
    :cond_1b
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 244
    :cond_1c
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_22

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->savedFingerprintPasswordExists(I)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 246
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 248
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 250
    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_1d

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v7

    if-nez v7, :cond_1d

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v7

    if-nez v7, :cond_1e

    :cond_1d
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    :goto_6
    goto/16 :goto_1

    :cond_1e
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_6

    .line 255
    :cond_1f
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v7

    if-nez v7, :cond_20

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v7

    if-nez v7, :cond_21

    :cond_20
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    :goto_7
    goto/16 :goto_1

    :cond_21
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_7

    .line 260
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_22
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 263
    goto/16 :goto_1

    .line 265
    :sswitch_4
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 266
    goto/16 :goto_1

    .line 269
    :sswitch_5
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_23

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 271
    :goto_8
    goto/16 :goto_1

    .line 269
    :cond_23
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_8

    .line 274
    :sswitch_6
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 275
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 277
    :cond_24
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 278
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_1

    .line 280
    :cond_25
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 282
    goto/16 :goto_1

    .line 176
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1000 -> :sswitch_2
        0x9000 -> :sswitch_4
        0x9100 -> :sswitch_6
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
        0x61000 -> :sswitch_3
        0x70000 -> :sswitch_5
    .end sparse-switch
.end method

.method public getSignatureBackupSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method isBiometricUnlockEnabled()Z
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoneSecureLock()Z
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedDeviceEnabled()Z
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    return-void
.end method

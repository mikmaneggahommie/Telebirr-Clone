.class public Lcom/android/keyguard/sec/KeyguardFMMView;
.super Lcom/android/keyguard/KeyguardPINView;
.source "KeyguardFMMView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardFMMView"

.field public static final UNLOCK_FMM_ALERT_ACTION:Ljava/lang/String; = "com.samsung.Keyguard.UNLOCK_FMM_ALERT"


# instance fields
.field private mFMMCallButton:Landroid/widget/Button;

.field private mFMMPhoneNumber:Ljava/lang/String;

.field private mFMMTitle:Landroid/widget/TextView;

.field private mOwnerContactInfo:Landroid/widget/TextView;

.field private mOwnerMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardFMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardFMMView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardFMMView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardFMMView;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/KeyguardFMMView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardFMMView;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private setFMMInfo()V
    .locals 5

    .prologue
    .line 144
    sget v2, Lcom/android/keyguard/R$id;->keyguard_fmm_phone_locked:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMTitle:Landroid/widget/TextView;

    .line 145
    sget v2, Lcom/android/keyguard/R$id;->keyguard_fmm_message:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    .line 146
    sget v2, Lcom/android/keyguard/R$id;->keyguard_fmm_owner_phone_num:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    .line 147
    sget v2, Lcom/android/keyguard/R$id;->keyguard_fmm_emergency_btn:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMCallButton:Landroid/widget/Button;

    .line 148
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMTitle:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 150
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_fmm_Message"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "fmmMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_fmm_phone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->keyguard_fmm_owner_phone:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "fmmOwnerContact":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 135
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 62
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V

    .line 64
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->setFMMInfo()V

    .line 66
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 69
    .local v1, "isVoiceCapacity":Z
    const/4 v0, 0x0

    .line 70
    .local v0, "disableCallButton":Z
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 73
    :cond_1
    const-string v3, "KeyguardFMMView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoiceCapacity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " disableCallButton = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 77
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMCallButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/keyguard/sec/KeyguardFMMView$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardFMMView$1;-><init>(Lcom/android/keyguard/sec/KeyguardFMMView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :goto_0
    sget v3, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, "ok":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 105
    new-instance v3, Lcom/android/keyguard/sec/KeyguardFMMView$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/KeyguardFMMView$2;-><init>(Lcom/android/keyguard/sec/KeyguardFMMView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_2
    return-void

    .line 99
    .end local v2    # "ok":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPasswordChecked(Ljava/lang/String;ZI)V
    .locals 9
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 193
    if-eqz p2, :cond_0

    .line 194
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    .line 195
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.SEND_SMS"

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 198
    const-string v5, "KeyguardFMMView"

    const-string v6, "send Broadcast (UNLOCK_FMM_ALERT_ACTION)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v7, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 200
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 221
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/KeyguardFMMView;->resetPasswordText(Z)V

    .line 222
    return-void

    .line 202
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 203
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v8, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 204
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 207
    .local v0, "attempts":I
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    .line 208
    .local v4, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v4, :cond_3

    .line 209
    rem-int/lit8 v5, v0, 0x5

    if-nez v5, :cond_1

    .line 210
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 211
    .local v2, "deadline":J
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/sec/KeyguardFMMView;->handleAttemptLockout(J)V

    .line 213
    .end local v2    # "deadline":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result v5

    invoke-virtual {p0, v5, v7}, Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(IZ)V

    .line 219
    .end local v0    # "attempts":I
    .end local v4    # "lDeviceDisableForMaxFailedAttempt":Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result v5

    invoke-virtual {p0, v5, v7}, Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(IZ)V

    goto :goto_0

    .line 215
    .restart local v0    # "attempts":I
    .restart local v4    # "lDeviceDisableForMaxFailedAttempt":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->disableDevicePermanently()V

    goto :goto_1
.end method

.method protected resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 118
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->resetState()V

    .line 121
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    goto :goto_0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    .line 165
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 170
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    .line 171
    invoke-virtual {p0, v0, v4, v4}, Lcom/android/keyguard/sec/KeyguardFMMView;->onPasswordChecked(Ljava/lang/String;ZI)V

    .line 189
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string v1, "KeyguardFMMView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPasswordAndUnlock(entry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/sec/KeyguardFMMView$3;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/sec/KeyguardFMMView$3;-><init>(Lcom/android/keyguard/sec/KeyguardFMMView;Ljava/lang/String;)V

    invoke-static {v1, v4, v0, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_0
.end method

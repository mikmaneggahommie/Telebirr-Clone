.class public Lcom/android/keyguard/KeyguardSimPukView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;,
        Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "KeyguardSimPukView"

.field private static final MAX_LENGTH_ENTRY:I = 0x8

.field public static final TAG:Ljava/lang/String; = "KeyguardSimPukView"


# instance fields
.field protected volatile mCheckInProgress:Z

.field private mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mPinText:Ljava/lang/String;

.field protected mPukText:Ljava/lang/String;

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field protected mShowDefaultMessage:Z

.field private mSimImageView:Landroid/widget/ImageView;

.field protected mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field protected mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    .line 79
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    .line 86
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPukView$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 100
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setMaxLength(I)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPukView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-object p1
.end method


# virtual methods
.method protected checkPin()Z
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 359
    .local v0, "length":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 361
    const/4 v1, 0x1

    .line 363
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected checkPuk()Z
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 351
    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public confirmPin()Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 221
    sget v0, Lcom/android/keyguard/R$id;->pukEntry:I

    return v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method protected getPukPasswordErrorMessage(I)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_wrong_puk_code_dead:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string v1, "KeyguardSimPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPukPasswordErrorMessage: attemptsRemaining="

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

    .line 205
    return-object v0

    .line 196
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$plurals;->kg_password_wrong_puk_code:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 201
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "remaining"    # I

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 334
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 336
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 337
    sget v2, Lcom/android/keyguard/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 338
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 339
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 344
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected getSimIconResId()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 500
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getSIMCount()I

    move-result v3

    if-le v3, v5, :cond_3

    .line 501
    const/4 v2, 0x0

    .line 502
    .local v2, "simSlotNum":I
    const-string v3, "ril.MSIMM"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "mSimMode":Ljava/lang/String;
    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 505
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 507
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 510
    :cond_0
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 511
    sget v3, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic_2:I

    .line 519
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "mSimMode":Ljava/lang/String;
    .end local v2    # "simSlotNum":I
    :goto_0
    return v3

    .line 512
    .restart local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .restart local v1    # "mSimMode":Ljava/lang/String;
    .restart local v2    # "simSlotNum":I
    :cond_1
    if-nez v2, :cond_2

    .line 513
    sget v3, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic_1:I

    goto :goto_0

    .line 514
    :cond_2
    if-ne v2, v5, :cond_3

    .line 515
    sget v3, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic_2:I

    goto :goto_0

    .line 519
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "mSimMode":Ljava/lang/String;
    .end local v2    # "simSlotNum":I
    :cond_3
    sget v3, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic:I

    goto :goto_0
.end method

.method protected getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 249
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 259
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 227
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForStateCTC(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    .line 231
    :goto_0
    const-string v0, "KeyguardSimPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getSimIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setDrawableId(I)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 243
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 272
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 211
    return-void
.end method

.method protected setHintOrMessageText(IIZ)V
    .locals 2
    .param p1, "resHintId"    # I
    .param p2, "resDrawableId"    # I
    .param p3, "important"    # Z

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/keyguard/KeyguardSimPukView;->setHintOrMessageText(Ljava/lang/CharSequence;IZI)V

    .line 474
    return-void
.end method

.method protected setHintOrMessageText(IIZI)V
    .locals 1
    .param p1, "resHintId"    # I
    .param p2, "resDrawableId"    # I
    .param p3, "important"    # Z
    .param p4, "timeout"    # I

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/keyguard/KeyguardSimPukView;->setHintOrMessageText(Ljava/lang/CharSequence;IZI)V

    .line 478
    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;IZI)V
    .locals 4
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .param p2, "resDrawableId"    # I
    .param p3, "important"    # Z
    .param p4, "timeout"    # I

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->isHintMessageArea()Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    .line 497
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_sim_puk_instructions:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "defaultSIMHint":Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$3;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/keyguard/KeyguardSimPukView$3;-><init>(Lcom/android/keyguard/KeyguardSimPukView;ILjava/lang/CharSequence;)V

    .line 494
    .local v0, "clearMessageRunnable":Ljava/lang/Runnable;
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 495
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/keyguard/KeyguardSimPukView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    goto :goto_0
.end method

.method protected setNullHintMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 463
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_puk_instructions:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "defaultSIMHint":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getSimIconResId()I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 470
    :cond_1
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method protected updateSim()V
    .locals 4

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 373
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSimPukView$2;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 439
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckInProgress:Z

    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckInProgress:Z

    .line 441
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->start()V

    .line 444
    :cond_0
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->next()V

    .line 449
    return-void
.end method

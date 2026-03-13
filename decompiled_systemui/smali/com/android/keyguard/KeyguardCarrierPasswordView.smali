.class public Lcom/android/keyguard/KeyguardCarrierPasswordView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final DEBUG:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "KeyguardCarrierPasswordView"


# instance fields
.field private countryCode:Ljava/lang/String;

.field private deadline:J

.field imm:Landroid/view/inputmethod/InputMethodManager;

.field private mBackupPin:Landroid/widget/EditText;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFailedAttempts:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOk:Landroid/widget/Button;

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private final mShowImeAtScreenOn:Z

.field private final mShowImeRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    .line 78
    iput v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    .line 258
    new-instance v0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 98
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 100
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 102
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->countryCode:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeAtScreenOn:Z

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardCarrierPasswordView;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCarrierPasswordView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->onPasswordChecked(ZIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 330
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/keyguard/KeyguardCarrierPasswordView$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardCarrierPasswordView$5;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 353
    return-void
.end method

.method private onPasswordChecked(ZIZ)V
    .locals 5
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I
    .param p3, "isValidPassword"    # Z

    .prologue
    .line 240
    sget-object v2, Lcom/android/keyguard/KeyguardCarrierPasswordView;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KeyguardCarrierPasswordView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    if-eqz p1, :cond_2

    .line 242
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.FindingLostPhonePlus.RELEASE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "IntentForDM":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MASTER_CLEAR"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 245
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "IntentForLock":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 256
    .end local v0    # "IntentForDM":Landroid/content/Intent;
    .end local v1    # "IntentForLock":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v3, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 249
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    .line 251
    iget v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCarrierLockoutAttemptDeadline(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    .line 253
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V

    goto :goto_0
.end method

.method private verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 220
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "entry":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    new-instance v4, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 237
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 163
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 166
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 207
    :cond_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 208
    iput-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 209
    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 297
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->verifyPasswordAndUnlock()V

    .line 216
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    if-nez p3, :cond_3

    if-eqz p2, :cond_0

    const/4 v4, 0x6

    if-eq p2, v4, :cond_0

    const/4 v4, 0x5

    if-ne p2, v4, :cond_3

    :cond_0
    move v1, v3

    .line 305
    .local v1, "isSoftImeEvent":Z
    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    move v0, v3

    .line 308
    .local v0, "isKeyboardEnterKey":Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->verifyPasswordAndUnlock()V

    move v2, v3

    .line 313
    :cond_2
    return v2

    .end local v0    # "isKeyboardEnterKey":Z
    .end local v1    # "isSoftImeEvent":Z
    :cond_3
    move v1, v2

    .line 301
    goto :goto_0

    .restart local v1    # "isSoftImeEvent":Z
    :cond_4
    move v0, v2

    .line 305
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 110
    sget v0, Lcom/android/keyguard/R$id;->carrierlock_password:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 114
    sget v0, Lcom/android/keyguard/R$id;->ok:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->reset()V

    .line 147
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 272
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->reset()V

    .line 281
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 172
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCarrierLockoutAttemptDeadline(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    .line 195
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 196
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 151
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 155
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 293
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 285
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 322
    const/4 v0, 0x1

    return v0
.end method
